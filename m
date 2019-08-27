Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9CF9DD5B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 07:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wAUyBblq0aKST96dwVGLj+H2IQ3+88Fwml1zG1g+KdI=; b=Yw7KVy+VvmYNCF
	o6IGBVwSGBgckPsUr5L96t6jYlLlJTe2It/Lw34UDIIe/0czbDZ7NraCDcIC2k7udViD4zmaSFUFs
	dtPN99jctxBnQZNi3QkboRDqY/2R/C1vKy1/op+6hQmB38blLy6dwoqMBDbb3JTSH50vq4uGCeaQj
	x3Gd2pzOizti8ZCnNOqdpDFy4AXEOSmUGUw57BjTkgCYlFI8NqfUQ3R6LIECVeGQrIwoy9EOyvxro
	p7a9a8eVTNJkRG5QyfnXPaOiz1ASYgLv2RV58Mzwi5dq2GBvQDiGRZYBEiSwrlS0YxwkUBagOvzaq
	LwjtZu8gBRX53njtBoeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2URn-0006Wt-DJ; Tue, 27 Aug 2019 05:55:15 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2URX-0006IW-GQ
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 05:55:01 +0000
Received: by mail-lf1-x144.google.com with SMTP id q27so4544500lfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 22:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N+vpsDloTUdy5MvFdUSFeHVMIbrM4Okd8BXV+IVwifM=;
 b=tBPtAp0WoXthyCDuxt0/UFLRqezDiJevoRKm/SOQIUlGRldn152fQioRxeB7al5xxT
 sVoOIxaT/VuG5XuiKbuOW9+y1OHW9NHrC/uPtx+grRsTws3Vq7QqhSTz6j+4C26nCUqr
 LDMbBJz9Sa7OUTHFnJspqelzZyXBxk3eFAElrk3MWHmSUzcbICTCuExINBxSK/XylvvR
 ohpvOvP1+OoJDBUHQJQWotFSoTwt7NYPl+x0e1RajCT2jLQU3sCCkvBLETeYiSi3H541
 rDNr7/WbU2NPl9VrKwbfQ/oxycmkvFye7tObGO23O2OCVf9LLaBGOow+JWnc2DkFAg20
 8Ojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N+vpsDloTUdy5MvFdUSFeHVMIbrM4Okd8BXV+IVwifM=;
 b=kZKD0i08j9VjFW88Ds7IKRD9pwjlFkihVq+LZTLWoD6S//DHdJ0eN4HzHqVrfEUc+J
 nhB6neJVMtwCvusOKNA7GRNiOE+fITh20TFxQ+M4qVVbdhFsZsnEE7bONMq7JHye4g0T
 GrOIoftnuwINZGyAj/ASR0t1aqGYhb0PrevVKlCUWb3/jwmU+mauef7PrdP0ovH9eXx/
 uT/NER/+0ly01bF9RiLYjH+Dqj4AvH6SwtAX4gBWfJbDA2B8u1YNQYPxO94h1pmjIk4q
 +56Q1OL3dgYGYftw11TJrbJvR4+RR6L+mvkj/yJ+4CG4entXZYCxUXVpQLNhoZvjwB6k
 xlQg==
X-Gm-Message-State: APjAAAXAXMgMGtNren6mildkLwDho9AOIYsIrUZEj50DIT6ZFDNoBsRX
 3Xz5g1tcljNWdr5axKD+y6quEALBS+dXjZNltEk=
X-Google-Smtp-Source: APXvYqzidw7it9RFvQO3QHpIyQRWnqyn2HDPGgcq72wbtDx3y1RWj/BFazwXFiWSboCAudwrFQw+mF1nebwphQAgI5I=
X-Received: by 2002:ac2:563c:: with SMTP id b28mr12969143lff.93.1566885297683; 
 Mon, 26 Aug 2019 22:54:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190826180734.15801-1-codekipper@gmail.com>
 <20190826180734.15801-2-codekipper@gmail.com>
 <CAGb2v651jVp+J2eyWh7vw-yHmFTVy4eaMjHV0FvOF17C5_Hswg@mail.gmail.com>
In-Reply-To: <CAGb2v651jVp+J2eyWh7vw-yHmFTVy4eaMjHV0FvOF17C5_Hswg@mail.gmail.com>
From: Code Kipper <codekipper@gmail.com>
Date: Tue, 27 Aug 2019 07:54:45 +0200
Message-ID: <CAEKpxBmCg4AkqKM-O3C76gto+mPWyEdDbviAmRJ8PxLOOMTJ7w@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v6 1/3] ASoC: sun4i-i2s: incorrect regmap
 for A83T
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_225459_541725_1ADA3130 
X-CRM114-Status: GOOD (  29.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019 at 06:13, Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Tue, Aug 27, 2019 at 2:07 AM <codekipper@gmail.com> wrote:
> >
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > The regmap configuration is set up for the legacy block on the
> > A83T whereas it uses the new block with a larger register map.
>
> Looking at the code Allwinner previously released [1], that doesn't seem to be
> the case. Keep in mind that the register map shown in the user manual is for
> the TDM interface, which we don't actually support right now.

Should it matter what we support right now?, the block according to the user
manual shows the bigger range. I don't have a A83T device and from what I
gather not many users do. But the compatible for the H3 has been removed
and replaced with the settings for the A83T which also has default settings in
registers further up than SUNXI_RXCHMAP.

>
> The file shows the base address as 0x01c22800, and the last defined register
> is SUNXI_RXCHMAP at 0x3c.
>
> The I2S driver [2] also shows that it is the old register map size, but with
> TX_FIFO and INT_STA swapped around. This might mean that it would need a
> separate regmap_config, as the read/write callbacks need to be changed to
> fit the swapped registers.
>
> Finally, the TDM driver [3], which matches the TDM section in the manual, shows
> a larger register map.
>
> A83T is SUN8IW6, while SUN8IW7 refers to the H3.

Since when have we trusted Allwinner code?, the TDM labelled block
clearly supports
I2S. The biggest use case for this block is getting HDMI audio working
on the newer
devices(LibreELEC nightlies has a user base of over 300) and I've tested this on
numerous set ups over the last couple of years.

Failing that reverting (3e9acd7ac693: "ASoC: sun4i-i2s: Remove
duplicated quirks structure")
would help.

BR,
CK
>
> ChenYu
>
> [1] https://github.com/allwinner-zh/linux-3.4-sunxi/blob/master/sound/soc/sunxi/hdmiaudio/sunxi-hdmipcm.h
> [2] https://github.com/allwinner-zh/linux-3.4-sunxi/blob/master/sound/soc/sunxi/i2s0/sunxi-i2s0.h
> [3] https://github.com/allwinner-zh/linux-3.4-sunxi/blob/master/sound/soc/sunxi/daudio0/sunxi-daudio0.h
>
> > Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
> > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > ---
> >  sound/soc/sunxi/sun4i-i2s.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> > index 57bf2a33753e..34575a8aa9f6 100644
> > --- a/sound/soc/sunxi/sun4i-i2s.c
> > +++ b/sound/soc/sunxi/sun4i-i2s.c
> > @@ -1100,7 +1100,7 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
> >  static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
> >         .has_reset              = true,
> >         .reg_offset_txdata      = SUN8I_I2S_FIFO_TX_REG,
> > -       .sun4i_i2s_regmap       = &sun4i_i2s_regmap_config,
> > +       .sun4i_i2s_regmap       = &sun8i_i2s_regmap_config,
> >         .field_clkdiv_mclk_en   = REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
> >         .field_fmt_wss          = REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
> >         .field_fmt_sr           = REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
> > --
> > 2.23.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> > To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20190826180734.15801-2-codekipper%40gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
