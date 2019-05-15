Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0351F4E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 14:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LRGIipTTymdgyfz90HXNj5Uh8nwbrh19PPaQec2RzGo=; b=X6T
	haHYBqY/NbcLFsPVZC/uiNJ4TDSM2iERyBFFg11J2Lkqtu8zAqe+6rX5iR3zv518XOasee1zs6Kah
	7LAeG56330WnuH/QAM/mWtXNZ4lWf1gOAW76jIMcodsLC/knCZeqMVAbj16hIpB9cqwl0FNb5eyc8
	Tt8hSjRyhdV1dsbUISVh9vhTEjdOiEZFEv2N87wVvNVHL8nq/8hBC6rjfIyORXcG98aFFEHYTDR4l
	qzXyomoOh5h/pHB1CUGjJRDzPkJvVdqFymz8URr7AeV01cchPsxjOKwlFqV836g90Q54Xnl4QIH34
	VS3brM7afLl47Nu6M6Gcck8ik+y30/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQtUz-00044W-0F; Wed, 15 May 2019 12:59:09 +0000
Received: from forward101p.mail.yandex.net ([77.88.28.101])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtUr-00043s-KC
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 12:59:03 +0000
Received: from mxback10j.mail.yandex.net (mxback10j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::113])
 by forward101p.mail.yandex.net (Yandex) with ESMTP id 50C4932803CF;
 Wed, 15 May 2019 15:58:55 +0300 (MSK)
Received: from smtp1p.mail.yandex.net (smtp1p.mail.yandex.net
 [2a02:6b8:0:1472:2741:0:8b6:6])
 by mxback10j.mail.yandex.net (nwsmtp/Yandex) with ESMTP id bsLgkcNsk5-wrqWxH7u;
 Wed, 15 May 2019 15:58:54 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emlid.com; s=mail;
 t=1557925134; bh=2W0zEgOCWDt4v9u1OadziJEpCceQZoKdy90nqGUwrWQ=;
 h=Subject:To:From:Message-Id:Cc:Date;
 b=FpTs2rYCKv9xevIpF1wJhV+sgP+MWg027Kdv53qNlxar8QmYEi0QAT3F2by/lxsu9
 QoDFBzIzNuUlYLy9lmo/J+S7O887/AjhKEbvEuEN8R+nFyZph4lsdu807+LeH4ggmt
 sVk9rxC7+Yh37NtrIZJEc2bIs/CN0nhRBkC84v1Y=
Authentication-Results: mxback10j.mail.yandex.net;
 dkim=pass header.i=@emlid.com
Received: by smtp1p.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 rpGlbIVyzP-wqGSgVWX; Wed, 15 May 2019 15:58:52 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (Client certificate not present)
From: Georgii Staroselskii <georgii.staroselskii@emlid.com>
To: lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, tiwai@suse.com,
 maxime.ripard@bootlin.com, wens@csie.org, dannym@scratchpost.org
Subject: [PATCH] ASoC: sun4i-codec: fix first delay on Speaker
Date: Wed, 15 May 2019 15:58:40 +0300
Message-Id: <1557925120-31498-1-git-send-email-georgii.staroselskii@emlid.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_055901_912959_7A31F3F0 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [77.88.28.101 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This commit fixes the same issue as bf14da7 but for another codepath.
The issue can be triggered by having Speaker in codec audio routing.

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
index 15d08e3..e0099519 100644
--- a/sound/soc/sunxi/sun4i-codec.c
+++ b/sound/soc/sunxi/sun4i-codec.c
@@ -1329,6 +1329,15 @@ static int sun4i_codec_spk_event(struct snd_soc_dapm_widget *w,
 	gpiod_set_value_cansleep(scodec->gpio_pa,
 				 !!SND_SOC_DAPM_EVENT_ON(event));
 
+	if (SND_SOC_DAPM_EVENT_ON(event)) {
+		/*
+		 * Need a delay to have the amplifier up. 700ms seems the best
+		 * compromise between the time to let the amplifier up and the
+		 * time not to feel this delay while playing a sound.
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
