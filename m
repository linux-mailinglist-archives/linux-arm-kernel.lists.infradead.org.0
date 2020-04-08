Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3B81A28EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 20:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rRlhyAz58pQhph7pQIWF9cBiwyHVjOakO9/RPsrRhKA=; b=oO/yHSn+FWg8Pj
	oMuhAEp769hM+MDbzNMT2ZZA2sxa6cqnNbdJBI8WW2hdeByvGhRjwzjH0TRaSTDH6s2ukW9Bi4gh0
	UC9RY7Gb8GvT6rOgb5ct6jpUK5svF6JCyZvHgmqmZg1dOUOW/cU/in0sBjn6G/60GQZL/sdxHreO9
	P6FYb5nGdEeeTyKImwaNDhaks4DVGUsTdAQiZxpGVllh50P5rHWk+OIXWo/gvQ4bwF/yvvGoDrd8X
	/1qslEbbIk0I0vM6ARW/rb6A03a2QTNTojqt476B+OV9HaZ0gBOgy0Wf52M7s4iYabpC40iydYOSj
	7+yw6zWD8kt9Ic8JgGHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMFss-0008I0-Os; Wed, 08 Apr 2020 18:57:10 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMFsh-0008HR-VU
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 18:57:01 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MmlfM-1iuNB72mjG-00jo1r; Wed, 08 Apr 2020 20:56:11 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH] ASoC: brcm: fix dma_addr_t cast to pointer
Date: Wed,  8 Apr 2020 20:55:51 +0200
Message-Id: <20200408185609.332999-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:eqXjrTR0pH8tvM3YvyxdWJ7p7tY9GX5onuK1UkDKdf2MzUDRbiz
 epzr0xGSysLzCOxlE5VU0aEdCbkvkEO8Awx5xgNCOip2k4eZD1UaVdLaEOmaMSybFOsEXVk
 RViu3Rhl6uCrecckiU+LAHV96tMrXY8o2zphNQ7s8HWV89T1zaHXdVgexKqwKMLJOHBD44/
 p5uNTReKbixxKkUU3CqrQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:saTkIRKQg4o=:LN1fq396PcgVuX7m3vbfBg
 aDfALxrHeoscEQHOKC6NXAXbhEj1fgdMXKYZdKX2z8hEZEIdxSm2xt41heOkgrWwhsojCTqvT
 bYkiyD8aAeAtlIMwpwYA4r5cqXIgOPioY8koW92UYAPyyMlbXMmYhb6zB1jYqU1C8TXNj0y0O
 ZQaiH0IeFSDiLXzMu0i+op4118Mw0wovZ1q1W10kNc9wTrAmLjx+7FySwaEVdcX/dEZorjwYd
 9N+wi/6jgWYUTgqvIWRk6EjxB4vYT1LrnfI44gnROCj2gGKSAVLQukFBGWk2lMmh9aoMjtf1X
 zcGE5No2kx25MimmQrHN6bQNn6T4bCwub/VK+EJhWUM9MaR6C6ioYwfz85QDRAI7fVOyTFH9U
 GQzsUXSIqqMWC4yoPjG0sEfr7M5tg2lj6hoXLle3rAp7gbobPtRcS1rcI8NyOoq7VBvMOjO3K
 O6eihDKGCLnswjyztnM9nqXIoqMb4eUYI+afyZQTGeDlYkNinFOfCwRZvMgUYkS/QG3HZLxLR
 hTmQF48jvx7i+0Pf+0rleBCBwGiAUq57SH4s4MCcP3RK1Ma18iGbmn+m5zGIz97B43qXNpNIO
 erxwU/p0AAJGKZbF0yHgScVtAu3si5tca5wQtxP4t8hjrG6D8kTkknAoaBw2IzMUAuET/ubzX
 mkXb/gsDcMCFJkW9LaFXPfVdqfr5TMBn7xwncQ8vj6dUwTJTofaIl6/gw/zh1V7W14YbDnxvN
 apiP1XsPBKk+/gMCHeNh9qO0nab8DSY8q8FGu4+UoylYOC+KlKa3O/+cej0eK2KNwJg1Mi1Cn
 DiIs4ZDTy4/kN+FO6Sz3P473BE/j8Oo+NZcvATWsVRKyytN7oE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_115700_305757_1856E399 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, Florian Fainelli <f.fainelli@gmail.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Kevin Li <kevin-ke.li@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A dma_addr_t is not a pointer and a cast causes a warning when
the sizes are different:

sound/soc/bcm/bcm63xx-pcm-whistler.c: In function 'bcm63xx_pcm_pointer':
sound/soc/bcm/bcm63xx-pcm-whistler.c:184:6: error: cast to pointer from integer of different size [-Werror=int-to-pointer-cast]
  184 |  if ((void *)prtd->dma_addr_next == NULL)

Change the comparison to NULL to an equivalent if() check that
does not warn.

Fixes: 88eb404ccc3e ("ASoC: brcm: Add DSL/PON SoC audio driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 sound/soc/bcm/bcm63xx-pcm-whistler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/bcm/bcm63xx-pcm-whistler.c b/sound/soc/bcm/bcm63xx-pcm-whistler.c
index e46c390683e7..b7a1efc7406e 100644
--- a/sound/soc/bcm/bcm63xx-pcm-whistler.c
+++ b/sound/soc/bcm/bcm63xx-pcm-whistler.c
@@ -181,7 +181,7 @@ bcm63xx_pcm_pointer(struct snd_soc_component *component,
 	snd_pcm_uframes_t x;
 	struct bcm63xx_runtime_data *prtd = substream->runtime->private_data;
 
-	if ((void *)prtd->dma_addr_next == NULL)
+	if (!prtd->dma_addr_next)
 		prtd->dma_addr_next = substream->runtime->dma_addr;
 
 	x = bytes_to_frames(substream->runtime,
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
