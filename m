Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3BA722F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 01:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZK680gZIhcwal88F7wrlxiGDQ5OOu/+xEm8Y0oY0QM=; b=igvAiLVyVV2XmZ
	4l+/S4fUR9STvsn4sgzlS6R48KMT0aLcuIupcVViJYwIEgrRV86toUUBzfALGrANZEnHi0oaZWnE9
	AsI9537joxCKEWWwGkPwrmqk5KbuDbMMyPwXpsY7PkEE9PJu7XhP4qT6uVkq8SPy18dbYMrbuKSK2
	8SvXL8v5INTUv8bABquG7oxO5/ghfHzB/dgHWOW0HyF/+ZaLS0rh6mLkMkXvBdDvwZyo0x7tbewcH
	CHdTasgdwMxOJsWWP9qsviBO82TgeDN5AOky735QxwRkEYNMTaUSoSiKCikRlCs/zSEsvpS7aVPc0
	IRvI4n610Spr+1GVSFzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq4A4-0002ji-Em; Tue, 23 Jul 2019 23:25:37 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq49p-0002hv-2x
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 23:25:22 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 45tZKv1lqSz97;
 Wed, 24 Jul 2019 01:23:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1563924228; bh=PsMkB31xmOEHmggeV+jW/eQ5Zn/mEj0Olm8poEZtXRE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KQexC5NPk+Dhy6o50TCg0fEfO5UhahECn+A8OCvtBfq+ECcatL0Y89NdPDOALGjLl
 jGn5HAgn3oluaZqjqSYN5MOg/t0W5ptY0xVXEJvV77eZ0EHQAngPyx6BFzLD52n1T5
 el7gduO8B7mpvlQk6cB1f283fBuYGznyS2aBuCcwLQJzFquKyjeZQ36Pi35a4t67Th
 dFD0Tat/pYsjSQOebZvpQWk9zs0p91XscP0YA+1LFt95Z4NX2zHp4THcl7gnhWfT/8
 OymlTzV5fCkntglhNCdaqfPflr9nog1Ht92W2M8a19BwpT81AHJgVzP6rHlJ57AlD9
 qVABgBV1bv3tA==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at mail
Date: Wed, 24 Jul 2019 01:25:05 +0200
From: mirq-linux@rere.qmqm.pl
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 1/5] ASoC: atmel: enable SSC_PCM_DMA in Kconfig
Message-ID: <20190723232505.GA21811@qmqm.qmqm.pl>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
 <ee65cc7b889b2a8d1139d1d25977842c956d1cf4.1563819483.git.mirq-linux@rere.qmqm.pl>
 <1f3a4256-58de-27a4-8095-54fc6baa6d89@microchip.com>
 <20190723164312.GA4772@qmqm.qmqm.pl>
 <20190723183915.GJ24911@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723183915.GJ24911@piout.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_162521_465636_3CB3DD84 
X-CRM114-Status: GOOD (  19.90  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com, tiwai@suse.com,
 perex@perex.cz, Ludovic.Desroches@microchip.com, broonie@kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 08:39:15PM +0200, Alexandre Belloni wrote:
> On 23/07/2019 18:43:12+0200, mirq-linux@rere.qmqm.pl wrote:
> > On Tue, Jul 23, 2019 at 01:36:37PM +0000, Codrin.Ciubotariu@microchip.c=
om wrote:
> > > On 22.07.2019 21:27, Micha=B3 Miros=B3aw wrote:
> > > > Allow SSC to be used on platforms described using audio-graph-card
> > > > in Device Tree.
> > > > =

> > > > Signed-off-by: Micha=B3 Miros=B3aw <mirq-linux@rere.qmqm.pl>
> > > > ---
> > > >   sound/soc/atmel/Kconfig | 2 +-
> > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > =

> > > > diff --git a/sound/soc/atmel/Kconfig b/sound/soc/atmel/Kconfig
> > > > index 06c1d5ce642c..9ef9d25bb517 100644
> > > > --- a/sound/soc/atmel/Kconfig
> > > > +++ b/sound/soc/atmel/Kconfig
> > > > @@ -25,7 +25,7 @@ config SND_ATMEL_SOC_DMA
> > > >   	default y if SND_ATMEL_SOC_SSC_DMA=3Dy || (SND_ATMEL_SOC_SSC_DMA=
=3Dm && SND_ATMEL_SOC_SSC=3Dy)
> > > >   =

> > > >   config SND_ATMEL_SOC_SSC_DMA
> > > > -	tristate
> > > > +	tristate "SoC PCM DAI support for AT91 SSC controller using DMA"
> > > =

> > > Could you please make something similar for SND_ATMEL_SOC_SSC_PDC? Al=
so, =

> > > I think that it should select ATMEL_SSC, to be able to use =

> > > simple/graph-card with SSC.
> > =

> > Hmm. The Kconfig dependencies seems overly complicated, do you mind if I
> > get rid of most of the entries in the process?
> > =

> =

> Unfortunately, it is just complicated enough. This is done to support
> all the possible configurations. Removing them will lead to linking
> errors.
> =

> After having that discussion back in March, I had a very quick look and
> didn't send a patch because I still had linking issues. It is not
> impossible but it required more time than I had.

Can you try patch below if it covers the configurations you mention?
This uses Kconfig's m/y resolution instead of open-coded defaults.

Best Regards,
Micha=B3 Miros=B3aw


diff --git a/sound/soc/atmel/Kconfig b/sound/soc/atmel/Kconfig
index 06c1d5ce642c..f118c229ed82 100644
--- a/sound/soc/atmel/Kconfig
+++ b/sound/soc/atmel/Kconfig
@@ -12,25 +12,31 @@ if SND_ATMEL_SOC
 config SND_ATMEL_SOC_PDC
 	tristate
 	depends on HAS_DMA
-	default m if SND_ATMEL_SOC_SSC_PDC=3Dm && SND_ATMEL_SOC_SSC=3Dm
-	default y if SND_ATMEL_SOC_SSC_PDC=3Dy || (SND_ATMEL_SOC_SSC_PDC=3Dm && S=
ND_ATMEL_SOC_SSC=3Dy)
-
-config SND_ATMEL_SOC_SSC_PDC
-	tristate
 =

 config SND_ATMEL_SOC_DMA
 	tristate
 	select SND_SOC_GENERIC_DMAENGINE_PCM
-	default m if SND_ATMEL_SOC_SSC_DMA=3Dm && SND_ATMEL_SOC_SSC=3Dm
-	default y if SND_ATMEL_SOC_SSC_DMA=3Dy || (SND_ATMEL_SOC_SSC_DMA=3Dm && S=
ND_ATMEL_SOC_SSC=3Dy)
-
-config SND_ATMEL_SOC_SSC_DMA
-	tristate
 =

 config SND_ATMEL_SOC_SSC
 	tristate
-	default y if SND_ATMEL_SOC_SSC_DMA=3Dy || SND_ATMEL_SOC_SSC_PDC=3Dy
-	default m if SND_ATMEL_SOC_SSC_DMA=3Dm || SND_ATMEL_SOC_SSC_PDC=3Dm
+
+config SND_ATMEL_SOC_SSC_PDC
+	tristate "SoC PCM DAI support for AT91 SSC controller using PDC"
+	depends on ATMEL_SSC
+	select SND_ATMEL_SOC_PDC
+	select SND_ATMEL_SOC_SSC
+	help
+	  Say Y or M if you want to add support for Atmel SSC interface
+	  in PDC mode configured using audio-graph-card in device-tree.
+
+config SND_ATMEL_SOC_SSC_DMA
+	tristate "SoC PCM DAI support for AT91 SSC controller using DMA"
+	depends on ATMEL_SSC
+	select SND_ATMEL_SOC_DMA
+	select SND_ATMEL_SOC_SSC
+	help
+	  Say Y or M if you want to add support for Atmel SSC interface
+	  in DMA mode configured using audio-graph-card in device-tree.
 =

 config SND_AT91_SOC_SAM9G20_WM8731
 	tristate "SoC Audio support for WM8731-based At91sam9g20 evaluation board"
-- =

2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
