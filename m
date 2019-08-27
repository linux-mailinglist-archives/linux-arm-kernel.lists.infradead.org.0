Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400FD9E2D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 10:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jerN1iO3KG5wDJkHrvj9szf3y85rAc0Wa4ENJhD3vzM=; b=MDEqGCCDSRFRdo
	nPFWLRfqOSpt3rbEIMNxOoMZxTGtbygjPLE63slRVD259ou4lzHju9pSSqCiJ1ADNrL9OLO+pF6Ir
	P80mcH/laTMUu/cMj0i4v+04eM//nesLWA/sgc6/YmH3cYAQj52/2EcbNHgE+OTDjTkwAwGKVvvjq
	fcSc12aYAXbgZcZwT1d3sQVx6uMYbXATenb7c1F86/nwWHQaZN1WE2d8E7/6Up3eXOXmfgSZeRZd7
	ZP/Cd8oPjVq8OoZdl7b0EWXhK7UsOAEjba41rVHo+uKS+MBZu62qlDOGYi7U2GvznmIjitUsw6omY
	lAsDS2vY6W2FNTDrpMWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2WyC-0006RI-Lu; Tue, 27 Aug 2019 08:36:52 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Wxz-0006Qu-Cq
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 08:36:40 +0000
Received: by mail-lf1-x141.google.com with SMTP id v16so14458755lfg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 01:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bYGEJ93XPP3XlNiRaHwzesAlOb+UBzf8KsHsim6XvxI=;
 b=Ct0UXygt1kSUuk3nnThiTMEqPxe32CYU1MxV5dvmU5LU6bCGsqWFpyukGY4y2po86m
 h5GqJrtoo+mT42PhpQrodQCupYzjzJwXUQQ6FyPlU2V5CK8mgqEOO/JBffmlF+dJ0yS9
 H1xndqUIwIck3VB+GRR0VJrpMESLRLHoBt1j599nZtN3D1CS27J4b167bKFZ20Jo+BsK
 mdm6nWTfW/GiAfCOzGE9ryKCng4leRfnCynTw5tjn/21ykX+sprrBb7gOF+xMHUDdtDF
 25Du/NxyikkhkPbgQe0o22mwYfxt/ZIn/7KUOwtqXwKXOAhyQ85N+Kx8MMmff5KfYu0h
 mDDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bYGEJ93XPP3XlNiRaHwzesAlOb+UBzf8KsHsim6XvxI=;
 b=H2VeGb6RKQNCOnH9M4uq/Q814aWlm3GmYxEOKvhIG2tnQ3+sGvVGLRz3vh34CfGEOE
 Eytn18C833DcBJ3rgOYPiCHWE+9ZNSZ9Ak17uHzB5mSVOCmy9d6In4/9nafQCqfgcD4r
 y15IKSCKZjQxKgqFCedUSgUoWIALVVmffaCixUt9CV8pC+Hj0KFm46+VQEeWU5OuqWL4
 EPHsVBCVNgmWI9Uo6suYuWC6pPZudk2h5Qy9Pi5wYMJ36K+Rv3W1w+hyGoIGRe0HQ22c
 QI34yHjM+YgEWRNwzDmFdfe4D4CQR8rtaIG9dUIUpKxIWLH9eVkUO9CDRrZVjrAcV2wg
 iGNQ==
X-Gm-Message-State: APjAAAUIoDNHpzL6q9jOEF1koTYjjodobk3qmAEH/TCr4CKi+UAksFlX
 UmYmP/8OoDGlbqchv2tM1MjA6a40zN1j9W2pYBU=
X-Google-Smtp-Source: APXvYqzMRlXMP/h79lMj8x7VcxyCeKa4vaXpALmTduH57IprgLhHb0OOOFWSwRLPh/SWv0zfOViVEeAbKR/rNE7qeP4=
X-Received: by 2002:ac2:5297:: with SMTP id q23mr13197208lfm.78.1566894997978; 
 Tue, 27 Aug 2019 01:36:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190826180734.15801-1-codekipper@gmail.com>
 <20190826180734.15801-4-codekipper@gmail.com>
 <20190827070101.tastgcqvzrgv3kc5@flea>
In-Reply-To: <20190827070101.tastgcqvzrgv3kc5@flea>
From: Code Kipper <codekipper@gmail.com>
Date: Tue, 27 Aug 2019 10:36:26 +0200
Message-ID: <CAEKpxBnCzC5hX+b4UMPpKLzKyABZ0e07RwZvULfauphzC4x7=A@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] ASoC: sun4i-i2s: Adjust LRCLK width
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_013639_440774_C81CCEB7 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

On Tue, 27 Aug 2019 at 09:01, Maxime Ripard <mripard@kernel.org> wrote:
>
> On Mon, Aug 26, 2019 at 08:07:34PM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > Some codecs such as i2s based HDMI audio and the Pine64 DAC require
> > a different amount of bit clocks per frame than what is calculated
> > by the sample width. Use the values obtained by the tdm slot bindings
> > to adjust the LRCLK width accordingly.
> >
> > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > ---
> >  sound/soc/sunxi/sun4i-i2s.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> > index 056a299c03fb..0965a97c96e5 100644
> > --- a/sound/soc/sunxi/sun4i-i2s.c
> > +++ b/sound/soc/sunxi/sun4i-i2s.c
> > @@ -455,7 +455,10 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
> >               break;
> >
> >       case SND_SOC_DAIFMT_I2S:
> > -             lrck_period = params_physical_width(params);
> > +             if (i2s->slot_width)
> > +                     lrck_period = i2s->slot_width;
> > +             else
> > +                     lrck_period = params_physical_width(params);
> >               break;
>
> That would be the case with the DSP formats too, right?

Maybe....but I need a TDM test volunteer!,
CK
>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
