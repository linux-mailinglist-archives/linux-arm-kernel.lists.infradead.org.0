Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C01706BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0VMYdizuhmpZ171//rdEzJOKY/syLR/7j0C/kd/wUps=; b=MH7
	iXkqg3hvNTqqw9hMpRQLCZ4vy+LBiJkP3V/uF8j6tQ0VhsLU3TA3820/hH0yds2JwCEzb/gCpppTA
	U7qIXjiJ4DrcMJt1VT6xBVNdLkDaVV8tkBQSCzasoL9BhuGIMjWLhNHGtiglFCNpcuKSG17rAtAmt
	wKe3JuzXdUKbzMLpQLAQL/Ceo/9uvYh10Lk140PiJ1MnW7qtaaGZWSSUg/TTfV5NIf+P6IEDhKGKL
	+yKGRInvjylSbo+1CQYoVEa6XlqzDXuWOePGbX1GiTokY+d5s1/LnlQQUPcITJCuv/7wnRt4ee5Hs
	C/CapP8lmtcFoydt1CoxCkNaJRMTYjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpc2Y-0001Ki-KB; Mon, 22 Jul 2019 17:23:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpc1y-0001BR-7J
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 17:23:23 +0000
Received: by mail-pl1-x641.google.com with SMTP id m9so19385776pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 10:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=XQwtQTHjRb9vj1GeJWjUkZGMSIPHT5Z7N19ylCEpmq8=;
 b=nqtiOPPidG8GPpmdLwIzumCQceypKN2K3Yi/ZUy1MGZQirzwyGfMAjkIt0S4BA6NDx
 JwQG601+F++gn9HS9RDI4PbApsFZiCPRe+jfjiOsYxquoPyCwzgid+sQp4+pakB/BrkK
 Kqxc6Kc9YZ7t57qFqR4QSKuhIL5ki+G2E8blRSMtjXyC3cA3fPvXDP4ULI91JdLyFceh
 IUsMFbuECQVKTS603JtDkgtOKBwZKi0Ib0m8v98DehIEmqAUUnmw/GQn5SoZ1mI4zdVU
 b94NXw9j6oZmH4g0YSPw7h0WbslIRqsZHLmpEuBYyfE3x5VbU5e6JAfHp+M+YohxS02U
 cKRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XQwtQTHjRb9vj1GeJWjUkZGMSIPHT5Z7N19ylCEpmq8=;
 b=NIY54bQsIuXHY7nRYWjpISTmBRLKU11Tmq2ZMv7I6uvy1Ly90LwwiQN62hbWNjNqVM
 gaJ/RpphjMFo8aA/WwIfHMVCn3T5mxWJdkrb8Pk0dzCzuhjlE8FWwCGrtknzlZUpfRlj
 YnwBc81BtFYg7BdI9svOrLugPoFTOfBOsjTSmzAhf4uG7NNVE58llHpQ8ncwfxPyomwK
 y3KZ+HUvRtybcxy9W3O/kpJN8pu7bNSUy+jo3tYYoSy7KjnvYyELWKDEKvKAhLlpO2JU
 TK05If5EmQJMJuuOt+9Y8ASjxZoMitF9KiC4od/ogmMYcyEygq3R3sUXujH/ndOmRisz
 vy7g==
X-Gm-Message-State: APjAAAVNTKDFkwgeFzhlfDoVokTdfrVBS30IJShm5M1nmBuW4xrDzeUG
 H/bYwtp4KNiSZBo6C/rLeHs=
X-Google-Smtp-Source: APXvYqwBSa3U9CvXEgatiD97EyWYBlgP1RQEatz9tgqfQ/wuebsz1uwEcQxmpz7CfJ679Yfpx6/ikQ==
X-Received: by 2002:a17:902:29a7:: with SMTP id
 h36mr78323906plb.158.1563816201808; 
 Mon, 22 Jul 2019 10:23:21 -0700 (PDT)
Received: from localhost.localdomain (KD118155013174.ppp-bb.dion.ne.jp.
 [118.155.13.174])
 by smtp.gmail.com with ESMTPSA id b26sm44319796pfo.129.2019.07.22.10.23.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 10:23:21 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a7795-salvator-xs: sort nodes
Date: Tue, 23 Jul 2019 02:23:08 +0900
Message-Id: <1563816188-17922-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_102322_291400_A12C84FF 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort nodes.

If node address is present
   * Sort by node address, grouping all nodes with the same compat string
     and sorting the group alphabetically.
Else
   * Sort alphabetically

This should not have any run-time effect.

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the devel branch of Simon Horman's renesas tree.

 .../arm64/boot/dts/renesas/r8a7795-salvator-xs.dts | 82 +++++++++++-----------
 1 file changed, 41 insertions(+), 41 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a7795-salvator-xs.dts b/arch/arm64/boot/dts/renesas/r8a7795-salvator-xs.dts
index 42101fc..36667c8 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795-salvator-xs.dts
+++ b/arch/arm64/boot/dts/renesas/r8a7795-salvator-xs.dts
@@ -57,17 +57,6 @@
 	status = "okay";
 };
 
-&hsusb3 {
-	dr_mode = "otg";
-	status = "okay";
-};
-
-&sound_card {
-	dais = <&rsnd_port0	/* ak4613 */
-		&rsnd_port1	/* HDMI0  */
-		&rsnd_port2>;	/* HDMI1  */
-};
-
 &hdmi0 {
 	status = "okay";
 
@@ -114,6 +103,11 @@
 	remote-endpoint = <&rcar_dw_hdmi1_out>;
 };
 
+&hsusb3 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
 &ohci2 {
 	status = "okay";
 };
@@ -123,36 +117,6 @@
 	status = "okay";
 };
 
-&rcar_sound {
-	ports {
-		/* rsnd_port0 is on salvator-common */
-		rsnd_port1: port@1 {
-			reg = <1>;
-			rsnd_endpoint1: endpoint {
-				remote-endpoint = <&dw_hdmi0_snd_in>;
-
-				dai-format = "i2s";
-				bitclock-master = <&rsnd_endpoint1>;
-				frame-master = <&rsnd_endpoint1>;
-
-				playback = <&ssi2>;
-			};
-		};
-		rsnd_port2: port@2 {
-			reg = <2>;
-			rsnd_endpoint2: endpoint {
-				remote-endpoint = <&dw_hdmi1_snd_in>;
-
-				dai-format = "i2s";
-				bitclock-master = <&rsnd_endpoint2>;
-				frame-master = <&rsnd_endpoint2>;
-
-				playback = <&ssi3>;
-			};
-		};
-	};
-};
-
 &pca9654 {
 	pcie_sata_switch {
 		gpio-hog;
@@ -186,11 +150,47 @@
 	};
 };
 
+&rcar_sound {
+	ports {
+		/* rsnd_port0 is on salvator-common */
+		rsnd_port1: port@1 {
+			reg = <1>;
+			rsnd_endpoint1: endpoint {
+				remote-endpoint = <&dw_hdmi0_snd_in>;
+
+				dai-format = "i2s";
+				bitclock-master = <&rsnd_endpoint1>;
+				frame-master = <&rsnd_endpoint1>;
+
+				playback = <&ssi2>;
+			};
+		};
+		rsnd_port2: port@2 {
+			reg = <2>;
+			rsnd_endpoint2: endpoint {
+				remote-endpoint = <&dw_hdmi1_snd_in>;
+
+				dai-format = "i2s";
+				bitclock-master = <&rsnd_endpoint2>;
+				frame-master = <&rsnd_endpoint2>;
+
+				playback = <&ssi3>;
+			};
+		};
+	};
+};
+
 /* SW12-7 must be set 'Off' (MD12 set to 1) which is not the default! */
 &sata {
 	status = "okay";
 };
 
+&sound_card {
+	dais = <&rsnd_port0	/* ak4613 */
+		&rsnd_port1	/* HDMI0  */
+		&rsnd_port2>;	/* HDMI1  */
+};
+
 &usb2_phy2 {
 	pinctrl-0 = <&usb2_pins>;
 	pinctrl-names = "default";
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
