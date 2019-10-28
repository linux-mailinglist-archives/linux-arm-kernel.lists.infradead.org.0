Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3C3E6F3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 10:38:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lppe3ZHqrLdOW6bu6j6cLnmbp0CkSN5YxMtZoFnT7Ws=; b=Ul2b9mXqjae1Zs
	p2HyEcGYH90m2EbbWKr7YVLXWA2Ujp8NZb5YXIxCTeeIQSvkrZ79jt4lJT9mzOZO2vAL+L9SCkAjC
	rWauwB/7Z/YavooXsoYIM/oXjxwpvWpFBo7c6Y+Z5F0zlMnt2OMlx7V+iHjwZYSxGzUm5IBHgkuaj
	AM6hwKLJsaI04JGRETpkBr7O7aFhDfrjjaKypxJbHOeUMwNsspJ7FZuDwgA3M9WlYhbJMwWcIMhqT
	00bj4DRyQkl8wzTw5CouvsqL/qLV7bdkBhOJsPgn0LT79akvHCIfTPwvNgng9pieEUw0YSYMNyC4H
	oX35Jdf6eC8yYTdzGbzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP1Tp-0005to-SR; Mon, 28 Oct 2019 09:38:29 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP1T5-0005WD-Tt
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 09:37:45 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9S9bhGQ098567;
 Mon, 28 Oct 2019 04:37:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572255463;
 bh=s0Ju9MGTwhkdP/osJmJnHaang4k/pcUHy4/CGtiLVgY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=VD0ECpbch/kmp674QDI9sBS6i/jrIfZJ7bVnhMhnXF6GLkXtggfzZQTmUi/yQetgc
 E1HNl8mTeE2yzzpfF4AYtbiSKCptMi+C1buIprjtYKyH/vo/n0DhGcpwfgBwY2v8P1
 MJVeq6AlTT38ktByE+FmqR4xbCGTM8DKVUqJFpIo=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9S9bhme005966
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 28 Oct 2019 04:37:43 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 28
 Oct 2019 04:37:38 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 28 Oct 2019 04:37:26 -0500
Received: from lta0400828a.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9S9bW4i027237;
 Mon, 28 Oct 2019 04:37:36 -0500
From: Roger Quadros <rogerq@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-j721e-common-proc-board: Add USB ports
Date: Mon, 28 Oct 2019 11:37:30 +0200
Message-ID: <20191028093730.23094-3-rogerq@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028093730.23094-1-rogerq@ti.com>
References: <20191028093730.23094-1-rogerq@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_023744_073381_F0633A29 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add USB0 as otg port and USB1 as host port.

Although USB0 can be used at super-speed, limit the
speed to high-speed for now till SERDES PHY support
is added.

Signed-off-by: Roger Quadros <rogerq@ti.com>
Signed-off-by: Sekhar Nori <nsekhar@ti.com>
---
 .../dts/ti/k3-j721e-common-proc-board.dts     | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
index 57df79a815f0..2a3cd6174504 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -55,6 +55,18 @@
 			J721E_IOPAD(0x25c, PIN_INPUT, 0) /* (R28) MMC1_SDWP */
 		>;
 	};
+
+	main_usbss0_pins_default: main_usbss0_pins_default {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x290, PIN_OUTPUT, 0) /* (U6) USB0_DRVVBUS */
+		>;
+	};
+
+	main_usbss1_pins_default: main_usbss1_pins_default {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x214, PIN_OUTPUT, 4) /* (V4) MCAN1_TX.USB1_DRVVBUS */
+		>;
+	};
 };
 
 &wkup_pmx0 {
@@ -244,3 +256,26 @@
 	/* Unused */
 	status = "disabled";
 };
+
+&usbss0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_usbss0_pins_default>;
+	ti,usb2-only;
+	ti,vbus-divider;
+};
+
+&usb0 {
+	dr_mode = "otg";
+	maximum-speed = "high-speed";
+};
+
+&usbss1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_usbss1_pins_default>;
+	ti,usb2-only;
+};
+
+&usb1 {
+	dr_mode = "host";
+	maximum-speed = "high-speed";
+};
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
