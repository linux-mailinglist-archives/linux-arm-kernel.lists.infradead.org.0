Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8680412AB66
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 10:51:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=06an78Co2LQFX2nFxxIln2mGxdn1sTnpzeim+blfO0A=; b=Rlz
	YQI77Yct+5SXAXk5Fls4qVb+uhtxoR9J0i2XIp0fagUVctWd4Tuw+VVrh9I+KRXmHU5swxLOKkxOM
	nO2RpaqfiGWO7r/wWf2devF4DraZRInULYnyLmokQvPZHy2nUOVyG1YaqMgjq9u8NnlUQH44gAbXA
	ERFnGs/pH2VtkeFYvDUxLyIkYbYaA5ER0m7OnpVCqI1uwNitTQYkAKnZ/2SfTzGQ/P/tIRmV4MRws
	wXBtvtzVsl/H7Bd4wycUpGpOhpzWX2ZH97cOfOCrJa7DYld7R22dPwetpKn1Bb7uOKayv1lOx+N7A
	RDHqxooAchEIXARiHLCVUiiCEZdnoQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikPnr-0003nr-Aq; Thu, 26 Dec 2019 09:51:35 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikPnh-0003nM-49
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 09:51:26 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id xBQ9owph023896;
 Thu, 26 Dec 2019 18:50:58 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com xBQ9owph023896
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1577353859;
 bh=NhUagKKjH1a+HNNxh90mRJCDlPp2AH9R9coPb0ehMDo=;
 h=From:To:Cc:Subject:Date:From;
 b=sQKn9VfBXtp3Wxh+M4b0yfgWfx/dlWKr4ftTQnJKm5YVElGOQPbAa5TqibegXpMGI
 molTYuHv+JNa/Kawe+PsWljhzyRbE/fS8souFOI0UCIPwvL4qPGYGjtIAu7wn0jywI
 zUYem3YY0FuMc5NDk4MYRtaVewslii2O7x8HH5XmUYqfi/YGJLbaK3EgGiSmPhu8tb
 IGlpkG3YavBEnrxdn2qfszs89QVjRnuSCjo6EZ6fxhs5D5CI4+WDZfGbKgOK5oDYed
 8uxWd91lcgBgJt3ay12uZl0UQ/tH6AoGFR6n7gO01+Nb1f2ejee7RftuXPt6xqJg4v
 eHf2aL+Nh31tA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org
Subject: [PATCH] iommu/arm-smmu-v3: fix resource_size check
Date: Thu, 26 Dec 2019 18:50:56 +0900
Message-Id: <20191226095056.30256-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_015125_381849_41E2F411 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an off-by-one mistake.

resource_size() returns res->end - res->start + 1.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/iommu/arm-smmu-v3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index d9e0d9c19b4f..b463599559d2 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -3599,7 +3599,7 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 
 	/* Base address */
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (resource_size(res) + 1 < arm_smmu_resource_size(smmu)) {
+	if (resource_size(res) < arm_smmu_resource_size(smmu)) {
 		dev_err(dev, "MMIO region too small (%pr)\n", res);
 		return -EINVAL;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
