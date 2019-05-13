Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A26B1AF40
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 05:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Q/zyMmE3L8psu3tyZY5QqM2zQvrqcxfTAjDZoA2aZc=; b=Z5pEp7OdjOWoDs
	+Q/hXSJoJ9lgOLkLy1561dsvWoIqMfBxzZv5cq8uXW6IVHdfZzvd0e4NgdOejVXZWLBoQKVUrO2nx
	/RsTeg2Eib7BpEuE6Y7cK3tX0Y4yM366gNC8L+lOwMP8nEkrqeXHdI/47TNLvqSFFcw6L3fOkoakl
	bF290QcEYtHraaX3y8BB+9ljOPB1IMq/ynKQQ4F4KLlUSlwttAEj9/yYKOiqiRc/QXTcMqx/f+O3a
	M25OHUU6WinSy/Ws2JQPvsoQn9Qg4SyEDfVirpvaJaTNw8YDeA1UhlPk7F9FFCQ5uKgAhzqSOb3+D
	fd8cahmYecQZmzhQJueQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ27o-00034X-PI; Mon, 13 May 2019 03:59:40 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ27Y-0002xf-MF
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 03:59:26 +0000
Received: by mail-pl1-x644.google.com with SMTP id n8so5739894plp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 20:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=F9QBOZtjHD3cvSHL8seit1ng6gf/KXanf0uSnR0dfOI=;
 b=Xsc1FqfBOwy8bGWszVKy9eKAwN5fabSOCsyoyESVpaOJllyh8NWqBLwEigRo5L6Gtn
 wnb/SLFTaPG3x0thYFka1ag/hw90I2iQSYo1tCuJb0mYPJNTIYFSg5syIRtkVDnh0+Ks
 hv4eR4HqATvnVpOU7qQDzFp08ohYrnZgo+qG0ePDL/DHYcKUBRYk3SXaW+QN1woNIJwP
 EXajKe5rRQyjIAHLrHRsi/XrFzAZoUdydcKzsAmBD92wZUZHl8ZXTuymRneC32JNt1Fy
 5mSmrZ/GgTiyehLHkwbi1YgJeNTUe+5fhjZYdGLnyQFK+czO+4hqdpQKehFWymF2giup
 215Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F9QBOZtjHD3cvSHL8seit1ng6gf/KXanf0uSnR0dfOI=;
 b=BQqbDKjNqGRWiFfUaDe7ul8QsU4x/K98MtpKslA867beyNr4hsLplknvqy1ApD6GXW
 M7Ilo4Cm3f19CXwNngMdd8rZ5IXt3dUJL5YqyjiS16lQzWle7ykXbX+Q1h7UuJkvM6wC
 wboj3zyc8+VMUNdDWrWp11ciBLBjaWQvgjme6P6SaR1OjVhV4KanUI9DuLZmwAT67fjb
 +m5+NjSBFsWsVlZD6UH0YzTw+bGITIBICUoeKKyj5E/hVQSfdPPlaTiRup4fQoeLaBFS
 6bqR7sj6E1p/He9D/X+Gp+1xMyMH8Q0b6aksYHAJ6U4Y28e8Wkm6fj9mK1rhOTeDyDYi
 qqNA==
X-Gm-Message-State: APjAAAXqkjLjc3w3aXQ2W2/3SkZfIiizwqh5dycWpPXokZIFa2CmWEC/
 IIOAHbfj2xzytDVe9hHZ/vY=
X-Google-Smtp-Source: APXvYqyNX8YPKfwxKwTXESwWJea0905IwBlPHwMrvpJrp5+E3xFtZK2791xVKS08UbaHHZOStnse3g==
X-Received: by 2002:a17:902:a405:: with SMTP id
 p5mr23101195plq.51.1557719963804; 
 Sun, 12 May 2019 20:59:23 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id i17sm16042496pfo.103.2019.05.12.20.59.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 May 2019 20:59:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 2/2] ARM: dts: vf610-zii-dev: Add QSPI node
Date: Sun, 12 May 2019 20:59:09 -0700
Message-Id: <20190513035909.30460-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190513035909.30460-1-andrew.smirnov@gmail.com>
References: <20190513035909.30460-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_205924_727224_E0FB3160 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 linux-kernel@vger.kernel.org, Chris Healy <cphealy@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Both rev C and rev B of the board come with two QSPI-NOR chips
attached to the SoC. Add DT code describing all of this.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-dev.dtsi | 48 ++++++++++++++++++++++++----
 1 file changed, 42 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-dev.dtsi b/arch/arm/boot/dts/vf610-zii-dev.dtsi
index 5246c75e848c..f63a470f78ce 100644
--- a/arch/arm/boot/dts/vf610-zii-dev.dtsi
+++ b/arch/arm/boot/dts/vf610-zii-dev.dtsi
@@ -177,6 +177,36 @@
 	status = "okay";
 };
 
+&qspi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_qspi0>;
+	status = "okay";
+
+	/*
+	 * Attached MT25QL02 can go up to 90Mhz in DTR and 166 in SDR
+	 * modes, so we limit spi-max-frequency to 90Mhz
+	 */
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <90000000>;
+		spi-rx-bus-width = <4>;
+		reg = <0>;
+		m25p,fast-read;
+	};
+
+	flash@2 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <90000000>;
+		spi-rx-bus-width = <4>;
+		reg = <2>;
+		m25p,fast-read;
+	};
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart0>;
@@ -360,12 +390,18 @@
 
 	pinctrl_qspi0: qspi0grp {
 		fsl,pins = <
-			VF610_PAD_PTD7__QSPI0_B_QSCK	0x31c3
-			VF610_PAD_PTD8__QSPI0_B_CS0	0x31ff
-			VF610_PAD_PTD9__QSPI0_B_DATA3	0x31c3
-			VF610_PAD_PTD10__QSPI0_B_DATA2	0x31c3
-			VF610_PAD_PTD11__QSPI0_B_DATA1	0x31c3
-			VF610_PAD_PTD12__QSPI0_B_DATA0	0x31c3
+			VF610_PAD_PTD0__QSPI0_A_QSCK	0x38c2
+			VF610_PAD_PTD1__QSPI0_A_CS0	0x38c2
+			VF610_PAD_PTD2__QSPI0_A_DATA3	0x38c3
+			VF610_PAD_PTD3__QSPI0_A_DATA2	0x38c3
+			VF610_PAD_PTD4__QSPI0_A_DATA1	0x38c3
+			VF610_PAD_PTD5__QSPI0_A_DATA0	0x38c3
+			VF610_PAD_PTD7__QSPI0_B_QSCK	0x38c2
+			VF610_PAD_PTD8__QSPI0_B_CS0	0x38c2
+			VF610_PAD_PTD9__QSPI0_B_DATA3	0x38c3
+			VF610_PAD_PTD10__QSPI0_B_DATA2	0x38c3
+			VF610_PAD_PTD11__QSPI0_B_DATA1	0x38c3
+			VF610_PAD_PTD12__QSPI0_B_DATA0	0x38c3
 		>;
 	};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
