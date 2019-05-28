Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6A72C4B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 12:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Kytu5QReL6FohJ3Nttg9WMY3MhJRiiF0iDWga2hIaj4=; b=GAA
	dqw1GiYIya4JoaFdSO7VbqQRg7GuAc6/bViGp9lowLTcdRpxZ0uC+LuOR1mJe+X0+pQhn9odeuo6L
	KcOO8+5eBdjsZod3zMttybgT3J6Qdz3lE67/L7b0TlVIuDvlyk/lpg+w57DLzyaN9gsemruBlfT0h
	UjA/OLMjWXek7mebsfndKqAKmZ26W6cvp9xRBxZ44rDABWP4KEeJlVRh3fSqg6rgBvWDJ6wdgf/P/
	+2aoNhoj9Gd68nw/jLz4abVvKP1C2DNwy3L0wGiDlF9Mquq+rt5dh6wqbjJhJk10Ba1at6eRisIRd
	SZ680qKq0/pLKaDpODBS2c3COLXhk6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVZeP-0003Pr-64; Tue, 28 May 2019 10:48:13 +0000
Received: from forward102p.mail.yandex.net ([77.88.28.102])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVZeG-0003Is-6j
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 10:48:06 +0000
Received: from mxback12j.mail.yandex.net (mxback12j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::87])
 by forward102p.mail.yandex.net (Yandex) with ESMTP id 880021D40BB7;
 Tue, 28 May 2019 13:47:56 +0300 (MSK)
Received: from smtp4p.mail.yandex.net (smtp4p.mail.yandex.net
 [2a02:6b8:0:1402::15:6])
 by mxback12j.mail.yandex.net (nwsmtp/Yandex) with ESMTP id FY1s6RDynA-ls9Gkqrn;
 Tue, 28 May 2019 13:47:56 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emlid.com; s=mail;
 t=1559040476; bh=Is/MIvi4jfDkUP+QCZKxpOOi4A6PloqEim41KKUSFQI=;
 h=Subject:To:From:Message-Id:Cc:Date;
 b=mk+kjWb0EdrqLncti5Yr4SSG1jWO9VAvGH5iMQZMPrtZ+uI2MwlatQNG6uTOVwWW2
 p8XgkQy73ogqo768svZG8nEtCb90QcAUt2a4Xod2pz/QXuHnb8evEgpy5C2TPEvfdf
 cEjPSQkeyKUEVj8/9nT0hk05qczAw1hhHeXtfiIo=
Authentication-Results: mxback12j.mail.yandex.net;
 dkim=pass header.i=@emlid.com
Received: by smtp4p.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 yGoKdH2rqr-lqmSh4ee; Tue, 28 May 2019 13:47:53 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (Client certificate not present)
From: Georgii Staroselskii <georgii.staroselskii@emlid.com>
To: lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, tiwai@suse.com,
 maxime.ripard@bootlin.com, wens@csie.org, dannym@scratchpost.org
Subject: [PATCH v2] ASoC: sun4i-codec: fix first delay on Speaker
Date: Tue, 28 May 2019 13:47:39 +0300
Message-Id: <1559040459-16488-1-git-send-email-georgii.staroselskii@emlid.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_034804_493264_56584046 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [77.88.28.102 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: georgii.staroselskii@emlid.com, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner DAC seems to have a delay in the Speaker audio routing. When
playing a sound for the first time, the sound gets chopped. On a second
play the sound is played correctly. After some time (~5s) the issue gets
back.

This commit seems to be fixing the same issue as bf14da7 but
for another codepath.

This is the DTS that was used to debug the problem.

&codec {
        allwinner,pa-gpios = <&r_pio 0 11 GPIO_ACTIVE_HIGH>; /* PL11 */
        allwinner,audio-routing =
                "Speaker", "LINEOUT";

        status = "okay";
}

Signed-off-by: Georgii Staroselskii <georgii.staroselskii@emlid.com>
---
 sound/soc/sunxi/sun4i-codec.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/sound/soc/sunxi/sun4i-codec.c b/sound/soc/sunxi/sun4i-codec.c
index f2deffe..9e1f00e 100644
--- a/sound/soc/sunxi/sun4i-codec.c
+++ b/sound/soc/sunxi/sun4i-codec.c
@@ -1320,6 +1320,15 @@ static int sun4i_codec_spk_event(struct snd_soc_dapm_widget *w,
 	gpiod_set_value_cansleep(scodec->gpio_pa,
 				 !!SND_SOC_DAPM_EVENT_ON(event));
 
+	if (SND_SOC_DAPM_EVENT_ON(event)) {
+		/*
+		 * Need a delay to wait for DAC to push the data. 700ms seems
+		 * to be the best compromise not to feel this delay while
+		 * playing a sound.
+		 */
+		msleep(700);
+	}
+
 	return 0;
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
