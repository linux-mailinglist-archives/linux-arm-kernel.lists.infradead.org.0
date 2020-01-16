Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAF113F00C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:20:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YV8jQvCu/Z97ooGDhCbzsEWRYU1TeH+pmI4ZJKZ/40k=; b=ruT0xuPSTRU4r0
	iHYC2n8BVI7GZqgCF/mT9IGSWAmvY0twWLBdjk1dv0tqftB25adU0kCAnEYQH7sOcGhPMwny/56rc
	8gFKoQPDAnLC43ePhLQwtHwcS+RsEc+ZYvEs4GVAIEgA6YcKNm339t4QZeBiCSghsGesOqAWg3GGG
	f4kPRDT6Yz0Q4/Xda2WWfMZYHBJ8mBKPwGxlFXVHNFGeu7Tf4SxlxPc/94cHTzR7K+JzBxOZjREoP
	6SSe3JYr5uKuC1O/r1l+ti5IaFXeju+4qbZ/R8dJdq6bQ39ij/V+MAAuzIdynMRHgHid3cZjrxGpc
	HZiSKsuVZQd3sax1PcnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9kw-0005AJ-N2; Thu, 16 Jan 2020 18:20:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is95Y-00071b-4b
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:38:17 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7859A246DB;
 Thu, 16 Jan 2020 17:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579196266;
 bh=FeTWHdpvBDTIIq6Cc4JwoyeiwKCZmDFPfiY6d1lavtg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XHxl9FtcgP9218af1ZFmAFN90WICjE5OvCdmfe79RlQd9fhtn/BBucYRg75EMi+00
 YbmB11Epz89MsWNtnis5NPD3KxL52lRKagVzRidpFAsgj9z7/v2D6sl1Ln4kOCHawz
 tCfi/f5gl8Ic6KzN/8Oc9Baj+CMwFMGnTxIKx+jw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 089/251] ARM: 8848/1: virt: Align GIC version
 check with arm64 counterpart
Date: Thu, 16 Jan 2020 12:33:58 -0500
Message-Id: <20200116173641.22137-49-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_093748_460206_ECBF2B3C 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Sasha Levin <sashal@kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vladimir Murzin <vladimir.murzin@arm.com>

[ Upstream commit 9db043d36bd379f4cc99054c079de0dabfc38d03 ]

arm64 has got relaxation on GIC version check at early boot stage due
to update of the GIC architecture let's align ARM with that.

To help backports (even though the code was correct at the time of writing)
Fixes: e59941b9b381 ("ARM: 8527/1: virt: enable GICv3 system registers")
Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
Reviewed-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/kernel/hyp-stub.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/hyp-stub.S b/arch/arm/kernel/hyp-stub.S
index 15d073ae5da2..f5e5e3e19659 100644
--- a/arch/arm/kernel/hyp-stub.S
+++ b/arch/arm/kernel/hyp-stub.S
@@ -179,8 +179,8 @@ ARM_BE8(orr	r7, r7, #(1 << 25))     @ HSCTLR.EE
 	@ Check whether GICv3 system registers are available
 	mrc	p15, 0, r7, c0, c1, 1	@ ID_PFR1
 	ubfx	r7, r7, #28, #4
-	cmp	r7, #1
-	bne	2f
+	teq	r7, #0
+	beq	2f
 
 	@ Enable system register accesses
 	mrc	p15, 4, r7, c12, c9, 5	@ ICC_HSRE
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
