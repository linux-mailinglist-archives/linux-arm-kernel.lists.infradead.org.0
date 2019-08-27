Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 649019E2CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 10:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQPJLJlfCsAjpoYXfGowqNwb2ZLbedGMD76H35pw9PU=; b=oDylZl+HiwToGB
	yQ3V0wCpOT870HzfwfdmTuwfrFJuinKrDF0yt6KSp8AXuwy+jS8qEN2gSv+leKtL6M9VWtzevkNMG
	9cxWHIyA0u56VAdmyfPFDytr9kkTQYnJ7GzwwOtsjlEt3Ddty+8HjPw859kWLFrN/RMFntg5HAtGl
	Yqk08BRwRr+QkAbnPOPkrme00D5oeXRvmKelFkaxAEao9hQVRprF4zRqe1blCSLdMXoY6lPqnQFVA
	gZlL3Sxn3SA3EKFt1w8QkBr0Jf82SPlT3jvD+CT/kuUf5dHTG5u7ueUkbBpP+3egePTE6hENVzPgm
	Fhl4Ytltv3QbwtnE91Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Wwv-00069m-06; Tue, 27 Aug 2019 08:35:33 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Wwf-00066E-Jp
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 08:35:19 +0000
Received: by mail-lf1-x142.google.com with SMTP id n19so14469627lfe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 01:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CqjuZRe2ZHqHsJdWeZqP+8fdrbKikXqU+7SgwVIm4Ks=;
 b=lYPCOJDKkXkSeFkNMIIYgIDe/eZ/N8HPF89r80KL/bDAq25NzKHu2Wj3YR0+xNCt5i
 8/fdGKL5aTh7wSi6fjwxYYJUDImGjW7nD7XstOqMcVwOjFgTqa2UIKr0Dj6hsR+aOwIq
 OwH8TLuxemD2cBSTb2GW/0vcrD1LGq/FzyNiilBtoJJJzRoj2+jot8AbgbORBmmwtl+T
 UjogiTBlMKC5mRpHCkViyluCGdU3WG4nKR5fhJVa6n8mJRjf2Hn1xqnYpOqgps0PT3wp
 AThiTMdx+0pYmUKdQCQSnV/nSvfAM8yeL9ZlDDEspY0Oif7ene2rllt08q/KW4rDPWEr
 rs+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CqjuZRe2ZHqHsJdWeZqP+8fdrbKikXqU+7SgwVIm4Ks=;
 b=LxlltE6eL4N2rWDIObNyU4DvcLLFkaD3to6b6eMk5buKGqP3cRd57aJ03O4vW89V6H
 uiGMO4feNXypq8I1oSyv+Ucf5boTTvN2s+8oPnyG4tAurM0wQe1yKIsbtjSzkHcLh00c
 48KsorwPqP9P2L77kxb15hA2OpxRBsEzGtOAjRb47xnSMF+WyiZ2+LhGfcS3KdcG344p
 zBSAFjN+WVi+OfQXb0wgcoxXyAgv8TBnaqVHOFpWYDsWF2JJ23XlUVSJjdQT303kLldL
 THydZadTIYNa+K0cEtTlFK3OAt7U59/Af70n7K0iF2Sz0JgyFoKJggvINJ/dCgiBV8He
 y6Fw==
X-Gm-Message-State: APjAAAXhVThEkdQRHy6OIG0H0zfBloxlXGI+OOcWyhl5mdnvi1Nch4OW
 sDz2ejkDijj6rF04b/te2zQNEVjeTG2jkJRr82o=
X-Google-Smtp-Source: APXvYqw8aLeHgVLAG5PF2WhUcbrivEwRCSw8giNdcHR+I3B03ANvMPmejXZ8GrsrjgLdLe4GB5kC+ZwvczacZpZZZ9Q=
X-Received: by 2002:a19:7401:: with SMTP id v1mr13798131lfe.155.1566894916059; 
 Tue, 27 Aug 2019 01:35:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190826180734.15801-1-codekipper@gmail.com>
 <20190826180734.15801-2-codekipper@gmail.com>
 <CAGb2v651jVp+J2eyWh7vw-yHmFTVy4eaMjHV0FvOF17C5_Hswg@mail.gmail.com>
 <CAEKpxBmCg4AkqKM-O3C76gto+mPWyEdDbviAmRJ8PxLOOMTJ7w@mail.gmail.com>
 <CAGb2v64VNZ0oyD_760uNccwJb7MKngSooWB72M+d1DfT4-djog@mail.gmail.com>
In-Reply-To: <CAGb2v64VNZ0oyD_760uNccwJb7MKngSooWB72M+d1DfT4-djog@mail.gmail.com>
From: Code Kipper <codekipper@gmail.com>
Date: Tue, 27 Aug 2019 10:35:04 +0200
Message-ID: <CAEKpxBn3g2hFaei6thAnAHX4nemrs9c_xWp1GheMfMS6+TJ7gQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v6 1/3] ASoC: sun4i-i2s: incorrect regmap
 for A83T
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_013517_678278_A5FC50A3 
X-CRM114-Status: GOOD (  41.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019 at 10:01, Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Tue, Aug 27, 2019 at 1:55 PM Code Kipper <codekipper@gmail.com> wrote:
> >
> > On Tue, 27 Aug 2019 at 06:13, Chen-Yu Tsai <wens@csie.org> wrote:
> > >
> > > On Tue, Aug 27, 2019 at 2:07 AM <codekipper@gmail.com> wrote:
> > > >
> > > > From: Marcus Cooper <codekipper@gmail.com>
> > > >
> > > > The regmap configuration is set up for the legacy block on the
> > > > A83T whereas it uses the new block with a larger register map.
> > >
> > > Looking at the code Allwinner previously released [1], that doesn't seem to be
> > > the case. Keep in mind that the register map shown in the user manual is for
> > > the TDM interface, which we don't actually support right now.
> >
> > Should it matter what we support right now?, the block according to the user
> > manual shows the bigger range. I don't have a A83T device and from what I
>
> There are a total of four I2S controllers on the A83T. Currently three of them
> are listed in the dtsi file, which are _not_ the one shown in the user manual.
> The one shown is the fourth one, which is the TDM controller.

The configuration for the A83T suggests that it's a mixture of old and
new which I don't
think is the case considering it was released around the same time as
the H3. There
is enough similarity between the blocks for it to still work. For
example on the H6
we referenced by mistake the H3 block and we still got audio (with
only slight distortion).
I would suggest to validate all of the i2s blocks we need to test
using the internal loopback
as that will also cover capture.

>
> It's not like we haven't seen this before. IIRC the A64 also had two variants
> of the I2S interface. The one coupled with the audio codec was different from
> the others.

Yes...but the i2s of the audio codec was documented in the audio codec
section. I've used
this device to ensure that I've not broken anything in the old block
with these new changes.

>
> > gather not many users do. But the compatible for the H3 has been removed
> > and replaced with the settings for the A83T which also has default settings in
> > registers further up than SUNXI_RXCHMAP.
>
> I'll sync up with Maxime on this.
>
> > >
> > > The file shows the base address as 0x01c22800, and the last defined register
> > > is SUNXI_RXCHMAP at 0x3c.
> > >
> > > The I2S driver [2] also shows that it is the old register map size, but with
> > > TX_FIFO and INT_STA swapped around. This might mean that it would need a
> > > separate regmap_config, as the read/write callbacks need to be changed to
> > > fit the swapped registers.
> > >
> > > Finally, the TDM driver [3], which matches the TDM section in the manual, shows
> > > a larger register map.
> > >
> > > A83T is SUN8IW6, while SUN8IW7 refers to the H3.
> >
> > Since when have we trusted Allwinner code?, the TDM labelled block
> > clearly supports
>
> Since they haven't listed the I2S block in the user manual, so that is what we
> have to go by.
>
> The TDM section in the user manual only lists the block at 0x1c23000. The memory
> map says DAUDIO-[012] for addresses 0x1c22000, 0x1c22400, 0x1c22800, and TDM for
> address 0x1c23000. One would assume this meant these are somewhat different.
>
> > I2S. The biggest use case for this block is getting HDMI audio working
> > on the newer
>
> I understand that.
>
> > devices(LibreELEC nightlies has a user base of over 300) and I've tested this on
> > numerous set ups over the last couple of years.
>
> Tested on the H3, correct?

Yes....but only with the additional changes for multi-channel with my
LibreELEC build.
These changes I tested on my pine64 before pushing upstream.

>
> > Failing that reverting (3e9acd7ac693: "ASoC: sun4i-i2s: Remove
> > duplicated quirks structure")
> > would help.
>
> I'll take a look. IIRC it worked with the old layout, with the two registers
> swapped, playing standard 48 KHz / 16 bit audio when I added supported for
> the A83T. Then again maybe the stars were perfectly aligned. At the very least
> we could separate A83T and H3 as you suggested.

Thanks,
CK
>
> ChenYu
>
>
> > BR,
> > CK
> > >
> > > ChenYu
> > >
> > > [1] https://github.com/allwinner-zh/linux-3.4-sunxi/blob/master/sound/soc/sunxi/hdmiaudio/sunxi-hdmipcm.h
> > > [2] https://github.com/allwinner-zh/linux-3.4-sunxi/blob/master/sound/soc/sunxi/i2s0/sunxi-i2s0.h
> > > [3] https://github.com/allwinner-zh/linux-3.4-sunxi/blob/master/sound/soc/sunxi/daudio0/sunxi-daudio0.h
> > >
> > > > Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
> > > > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > > > ---
> > > >  sound/soc/sunxi/sun4i-i2s.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> > > > index 57bf2a33753e..34575a8aa9f6 100644
> > > > --- a/sound/soc/sunxi/sun4i-i2s.c
> > > > +++ b/sound/soc/sunxi/sun4i-i2s.c
> > > > @@ -1100,7 +1100,7 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
> > > >  static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
> > > >         .has_reset              = true,
> > > >         .reg_offset_txdata      = SUN8I_I2S_FIFO_TX_REG,
> > > > -       .sun4i_i2s_regmap       = &sun4i_i2s_regmap_config,
> > > > +       .sun4i_i2s_regmap       = &sun8i_i2s_regmap_config,
> > > >         .field_clkdiv_mclk_en   = REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
> > > >         .field_fmt_wss          = REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
> > > >         .field_fmt_sr           = REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
> > > > --
> > > > 2.23.0
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20190826180734.15801-2-codekipper%40gmail.com.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> > To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/CAEKpxBmCg4AkqKM-O3C76gto%2BmPWyEdDbviAmRJ8PxLOOMTJ7w%40mail.gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
