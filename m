Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 398641F50D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLArB9iy8MIZrkcy+aynnT1a6ptTUR4hH2z7zBixf4A=; b=Q7/LNeY04ximsB
	WmQTGmk/3viszBLUYruWXPAmvJTg2ZslLU5mKkzve2Q6mtrJ5a5upbYMVb2kdjJXmenwHIUr3syqY
	jPbj3Y8zqLmzf1kj9eB7tp7oNOHCH0yADOqPCh2PqbuJYIftp4oxx0/49isNRMEpMTi/TT1G1RToO
	ZT2C6NcLqS6Qkp5FVoaPdatqQcPaIwxn39lMstrzyKC7NyFwEajId0JVpyYS7SQ05Og9+axQmAAX+
	zQBvN/J/2+b+NY1m2CRqCYeqqNdhgPj0E0zxxtS6omU0+OefKh24afkBtYnzaln+fBXVvFbEiWP4r
	nQI2XTSXk4m/ZDt7wJEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwh8-0001A7-PK; Wed, 10 Jun 2020 09:06:50 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwgJ-0000Qt-VD
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:06:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591779959; x=1623315959;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=qtiUArQA4p5apTipUrkfZICOBUdYloVo/SZ9mlHt4CE=;
 b=Y6F1J1An8+MnuPpMHZhvmT1JdVyrl09Cz8qduE3vT+b+XiRvVxmeDbPf
 UTAukGSM/9YJo/BY2ZU5mA4A/WjeH4Ss6FnRECgOscViJEQz2e0GlDZOF
 RiTkGvmsqc8Gi2n4kDj6uf9m7s7Yg7M+fbzcJTumdZS5Dz7O5+vA8ZIpK
 8dPsq8zul+IwmYmEFQ44Ef28l6yBU1sUrQmFezB5W99oGRmvoE2jv2wtr
 tzW85NvnFA/V533E06vnTFKM7mw8od7171HWC04yncmzKW3S7eKx/5KxU
 /qrdnKyNqt4dBBhVy43ZMSYUeX+hGmKYyxBmkEVM2/35KMMuu7pQcbk/j g==;
IronPort-SDR: M4p3KWa4v3dCbOqfupbupyIlgMFVn+ggBBOGIuGBUL4gm84DSrObBOzSMfdhoI6a+u5rPBMcsM
 xG66W88fqLYD/xhoxvF7RqmDw/zuMemtZnxO7J+vqySlRTI/TZ1KuwRM8QYwwrcHsHY+3illSj
 AYELCK8PhZ5CN2ILWoTYlez7/lgWnmtsWcfIyYZ1/5XU88b1OUMGwMhiymbyFn6nkK6H57h3Rf
 AbzfBK9xSMsfYGrI3RpFzFivBTqCNEi872FDud0vctBZMZzLP/lNdvA5waJMq9EoT5AgCkyzyc
 nSs=
X-IronPort-AV: E=Sophos;i="5.73,495,1583218800"; d="scan'208";a="82953284"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jun 2020 02:05:59 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Wed, 10 Jun 2020 02:05:57 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1847.3 via Frontend Transport; Wed, 10 Jun 2020 02:05:53 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>, <nicolas.ferre@microchip.com>,
 <ludovic.desroches@microchip.com>, <tglx@linutronix.de>,
 <jason@lakedaemon.net>, <maz@kernel.org>
Subject: [PATCH v2 3/3] ARM: dts: sam9x60: add rtt
Date: Wed, 10 Jun 2020 12:05:36 +0300
Message-ID: <1591779936-18577-4-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591779936-18577-1-git-send-email-claudiu.beznea@microchip.com>
References: <1591779936-18577-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_020600_036178_955FAAF3 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add RTT. Allong with it enable GBPR as it is requested by RTT.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/boot/dts/at91-sam9x60ek.dts | 9 +++++++++
 arch/arm/boot/dts/sam9x60.dtsi       | 7 +++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
index b484745bf2d4..39d946e0a47c 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -309,6 +309,10 @@
 	};
 };
 
+&gpbr {
+	status = "okay";
+};
+
 &i2s {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2s_default>;
@@ -613,6 +617,11 @@
 	};
 };
 
+&rtt {
+	atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
+	status = "okay";
+};
+
 &shutdown_controller {
 	atmel,shdwc-debouncer = <976>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sam9x60.dtsi b/arch/arm/boot/dts/sam9x60.dtsi
index 6763423d64b8..d10843da4a85 100644
--- a/arch/arm/boot/dts/sam9x60.dtsi
+++ b/arch/arm/boot/dts/sam9x60.dtsi
@@ -661,6 +661,13 @@
 				status = "disabled";
 			};
 
+			rtt: rtt@fffffe20 {
+				compatible = "microchip,sam9x60-rtt", "atmel,at91sam9260-rtt";
+				reg = <0xfffffe20 0x20>;
+				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
+				clocks = <&clk32k 0>;
+			};
+
 			pit: timer@fffffe40 {
 				compatible = "atmel,at91sam9260-pit";
 				reg = <0xfffffe40 0x10>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
