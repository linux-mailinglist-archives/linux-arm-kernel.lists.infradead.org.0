Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EB1D6BA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 00:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tApyNuDTzEO4O/Z/Z5gMOHxjFdlTB2ajT0xTnOXidxQ=; b=V7jsRlqKN5Ig9jkEFH5Pk1gXDJ
	7naGdUbdtMwgaPRWA87sOq7w2mL/vrC6iMHDVNs3bEvm1HS8VqiU9BK8f2iUehbBR+edFQsgIwPN8
	w3Ty2vIYr0/XvXAyWI84E+HnS92fgWxl+9+7HSqrl5cz3j+6fR+ZfxulUje4M1XFxCclmDiIFV8tC
	ikHhMoz47+40O3ScN/UEGVfoNPXYhr6UvHOVYtFqhj19DVsnXtJ3WfxSlOeSyB+osaVo33wV1VJO2
	CnroCOB9xcD9e0l0JCDI8GFd0/a3vuvfYaAzfwQ40Y745x/l07zWODZY5GGh6PNnMGjOjDSPJCk5h
	UZ7sLu1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK8gs-0002yn-Fh; Mon, 14 Oct 2019 22:19:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK8gU-0002p4-HD; Mon, 14 Oct 2019 22:19:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC5101000;
 Mon, 14 Oct 2019 15:19:20 -0700 (PDT)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 166393F68E;
 Mon, 14 Oct 2019 15:19:19 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/3] arm64: dts: rockchip: Add RK3328 audio pipelines
Date: Mon, 14 Oct 2019 23:19:05 +0100
Message-Id: <a09c8d795e7a66fb7bc47af2b6580f6e8dbec91e.1571090991.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <82324d17b770fa8ea189fa708490d2c8c0c9290e.1571090991.git.robin.murphy@arm.com>
References: <82324d17b770fa8ea189fa708490d2c8c0c9290e.1571090991.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_151922_617444_DDE56F81 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The audio pipelines for HDMI and the analog codec are internal to the
SoC, so it makes sense to describe them at that level such that boards
need only enable the respective nodes for outputs they implement.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 32 ++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 31cc1541f1f5..91306ebed4da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -142,6 +142,22 @@
 		};
 	};
 
+	analog_sound: analog-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "Analog";
+		status = "disabled";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&codec>;
+		};
+	};
+
 	arm-pmu {
 		compatible = "arm,cortex-a53-pmu";
 		interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
@@ -156,6 +172,22 @@
 		ports = <&vop_out>;
 	};
 
+	hdmi_sound: hdmi-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <128>;
+		simple-audio-card,name = "HDMI";
+		status = "disabled";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&hdmi>;
+		};
+	};
+
 	psci {
 		compatible = "arm,psci-1.0", "arm,psci-0.2";
 		method = "smc";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
