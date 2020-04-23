Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC761B51ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 03:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3VjO3VEGA15FPUarFbTKZFd/8eP2tZ6YTeaySDyvJs=; b=WPPAJav4XiQhE6
	rEflWy3D/iBk2j4Mta/+xAVy29jnauWR+YNhymM27QURzxcF3/CvVl7wEUJ5tXrSfOknoDX+Sejw4
	wzt7jh3LCloApg+5IZjjB7/oXI1PZXN6EEY29Za+nstdr1+UoUXtoBsQMFcr86nvy3HSiJbSIXgWa
	FcxthtY+8gk3AkRwvB6QqdC2YEOkYQsQjE3TE5moB/X3XVHwuIpjOTdyAt11WdmtWOOMXxq6WgE8T
	1UuKt1v1DHxc9qgKv2lmDOJhZ7TugvMSbdKfjJXbEYU+1tqOBgQCunVQbSlVpM6xCLhs9/V0hJnMh
	aV84v8h0w9fuUkroECcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRQm8-0001au-78; Thu, 23 Apr 2020 01:35:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRQlJ-0007AQ-E1; Thu, 23 Apr 2020 01:34:47 +0000
X-UUID: 585cb5df7db04d9c873603b1b71ddea6-20200422
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=so/zdDg19uF6HPbarG0PI/5cKMUNmyanUGRklLZ9AwM=; 
 b=ZkmSxdP055ncP/Ll4/3nL4MVWoNnjqZD/XDRum/KmYeny6LZCX+FVvC5s63RWn7Om867gHTROtVGje/52V39ANzt6cIcbE2KZF6DDtv7ByYJ3aew1Ah3oelyAkgDhCTa8TIp2+d8ewSsUTHnAbWrI5djrahAvIjnEjLQEjy6I7c=;
X-UUID: 585cb5df7db04d9c873603b1b71ddea6-20200422
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1665842159; Wed, 22 Apr 2020 17:34:33 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 22 Apr 2020 18:24:35 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 23 Apr 2020 09:24:33 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 23 Apr 2020 09:24:36 +0800
From: Fengping yu <fengping.yu@mediatek.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Marco Felsch <m.felsch@pengutronix.de>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>
Subject: [PATCH v5 1/3] dt-bindings: add matrix keypad documentation
Date: Thu, 23 Apr 2020 09:19:58 +0800
Message-ID: <20200423011958.30521-2-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200423011958.30521-1-fengping.yu@mediatek.com>
References: <20200423011958.30521-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 00A59FD38758F0710FDFDC682EE936104343DD5F0C0F1242637520CD4DBE4A932000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_183445_501076_F892D766 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 "fengping.yu" <fengping.yu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "fengping.yu" <fengping.yu@mediatek.com>

Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
---
 .../devicetree/bindings/input/mtk-kpd.txt     | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt

diff --git a/Documentation/devicetree/bindings/input/mtk-kpd.txt b/Documentation/devicetree/bindings/input/mtk-kpd.txt
new file mode 100644
index 000000000000..8b154a5e2f7d
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/mtk-kpd.txt
@@ -0,0 +1,61 @@
+* Mediatek's Keypad Controller device tree binding
+
+Mediatek's Keypad controller is used to interface a SoC with a matrix-type
+keypad device. The keypad controller supports multiple row and column lines.
+A key can be placed at each intersection of a unique row and a unique column.
+The keypad controller can sense a key-press and key-release and report the
+event using a interrupt to the cpu.
+
+Required properties:
+- compatible should contain:
+	* "mediatek,kp" for common keypad
+	* "mediatek,mt6779-keypad" for specific keypad chip
+
+- reg: The base address of the Keypad register bank.
+
+- interrupts: A single interrupt specifier.
+
+- mediatek,debounce-us: Debounce interval in microseconds, maximum value
+  is 256000 microseconds.
+
+- keypad,num-rows: Number of row lines connected to the keypad controller, it is
+	not equal to PCB rows number, instead you should add required value for each IC.
+
+- keypad,num-columns: Number of column lines connected to the keypad controller,
+	it is not equal to PCB columns number, instead you should add required value
+	for each IC.
+
+- linux,keymap: The keymap for keys as described in the binding document
+  devicetree/bindings/input/matrix-keymap.txt.
+
+- pinctrl: Should specify pin control groups used for this controller.
+  See ../pinctrl/pinctrl-bindings.txt for details.
+
+- clocks: Must contain one entry, for the module clock.
+  See ../clocks/clock-bindings.txt for details.
+
+- clock-names: Names of the clocks listed in clocks property in the same order.
+
+Optional Properties:
+- wakeup-source: use any event on keypad as wakeup event.
+
+Example:
+
+	keypad: kp@10010000 {
+		compatible = "mediatek,kp";
+		reg = <0 0x10010000 0 0x1000>;
+		wakeup-source;
+		interrupts = <GIC_SPI 75 IRQ_TYPE_EDGE_FALLING>;
+		clocks = <&clk26m>;
+		clock-names = "kpd";
+	};
+
+	&keypad {
+		mediatek,debounce-us = <32000>;
+		keypad,num-rows = <8>;
+		keypad,num-columns = <9>;
+		linux,keymap = < MATRIX_KEY(0x00, 0x00, KEY_VOLUMEDOWN) >;
+		status = "okay";
+		pinctrl-names = "default";
+		pinctrl-0 = <&kpd_gpios_def_cfg>;
+	};
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
