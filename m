Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 567A0706B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GRlU4yeKVE6hA97zigF6HxzCTHXc0IoS60blb9b7yh4=; b=I+9
	JFvo/h57OOOKx8T582V94/yp4TufPGemhXgGs9lAGN6E4uqc3IQy62L+99OmMr9gm+y+gexSdx/qD
	ydVetuJngb1kb8CnG5CKf6RaiBxZXboZgt0OGg5LnbfoHEM3IMMkxp6186SjzD99t/SiKOxy3uGHG
	wvpPQ/IkaXqkor+3yk49Ns4CN0+0lYE+/i1cIwo39O4L1RgJZHFuXzF8CTO87EyZGuKtl+EQWjAG+
	MwtIi7CgxObwwL03XWmmmyqK4NdfP3lSKZRkvAN+dE01lxlL+AJxJZuhyQ/9LcZvBW73da6pSP6Gi
	m+yCbAzosN+ZLnzrEFbiCTAxdg5mGAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpc2B-00015L-VZ; Mon, 22 Jul 2019 17:23:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpc1e-0000zj-EX
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 17:23:03 +0000
Received: by mail-pl1-x641.google.com with SMTP id az7so19454508plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 10:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ZslVBL5Mz0HAfC+qBA5LaRiPngbPOV8Dc92uhilmqCM=;
 b=d8LF67x78l0sp6WDJIB8JzLbflFtuRLMrlbk1uNxoU9nPiTpGIgyAAi4EyDKddo8Lc
 q8wLkXejXjdlxrBJWmoP8MlzMhOzNNiwGFPA100TibuXQgiqU9Kohs4NV0leuIEha09Q
 PoPcqHiEghRpCMScXHW0hEKGVPt7SKnS5yPcX9birgxL5smRB2PIWLD2agzMab+S4HRO
 1Q9lAMvcsLNkxwIp7/aFYhCIMJf3TFBlZOiWHXVa94mT4OhsIBnIbe4VLGDYlCFAZgF9
 i7l/SN6aaJaYgjTknIkDkjAvzmyqQKimxjSAV5Y0nBoaH5dXOUgjIVHD/k0rLqSuLecK
 QAHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZslVBL5Mz0HAfC+qBA5LaRiPngbPOV8Dc92uhilmqCM=;
 b=Kt6wTDJln5I7tuRmlAy77YpVK6sqyCmnG6nZvllftX+1CTwtwH0bSqxCmaPu9mvRHm
 6do+/FxxA8rYr+wdo4lHs2M5tt7gtLlFTrhi2MTMc79HAZPXZs6DDgXma1EdUX8osaiL
 cDE3C+eMrRmMhrD2Vd9Cyx+Y2daGvBlnXz5BMYA5y+IZjw2KvR2OQ5rBMIdMio/PP9dB
 by4Dd3DrWjUhmv2k6Zgp27jtVa05q/rSsGDyf5Rgv9cTSu6D1H1u+0PQ4lF0/FAnL+Z0
 XsYTz3sZJUfuj2hq00lPEGEeLX8GniuGC5aBmrOZMMo1OpodTe6C2NLZvMYQjAqgAlFW
 08Qw==
X-Gm-Message-State: APjAAAWzOO5DjMrE14sjtPa3Db17/cMKABaXZMnv0BvNrm1+FyDXCPdY
 f5wtxNq82Z2LajV+nKEGB3Y=
X-Google-Smtp-Source: APXvYqzjEpkVGeir2fkcTas5pOeWNGXshv6wZ/PHE8TfIFsE5r4i2xyUk0D5OLsEvhlzRU6g9BRULw==
X-Received: by 2002:a17:902:e306:: with SMTP id
 cg6mr76378459plb.263.1563816181685; 
 Mon, 22 Jul 2019 10:23:01 -0700 (PDT)
Received: from localhost.localdomain (KD118155013174.ppp-bb.dion.ne.jp.
 [118.155.13.174])
 by smtp.gmail.com with ESMTPSA id o95sm35001252pjb.4.2019.07.22.10.22.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 10:23:01 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a7795-salvator-x: sort nodes
Date: Tue, 23 Jul 2019 02:22:52 +0900
Message-Id: <1563816172-17864-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_102302_583354_4499B78D 
X-CRM114-Status: GOOD (  13.96  )
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

 arch/arm64/boot/dts/renesas/r8a7795-salvator-x.dts | 28 ++++++++++++----------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a7795-salvator-x.dts b/arch/arm64/boot/dts/renesas/r8a7795-salvator-x.dts
index d2d48b3..cf151f3 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795-salvator-x.dts
+++ b/arch/arm64/boot/dts/renesas/r8a7795-salvator-x.dts
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
 
@@ -108,6 +102,14 @@
 	status = "okay";
 };
 
+
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
@@ -138,17 +140,17 @@
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
 
+
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
