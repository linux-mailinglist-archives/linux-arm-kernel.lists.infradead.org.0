Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C66D971EA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:06:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XBnLrrShU18zp2LRuowZ/RgWu9bVsXdf//XMsz7d53s=; b=sKR
	gyN6OMJqT4soAHoEHjG2/GyeOEUBqD+8a85OKV7Zxmi8DmxZQbvytBF3e7cALg7yGGz9UJsSB7wxt
	JKrj3KyRW5FpdXc0Hi7hA6Ckq95OELWTg4IFaKl7uPskAbL4S855aldsnPGFsdqhBu87vktkQg3ID
	OT4Y2CePTW2/rfElLsDib61B5qP/Dbas0ZQolJ5ONRLWfxh+F9TV74yDUoAmNy3MjvMqxgxueRack
	08rmMscSo3veu6xLecPMsmn2EHEd2e88crRq0IWFRKOmp+SyxThONt8RQjyEIb4ZABHOTyMuGExrJ
	smxBChfx/y+8mpRwL/0yAee1RIGrpew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzAo-0004cl-8G; Tue, 23 Jul 2019 18:06:02 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz7o-00013K-B7
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 18:02:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id t132so19790227pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 11:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=IiQ9FeWhA1kQebyHY6+sy801yiSvPYko5A+aRDheAqM=;
 b=Mx/2ZB5ulP3L2vy0DWp+l7wA9og7pxz/rLJjnKAYubpxYT6O5w6g0g8aA78XTWSonh
 CGJoF1vg+T3cozB73Bh+2rxTsyO7LCMpXu002rKCPQ48rx37oBISVOfubnPcd4Drm31c
 CnUEgoinMfk3QyylNUgstjs9urFmldTEAsUmXE31E6UyGvIfTcqS7Aaqqw9bIE1HbnfU
 O214XkzeDYxxeDa0J0iBYkrBRhV2BneVSfHJCv5VHcGW1tOPrSuMcPGqPkgWjSnyxdb3
 ImKb7WpQyjXrHGXCdME31yzzZxsOIMstB2zSk7gR9WxmPGjwZNXRtDQMuPSZJtHJ27Xe
 HIdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IiQ9FeWhA1kQebyHY6+sy801yiSvPYko5A+aRDheAqM=;
 b=l6xuS82VM4bX2dNydUn+EMG82XLn02eJPaKR+MbAJDfaGV7PJJW1Mmzgu6xAeNJcAN
 DCNb3wRRCpTNQT2EMyqIGPvzVsoCPGmC9XugpVTX2nrpONQrKXjt0QFiB9iFC2o0MBdm
 lQLp0n2j03mYmelq51JjJdL86ZuYamdjs5EYaPrde8fuGJTSO9F4oiH45zNWv7OQTamR
 Ts/B4YVs8c12kdS2uLIQX5oOB6LncJgYYiW6GoC9OWj97lUnOgeVAJAS6Xop6Ii/87LI
 +aVvbVOnUPANqQ0stK6m8S+fcXTd5FeoNgcBhw/BH/IYGStovtomrIsqhRU19ZemjjNv
 o21w==
X-Gm-Message-State: APjAAAVt3tqX7f5/KImsk7rrBD19+AIxUVWpVEvh357g13iNYMAWEETj
 cosN9YnTGCyuWa4gIW+2wXs=
X-Google-Smtp-Source: APXvYqwKXYSz+vTsnnArpLizZjDkM9C/F75bVbeldp4iXdeQkbO2+d6Ilwrp1LnY5EFzF5WJ3aM8mA==
X-Received: by 2002:a63:b46:: with SMTP id a6mr67936945pgl.235.1563904975073; 
 Tue, 23 Jul 2019 11:02:55 -0700 (PDT)
Received: from localhost.localdomain (KD118155013174.ppp-bb.dion.ne.jp.
 [118.155.13.174])
 by smtp.gmail.com with ESMTPSA id a12sm82319839pje.3.2019.07.23.11.02.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 23 Jul 2019 11:02:54 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a7796-salvator-xs: sort nodes
Date: Wed, 24 Jul 2019 03:02:41 +0900
Message-Id: <1563904961-2835-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_110256_440924_D6453DDE 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

 arch/arm64/boot/dts/renesas/r8a7796-salvator-xs.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a7796-salvator-xs.dts b/arch/arm64/boot/dts/renesas/r8a7796-salvator-xs.dts
index d58ede1..a1cbfef 100644
--- a/arch/arm64/boot/dts/renesas/r8a7796-salvator-xs.dts
+++ b/arch/arm64/boot/dts/renesas/r8a7796-salvator-xs.dts
@@ -36,11 +36,6 @@
 		      "dclkin.0", "dclkin.1", "dclkin.2";
 };
 
-&sound_card {
-	dais = <&rsnd_port0	/* ak4613 */
-		&rsnd_port1>;	/* HDMI0  */
-};
-
 &hdmi0 {
 	status = "okay";
 
@@ -81,3 +76,8 @@
 		};
 	};
 };
+
+&sound_card {
+	dais = <&rsnd_port0	/* ak4613 */
+		&rsnd_port1>;	/* HDMI0  */
+};
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
