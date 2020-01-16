Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E220B13E1D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:53:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMDO4OURabxjqabetC3rVY5xDa4k9Kc3BGgz/7hdRAM=; b=Kl+wuGXGWNe+ot
	ogCtuGBJID/OrN9gLp9dcx2B1EJIH82AbjmJVNZzojozuv7rV511k+Y37DBlAvdpIGBSF2BgGsq7t
	sX0XL/ilxG/GZ6ZqFruOTd2aLvMLsElgIUHKrzeGeWBY78bxUWRJnia/vQ5OR3ICb5ZwJRDuGvLJt
	PRHg5KkIC20AwW0LZLosRFq+1HN7t9gYBCI9E4kANjc7sjknEEDEdZd9yixZYUwcMT7FlrrAgHmVu
	/q70aSrktRr1rxWilPPU8A8+jfZGNjoMDRh82Kwwe5qIJE7DD8xDDyCejwVrjKYrhfyxIjge1zoOV
	gKkMDyACsNbhMVxOLDNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8OI-0007yL-EU; Thu, 16 Jan 2020 16:53:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Nq-0007ql-Cf
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:52:42 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20D7E2073A;
 Thu, 16 Jan 2020 16:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193557;
 bh=ih2gnmgItQFLMhY5RSN4tZvX7fs5Sa/mH/Wd0Wfpllc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nB22gdPyqHxHYRqkwwRIuOmfi9ATMWO0XJZ4d2KcQI+tDdXkO2CmRGlO46ZllRY0W
 bsUPGuFc16YKEBUIXxMiaKf0sLiQpvAjh9GhBVRIhkR9Ig5Irhi1EDE+lx/eibMmZg
 eGuYVCt52363fRo9bkJ95xPzkVUIjOhANCvLuFaw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 103/205] arm64: dts: allwinner: a64: Re-add PMU
 node
Date: Thu, 16 Jan 2020 11:41:18 -0500
Message-Id: <20200116164300.6705-103-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085238_499244_ECAAF1B0 
X-CRM114-Status: GOOD (  10.86  )
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
Cc: Sasha Levin <sashal@kernel.org>, Andre Przywara <andre.przywara@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Przywara <andre.przywara@arm.com>

[ Upstream commit 6b832a148717f1718f57805a9a4aa7f092582d15 ]

As it was found recently, the Performance Monitoring Unit (PMU) on the
Allwinner A64 SoC was not generating (the right) interrupts. With the
SPI numbers from the manual the kernel did not receive any overflow
interrupts, so perf was not happy at all.
It turns out that the numbers were just off by 4, so the PMU interrupts
are from 148 to 151, not from 152 to 155 as the manual describes.

This was found by playing around with U-Boot, which typically does not
use interrupts, so the GIC is fully available for experimentation:
With *every* PPI and SPI enabled, an overflowing PMU cycle counter was
found to set a bit in one of the GICD_ISPENDR registers, with careful
counting this was determined to be number 148.

Tested with perf record and perf top on a Pine64-LTS. Also tested with
tasksetting to every core to confirm the assignment between IRQs and
cores.

This somewhat "revert-fixes" commit ed3e9406bcbc ("arm64: dts: allwinner:
a64: Drop PMU node").

Fixes: 34a97fcc71c2 ("arm64: dts: allwinner: a64: Add PMU node")
Fixes: ed3e9406bcbc ("arm64: dts: allwinner: a64: Drop PMU node")
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 70f4cce6be43..ba41c1b85887 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -142,6 +142,15 @@
 		clock-output-names = "ext-osc32k";
 	};
 
+	pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
+	};
+
 	psci {
 		compatible = "arm,psci-0.2";
 		method = "smc";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
