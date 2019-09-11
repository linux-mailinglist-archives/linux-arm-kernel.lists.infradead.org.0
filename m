Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF80B023D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 18:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRjKK0HDNPOv+Hgqxlk90FP/ndZfu0+ED7QUeiouDnA=; b=tPiVfRNGskUP3C
	HFFzYv98ENo6nh0Dv4t5yY31+yRdAEvvmb5/kIldlFvIOdLcPG8L4wvHujVlAbEEpXvJMYpuh7uES
	KDNqv2ToXP1HYxYALtDRSVA3ONv9Dz27gYaGER82bsS2o2xnDE8AF1mmF+e+BzWTLJuq/+55oBCFl
	tOHYMH5Kf0gPYtlNzcOfrriqmv9XZPFq9xdYL9Tmw7RoFfGYA6oyp4jVF3PX/GayA3iHrNzfP+II0
	cKXQrHNV661yzupVEZIiTfBmWM/Yukyf2W4bIX3RfZCx6pd74oMAOFOvzTcvDzTsVY+ccqBUYxQwf
	cbayYlVad+lJFVRYQTtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i85va-0005hm-TZ; Wed, 11 Sep 2019 16:57:11 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i85v2-0005VW-UX
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 16:56:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id k6so13248232wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 09:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7Ckc4OFmb1IzjSr6xPSzGo1Rwkg/3H5bU4PCs+Gg1VI=;
 b=FztrAIgODzPucDca7n9C32uzZxLR1LoZpN5UVrZdCpZcog7Wx6B2QZE84Sy7+CVuCw
 JRUfgRYjuK/lQp8aAegC/7PsnK8DUqMhxoU1yUaKJ8ulfNkD9U17E8KEe3lZX8RLCdWS
 QSawFBKi+ufo95Y8q3bFWuoDHK+i+Z/ala44RslWnvNB7qMm6vr4hC9btmxTauyhFdA0
 UATKVLQ1ANK8UmBKRkRNRKUBkZjV0nHjt7Jd23WjVIJlaLz288EGiy7zj7UC30s3ntQJ
 pJNKwRXbvabyBE2TSxjUpQoxZ+v63xUqQ6DC1CX4aovJiBj2Ef6IUKv71X6a6x9NlCKv
 CCtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=7Ckc4OFmb1IzjSr6xPSzGo1Rwkg/3H5bU4PCs+Gg1VI=;
 b=lBBBQDeHe0qrp9Q47d2hKRLqktSQpCjxv/1bpElrN9mfzFcwUQhAJJojMikXOjYIBL
 VD0A4wh11TFaMYhNnuSQu0k3JCgYtOr36VMpvbAhRKFINlvHVsSAEal7xPhIbNhOrhfz
 xSNriM0pxcNn474Ve+NPIFmUo7cNwurM5tzN002oEYGYAa19mqyymVuk4kNmnh3Ru5rx
 CTSRTRX2+vHOpSMZy6oDSu79J3YSemrBVI1Dl3zY1yKkguzvbI9VvxYf7u3b/sEJTAYP
 pe28GK1e694GRNpidOjQuKzBHaH4Tomi6dcCTId9R+VvzFgg3W+VQ4wy3J1enxUloRgm
 //ow==
X-Gm-Message-State: APjAAAWdrX50ik9jE5hJ73b9ZPY8f8TtirjWGF0Fs2XrcIgQkcjnjI3Z
 mbnJefcTlEH7oIbpWml56+M=
X-Google-Smtp-Source: APXvYqxWEl6pwVH/JjR5ogiJhrzeKHWmh2I6lE38ZQowfOBGsfusrNh5pzz6b5E6q0BSfY2X3j6wqQ==
X-Received: by 2002:a5d:678d:: with SMTP id v13mr13016329wru.133.1568220995317; 
 Wed, 11 Sep 2019 09:56:35 -0700 (PDT)
Received: from voyager.emea.ibm.com ([148.69.85.38])
 by smtp.gmail.com with ESMTPSA id m18sm28811202wrg.97.2019.09.11.09.56.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 09:56:34 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: soc@kernel.org
Subject: [PATCH 2/2] ARM: dts: aspeed: Add AST2600 pinmux nodes
Date: Wed, 11 Sep 2019 17:56:14 +0100
Message-Id: <20190911165614.31641-2-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190911165614.31641-1-joel@jms.id.au>
References: <20190911165614.31641-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_095637_041901_C2DD96AF 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Jeffery <andrew@aj.id.au>

Add them in their own dtsi and include it in aspeed-g6.dtsi to isolate
the cruft.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi | 1154 ++++++++++++++++++++++
 arch/arm/boot/dts/aspeed-g6.dtsi         |    7 +-
 2 files changed, 1155 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi

diff --git a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
new file mode 100644
index 000000000000..5b8bf58e89cb
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
@@ -0,0 +1,1154 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright 2019 IBM Corp.
+
+&pinctrl {
+	pinctrl_adc0_default: adc0_default {
+		function = "ADC0";
+		groups = "ADC0";
+	};
+
+	pinctrl_adc1_default: adc1_default {
+		function = "ADC1";
+		groups = "ADC1";
+	};
+
+	pinctrl_adc10_default: adc10_default {
+		function = "ADC10";
+		groups = "ADC10";
+	};
+
+	pinctrl_adc11_default: adc11_default {
+		function = "ADC11";
+		groups = "ADC11";
+	};
+
+	pinctrl_adc12_default: adc12_default {
+		function = "ADC12";
+		groups = "ADC12";
+	};
+
+	pinctrl_adc13_default: adc13_default {
+		function = "ADC13";
+		groups = "ADC13";
+	};
+
+	pinctrl_adc14_default: adc14_default {
+		function = "ADC14";
+		groups = "ADC14";
+	};
+
+	pinctrl_adc15_default: adc15_default {
+		function = "ADC15";
+		groups = "ADC15";
+	};
+
+	pinctrl_adc2_default: adc2_default {
+		function = "ADC2";
+		groups = "ADC2";
+	};
+
+	pinctrl_adc3_default: adc3_default {
+		function = "ADC3";
+		groups = "ADC3";
+	};
+
+	pinctrl_adc4_default: adc4_default {
+		function = "ADC4";
+		groups = "ADC4";
+	};
+
+	pinctrl_adc5_default: adc5_default {
+		function = "ADC5";
+		groups = "ADC5";
+	};
+
+	pinctrl_adc6_default: adc6_default {
+		function = "ADC6";
+		groups = "ADC6";
+	};
+
+	pinctrl_adc7_default: adc7_default {
+		function = "ADC7";
+		groups = "ADC7";
+	};
+
+	pinctrl_adc8_default: adc8_default {
+		function = "ADC8";
+		groups = "ADC8";
+	};
+
+	pinctrl_adc9_default: adc9_default {
+		function = "ADC9";
+		groups = "ADC9";
+	};
+
+	pinctrl_bmcint_default: bmcint_default {
+		function = "BMCINT";
+		groups = "BMCINT";
+	};
+
+	pinctrl_espi_default: espi_default {
+		function = "ESPI";
+		groups = "ESPI";
+	};
+
+	pinctrl_espialt_default: espialt_default {
+		function = "ESPIALT";
+		groups = "ESPIALT";
+	};
+
+	pinctrl_fsi1_default: fsi1_default {
+		function = "FSI1";
+		groups = "FSI1";
+	};
+
+	pinctrl_fsi2_default: fsi2_default {
+		function = "FSI2";
+		groups = "FSI2";
+	};
+
+	pinctrl_fwspiabr_default: fwspiabr_default {
+		function = "FWSPIABR";
+		groups = "FWSPIABR";
+	};
+
+	pinctrl_fwspid_default: fwspid_default {
+		function = "FWSPID";
+		groups = "FWSPID";
+	};
+
+	pinctrl_fwqspid_default: fwqspid_default {
+		function = "FWQSPID";
+		groups = "FWQSPID";
+	};
+
+	pinctrl_fwspiwp_default: fwspiwp_default {
+		function = "FWSPIWP";
+		groups = "FWSPIWP";
+	};
+
+	pinctrl_gpit0_default: gpit0_default {
+		function = "GPIT0";
+		groups = "GPIT0";
+	};
+
+	pinctrl_gpit1_default: gpit1_default {
+		function = "GPIT1";
+		groups = "GPIT1";
+	};
+
+	pinctrl_gpit2_default: gpit2_default {
+		function = "GPIT2";
+		groups = "GPIT2";
+	};
+
+	pinctrl_gpit3_default: gpit3_default {
+		function = "GPIT3";
+		groups = "GPIT3";
+	};
+
+	pinctrl_gpit4_default: gpit4_default {
+		function = "GPIT4";
+		groups = "GPIT4";
+	};
+
+	pinctrl_gpit5_default: gpit5_default {
+		function = "GPIT5";
+		groups = "GPIT5";
+	};
+
+	pinctrl_gpit6_default: gpit6_default {
+		function = "GPIT6";
+		groups = "GPIT6";
+	};
+
+	pinctrl_gpit7_default: gpit7_default {
+		function = "GPIT7";
+		groups = "GPIT7";
+	};
+
+	pinctrl_gpiu0_default: gpiu0_default {
+		function = "GPIU0";
+		groups = "GPIU0";
+	};
+
+	pinctrl_gpiu1_default: gpiu1_default {
+		function = "GPIU1";
+		groups = "GPIU1";
+	};
+
+	pinctrl_gpiu2_default: gpiu2_default {
+		function = "GPIU2";
+		groups = "GPIU2";
+	};
+
+	pinctrl_gpiu3_default: gpiu3_default {
+		function = "GPIU3";
+		groups = "GPIU3";
+	};
+
+	pinctrl_gpiu4_default: gpiu4_default {
+		function = "GPIU4";
+		groups = "GPIU4";
+	};
+
+	pinctrl_gpiu5_default: gpiu5_default {
+		function = "GPIU5";
+		groups = "GPIU5";
+	};
+
+	pinctrl_gpiu6_default: gpiu6_default {
+		function = "GPIU6";
+		groups = "GPIU6";
+	};
+
+	pinctrl_gpiu7_default: gpiu7_default {
+		function = "GPIU7";
+		groups = "GPIU7";
+	};
+
+	pinctrl_hvi3c3_default: hvi3c3_default {
+		function = "HVI3C3";
+		groups = "HVI3C3";
+	};
+
+	pinctrl_hvi3c4_default: hvi3c4_default {
+		function = "HVI3C4";
+		groups = "HVI3C4";
+	};
+
+	pinctrl_i2c1_default: i2c1_default {
+		function = "I2C1";
+		groups = "I2C1";
+	};
+
+	pinctrl_i2c10_default: i2c10_default {
+		function = "I2C10";
+		groups = "I2C10";
+	};
+
+	pinctrl_i2c11_default: i2c11_default {
+		function = "I2C11";
+		groups = "I2C11";
+	};
+
+	pinctrl_i2c12_default: i2c12_default {
+		function = "I2C12";
+		groups = "I2C12";
+	};
+
+	pinctrl_i2c13_default: i2c13_default {
+		function = "I2C13";
+		groups = "I2C13";
+	};
+
+	pinctrl_i2c14_default: i2c14_default {
+		function = "I2C14";
+		groups = "I2C14";
+	};
+
+	pinctrl_i2c15_default: i2c15_default {
+		function = "I2C15";
+		groups = "I2C15";
+	};
+
+	pinctrl_i2c16_default: i2c16_default {
+		function = "I2C16";
+		groups = "I2C16";
+	};
+
+	pinctrl_i2c2_default: i2c2_default {
+		function = "I2C2";
+		groups = "I2C2";
+	};
+
+	pinctrl_i2c3_default: i2c3_default {
+		function = "I2C3";
+		groups = "I2C3";
+	};
+
+	pinctrl_i2c4_default: i2c4_default {
+		function = "I2C4";
+		groups = "I2C4";
+	};
+
+	pinctrl_i2c5_default: i2c5_default {
+		function = "I2C5";
+		groups = "I2C5";
+	};
+
+	pinctrl_i2c6_default: i2c6_default {
+		function = "I2C6";
+		groups = "I2C6";
+	};
+
+	pinctrl_i2c7_default: i2c7_default {
+		function = "I2C7";
+		groups = "I2C7";
+	};
+
+	pinctrl_i2c8_default: i2c8_default {
+		function = "I2C8";
+		groups = "I2C8";
+	};
+
+	pinctrl_i2c9_default: i2c9_default {
+		function = "I2C9";
+		groups = "I2C9";
+	};
+
+	pinctrl_i3c3_default: i3c3_default {
+		function = "I3C3";
+		groups = "I3C3";
+	};
+
+	pinctrl_i3c4_default: i3c4_default {
+		function = "I3C4";
+		groups = "I3C4";
+	};
+
+	pinctrl_i3c5_default: i3c5_default {
+		function = "I3C5";
+		groups = "I3C5";
+	};
+
+	pinctrl_i3c6_default: i3c6_default {
+		function = "I3C6";
+		groups = "I3C6";
+	};
+
+	pinctrl_jtagm_default: jtagm_default {
+		function = "JTAGM";
+		groups = "JTAGM";
+	};
+
+	pinctrl_lhpd_default: lhpd_default {
+		function = "LHPD";
+		groups = "LHPD";
+	};
+
+	pinctrl_lhsirq_default: lhsirq_default {
+		function = "LHSIRQ";
+		groups = "LHSIRQ";
+	};
+
+	pinctrl_lpc_default: lpc_default {
+		function = "LPC";
+		groups = "LPC";
+	};
+
+	pinctrl_lpchc_default: lpchc_default {
+		function = "LPCHC";
+		groups = "LPCHC";
+	};
+
+	pinctrl_lpcpd_default: lpcpd_default {
+		function = "LPCPD";
+		groups = "LPCPD";
+	};
+
+	pinctrl_lpcpme_default: lpcpme_default {
+		function = "LPCPME";
+		groups = "LPCPME";
+	};
+
+	pinctrl_lpcsmi_default: lpcsmi_default {
+		function = "LPCSMI";
+		groups = "LPCSMI";
+	};
+
+	pinctrl_lsirq_default: lsirq_default {
+		function = "LSIRQ";
+		groups = "LSIRQ";
+	};
+
+	pinctrl_maclink1_default: maclink1_default {
+		function = "MACLINK1";
+		groups = "MACLINK1";
+	};
+
+	pinctrl_maclink2_default: maclink2_default {
+		function = "MACLINK2";
+		groups = "MACLINK2";
+	};
+
+	pinctrl_maclink3_default: maclink3_default {
+		function = "MACLINK3";
+		groups = "MACLINK3";
+	};
+
+	pinctrl_maclink4_default: maclink4_default {
+		function = "MACLINK4";
+		groups = "MACLINK4";
+	};
+
+	pinctrl_mdio1_default: mdio1_default {
+		function = "MDIO1";
+		groups = "MDIO1";
+	};
+
+	pinctrl_mdio2_default: mdio2_default {
+		function = "MDIO2";
+		groups = "MDIO2";
+	};
+
+	pinctrl_mdio3_default: mdio3_default {
+		function = "MDIO3";
+		groups = "MDIO3";
+	};
+
+	pinctrl_mdio4_default: mdio4_default {
+		function = "MDIO4";
+		groups = "MDIO4";
+	};
+
+	pinctrl_ncts1_default: ncts1_default {
+		function = "NCTS1";
+		groups = "NCTS1";
+	};
+
+	pinctrl_ncts2_default: ncts2_default {
+		function = "NCTS2";
+		groups = "NCTS2";
+	};
+
+	pinctrl_ncts3_default: ncts3_default {
+		function = "NCTS3";
+		groups = "NCTS3";
+	};
+
+	pinctrl_ncts4_default: ncts4_default {
+		function = "NCTS4";
+		groups = "NCTS4";
+	};
+
+	pinctrl_ndcd1_default: ndcd1_default {
+		function = "NDCD1";
+		groups = "NDCD1";
+	};
+
+	pinctrl_ndcd2_default: ndcd2_default {
+		function = "NDCD2";
+		groups = "NDCD2";
+	};
+
+	pinctrl_ndcd3_default: ndcd3_default {
+		function = "NDCD3";
+		groups = "NDCD3";
+	};
+
+	pinctrl_ndcd4_default: ndcd4_default {
+		function = "NDCD4";
+		groups = "NDCD4";
+	};
+
+	pinctrl_ndsr1_default: ndsr1_default {
+		function = "NDSR1";
+		groups = "NDSR1";
+	};
+
+	pinctrl_ndsr2_default: ndsr2_default {
+		function = "NDSR2";
+		groups = "NDSR2";
+	};
+
+	pinctrl_ndsr3_default: ndsr3_default {
+		function = "NDSR3";
+		groups = "NDSR3";
+	};
+
+	pinctrl_ndsr4_default: ndsr4_default {
+		function = "NDSR4";
+		groups = "NDSR4";
+	};
+
+	pinctrl_ndtr1_default: ndtr1_default {
+		function = "NDTR1";
+		groups = "NDTR1";
+	};
+
+	pinctrl_ndtr2_default: ndtr2_default {
+		function = "NDTR2";
+		groups = "NDTR2";
+	};
+
+	pinctrl_ndtr3_default: ndtr3_default {
+		function = "NDTR3";
+		groups = "NDTR3";
+	};
+
+	pinctrl_ndtr4_default: ndtr4_default {
+		function = "NDTR4";
+		groups = "NDTR4";
+	};
+
+	pinctrl_nri1_default: nri1_default {
+		function = "NRI1";
+		groups = "NRI1";
+	};
+
+	pinctrl_nri2_default: nri2_default {
+		function = "NRI2";
+		groups = "NRI2";
+	};
+
+	pinctrl_nri3_default: nri3_default {
+		function = "NRI3";
+		groups = "NRI3";
+	};
+
+	pinctrl_nri4_default: nri4_default {
+		function = "NRI4";
+		groups = "NRI4";
+	};
+
+	pinctrl_nrts1_default: nrts1_default {
+		function = "NRTS1";
+		groups = "NRTS1";
+	};
+
+	pinctrl_nrts2_default: nrts2_default {
+		function = "NRTS2";
+		groups = "NRTS2";
+	};
+
+	pinctrl_nrts3_default: nrts3_default {
+		function = "NRTS3";
+		groups = "NRTS3";
+	};
+
+	pinctrl_nrts4_default: nrts4_default {
+		function = "NRTS4";
+		groups = "NRTS4";
+	};
+
+	pinctrl_oscclk_default: oscclk_default {
+		function = "OSCCLK";
+		groups = "OSCCLK";
+	};
+
+	pinctrl_pewake_default: pewake_default {
+		function = "PEWAKE";
+		groups = "PEWAKE";
+	};
+
+	pinctrl_pwm0_default: pwm0_default {
+		function = "PWM0";
+		groups = "PWM0";
+	};
+
+	pinctrl_pwm1_default: pwm1_default {
+		function = "PWM1";
+		groups = "PWM1";
+	};
+
+	pinctrl_pwm10g0_default: pwm10g0_default {
+		function = "PWM10";
+		groups = "PWM10G0";
+	};
+
+	pinctrl_pwm10g1_default: pwm10g1_default {
+		function = "PWM10";
+		groups = "PWM10G1";
+	};
+
+	pinctrl_pwm11g0_default: pwm11g0_default {
+		function = "PWM11";
+		groups = "PWM11G0";
+	};
+
+	pinctrl_pwm11g1_default: pwm11g1_default {
+		function = "PWM11";
+		groups = "PWM11G1";
+	};
+
+	pinctrl_pwm12g0_default: pwm12g0_default {
+		function = "PWM12";
+		groups = "PWM12G0";
+	};
+
+	pinctrl_pwm12g1_default: pwm12g1_default {
+		function = "PWM12";
+		groups = "PWM12G1";
+	};
+
+	pinctrl_pwm13g0_default: pwm13g0_default {
+		function = "PWM13";
+		groups = "PWM13G0";
+	};
+
+	pinctrl_pwm13g1_default: pwm13g1_default {
+		function = "PWM13";
+		groups = "PWM13G1";
+	};
+
+	pinctrl_pwm14g0_default: pwm14g0_default {
+		function = "PWM14";
+		groups = "PWM14G0";
+	};
+
+	pinctrl_pwm14g1_default: pwm14g1_default {
+		function = "PWM14";
+		groups = "PWM14G1";
+	};
+
+	pinctrl_pwm15g0_default: pwm15g0_default {
+		function = "PWM15";
+		groups = "PWM15G0";
+	};
+
+	pinctrl_pwm15g1_default: pwm15g1_default {
+		function = "PWM15";
+		groups = "PWM15G1";
+	};
+
+	pinctrl_pwm2_default: pwm2_default {
+		function = "PWM2";
+		groups = "PWM2";
+	};
+
+	pinctrl_pwm3_default: pwm3_default {
+		function = "PWM3";
+		groups = "PWM3";
+	};
+
+	pinctrl_pwm4_default: pwm4_default {
+		function = "PWM4";
+		groups = "PWM4";
+	};
+
+	pinctrl_pwm5_default: pwm5_default {
+		function = "PWM5";
+		groups = "PWM5";
+	};
+
+	pinctrl_pwm6_default: pwm6_default {
+		function = "PWM6";
+		groups = "PWM6";
+	};
+
+	pinctrl_pwm7_default: pwm7_default {
+		function = "PWM7";
+		groups = "PWM7";
+	};
+
+	pinctrl_pwm8g0_default: pwm8g0_default {
+		function = "PWM8";
+		groups = "PWM8G0";
+	};
+
+	pinctrl_pwm8g1_default: pwm8g1_default {
+		function = "PWM8";
+		groups = "PWM8G1";
+	};
+
+	pinctrl_pwm9g0_default: pwm9g0_default {
+		function = "PWM9";
+		groups = "PWM9G0";
+	};
+
+	pinctrl_pwm9g1_default: pwm9g1_default {
+		function = "PWM9";
+		groups = "PWM9G1";
+	};
+
+	pinctrl_qspi1_default: qspi1_default {
+		function = "QSPI1";
+		groups = "QSPI1";
+	};
+
+	pinctrl_qspi2_default: qspi2_default {
+		function = "QSPI2";
+		groups = "QSPI2";
+	};
+
+	pinctrl_rgmii1_default: rgmii1_default {
+		function = "RGMII1";
+		groups = "RGMII1";
+	};
+
+	pinctrl_rgmii2_default: rgmii2_default {
+		function = "RGMII2";
+		groups = "RGMII2";
+	};
+
+	pinctrl_rgmii3_default: rgmii3_default {
+		function = "RGMII3";
+		groups = "RGMII3";
+	};
+
+	pinctrl_rgmii4_default: rgmii4_default {
+		function = "RGMII4";
+		groups = "RGMII4";
+	};
+
+	pinctrl_rmii1_default: rmii1_default {
+		function = "RMII1";
+		groups = "RMII1";
+	};
+
+	pinctrl_rmii2_default: rmii2_default {
+		function = "RMII2";
+		groups = "RMII2";
+	};
+
+	pinctrl_rmii3_default: rmii3_default {
+		function = "RMII3";
+		groups = "RMII3";
+	};
+
+	pinctrl_rmii4_default: rmii4_default {
+		function = "RMII4";
+		groups = "RMII4";
+	};
+
+	pinctrl_rxd1_default: rxd1_default {
+		function = "RXD1";
+		groups = "RXD1";
+	};
+
+	pinctrl_rxd2_default: rxd2_default {
+		function = "RXD2";
+		groups = "RXD2";
+	};
+
+	pinctrl_rxd3_default: rxd3_default {
+		function = "RXD3";
+		groups = "RXD3";
+	};
+
+	pinctrl_rxd4_default: rxd4_default {
+		function = "RXD4";
+		groups = "RXD4";
+	};
+
+	pinctrl_salt1_default: salt1_default {
+		function = "SALT1";
+		groups = "SALT1";
+	};
+
+	pinctrl_salt10g0_default: salt10g0_default {
+		function = "SALT10";
+		groups = "SALT10G0";
+	};
+
+	pinctrl_salt10g1_default: salt10g1_default {
+		function = "SALT10";
+		groups = "SALT10G1";
+	};
+
+	pinctrl_salt11g0_default: salt11g0_default {
+		function = "SALT11";
+		groups = "SALT11G0";
+	};
+
+	pinctrl_salt11g1_default: salt11g1_default {
+		function = "SALT11";
+		groups = "SALT11G1";
+	};
+
+	pinctrl_salt12g0_default: salt12g0_default {
+		function = "SALT12";
+		groups = "SALT12G0";
+	};
+
+	pinctrl_salt12g1_default: salt12g1_default {
+		function = "SALT12";
+		groups = "SALT12G1";
+	};
+
+	pinctrl_salt13g0_default: salt13g0_default {
+		function = "SALT13";
+		groups = "SALT13G0";
+	};
+
+	pinctrl_salt13g1_default: salt13g1_default {
+		function = "SALT13";
+		groups = "SALT13G1";
+	};
+
+	pinctrl_salt14g0_default: salt14g0_default {
+		function = "SALT14";
+		groups = "SALT14G0";
+	};
+
+	pinctrl_salt14g1_default: salt14g1_default {
+		function = "SALT14";
+		groups = "SALT14G1";
+	};
+
+	pinctrl_salt15g0_default: salt15g0_default {
+		function = "SALT15";
+		groups = "SALT15G0";
+	};
+
+	pinctrl_salt15g1_default: salt15g1_default {
+		function = "SALT15";
+		groups = "SALT15G1";
+	};
+
+	pinctrl_salt16g0_default: salt16g0_default {
+		function = "SALT16";
+		groups = "SALT16G0";
+	};
+
+	pinctrl_salt16g1_default: salt16g1_default {
+		function = "SALT16";
+		groups = "SALT16G1";
+	};
+
+	pinctrl_salt2_default: salt2_default {
+		function = "SALT2";
+		groups = "SALT2";
+	};
+
+	pinctrl_salt3_default: salt3_default {
+		function = "SALT3";
+		groups = "SALT3";
+	};
+
+	pinctrl_salt4_default: salt4_default {
+		function = "SALT4";
+		groups = "SALT4";
+	};
+
+	pinctrl_salt5_default: salt5_default {
+		function = "SALT5";
+		groups = "SALT5";
+	};
+
+	pinctrl_salt6_default: salt6_default {
+		function = "SALT6";
+		groups = "SALT6";
+	};
+
+	pinctrl_salt7_default: salt7_default {
+		function = "SALT7";
+		groups = "SALT7";
+	};
+
+	pinctrl_salt8_default: salt8_default {
+		function = "SALT8";
+		groups = "SALT8";
+	};
+
+	pinctrl_salt9g0_default: salt9g0_default {
+		function = "SALT9";
+		groups = "SALT9G0";
+	};
+
+	pinctrl_salt9g1_default: salt9g1_default {
+		function = "SALT9";
+		groups = "SALT9G1";
+	};
+
+	pinctrl_sd1_default: sd1_default {
+		function = "SD1";
+		groups = "SD1";
+	};
+
+	pinctrl_sd2_default: sd2_default {
+		function = "SD2";
+		groups = "SD2";
+	};
+
+	pinctrl_sd3_default: sd3_default {
+		function = "SD3";
+		groups = "SD3";
+	};
+
+	pinctrl_emmc_default: emmc_default {
+		function = "SD3";
+		groups = "EMMC";
+	};
+
+	pinctrl_sgpm1_default: sgpm1_default {
+		function = "SGPM1";
+		groups = "SGPM1";
+	};
+
+	pinctrl_sgps1_default: sgps1_default {
+		function = "SGPS1";
+		groups = "SGPS1";
+	};
+
+	pinctrl_sioonctrl_default: sioonctrl_default {
+		function = "SIOONCTRL";
+		groups = "SIOONCTRL";
+	};
+
+	pinctrl_siopbi_default: siopbi_default {
+		function = "SIOPBI";
+		groups = "SIOPBI";
+	};
+
+	pinctrl_siopbo_default: siopbo_default {
+		function = "SIOPBO";
+		groups = "SIOPBO";
+	};
+
+	pinctrl_siopwreq_default: siopwreq_default {
+		function = "SIOPWREQ";
+		groups = "SIOPWREQ";
+	};
+
+	pinctrl_siopwrgd_default: siopwrgd_default {
+		function = "SIOPWRGD";
+		groups = "SIOPWRGD";
+	};
+
+	pinctrl_sios3_default: sios3_default {
+		function = "SIOS3";
+		groups = "SIOS3";
+	};
+
+	pinctrl_sios5_default: sios5_default {
+		function = "SIOS5";
+		groups = "SIOS5";
+	};
+
+	pinctrl_siosci_default: siosci_default {
+		function = "SIOSCI";
+		groups = "SIOSCI";
+	};
+
+	pinctrl_spi1_default: spi1_default {
+		function = "SPI1";
+		groups = "SPI1";
+	};
+
+	pinctrl_spi1abr_default: spi1abr_default {
+		function = "SPI1ABR";
+		groups = "SPI1ABR";
+	};
+
+	pinctrl_spi1cs1_default: spi1cs1_default {
+		function = "SPI1CS1";
+		groups = "SPI1CS1";
+	};
+
+	pinctrl_spi1wp_default: spi1wp_default {
+		function = "SPI1WP";
+		groups = "SPI1WP";
+	};
+
+	pinctrl_spi2_default: spi2_default {
+		function = "SPI2";
+		groups = "SPI2";
+	};
+
+	pinctrl_spi2cs1_default: spi2cs1_default {
+		function = "SPI2CS1";
+		groups = "SPI2CS1";
+	};
+
+	pinctrl_spi2cs2_default: spi2cs2_default {
+		function = "SPI2CS2";
+		groups = "SPI2CS2";
+	};
+
+	pinctrl_tach0_default: tach0_default {
+		function = "TACH0";
+		groups = "TACH0";
+	};
+
+	pinctrl_tach1_default: tach1_default {
+		function = "TACH1";
+		groups = "TACH1";
+	};
+
+	pinctrl_tach10_default: tach10_default {
+		function = "TACH10";
+		groups = "TACH10";
+	};
+
+	pinctrl_tach11_default: tach11_default {
+		function = "TACH11";
+		groups = "TACH11";
+	};
+
+	pinctrl_tach12_default: tach12_default {
+		function = "TACH12";
+		groups = "TACH12";
+	};
+
+	pinctrl_tach13_default: tach13_default {
+		function = "TACH13";
+		groups = "TACH13";
+	};
+
+	pinctrl_tach14_default: tach14_default {
+		function = "TACH14";
+		groups = "TACH14";
+	};
+
+	pinctrl_tach15_default: tach15_default {
+		function = "TACH15";
+		groups = "TACH15";
+	};
+
+	pinctrl_tach2_default: tach2_default {
+		function = "TACH2";
+		groups = "TACH2";
+	};
+
+	pinctrl_tach3_default: tach3_default {
+		function = "TACH3";
+		groups = "TACH3";
+	};
+
+	pinctrl_tach4_default: tach4_default {
+		function = "TACH4";
+		groups = "TACH4";
+	};
+
+	pinctrl_tach5_default: tach5_default {
+		function = "TACH5";
+		groups = "TACH5";
+	};
+
+	pinctrl_tach6_default: tach6_default {
+		function = "TACH6";
+		groups = "TACH6";
+	};
+
+	pinctrl_tach7_default: tach7_default {
+		function = "TACH7";
+		groups = "TACH7";
+	};
+
+	pinctrl_tach8_default: tach8_default {
+		function = "TACH8";
+		groups = "TACH8";
+	};
+
+	pinctrl_tach9_default: tach9_default {
+		function = "TACH9";
+		groups = "TACH9";
+	};
+
+	pinctrl_thru0_default: thru0_default {
+		function = "THRU0";
+		groups = "THRU0";
+	};
+
+	pinctrl_thru1_default: thru1_default {
+		function = "THRU1";
+		groups = "THRU1";
+	};
+
+	pinctrl_thru2_default: thru2_default {
+		function = "THRU2";
+		groups = "THRU2";
+	};
+
+	pinctrl_thru3_default: thru3_default {
+		function = "THRU3";
+		groups = "THRU3";
+	};
+
+	pinctrl_txd1_default: txd1_default {
+		function = "TXD1";
+		groups = "TXD1";
+	};
+
+	pinctrl_txd2_default: txd2_default {
+		function = "TXD2";
+		groups = "TXD2";
+	};
+
+	pinctrl_txd3_default: txd3_default {
+		function = "TXD3";
+		groups = "TXD3";
+	};
+
+	pinctrl_txd4_default: txd4_default {
+		function = "TXD4";
+		groups = "TXD4";
+	};
+
+	pinctrl_uart10_default: uart10_default {
+		function = "UART10";
+		groups = "UART10";
+	};
+
+	pinctrl_uart11_default: uart11_default {
+		function = "UART11";
+		groups = "UART11";
+	};
+
+	pinctrl_uart12g0_default: uart12g0_default {
+		function = "UART12";
+		groups = "UART12G0";
+	};
+
+	pinctrl_uart12g1_default: uart12g1_default {
+		function = "UART12";
+		groups = "UART12G1";
+	};
+
+	pinctrl_uart13g0_default: uart13g0_default {
+		function = "UART13";
+		groups = "UART13G0";
+	};
+
+	pinctrl_uart13g1_default: uart13g1_default {
+		function = "UART13";
+		groups = "UART13G1";
+	};
+
+	pinctrl_uart6_default: uart6_default {
+		function = "UART6";
+		groups = "UART6";
+	};
+
+	pinctrl_uart7_default: uart7_default {
+		function = "UART7";
+		groups = "UART7";
+	};
+
+	pinctrl_uart8_default: uart8_default {
+		function = "UART8";
+		groups = "UART8";
+	};
+
+	pinctrl_uart9_default: uart9_default {
+		function = "UART9";
+		groups = "UART9";
+	};
+
+	pinctrl_vb_default: vb_default {
+		function = "VB";
+		groups = "VB";
+	};
+
+	pinctrl_vgahs_default: vgahs_default {
+		function = "VGAHS";
+		groups = "VGAHS";
+	};
+
+	pinctrl_vgavs_default: vgavs_default {
+		function = "VGAVS";
+		groups = "VGAVS";
+	};
+
+	pinctrl_wdtrst1_default: wdtrst1_default {
+		function = "WDTRST1";
+		groups = "WDTRST1";
+	};
+
+	pinctrl_wdtrst2_default: wdtrst2_default {
+		function = "WDTRST2";
+		groups = "WDTRST2";
+	};
+
+	pinctrl_wdtrst3_default: wdtrst3_default {
+		function = "WDTRST3";
+		groups = "WDTRST3";
+	};
+
+	pinctrl_wdtrst4_default: wdtrst4_default {
+		function = "WDTRST4";
+		groups = "WDTRST4";
+	};
+};
diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
index 9f9931541060..3a1422f7c49c 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -258,9 +258,4 @@
 	};
 };
 
-&pinctrl {
-	pinctrl_emmc_default: emmc_default {
-		function = "SD3";
-		groups = "SD3";
-	};
-};
+#include "aspeed-g6-pinctrl.dtsi"
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
