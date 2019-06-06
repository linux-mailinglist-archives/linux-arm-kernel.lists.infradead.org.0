Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 417B9380F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 00:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bV7MS1ty2Gwh8ltY/ia+0h7aaeR6jiiWDjuDPOr99uA=; b=Hx+hKcHZAmjkok
	xbBHIjRmKnqiOmHVIfcfyeeOLhbX0AZ5GAK8RJjeA6J+Wo8VNLk+5QNBuHv+5Mju1cMfcLLUqguxr
	pwa4H79jr8TbGX0bxQrvpebWFJbsXnLgAj2F7bTbKPcyY9WBWcodSZSp5IZ2xrF93Bf903MW4cKVD
	86Z1cRvbIlWJ8POpiamjHoejo0IXajENx2ser6pXCaYSCEeDa3dQJKvxWIdIYlGfJuCw+tBE5Wsan
	UkOZgHZAbjcHVvfFh1CKQThuA7aVIDytSmxkXIH2+sUIveIvY7IZ8eZ6pm9rkXM52KJEzPZhP5bOf
	dcWVInDrj7NZjy3FahZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hZ11X-00051O-ED; Thu, 06 Jun 2019 22:38:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hZ0vS-0002w7-5K
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 22:32:04 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 651672089E;
 Thu,  6 Jun 2019 22:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559860321;
 bh=dxSTjr0R4Nmn8oruH+E1JZSLXwDMBirUqbkJBkoD1Gc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LFPu3UneKqb0mDBK5N6q4xypTAcU5pU2BFwMAm78p7CbLjRqsAQ1ubtJEauLIQ9m0
 BHCpMD2kQZR6ecZ6tLtk2wW7ockFhlri+e6F6MGv32PpzbKaVfDD7FSViZCNbASURX
 yHTNcKZRg66Naghz3XHq5vSpuqvyLQoUA+PiSTss=
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: stratix10: use the "altr,
 socfpga-stmmac-a10-s10" binding
Date: Thu,  6 Jun 2019 17:31:40 -0500
Message-Id: <20190606223140.4315-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190606223140.4315-1-dinguyen@kernel.org>
References: <20190606223140.4315-1-dinguyen@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_153202_740874_AED250E5 
X-CRM114-Status: GOOD (  13.01  )
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
clock, and FPGA signalling, the Stratix10 SoC needs to use the
"altr,socfpga-stmmac-a10-s10" binding to set the correct modes.

On Stratix10, each EMAC has its own register for PHY modes, and they all have
the same offset, thus we can use the 2nd parameter to specify the offsets
for the FPGA signal bits.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index fe107ce115ef..a781e699a538 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -149,7 +149,7 @@
 		};
 
 		gmac0: ethernet@ff800000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.74a", "snps,dwmac";
+			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.74a", "snps,dwmac";
 			reg = <0xff800000 0x2000>;
 			interrupts = <0 90 4>;
 			interrupt-names = "macirq";
@@ -167,7 +167,7 @@
 		};
 
 		gmac1: ethernet@ff802000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.74a", "snps,dwmac";
+			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.74a", "snps,dwmac";
 			reg = <0xff802000 0x2000>;
 			interrupts = <0 91 4>;
 			interrupt-names = "macirq";
@@ -180,12 +180,12 @@
 			rx-fifo-depth = <16384>;
 			snps,multicast-filter-bins = <256>;
 			iommus = <&smmu 2>;
-			altr,sysmgr-syscon = <&sysmgr 0x48 0>;
+			altr,sysmgr-syscon = <&sysmgr 0x48 8>;
 			status = "disabled";
 		};
 
 		gmac2: ethernet@ff804000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.74a", "snps,dwmac";
+			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.74a", "snps,dwmac";
 			reg = <0xff804000 0x2000>;
 			interrupts = <0 92 4>;
 			interrupt-names = "macirq";
@@ -198,7 +198,7 @@
 			rx-fifo-depth = <16384>;
 			snps,multicast-filter-bins = <256>;
 			iommus = <&smmu 3>;
-			altr,sysmgr-syscon = <&sysmgr 0x4c 0>;
+			altr,sysmgr-syscon = <&sysmgr 0x4c 16>;
 			status = "disabled";
 		};
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
