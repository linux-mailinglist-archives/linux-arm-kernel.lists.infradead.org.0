Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB099706B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=U/JSR0te7Z11LwRA6SGJgxJMW3wmjaT0lXLJ6yboUyE=; b=Ohe
	8FFvuTcTg0eP6il/24CzxqXfjU04D6oChLFx/kiIQUBdO2ZwvCSW8qz1ayl1hjbgRnyyOETjiquV1
	HMEFPfjSKKM5Sg9PxXeeLGXiMl2dBiKEpnAQ9VRBN74q7PB1T4zdTTLbP5a0tV18GtsSx6lXsk91E
	qpUSjNqLDFe1KrF/GiMvsLDa4zoY3YlK8MgYeFMS6N6cY2HgaZQG+FhA88EiklIHaAnE+weasHrQp
	hsOgfnjUcblqMs3/nL3M8afSpx+lTIbxowVJgOefnoSmOgb420doDwtGbffRXu9I7lY046f2cTtqY
	ZRD5pNUY+rh5iSXqTNPiRC+4rN2+tzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpc1l-0000u1-Bc; Mon, 22 Jul 2019 17:23:09 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpc1K-0000th-Bl
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 17:22:43 +0000
Received: by mail-pg1-x543.google.com with SMTP id t132so17965764pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 10:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3876AKAsZGX63Axh00T2Gm59IDW3banJe4ryUn84tiA=;
 b=NQFtRY9MZNMNPg6S5CgEKrvuQRExfM4wbSegsLo2rdM9cKgEOrERmb4fwAvvjfo1IN
 vF8E/7Yvn6YapYEtC5gmooBWVSptCPLYzLG2FO3VEb2iaxu6CUWamED9YY1QhFdtoP3U
 uHKb8Njc3t3gUwLQ+cFi/qz/7Nk4oxsfyI321vuEr0qznCQfDwE+IoI0RHwJRwaXc6ex
 VOf5j/mqW8oyF4l9k/DYG3Z7JT7lvjJ8oKXV1sPntAwuPm1f1v+qXL0eYADfBRpQLwjG
 hzE0g6Nws1GnjNS5QftuvdRD2JM1DVRblP18YqAHnb56nDWT4TM7S4o3ix2BzzhWix1R
 66Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3876AKAsZGX63Axh00T2Gm59IDW3banJe4ryUn84tiA=;
 b=WrY+LqK1UKWgrZlwatpidSkZHZ3pRpwNoRUoK8HZImIhFIz3GKb59bLaDK1dExFcI8
 /6MM1eTZGKM0Drja2lJRz1CNaVlkQGP+KKZCnr591pE0tTrw7eRIAM2WMScdWW/KZpfB
 ZZ/opuniATj9ejtMfbxy+AkZ2g/GaL5LBYDhXxP9mLPdW9j+KC0bLinG69V+UH9KUNCK
 owR3j4AYdpeuI74UK6TibWF4dXHXNuxnuN/LvB4SpvWw6fufq7Fw4l+qdtshhpn5f+X/
 MWJPhSuup82LYF2YaapH/Ob14Qiz/BXfI2m49Eh6wLGJ+8Ayt+HBl0ZZs4DQ8kMC/Im6
 bKKQ==
X-Gm-Message-State: APjAAAWcmObOkbUk8hOobwxefQROQWi2j+XZch40x+ZyYmQkxVFDhwIS
 SLsB9ESeQNF/vetZ4BVhDqqTDlkT
X-Google-Smtp-Source: APXvYqzvENzFTEG6YT3zLFXjaovEUj0OUeVKwVnsTlCJkv/e4F1BwCfx3+YyUzcZEWDXi/MDZLTtWQ==
X-Received: by 2002:aa7:90c9:: with SMTP id k9mr1253443pfk.171.1563816161294; 
 Mon, 22 Jul 2019 10:22:41 -0700 (PDT)
Received: from localhost.localdomain (KD118155013174.ppp-bb.dion.ne.jp.
 [118.155.13.174])
 by smtp.gmail.com with ESMTPSA id w16sm48195445pfj.85.2019.07.22.10.22.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 10:22:40 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a7795-es1-salvator-x: sort nodes
Date: Tue, 23 Jul 2019 02:22:21 +0900
Message-Id: <1563816141-17805-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_102242_408776_025EB587 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

 .../boot/dts/renesas/r8a7795-es1-salvator-x.dts    | 26 +++++++++++-----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a7795-es1-salvator-x.dts b/arch/arm64/boot/dts/renesas/r8a7795-es1-salvator-x.dts
index c1a56ea..c729686 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795-es1-salvator-x.dts
+++ b/arch/arm64/boot/dts/renesas/r8a7795-es1-salvator-x.dts
@@ -52,12 +52,6 @@
 	status = "okay";
 };
 
-&sound_card {
-	dais = <&rsnd_port0	/* ak4613 */
-		&rsnd_port1	/* HDMI0  */
-		&rsnd_port2>;	/* HDMI1  */
-};
-
 &hdmi0 {
 	status = "okay";
 
@@ -108,6 +102,13 @@
 	status = "okay";
 };
 
+&pfc {
+	usb2_pins: usb2 {
+		groups = "usb2";
+		function = "usb2";
+	};
+};
+
 &rcar_sound {
 	ports {
 		/* rsnd_port0 is on salvator-common */
@@ -138,17 +139,16 @@
 	};
 };
 
-&pfc {
-	usb2_pins: usb2 {
-		groups = "usb2";
-		function = "usb2";
-	};
-};
-
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
