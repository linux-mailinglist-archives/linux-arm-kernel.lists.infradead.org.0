Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 622664D24C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiX9vFkSX7k0rmN/a1W68NAVwzlUAIoebUlYDVkE+W8=; b=fz4iTZmWxKwbNW
	dfPGgZ4VjdDOvDRRuRXcXJw+IydKwef35F3aPN1d9nTFEJBaavp5mJ98RgUUm6gIcfU7Tktx3e3yh
	DUMszFgANuwxp2hZTjA5BoJfmsyhE5YPxdE9KZtyHOsN2RqF+DtKrrGPu0K+WWMDK/6j7nHTHiA5C
	rl0UwlKHFKa7gOPq6Fhl9j0JF+cXs2yHzzh5iXf1/Ltut3PGzSXUqiNIPSMcdkga49/vmdY7wr8HX
	WvOu0XRDIBc1Yi4tjicv82UcoYCcojrP/dyBoGnR3THWpQps+YcoidPBHe9aMPZmIvH5EhSr543LG
	iT+95aKhHnW2kc2zAacw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdz8s-000787-Og; Thu, 20 Jun 2019 15:38:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdz8N-0006wU-NP
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:37:56 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0AF1B208CA;
 Thu, 20 Jun 2019 15:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561045074;
 bh=tzFoQg+XZWpuWpU/eNJJDW2zLVEyi2sxbQ7e/gymY9w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=H8kid3qep27TZNEAi1hjCilbnrVdIzX7fGHe4NhuveoCtCjvGIjBKteZMlz1cDb/F
 Z05ReQoonGuTp6an5RXOTtChe66J7nNz1eqoEt7tIKtY1vrZ9x0tBYyK37MJ8Xxo2F
 MhzfQhTAqTtQrhSMZvVRh7N5U6d/bVSpxFTGjF+E=
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH 2/2] arm64: dts: agilex/stratix10: Add reset properties for DMA
Date: Thu, 20 Jun 2019 10:37:32 -0500
Message-Id: <20190620153732.26738-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190620153732.26738-1-dinguyen@kernel.org>
References: <20190620153732.26738-1-dinguyen@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_083755_776974_63677583 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dinguyen@kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add both the reset and reset-ocp properties for the DMA node on the
Stratix10 and Agilex platforms.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 2 ++
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi     | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index a781e699a538..5db9ff05fc33 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -335,6 +335,8 @@
 			#dma-requests = <32>;
 			clocks = <&clkmgr STRATIX10_L4_MAIN_CLK>;
 			clock-names = "apb_pclk";
+			resets = <&rst DMA_RESET>, <&rst DMA_OCP_RESET>;
+			reset-names = "dma", "dma-ocp";
 		};
 
 		rst: rstmgr@ffd11000 {
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index e4ceb3a73c81..36abc25320a8 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -249,6 +249,8 @@
 			#dma-cells = <1>;
 			#dma-channels = <8>;
 			#dma-requests = <32>;
+			resets = <&rst DMA_RESET>, <&rst DMA_OCP_RESET>;
+			reset-names = "dma", "dma-ocp";
 		};
 
 		rst: rstmgr@ffd11000 {
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
