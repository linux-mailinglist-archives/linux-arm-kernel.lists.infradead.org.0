Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436D4160B0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:49:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kzYAFMEPOr5Y/Wjkjcf9kN/g8XUAtrG/qI1AjYWlOM=; b=b+1gFJPrDO/LH3
	Hh+LHwbeCEHx2wzPpw1H+KX8B3sRfbTY5B/phZtVRYqV7jZNE6kw1oxlF+o//vMa7QCz5yycnQk7W
	VAKFgnc8hbhC9Fr575+FaVe82erXe5w+9oW60T9y4PqxyI+vPw91uW7Ff0gOs+e6j/bk299Q3Rgi2
	Y3CPYH+Rlr6LLDv5f13O4I0vC9Fg4pg/ICQaPXoHIhnbtnXpWOs4LfEGVGGicKkH4DTVLHmRh6YMM
	2soJ7lKcNVakAjMv/w+urq8pPNqImVc5IaywvHLONV9XoJiauzq7IarSXOOBAmqmwNtZSlqd3I0E8
	PEnJOyk+1D4EplkmRrfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aDI-0000xG-2K; Mon, 17 Feb 2020 06:49:04 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7S-0003n1-Lt
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:04 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id C5F0C51E0;
 Mon, 17 Feb 2020 01:43:01 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=3lDAjzOIj+9xl
 0Uviyyg4YICTqjd5DlgZCmlDUQ+E0U=; b=muGhFo1eJt2pej7+zET/+0V+tEhsk
 MuVyrWdcsln5GkdE/PLf/tgcU/CebUwLDeiAjUBaaLbWOi4OVPrGASDdJuvgUj5S
 u3wzagc5P/nm3t/tC6XdwZlQad3TJUD1k/1623eqGYIw1w++XKeXVvYQGWGjLidT
 VMf+x9IoYcUELe5d3v5BwUr/sgvmLqc4ZBSXQKXDBzkovGH57M9T2A7/WMp/eYVb
 rK5GgqA4ILWDLTXRjGjld/B5GppeDdMjAJXZ1B0KvM/chgY7P+FsaNNhKvqg5s79
 7Mm/4PzGgspiBWK150QU8u7IjCxBsJckWAAu25WvTTSRIM3JxR/3tzPSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=3lDAjzOIj+9xl0Uviyyg4YICTqjd5DlgZCmlDUQ+E0U=; b=22Y80l+Q
 E0uwP3twi0LKdVtRVWQ49nfiYYHvVfLQzkhLX8D7T09hSqfMq87I414dcAJPyZiQ
 N79w1AeHRPj+ahC1DR81tMUlrzPkWUzdlzIi8MfrmCYcn2wPaaJ1g2IGgwlD5NRM
 vSs7NeMR+FmXAzhSBr/ooUBD+H2ix7ZjZLyCQCeflyhKTQ7YQ4WqESMUq8LCwQbH
 55yiSj2okBaSe+imPd59B/Wn1Q7Drqn2TuJG5OMT36Vj6L3NRZYhxmgguwYw4Dch
 nYIubWoLRcdTbltLxeQbKxIl5lC1Crnx5YKCm2v2qjhcguqG9e7Ec4aGkrPkBFF+
 v+01DFcTmnIZoQ==
X-ME-Sender: <xms:9TVKXk3qxGth5nybN9EX70iuIOHgtOLf6Mu95OY65LG1bkoQWvz1pg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpeejnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:9TVKXuzF3Mi1YJsdi1u6pdJ-n7oSC5M_td8BL3y1Jiwptqfm50UlAw>
 <xmx:9TVKXnuTPFDSFpTgS2uu5PVuHHtw7kFUW_hDFUizCWAMvgBZQElCng>
 <xmx:9TVKXgQJAFSfshpb0Jx1uWNqntb_7IkTnwGmeHnotgwYRz-537wuhg>
 <xmx:9TVKXoGc2jg4pO8XJ-cMKCgUVVNw67m8V9DvwhzxkRN1Ffvmoz8_Xg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 117C13280059;
 Mon, 17 Feb 2020 01:43:01 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 17/34] ASoC: sun8i-codec: Sort masks in a consistent order
Date: Mon, 17 Feb 2020 00:42:33 -0600
Message-Id: <20200217064250.15516-18-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224302_893614_2F43C4E7 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All other definitions are sorted from largest to smallest bit number.
This makes the AIF1CLK_CTRL mask constants consistent with them.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 559dec719956..36ce281286b5 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -81,10 +81,10 @@
 
 #define SUN8I_SYS_SR_CTRL_AIF1_FS_MASK		GENMASK(15, 12)
 #define SUN8I_SYS_SR_CTRL_AIF2_FS_MASK		GENMASK(11, 8)
-#define SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT_MASK	GENMASK(3, 2)
-#define SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK	GENMASK(5, 4)
-#define SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV_MASK	GENMASK(8, 6)
 #define SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV_MASK	GENMASK(12, 9)
+#define SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV_MASK	GENMASK(8, 6)
+#define SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK	GENMASK(5, 4)
+#define SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT_MASK	GENMASK(3, 2)
 
 #define SUN8I_AIF_PCM_RATES (SNDRV_PCM_RATE_8000_48000|\
 			     SNDRV_PCM_RATE_96000|\
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
