Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA961188B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 13:45:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7SJnU7PI/vyOtyPtkOhcMRWkoUdVMa0ycCyHkEfaLV8=; b=tpOvLz4r3uu7BL
	fqRF40B0yinn8w3tDaOCf/PvsRm0v1RgkHO3Pz3Ugr0bWN3WX0fDAV+s1E08q11Sx2iA/9qP/yq0t
	2twetpMD4CN+USCWIcgybpOUwAwFJZ+seswjrm1KNB9+NtL813LPUHt/3t7YR4Ju+z2Ho1D7+fxwE
	QCXeUZViGgjDDzcd7Z2ctNy8Lzp/FjFE2IyXjApSgQo2gJnSKdibI7vHUy3vaZJLw3iHkaXvkiGiE
	dL62h0837xe0CjhinrQK5YIEZ1xA5lWVjm/brfb1QNydd84nbwC+aII9BpoTnYQ0rJBNPiJrKKIVA
	fliUIx9yrxr5Zlvggojg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieetF-0003iE-7V; Tue, 10 Dec 2019 12:45:21 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieet1-0003Cw-8D; Tue, 10 Dec 2019 12:45:08 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1ieesx-00054G-9u; Tue, 10 Dec 2019 13:45:03 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 xBACj2Fp005769
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Tue, 10 Dec 2019 13:45:02 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH 2/3] arm64: dts: rockchip: Enable PD for USB-C-Port on
 rk3399-roc-pc.
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Organization: five technologies GmbH
Message-ID: <678df227-38be-47af-7ee3-741a391a196c@fivetechno.de>
Date: Tue, 10 Dec 2019 13:45:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1575981907;
 d34a8f31; 
X-HE-SMSGID: 1ieesx-00054G-9u
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_044507_470853_1B995FF0 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

USB-C-Port 0 on rk3399-roc-pc is designed to supply the board.
To meet the power requirements of up to 45W a power delivery (PD)
compatible supply is needed. To configure the PD the node of the
fusb302 needs a connector property with desired PD description.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
Presently the board in mainline has to be powered from a 12V supply,
connected to two pins on the expansion header as the standard 5V
delivered by the unconfigured USB-C plug is not enough for higher
loads or peripherals on USB or M.2.

With this patch the board requests 15V from the PD and runs fine
on high loads with NVME SSD, Ethernet, SDIO WLAN and USB peripherals.
During boot the 12V supply is still needed for some seconds,
as the fusb302 shuts down or resets the PD shortly when initializing (BUG?).

The board's 12V line is running presently on 5V, the default output
voltage of the MP8859 on I2C-7, for wich no mainline kernel driver exists yet.
---
  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 16 ++++++++++++++--
  1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 8e01b04144b7..90783b2b1d1f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -6,6 +6,7 @@
  /dts-v1/;
  #include <dt-bindings/input/linux-event-codes.h>
  #include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/usb/pd.h>
  #include "rk3399.dtsi"
  #include "rk3399-opp.dtsi"
  
@@ -540,11 +541,22 @@ fusb0: usb-typec@22 {
  		compatible = "fcs,fusb302";
  		reg = <0x22>;
  		interrupt-parent = <&gpio1>;
-		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
  		pinctrl-names = "default";
  		pinctrl-0 = <&fusb0_int>;
  		vbus-supply = <&vcc_vbus_typec0>;
-		status = "okay";
+
+		usb_con: connector {
+			compatible = "usb-c-connector";
+			label = "USB-C-0";
+			power-role = "dual";
+			try-power-role = "sink";
+			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
+				     PDO_VAR(5000, 15000, 3000)
+				     PDO_PPS_APDO(5000, 15000, 3000)>;
+			op-sink-microwatt = <45000000>;
+		};
  	};
  };
  
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
