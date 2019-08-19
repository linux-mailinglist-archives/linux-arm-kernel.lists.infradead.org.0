Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C6F923F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 14:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JKlTh/7viIGKmY0G235PgzZ+iRnmkwVAQZbol2Oh9ts=; b=TQe
	IClNP2gHTr3+bvWT4ShhrCpI6U+YRI2t+z26FDOZ9cwz/FnzVYt3mcqzxYmZGaNAc77W/QIsmWZdp
	pGVaxw+QMaUXxh0BHodmnnFVLuMUUTWdeRsGab1sWT7SLeoSX93V9g+ejuFzEOgdMx483VxbW/t0e
	agsJPIjsuo2W9DLRkpzxeHiOEOa9R4WwOeUdldSCgyjSGKoymS/opS7gTYT36IqPoMX61R8WkmFLs
	zlJ7Q30dP4oRbDWotqAj5Nj6doHsqIzh6XwZCDnPWX1Uj6BnGTE14f3pbuZtUjq7A9D7S62gGfZnZ
	5xAtMvwLL47adsmzTPbc4n/lYwhvfQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhCa-00061K-4s; Mon, 19 Aug 2019 12:56:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhCR-00060Y-SH
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 12:55:53 +0000
Received: by mail-pf1-x443.google.com with SMTP id w16so1132637pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 05:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=v5qVhsj1Sh0huonK/swWihX+DCDDmRO1aGyC58oJV4s=;
 b=Ic5eSyZyZrVLzC/MLRQ83pEC+DBw04beNBU7MbyhOl4si0cNUiosvpb2Bedm62EKdq
 yxCSNGsTNI3CWUGDrUMVTsvjEe0hnhg6deXIURViDKnaCW98sG1DvE1SFUsD1Zby6sEV
 MYbFYTVm1+G53k/BJ8WdTyNyY2fwUGuzz6YwYNQwUhlga0C+YqfNHymHPIM8xoIgPo4Z
 xATeGD7jSnvwB/8fwz++/fy7ZeaSaRqhsGcWvDPldJSlHr677Olta1LZRHB3oJnV2IQL
 gOjiRhzKHW1aSiZb/ZlG9sFYTCA4EPYTwKTcwEW9u4gIgNb3a1JenRYQEGI2VqwtxjNr
 fOwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=v5qVhsj1Sh0huonK/swWihX+DCDDmRO1aGyC58oJV4s=;
 b=RIqODZLq4YGGuoRwzynuQG9wKpcD2X9q7z6g4s0qhjHjr/dZ0wuwHNPuxmBrK7K/Un
 UA40w/DTLRLN60IAGo6wzey+6HJl14aY9Ff2MQgJ6Cv9FSvdQ/U35XKYYwz5T4QJYw/o
 feMnplaMw/jw031FBVCFmvYVqlLFvteVLO84+owHzHcSkklQU/mVDk0/YwHxyd0HiyIm
 E+KaSNdDgaaBmUhkaJqzqK70AI8RA33YMWbJeTtHEvziXiKbFhKroTHwJ3FZERaKDQFW
 Gx0tRISVsTymyCBcyBYmLhHJ3Ex3X20KcCFc0Aex0Uccxx7ALM3gZtlP8licbiKXMPNR
 Gfeg==
X-Gm-Message-State: APjAAAWbf5rQgFfmEZ6jJjBP03f8nUOyvA2Hk/vWQK2OiAcoFM5eIz+i
 802ebeVvydGmm3DItWUlwYc=
X-Google-Smtp-Source: APXvYqzjZ55GlzrZenjUQbO/L8WqYRgNiYv2ZUlFlqICGOE+HpVHDfzLW0WkM0hfQGIjsQKapBL9ew==
X-Received: by 2002:a63:101b:: with SMTP id f27mr19040919pgl.291.1566219351382; 
 Mon, 19 Aug 2019 05:55:51 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id t9sm13215113pji.18.2019.08.19.05.55.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 05:55:50 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a774c0-cat874: sort nodes
Date: Mon, 19 Aug 2019 21:55:41 +0900
Message-Id: <1566219341-23048-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_055551_917061_7C6A2FDE 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patch is based on the master branch of Geert Uytterhoeven's renesas-devel
tree.

 arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts b/arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts
index 651383c..aaa37158 100644
--- a/arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts
+++ b/arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts
@@ -82,13 +82,13 @@
 		simple-audio-card,bitclock-master = <&sndcpu>;
 		simple-audio-card,frame-master = <&sndcpu>;
 
-		sndcpu: simple-audio-card,cpu {
-			sound-dai = <&rcar_sound>;
-		};
-
 		sndcodec: simple-audio-card,codec {
 			sound-dai = <&tda19988>;
 		};
+
+		sndcpu: simple-audio-card,cpu {
+			sound-dai = <&rcar_sound>;
+		};
 	};
 
 	vcc_sdhi0: regulator-vcc-sdhi0 {
@@ -313,16 +313,16 @@
 		power-source = <1800>;
 	};
 
-	sound_pins: sound {
-		groups = "ssi01239_ctrl", "ssi0_data";
-		function = "ssi";
-	};
-
 	sound_clk_pins: sound_clk {
 		groups = "audio_clkout1_a";
 		function = "audio_clk";
 	};
 
+	sound_pins: sound {
+		groups = "ssi01239_ctrl", "ssi0_data";
+		function = "ssi";
+	};
+
 	usb30_pins: usb30 {
 		groups = "usb30", "usb30_id";
 		function = "usb30";
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
