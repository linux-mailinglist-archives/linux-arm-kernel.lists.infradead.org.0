Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B025014D2BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 22:54:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=btDcxHC/rszYuy2LTwESqpQtWDzjF3e9o1H/Q/+Nvls=; b=LUFtaUSEj03l+a
	UvS4P24+fxLPzhvlolVeUbs9T4Q5m85Ynfho09Q5At/TyarqlTd+hhdAZbznoHdEZLw10ouH/uOCL
	pfFAidbLFx3AOz38beLPUCM7IiFdJE5ODT0vR/ZkZZweGUpYCNNWG8lEfWX6RQ/rCSS4JFwaybrLj
	fJqALLk6QoULU8hlcOSnaynKo4gtALCt1CvtpChYk58lNVr9sucbCIcmEQjWhP9aWfLEICjhsmMR8
	IeyzbEMmt/4GQ5O0/EaMOhSVj1lStedA4lhMmMwf+8sEojbsje60ExZZ3VE6LXAIRnCGHNWqZ3GLx
	F0uh4RGL4UD52t8dV+aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwvHe-0002mz-OQ; Wed, 29 Jan 2020 21:54:02 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwvHS-0002m2-EL
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 21:53:52 +0000
Received: from trochilidae.toradex.int (unknown [IPv6:2a02:169:3df5::edf])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 001D75C447D;
 Wed, 29 Jan 2020 22:53:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1580334819;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=6TUOxEc1ImMdxxsanxaZftzEmBisYLyznE5TtllgSh4=;
 b=PnH2z97r9qZYatLnVto/5RoZysdKOiAAbs/rioU7soYxIa1k2SafWIj8T5zrIdpkotkfIq
 UMcV5tt/fUKF8d8xPjGiLkVSRoP95l0/o88b+vWhSddaOr4bcMGBc/EbZhLLj4ZYhgXNCb
 exUuJtUXsFPZPjv0+3/C7c1aYrMJ/+k=
From: Stefan Agner <stefan@agner.ch>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH] ARM: dts: imx7-colibri: add gpio-line-names
Date: Wed, 29 Jan 2020 22:53:36 +0100
Message-Id: <20200129215336.417431-1-stefan@agner.ch>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_135350_779757_0BDC1522 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kernel@pengutronix.de,
 Stefan Agner <stefan.agner@toradex.com>, marcel.ziswiler@toradex.com,
 linux-kernel@vger.kernel.org, stefan@agner.ch, philippe.schenker@toradex.com,
 robh+dt@kernel.org, max.krummenacher@toradex.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Agner <stefan.agner@toradex.com>

Add Colibri SODIMM numbers as GPIO line names on module level. The GPIO
lines with a name are all available on the SODIMM edge connector of the
Colibri iMX7 module and therefore a customer might use it as a GPIO. The
Toradex Evaluation Board has the SODIMM numbers printed on the silk-
screen. This allows a customer to quickly control a GPIO on a pin-header
by using the name printed next to it.

Putting the GPIO line name on module level makes sure that a customer
gets a reasonable default. If more meaningful names are available on a
custom carrier board, the user can overwrite the line names in a carrier
board level device tree.

The eMMC based modules share all GPIO names except two GPIOs on bank 6
which are not available on the raw NAND devices. Hence overwrite GPIO
line names of bank 6 in the eMMC specific device tree file.

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
---
 arch/arm/boot/dts/imx7-colibri.dtsi       | 178 ++++++++++++++++++++++
 arch/arm/boot/dts/imx7d-colibri-emmc.dtsi |  26 ++++
 2 files changed, 204 insertions(+)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index d05be3f0e2a7..10d8880e8d13 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -130,6 +130,184 @@ &flexcan2 {
 	status = "disabled";
 };
 
+&gpio1 {
+	gpio-line-names = "SODIMM_43",
+			  "SODIMM_45",
+			  "SODIMM_135",
+			  "SODIMM_22",
+			  "",
+			  "",
+			  "SODIMM_37",
+			  "SODIMM_29",
+			  "SODIMM_59",
+			  "SODIMM_28",
+			  "SODIMM_30",
+			  "SODIMM_67",
+			  "",
+			  "",
+			  "SODIMM_188",
+			  "SODIMM_178";
+};
+
+&gpio2 {
+	gpio-line-names = "SODIMM_111",
+			  "SODIMM_113",
+			  "SODIMM_115",
+			  "SODIMM_117",
+			  "SODIMM_119",
+			  "SODIMM_121",
+			  "SODIMM_123",
+			  "SODIMM_125",
+			  "SODIMM_91",
+			  "SODIMM_89",
+			  "SODIMM_105",
+			  "SODIMM_152",
+			  "SODIMM_150",
+			  "SODIMM_95",
+			  "SODIMM_126",
+			  "SODIMM_107",
+			  "SODIMM_114",
+			  "SODIMM_116",
+			  "SODIMM_118",
+			  "SODIMM_120",
+			  "SODIMM_122",
+			  "SODIMM_124",
+			  "SODIMM_127",
+			  "SODIMM_130",
+			  "SODIMM_132",
+			  "SODIMM_134",
+			  "SODIMM_133",
+			  "SODIMM_104",
+			  "SODIMM_106",
+			  "SODIMM_110",
+			  "SODIMM_112",
+			  "SODIMM_128";
+};
+
+&gpio3 {
+	gpio-line-names = "SODIMM_56",
+			  "SODIMM_44",
+			  "SODIMM_68",
+			  "SODIMM_82",
+			  "SODIMM_93",
+			  "SODIMM_76",
+			  "SODIMM_70",
+			  "SODIMM_60",
+			  "SODIMM_58",
+			  "SODIMM_78",
+			  "SODIMM_72",
+			  "SODIMM_80",
+			  "SODIMM_46",
+			  "SODIMM_62",
+			  "SODIMM_48",
+			  "SODIMM_74",
+			  "SODIMM_50",
+			  "SODIMM_52",
+			  "SODIMM_54",
+			  "SODIMM_66",
+			  "SODIMM_64",
+			  "SODIMM_57",
+			  "SODIMM_61",
+			  "SODIMM_136",
+			  "SODIMM_138",
+			  "SODIMM_140",
+			  "SODIMM_142",
+			  "SODIMM_144",
+			  "SODIMM_146";
+};
+
+&gpio4 {
+	gpio-line-names = "SODIMM_35",
+			  "SODIMM_33",
+			  "SODIMM_38",
+			  "SODIMM_36",
+			  "SODIMM_21",
+			  "SODIMM_19",
+			  "SODIMM_131",
+			  "SODIMM_129",
+			  "SODIMM_90",
+			  "SODIMM_92",
+			  "SODIMM_88",
+			  "SODIMM_86",
+			  "SODIMM_81",
+			  "SODIMM_94",
+			  "SODIMM_96",
+			  "SODIMM_75",
+			  "SODIMM_101",
+			  "SODIMM_103",
+			  "SODIMM_79",
+			  "SODIMM_97",
+			  "SODIMM_67",
+			  "SODIMM_59",
+			  "SODIMM_85",
+			  "SODIMM_65";
+};
+
+&gpio5 {
+	gpio-line-names = "SODIMM_69",
+			  "SODIMM_71",
+			  "SODIMM_73",
+			  "SODIMM_47",
+			  "SODIMM_190",
+			  "SODIMM_192",
+			  "SODIMM_49",
+			  "SODIMM_51",
+			  "SODIMM_53",
+			  "",
+			  "",
+			  "SODIMM_98",
+			  "SODIMM_184",
+			  "SODIMM_186",
+			  "SODIMM_23",
+			  "SODIMM_31",
+			  "SODIMM_100",
+			  "SODIMM_102";
+};
+
+&gpio6 {
+	gpio-line-names = "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "SODIMM_169",
+			  "",
+			  "",
+			  "",
+			  "SODIMM_77",
+			  "SODIMM_24",
+			  "",
+			  "SODIMM_25",
+			  "SODIMM_27",
+			  "SODIMM_32",
+			  "SODIMM_34";
+};
+
+&gpio7 {
+	gpio-line-names = "",
+			  "",
+			  "SODIMM_63",
+			  "SODIMM_55",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "SODIMM_196",
+			  "SODIMM_194",
+			  "",
+			  "SODIMM_99",
+			  "",
+			  "",
+			  "SODIMM_137";
+};
+
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
diff --git a/arch/arm/boot/dts/imx7d-colibri-emmc.dtsi b/arch/arm/boot/dts/imx7d-colibri-emmc.dtsi
index 898f4b8d7421..af39e5370fa1 100644
--- a/arch/arm/boot/dts/imx7d-colibri-emmc.dtsi
+++ b/arch/arm/boot/dts/imx7d-colibri-emmc.dtsi
@@ -13,6 +13,32 @@ memory@80000000 {
 	};
 };
 
+&gpio6 {
+	gpio-line-names = "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "SODIMM_169",
+			  "SODIMM_157",
+			  "",
+			  "SODIMM_163",
+			  "SODIMM_77",
+			  "SODIMM_24",
+			  "",
+			  "SODIMM_25",
+			  "SODIMM_27",
+			  "SODIMM_32",
+			  "SODIMM_34";
+};
+
 &usbotg2 {
 	dr_mode = "host";
 };
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
