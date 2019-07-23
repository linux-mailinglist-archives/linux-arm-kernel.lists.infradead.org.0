Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DFE71D0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 18:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=55hkf42+gtJ26hzlhbxKtSF89/YANOfiMGlMPlE6rU8=; b=h4aLnYQONNcD+n
	E9NSsCD0x0ydk1detmaBcpbXJZ70NuTphih/0lrPPAR/pRJrJBLIQHpw5yo23yMsfP0aR4PzLFn8j
	G/6DFbzWriizCcYO/HRMdXyJJZWLdain0YAZ4w6I3t1YlqBMwLa3fAci/IbsVgdDWs+TECxLGWf5a
	4vbyo9ABD8cBDlM/NBX3N5vA09A1Gf5GIBOm9OjqkptiXQbUbfYViEPw4kggk2z9nt6x9DfGv2NCZ
	A9+aqpGn4ODAxluSSAE6GLoFxkon7tu563gp3oSEm97wmTJ/IaXbLfehMAhTrWW+eKrK8JB6Lw8dS
	PFnExQtOOQoBhakgra0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxsx-0006Nu-Oi; Tue, 23 Jul 2019 16:43:31 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxsk-0006NO-Jw
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 16:43:20 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 45tPQB4zkKzB2;
 Tue, 23 Jul 2019 18:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1563900115; bh=ZZwiCfYf8YznhGG9G4iEwxfev7xiXtEADi1F1gKHj6k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JxGPKQKBO2bwcpM4Bmd0DfRaEN3mGVGdm+ir/41DKYHtl//sSTWbSgMDAf6HBuLxp
 Jw4i2Tc8iGiOpQDoVRxN03x78yASKOWxQBTmjy6BXF+CB6/e3Vb9qPQkGBRDeCk85P
 t95MhwqbctiJk7YYU2zvTdpg+BOWki/aYV8FCN+slL03EolXIA/FpxjEsXuF9DQ4fq
 lTNK/P4sakfBBLNvSq3J+6lwmK8Ton6+02bFITBViLZxIT/TVHkjpLih9n0iMxwt28
 EsInVXvtzHpw5SEy1lX9vCyaPOtX2V1a70JkxibyQ+0DAQ72uvdE4cwfwr82FsCXO+
 9utzbXRvhr4Bw==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at mail
Date: Tue, 23 Jul 2019 18:43:12 +0200
From: mirq-linux@rere.qmqm.pl
To: Codrin.Ciubotariu@microchip.com
Subject: Re: [PATCH 1/5] ASoC: atmel: enable SSC_PCM_DMA in Kconfig
Message-ID: <20190723164312.GA4772@qmqm.qmqm.pl>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
 <ee65cc7b889b2a8d1139d1d25977842c956d1cf4.1563819483.git.mirq-linux@rere.qmqm.pl>
 <1f3a4256-58de-27a4-8095-54fc6baa6d89@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1f3a4256-58de-27a4-8095-54fc6baa6d89@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_094318_821077_A4E93D41 
X-CRM114-Status: GOOD (  12.53  )
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
Cc: alsa-devel@alsa-project.org, alexandre.belloni@bootlin.com,
 lgirdwood@gmail.com, tiwai@suse.com, Ludovic.Desroches@microchip.com,
 broonie@kernel.org, perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 01:36:37PM +0000, Codrin.Ciubotariu@microchip.com w=
rote:
> On 22.07.2019 21:27, Micha=B3 Miros=B3aw wrote:
> > Allow SSC to be used on platforms described using audio-graph-card
> > in Device Tree.
> > =

> > Signed-off-by: Micha=B3 Miros=B3aw <mirq-linux@rere.qmqm.pl>
> > ---
> >   sound/soc/atmel/Kconfig | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/sound/soc/atmel/Kconfig b/sound/soc/atmel/Kconfig
> > index 06c1d5ce642c..9ef9d25bb517 100644
> > --- a/sound/soc/atmel/Kconfig
> > +++ b/sound/soc/atmel/Kconfig
> > @@ -25,7 +25,7 @@ config SND_ATMEL_SOC_DMA
> >   	default y if SND_ATMEL_SOC_SSC_DMA=3Dy || (SND_ATMEL_SOC_SSC_DMA=3Dm=
 && SND_ATMEL_SOC_SSC=3Dy)
> >   =

> >   config SND_ATMEL_SOC_SSC_DMA
> > -	tristate
> > +	tristate "SoC PCM DAI support for AT91 SSC controller using DMA"
> =

> Could you please make something similar for SND_ATMEL_SOC_SSC_PDC? Also, =

> I think that it should select ATMEL_SSC, to be able to use =

> simple/graph-card with SSC.

Hmm. The Kconfig dependencies seems overly complicated, do you mind if I
get rid of most of the entries in the process?

Best Regards,
Micha=B3=A0Miros=B3aw

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
