Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C9AD8AD7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 10:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4t23xaoQ90sPdIvcwfcNRQ0akdGwVwxluYWWjrGqNM=; b=GXq2DrwuCQ7Yiw
	gl4+a7msSoZ2J3nRzza5i14XbWLVQozs1sgvRsJC8vOeEO5SUYnvv0GPO8cZgFZLjVUFsYO3Wym4y
	pyoSnNT3RF5xVCRX4JStNMHy0/02zg7Jw4/jRW/3E7FW3K64TH/mWNYHDRz9pLNLszPdkIcEoiliw
	Q8/tDut+caBkeowz/MfR2RLxtZkkwQKFxUaSkezPWpcFt7Tll1Gzyg0/fb1Sn/B8frEIq+poLdpt4
	AecFzbv0GTymcbJ3Q1v7ruW7NyY0YsFNdy8FQQA193a7ZjY/dN1m7zK/EfKkOmkr3MGxncuNxC6N1
	UYN4kkLEigVx6j1zQIPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKed2-00017n-TJ; Wed, 16 Oct 2019 08:25:56 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKecp-00013Z-0P
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 08:25:45 +0000
Received: by mail-lf1-x144.google.com with SMTP id c195so16694741lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 01:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xo35Bg7+wZLq9WAYiOuUcTZRMp2CbtvKNgMqelyARTU=;
 b=eFXeazm0o1tL5yIT8cIoz4Wk8anNWAsBOAqZuTJLrcmF2+ZuFXcPF5UVUCWL7aIqil
 IPv3kOP6K1GOt7SHle1XCTL3se7HLV7MPcGNg3WcrI60YQPfUEAm9aUokJNKOpR2EbAA
 e78DxjS58Ht4pQMlOpK4jhBzKtIqSy4nCyWtSESafH71SkFiMrXk5gnX5z+kGwZe4s+D
 y2VQBtcVTbKENFN9vL8/vc6TXOxscGJmF/Jq1j1cum1G2Fb3HvotNml0i/JH6jiGyldY
 NROzHm86nPDDviCEMqX2kExhGpQbdpmN4YLu0WJPUUraOjC0mX+NYkDkyo+WQAtLFgIE
 8RcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xo35Bg7+wZLq9WAYiOuUcTZRMp2CbtvKNgMqelyARTU=;
 b=DvgkoPJB5F0nFeD4E72Kug36v2+jgx2CUI7DtYJn7582Fj94Mhfem8id9+fYz+xIkp
 7G4sONYvQjMZfkUQTHxqy+wjtsoSAnd7aRUwGG3e24RYM8zUzjqpF0oazJArA6wqSgHx
 vXrZc/Rb3BnEdd/XlNXnJlMrnY6IrckZLZKosFnCH4vpbh87JfTtrVIrNm7Y0/G5VpT9
 37XlC+lLwO2ALT8IhMdBjw1zBMrj1tYn0rzdGSUSuifhaV3Ac83ztkMMr/RwbbzlyiYp
 uwIQeXye+xQ0kIopfA6KQ83Za2KOWV4HzGrtbp53oKQ+BcfltgZlWcv77Cs1Zs0atesJ
 oNOA==
X-Gm-Message-State: APjAAAUCSbZIsEZ6FV7ZdwwG6LvGU0Ou/hzYr4BGGwbLqmpv8vjlK+Wf
 f9CBRe6zq5eOY39H5cft+lwgSvMBFZHlZv8uvBJGaA==
X-Google-Smtp-Source: APXvYqztWV5plJBF/+oigJru3O+68vfnDX1Uj5DGkapsvD7/tG4QkaKTaiMATHeFnEyKvPu9+4MV2xK2aaXCm/MiANI=
X-Received: by 2002:a19:6f0e:: with SMTP id k14mr24108061lfc.34.1571214340972; 
 Wed, 16 Oct 2019 01:25:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191016070740.121435-1-codekipper@gmail.com>
 <20191016070740.121435-3-codekipper@gmail.com>
 <20191016080653.3seixioa2xiaobd7@gilmour>
In-Reply-To: <20191016080653.3seixioa2xiaobd7@gilmour>
From: Code Kipper <codekipper@gmail.com>
Date: Wed, 16 Oct 2019 10:25:29 +0200
Message-ID: <CAEKpxBmuYe-kHpa4cvo6iabTM_qNro2hXVAkjioBZFt9N4pHdA@mail.gmail.com>
Subject: Re: [PATCH v6 2/7] ASoC: sun4i-i2s: Add functions for RX and TX
 channel offsets
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_012543_550287_36DA6252 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 16 Oct 2019 at 10:06, Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Wed, Oct 16, 2019 at 09:07:35AM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > Newer SoCs like the H6 have the channel offset bits in a different
> > position to what is on the H3. As we will eventually add multi-
> > channel support then create function calls as opposed to regmap
> > fields to add support for different devices.
> >
> > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > ---
> >  sound/soc/sunxi/sun4i-i2s.c | 31 +++++++++++++++++++++++++------
> >  1 file changed, 25 insertions(+), 6 deletions(-)
> >
> > diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> > index f1a80973c450..875567881f30 100644
> > --- a/sound/soc/sunxi/sun4i-i2s.c
> > +++ b/sound/soc/sunxi/sun4i-i2s.c
> > @@ -157,6 +157,8 @@ struct sun4i_i2s_quirks {
> >       int     (*set_chan_cfg)(const struct sun4i_i2s *,
> >                               const struct snd_pcm_hw_params *);
> >       int     (*set_fmt)(struct sun4i_i2s *, unsigned int);
> > +     void    (*set_txchanoffset)(const struct sun4i_i2s *, int);
> > +     void    (*set_rxchanoffset)(const struct sun4i_i2s *);
>
> The point of removing the regmap_field was that because having a
> one-size-fits-all function with regmap_field sort of making the
> abstraction was becoming more and more of a burden to maintain.
>
> Having functions for each and every register access is exactly the
> same as using regmap_field here, and the issue we adressed is not with
> regmap_fields in itself.
>
> If the H6 has a different register layout, then so be it, create a new
> set_chan_cfg or set_fmt function for the H6.
The H3 and the H6 have a similar register layout but the issue here is
that sooner
rather than later we would want to be supporting multi-channel audio
which requires the
offset to be applied to each TX channel channel select register(8chan
PCM for HDMI
requires 4 Tx channels). Currently we're only using one.
BR,
CK
>
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
