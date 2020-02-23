Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B04169386
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 03:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6hnDPfSh9NJi5ryD0vteSt+qSHKeyD3yIefOhlfWWE=; b=g6AkK+929/Anb1
	zY0NgEh2teH6VLpYZJvGlwzh+OMtlSJQw/NYyqhMZtc9pD7RLu4xp8ZwHIcojW7hOBUiRibxsRcMz
	z+ts6kn9K71/5krE5TXbYL8NMrZUQA4XOFN548U3McdTkWUj8LeaMgNvLJuJ7OZyq/VInQjcfcd1J
	gx+aPSaPslwmZ0Wbpljb0YJJUIdPKBVKvrp72pHIMz1KwjPvVQp78U2zjjdNa/yqKCvahSmmzEb6l
	NhPftTQYyXw+0OwcBfN0x2DhiTavxvdqcWo0Ho4cF6ifkELav7bfPOf5vQfZQsohPXtPjKpz0bo0l
	ysrCimu4bVsYkLyCpFMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5gw2-0002tQ-Ea; Sun, 23 Feb 2020 02:23:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5gvJ-0002X3-4d
 for linux-arm-kernel@bombadil.infradead.org; Sun, 23 Feb 2020 02:23:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=F9/BljkuKrINAvIUrzOjUa11YL5TTrmsZdT7Nj5lLoE=; b=AlwSK42WtQGzrwa2XokOnmLYJY
 RTzde/Y8ri8VT68U9H0G8U4YVERgfd4hxP/+wWpKNkRsLXDeHJgfLVlC2Ca/QKK7/L0V3w6h7Z8Tm
 Q5Ra+Fdf4GL+a/De3pOH5Bc5bA6oGZe+JsJ2Ef6faBGKBE7OQnnFTRasrrt95bTQkwKCGnxE2fk8a
 QiDYjry3nwfUGIn4Mp0rAZnjV6nOwhUSaNx49q/biqT4C4CgyeMoS5MG1Gtu2Z4CU5TKTQ1wz36vL
 1K1MFrLpFkJHFCWjGbiRcnb4mjxXCeznuXpnWLL8IevXzLY+auRnkiO8K4qfHwRXwGsTImzafkN6T
 k9SZ1mfQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5gv4-0004EI-Kl
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 02:23:10 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7679021D56;
 Sun, 23 Feb 2020 02:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582424572;
 bh=7owaZk17bIn9LmORoSnigHfR+cQw1OAbEYXdXpklBJg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0J+wMWPkn8G8rKtCTmYRrifk5Sm7U90kl5uUWDiPrJjdcI32TL63Z2+qajCC72Tzd
 ul5pucBDGjirJNB/tpOa6jdE+p+hhfm3WxvDwh8411CmyfVzgIUlSUHDb0+RfURUJ0
 zrW0epau1T2AjIDuhqWQ1RHTIc0iGOm41MTZDPrY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 13/50] perf/smmuv3: Use
 platform_get_irq_optional() for wired interrupt
Date: Sat, 22 Feb 2020 21:21:58 -0500
Message-Id: <20200223022235.1404-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200223022235.1404-1-sashal@kernel.org>
References: <20200223022235.1404-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_022300_232461_4EFC5DEE 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -7.1 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-7.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Will Deacon <will@kernel.org>,
 John Garry <john.garry@huawei.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: John Garry <john.garry@huawei.com>

[ Upstream commit 0ca2c0319a7bce0e152b51b866979d62dc261e48 ]

Even though a SMMUv3 PMCG implementation may use an MSI as the form of
interrupt source, the kernel would still complain that it does not find
the wired (GSIV) interrupt in this case:

root@(none)$ dmesg | grep arm-smmu-v3-pmcg | grep "not found"
[   59.237219] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.8.auto: IRQ index 0 not found
[   59.322841] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.9.auto: IRQ index 0 not found
[   59.422155] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.10.auto: IRQ index 0 not found
[   59.539014] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.11.auto: IRQ index 0 not found
[   59.640329] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.12.auto: IRQ index 0 not found
[   59.743112] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.13.auto: IRQ index 0 not found
[   59.880577] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.14.auto: IRQ index 0 not found
[   60.017528] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.15.auto: IRQ index 0 not found

Use platform_get_irq_optional() to silence the warning.

If neither interrupt source is found, then the driver will still warn that
IRQ setup errored and the probe will fail.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: John Garry <john.garry@huawei.com>
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/perf/arm_smmuv3_pmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index 191f410cf35cd..2f8787276d9b8 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -772,7 +772,7 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 		smmu_pmu->reloc_base = smmu_pmu->reg_base;
 	}
 
-	irq = platform_get_irq(pdev, 0);
+	irq = platform_get_irq_optional(pdev, 0);
 	if (irq > 0)
 		smmu_pmu->irq = irq;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
