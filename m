Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C67160B07
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:47:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ni+oElglY3WCMqv1jnGctLOJcFhZpLQfDLVoNN1mZ9w=; b=m18JtNXMVFO1eQ
	F3z78RTZrTfN/HojWC1QwY4b4t74I+1rGQPezaly86/AvFIUI3TrkLz/VOX6Ge34olIbcwomF9j2h
	LJ2AtUqH9HBMOn/xMWJrC5Eo4f1qmccxRGcVJf+HE1aOCuXVifWlEoOkFiG+bVdWD9W5FWFW/JWsj
	tqIN3za9n0olukBWDwrlrVKtHGn0tWoia/t4I2RrHNsKwxPiGrqpFSArXTLtzD/bp308aviOyR6ty
	d56TFeiWZDchMFj5whSyuoDz8cfUkrHHy7YJWVtVR2VPlBcMReM1BbzVu9sH/YSECFkSrGC8gBIvu
	5vX6RPhbCNSIbtgrnd3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aBu-0008ME-N4; Mon, 17 Feb 2020 06:47:38 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7O-0003jJ-Q1
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:00 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 24A6151E1;
 Mon, 17 Feb 2020 01:42:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:42:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=p9ksJoRp95f7P
 lFbHwIyRMPpDKeA8eop3QczTiTwM5I=; b=rA0TWI3a7YFet8EoCuVsI860z8I+E
 SUNvecqs39KS3JIqqi4RPpfstCl9Iu0k0P0q2gD+P370ar9as8z7XTME/yXhIf0o
 0Pz3ifUxbqWnK+BILkTy2G+vAwMuTOaTptOmGT3NfPRJsKC7oe90DAYixPMoFcZ4
 GSeMwwiv30gl01gdhxiIj1k7zFrQTdoNf4vWQH4MVfwhLxLv5vVvwRqEyLkhsYg5
 e/CMCVuWb0U4WkpEbnmyTN4xGsrFOc0q38nJCjdtDbdhF/F5wdowWQQe76XC3BSa
 u97lrGQaqg62vw8uTIS8242pggrnupimDn1pVK4JfhXMSrdiGijCa1fkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=p9ksJoRp95f7PlFbHwIyRMPpDKeA8eop3QczTiTwM5I=; b=AlfQlKZV
 qcRoroqJR4iTVy4z9ZXqbfLjezcInYcOwoGHcanXsBb6P4+ojJrWStsrkWvOe12a
 1CuXUnSPXaJfpYNRxjzmGfcLUwlhL+spH4EcgvN8gv9Xc1jILUJRysrfTRFSr0xI
 0AghczMyxRXG+HAsmNhla3yUAdwnZVOmcvdvEUh0BRaekNipf4hM9b7S2t1uw4PG
 oN3aq68Eeo2CdCGC8gglEsRmFudh+9OFvwwhhNIFzMunWdxDi0H4I56lkLHWSNCK
 HJEhz9rA8VBM8Ex1CUoZ/GXW5HvuWdwP1KR8TYEKb5et1QhXCQ6R/Kj/IRMHPLDf
 GZvIzJmUZUBaKA==
X-ME-Sender: <xms:8jVKXuK9HKg9G6WO2NREAqZOPZCX8hmCXdNeEnTVWwRYWpEtp-R08Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpeejnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:8jVKXvh2bpMMC8HC_kQnNmyw7Lm3xPXPyJE7f3uUA8Igk4vsn8qSEQ>
 <xmx:8jVKXn32rdAvcrLynx_oIv794La04keS7WNjTjRV7-oN9eGE76TCbw>
 <xmx:8jVKXmZvnwHAVVAjFGhKULDsskpS2SfDCpFese_5F_hfq-cLyFGkpg>
 <xmx:8jVKXsaWB5rtxRbfRjy0WwXVusYWIB3S3_-jHErYgoffgIJ_6DLQJg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 69ECA3280059;
 Mon, 17 Feb 2020 01:42:57 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 11/34] ASoC: sun8i-codec: Enforce parameter symmetry
Date: Mon, 17 Feb 2020 00:42:27 -0600
Message-Id: <20200217064250.15516-12-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224259_045134_52C3E0A0 
X-CRM114-Status: UNSURE (   9.84  )
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

Each of the codec's DAIs has a single set of parameters for its clock,
channels, and word size. If both capture and playback are active on a
single DAI, they must use compatible parameters. Set the symmetric_*
flags in the DAI driver to enforce this.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index bf12f5199e96..3d5ed2f4575a 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -534,6 +534,9 @@ static struct snd_soc_dai_driver sun8i_codec_dai = {
 	},
 	/* pcm operations */
 	.ops = &sun8i_codec_dai_ops,
+	.symmetric_rates = 1,
+	.symmetric_channels = 1,
+	.symmetric_samplebits = 1,
 };
 
 static const struct snd_soc_component_driver sun8i_soc_component = {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
