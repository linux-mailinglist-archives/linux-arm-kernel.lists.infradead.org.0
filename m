Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4907AB61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkBVMl0MsbYhmyRxlCW8OvacfYbtQW4UHRCXwlGXwBk=; b=Tdf192CO49Qy57
	n3NLD65/1ikEDTyGe1W5Qd7UqGNEw63aKQ67jQSvxRcKDlcTnNds9hV2letWcgwODSmESPTedvnlv
	dCsJJ4jBV3rCPI+WE+DalkZPlvC06PfKjatqWo3eV52z1jWl+QswUa03Y0NYhdLbZxyvx4c4Y7X8T
	rMw/9WWitM8CPIoRVYBPo52V0FG/Nv/zPErLb2tYjZm/uotI6Y6mV+Dmd0maG/JEUqiSVCrc4h7cg
	sw/u6KsqEcwiOwGw5z72K6RSd78q5yDXBaQ0lIT9Le5fQe017NQTpDxQ7kFOEiMZlmsbrm/RlbPza
	iHhtka0jvJP/0E5+9x4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTRE-00067e-6K; Tue, 30 Jul 2019 14:49:16 +0000
Received: from mxout014.mail.hostpoint.ch ([2a00:d70:0:e::314])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTP7-0004Rw-5o
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:47:08 +0000
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout014.mail.hostpoint.ch with esmtp (Exim 4.92 (FreeBSD))
 (envelope-from <dev@pschenker.ch>)
 id 1hsTP2-0005MD-Fw; Tue, 30 Jul 2019 16:47:00 +0200
Received: from [46.140.72.82] (helo=philippe-pc.toradex.int)
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91 (FreeBSD))
 (envelope-from <dev@pschenker.ch>)
 id 1hsTP2-000Mva-92; Tue, 30 Jul 2019 16:47:00 +0200
X-Authenticated-Sender-Id: dev@pschenker.ch
From: Philippe Schenker <dev@pschenker.ch>
To: marcel.ziswiler@toradex.com, max.krummenacher@toradex.com, stefan@agner.ch,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 08/22] ARM: dts: imx7-colibri: Add touch controllers
Date: Tue, 30 Jul 2019 16:46:35 +0200
Message-Id: <20190730144649.19022-9-dev@pschenker.ch>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730144649.19022-1-dev@pschenker.ch>
References: <20190730144649.19022-1-dev@pschenker.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_074705_213700_B8856340 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a00:d70:0:e:0:0:0:314 listed in] [list.dnswl.org]
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Philippe Schenker <philippe.schenker@toradex.com>

Add atmel mxt multitouch controller and TouchRevolution multitouch
controller which are connected over an I2C bus.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 37 +++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
index d4dbc4fc1adf..f6cbbe876532 100644
--- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
@@ -145,6 +145,34 @@
 &i2c4 {
 	status = "okay";
 
+	/*
+	 * the PCAPs use SODIMM 28/30, also used for PWM<B>, PWM<C>, aka pwm2,
+	 * pwm3. so if you enable one of the PCAP controllers disable the pwms
+	 */
+	atmel_mxt_ts: atmel_mxt_ts@4a {
+		compatible = "atmel,maxtouch";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpiotouch>;
+		reg = <0x4a>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <9 IRQ_TYPE_EDGE_FALLING>; /* SODIMM 28 */
+		reset-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>; /* SODIMM 30 */
+		status = "disabled";
+	};
+
+	touch: touchrevf0710a@10 {
+		compatible = "touchrevolution,fusion-f0710a";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpiotouch>;
+		reg = <0x10>;
+			/* SODIMM 28, Pen down interrupt */
+		gpios = <&gpio1 9 GPIO_ACTIVE_HIGH
+			/* SODIMM 30, Reset interrupt */
+			 &gpio1 10 GPIO_ACTIVE_LOW
+			>;
+		status = "disabled";
+	};
+
 	/* M41T0M6 real time clock on carrier board */
 	rtc: m41t0m6@68 {
 		compatible = "st,m41t0";
@@ -200,3 +228,12 @@
 	vmmc-supply = <&reg_3v3>;
 	status = "okay";
 };
+
+&iomuxc {
+	pinctrl_gpiotouch: touchgpios {
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO09__GPIO1_IO9		0x74
+			MX7D_PAD_GPIO1_IO10__GPIO1_IO10		0x14
+		>;
+	};
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
