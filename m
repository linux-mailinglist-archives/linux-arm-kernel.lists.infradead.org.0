Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9781011D1B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 17:02:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Co2lDGoQFOkUWiL08xX/d/lVvItYenZxSfwQLMRBUzA=; b=Odmowq/vWtZDo2
	BiwPdbbIvC8WmOoXiQUd6sEYoLW5oew25+K5ROEHPvKemAy/eynpP0PTKEb/sCVNKIuE1m/GWcqAD
	5Fl1JtlDfhLkivr9lkB+JHBHMh0UoTUqrDZrRJnEWOJ5U9//3A3daphjKarfXvF1sl9Mq5jtDor7z
	OaybOvfg04i1HvIwTUQekv7S08JFpkIE1Li8e0aOxPxQAjJHJXh2W4QzITQ3rvUyMymuvNr4APQt0
	bb4Wx6Loejo9LPdF8sCuLbyoQkR1wYSuS6mgE+zNxx7ER52HgswfeY1xfT1eSrp0DVLWR0Yq7MsK7
	44tJMrXgNVyTkKNtya1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQvD-00028C-4H; Thu, 12 Dec 2019 16:02:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQv3-00027M-Sg
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 16:02:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: sjoerd) with ESMTPSA id 588E328B82D
Received: by beast.luon.net (Postfix, from userid 1000)
 id 618673E1F0D; Thu, 12 Dec 2019 17:02:20 +0100 (CET)
From: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx6qdl: Enable egalax touch screen
Date: Thu, 12 Dec 2019 17:02:20 +0100
Message-Id: <20191212160220.2265521-1-sjoerd.simons@collabora.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_080226_056167_315A2048 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sabrelite boards can have an lvds screen attached with a built-in i2c touch
screen. Enable this in the dtsi.

Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
---

 arch/arm/boot/dts/imx6qdl-sabrelite.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi b/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
index 8468216dae9b..382b127b2251 100644
--- a/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sabrelite.dtsi
@@ -416,6 +416,14 @@ &i2c3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c3>;
 	status = "okay";
+
+	touchscreen@4 {
+		compatible = "eeti,egalax_ts";
+		reg = <0x04>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
+		wakeup-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
+	};
 };
 
 &iomuxc {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
