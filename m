Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BF8380D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 00:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gvdRyljFaVQog1Z0jKRnrgrqmFnrSd8tmzXsyAUQBp0=; b=H8Ny4A5HcZpMPg
	LicXuDHIFuqLr7LXnW0HC1mSne01R2D1lzjLEz/UkAcdGWc2/Ah+5HuXaRUg+OzeCawM7xQpNcEyf
	T2efAPHc1gEs1xK64vmg4lz0CkFNd1DMRY0M/6hccqgU5sshINvkT/rvkhWIDQNs4SMH1upJ2HMst
	mYDRKqusIoBDJHBIwnd8Pn6cmcl+A4NturICQPjGjrfNUHL78+QsuuBkTAfvrI7HaSU8Wnovo3gAO
	Fl1WCvMbmd0mjtm3ZuAtmncEXMqycSRbizCZichT4RKpK3mGr6cvwpAIJivdkglS7VgohZ+PIsEnv
	MVkmZ1UyINNLk9ChLOjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hZ0w9-0002x0-P6; Thu, 06 Jun 2019 22:32:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hZ0vR-0002w6-Vl
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 22:32:04 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9EDF120673;
 Thu,  6 Jun 2019 22:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559860321;
 bh=SS+PBLLdlJ6jTS3cmq+GVgQg3C1zWnR7yp31oAF8mHM=;
 h=From:To:Cc:Subject:Date:From;
 b=ZewUAD+xxS5NkxUJRu8jHJtNiBqKaMa9BAVm5anSdCvHebCOXTzfAuaNtFeRwzodd
 MjU70lIkRdEAVU1gZjSP1K5VRHCw4TBMfBuMCE0EzZUnvQY6AUMzAKAOJNH/8A41e0
 nuQFgrgJ7KtWmDSATHFDRE/oLvc9xY1YuEj1kxXo=
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: socfpga: use the "altr,
 socfpga-stmmac-a10-s10" binding
Date: Thu,  6 Jun 2019 17:31:39 -0500
Message-Id: <20190606223140.4315-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_153202_730725_C8361534 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, dinguyen@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Because of register and bits difference for setting PHY modes, PTP reference
clock, and FPGA signalling, the Arria10 SoC needs to use the
"altr,socfpga-stmmac-a10-s10" binding to set the correct modes.

On Arria10, each EMAC has its own register for PHY modes, and they all have
the same offset, thus we can use the 2nd parameter to specify the offsets
for the FPGA signal bits.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_arria10.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index ae24599d5829..61a767c905b3 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -418,7 +418,7 @@
 		};
 
 		gmac0: ethernet@ff800000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.72a", "snps,dwmac";
+			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.72a", "snps,dwmac";
 			altr,sysmgr-syscon = <&sysmgr 0x44 0>;
 			reg = <0xff800000 0x2000>;
 			interrupts = <0 92 IRQ_TYPE_LEVEL_HIGH>;
@@ -438,8 +438,8 @@
 		};
 
 		gmac1: ethernet@ff802000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.72a", "snps,dwmac";
-			altr,sysmgr-syscon = <&sysmgr 0x48 0>;
+			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.72a", "snps,dwmac";
+			altr,sysmgr-syscon = <&sysmgr 0x48 8>;
 		        reg = <0xff802000 0x2000>;
 			interrupts = <0 93 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
@@ -458,8 +458,8 @@
 		};
 
 		gmac2: ethernet@ff804000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.72a", "snps,dwmac";
-			altr,sysmgr-syscon = <&sysmgr 0x4C 0>;
+			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.72a", "snps,dwmac";
+			altr,sysmgr-syscon = <&sysmgr 0x4C 16>;
 			reg = <0xff804000 0x2000>;
 			interrupts = <0 94 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
