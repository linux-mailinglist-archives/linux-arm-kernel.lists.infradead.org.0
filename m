Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F37C4512
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 02:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YPTFkqRQNzP+2cQMfwa+FzdAMZvBbh10opyFBPP8ez0=; b=pBq/v/0zGVyW9GvPEsEynyp24q
	jRKWrgwZ0r8c0HmPopQkd46M0Cx7QbmbkulD2VBgJah7jgz6MtxpzZVGa1SMN9LdqzG1y8e75j441
	rJ2uCQDEytL1eg6+1gCskJrErN5dW+uscxLcHlCjVM3l1UcE8C2y97aFNPw8r89uPN3awMja4y0Bd
	fJhpOHS1zxhqz2xzxMSkF3xH/TOxFWdjaIPOEF6KAl2DugZSPvXW1dXzDNYvYq+ujH2r93I2mZWos
	g1P2KMgdxT0Dwb9JzkjZ88yIOpQgYreK60bEu/4P+IQ+Evg2RTgBpsZnwUWe5+KhloDBGGE2HFvrP
	DLxxZK5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFSeW-0008BA-6z; Wed, 02 Oct 2019 00:38:00 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFSe8-000826-OZ
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 00:37:37 +0000
Received: by mail-io1-xd42.google.com with SMTP id c6so52727551ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 17:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jcliF93zjSpaTafpPEiTUMAs8EwGUjS9FawXIfHTmOk=;
 b=FUF/hhM/vBnKabjpTYNNJuImvyEzWBVpTfaLzBpXWRSHTbAb5wZkSeRPMfK6OpEVmx
 IOIRahBGB50RIUu6TBi49FNNwcHRR/Ve53r5c/4LZnBqcpYqqkflyECXpVX+H//XOzzM
 YFUwYGvWvl5hUlb3gveV9qW2kBzhz2XE69E60fYsgGBEufYPRC0cO6XiUEfm6FVLQvIe
 nqPfP0eWYF+d9lSu3eXkO3ZGz+SSrn96ZYoU6ymh/RnKOVQhsbC5vZHnv1QtDgDHvymb
 3w6+ht2tVd5Z+oD+vavuAyoOKkhY8U9cFMkFdCruDN1VfRJH3HLJ7JLhrRFWjtwjrpnO
 m7fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jcliF93zjSpaTafpPEiTUMAs8EwGUjS9FawXIfHTmOk=;
 b=n5MUy6JeDl5qp8bAC8Aql6VAjpkUwjbbaMrizTN6dTGajcEZjzLS/5dcHt3gqKbW6L
 LJnM3/fu18pqehDROPLsJsfaHLu0QwM+JzlOc4jVt2VppmGPvLH50iNj/Lop4BkGfFOg
 TufddigRjEu/3reHOXMc2XpvgrwqOIL/kT8xhwYmxlmOJOrav9Z9wzzBhCyAEXPKtaQ9
 TNoEWUh2ZBEQ/mlzddV/fOR9S8kcMUzt4huuaqemUh3vE18bAs0uGyoqiDGHj5wsupaj
 mFTgaaBanXkzAc48Ba4utIRfoCZcAKVin/oiafJWrzqQkInzEhCN0JTboIR1Ps71Ekcg
 IWbQ==
X-Gm-Message-State: APjAAAVzg0N7Et1ufBDv4K/WPXKeOx3Au7ug+FVKG8t99cjksQ3a/PAR
 RgY5jZXe+qCaIqgpux/dpizZiRhvc1k=
X-Google-Smtp-Source: APXvYqy+o3Crh5rKBMJbTtqAeWBE/QuO5VO0Lz6XDvh5VdH4ptgIDSyIgrcPEVz5wsdhEWSpK95zjQ==
X-Received: by 2002:a92:b09:: with SMTP id b9mr997054ilf.122.1569976655713;
 Tue, 01 Oct 2019 17:37:35 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id v69sm8149604ila.6.2019.10.01.17.37.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 17:37:34 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx6q-logicpd: Fix 3.3V regulator on SDHC1
Date: Tue,  1 Oct 2019 19:37:13 -0500
Message-Id: <20191002003713.21332-2-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191002003713.21332-1-aford173@gmail.com>
References: <20191002003713.21332-1-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_173736_796402_6AC6F1BC 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 adam.ford@logicpd.com, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Adam Ford <aford173@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

NVCC_SD1 is driven by a selector which chooses between 3.3V and
1.8.  Currently, this is pulled down by a 10k resistor, but
occasionally, voltage spikes on this rail cause the regulator to
jump between 1.8 and 3.3V.

This patch explicitly sets GPIO_19 to choose the 3.3V rail by
forcing this IO pin low to stabilize NVCC_SD1.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/boot/dts/imx6-logicpd-som.dtsi b/arch/arm/boot/dts/imx6-logicpd-som.dtsi
index 547fb141ec0c..233762acbaaf 100644
--- a/arch/arm/boot/dts/imx6-logicpd-som.dtsi
+++ b/arch/arm/boot/dts/imx6-logicpd-som.dtsi
@@ -15,6 +15,18 @@
 		reg = <0x10000000 0x80000000>;
 	};
 
+	reg_sdhc1: regulator-sdhc1 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_sdhc1>;
+		regulator-name = "reg_sdhc1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio4 5 GPIO_ACTIVE_LOW>;
+		startup-delay-us = <70000>;
+		enable-active-high;
+	};
+
 	reg_wl18xx_vmmc: regulator-wl18xx {
 		compatible = "regulator-fixed";
 		regulator-name = "vwl1837";
@@ -267,6 +279,12 @@
 		>;
 	};
 
+	pinctrl_reg_sdhc1: regsdhc1grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_19__GPIO4_IO05	0x1b0b0
+		>;
+	};
+
 	pinctrl_tempsense: tempsensegrp {
 		fsl,pins = <
 			MX6QDL_PAD_NANDF_CS2__GPIO6_IO15 0x1b0b0
@@ -343,7 +361,9 @@
 	non-removable;
 	keep-power-in-suspend;
 	wakeup-source;
+	no-1-8-v;
 	vmmc-supply = <&sw2_reg>;
+	vqmmc-supply = <&reg_sdhc1>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
