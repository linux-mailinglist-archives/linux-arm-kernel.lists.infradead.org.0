Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C6645C25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EfIpJ8bhTLTLyogtWE1qOoRj7zoSnH8uBx0RWW3NC4=; b=VmDrDZ7ifDuBr0
	vbs3Q8KTDRotD+awWgBfnSx1ryHAS/g4jvRWsqXGu54h+JcXL8mAhD2vTmsiJRpgyzj+/K7NKCnBA
	Ryqh0rdq30f0rufF7NTUEy9ljtUd6IHm6mVNtDfJnt/8bZ+ISMLbcOxGUoV85x/P7nAgDKtVjAU/T
	T7VBXuL14gvWhzNZNEe7XZxrgr/Z0KL35gSlN2kgBCrS2hsxXkSkk2LA3oAuHyemAQjPi6s3YzNvo
	IQIx8yTuzXQxKrAnOhxKbXpqDpNGwXJJXZ4AM70HVdScSSkXcd7G+9puonwrtVc/H4Bv4Ja4PuwXl
	ULUSNy3e/3XetqBY7cLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbkyl-0000Cg-4Z; Fri, 14 Jun 2019 12:06:47 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbkyc-0000CL-7g
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:06:39 +0000
Received: by mail-io1-xd44.google.com with SMTP id r185so5153700iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 05:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dV/TN56tvtkshednW+FR3TYUMeR7LNkhJIJyPcztGuQ=;
 b=ZcN2e49mct35/m0fC0Bk4nbq0vVLZywYLxKLRo2uHlF5EhUnLtkkIv355WOKHFKGgb
 J01Wq8pOvuHMiwJThf2Ejb05s3co10a3TNB8r+QvphUXGbk5Uh7rpEB7QSCE8XU4sE1I
 2zCGaCefXOtG5SsSDzfDmE7oQrrECjcqoTUow=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dV/TN56tvtkshednW+FR3TYUMeR7LNkhJIJyPcztGuQ=;
 b=LoDVV9gpgjfcPmfRcEJfaw7nWtmZxCVkV8QVaUS0fyqxDNqfoOMK7bxdoZObk7jvpA
 ULWRU3oHTdEQqd4pQp1Mq23gF0UFDYlYpumcVUqP5nFpHx/VYPiMzbY7RzfISnbVXHud
 NKNM45BZgO62JKSubeZAV4YdnvsQ/vGoQXdTCGxiMBaFEH1USzXiwDjkRhr3qnO8m4mF
 7V+Y5oWvnV3QMdBsbCV2h+Gq9YEh70ElPliBeocfmLfSqAUiU7wFMK/T0scGmrYA0ZCd
 ThZNgLLLQOG1Ui5oHehgpO0Y+inUwjiYeD4cFVWPOXl6ciwWNyCTy+UpvWSXldWkLmC3
 s61w==
X-Gm-Message-State: APjAAAUcqkNniHO2Urux7E2KjkHctGT8cutW9ijUbUFXb2mgxsJUY4s3
 uKpr2O2wk7mXTPmuUgNjKvBSC1Gm+9Nob0opb+enTA==
X-Google-Smtp-Source: APXvYqzd3RL+iPjapmaxAdyvWMQJF7lG1MDH2O7AA77mNOJAARM4fauuhUSG4Vu+ikv2M3ZUTkZw+Wyq92aI3r6eLBo=
X-Received: by 2002:a6b:5115:: with SMTP id f21mr5692335iob.173.1560513997259; 
 Fri, 14 Jun 2019 05:06:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
 <20190613185241.22800-3-jagan@amarulasolutions.com>
 <CAGb2v65xuXc4C1jOyM1GbEFVDam5P-6NN0ZhtzwzA7qU5F3nJQ@mail.gmail.com>
 <CAGb2v67DY534hXrx2H4jnZXA7jJS7sq2UwYCqw1iAgyLKdNzgA@mail.gmail.com>
 <CAMty3ZBc-AqbNGZCxRhOPw46iMvEZxoq1oATA46=K29gRYi4Sg@mail.gmail.com>
 <CAGb2v6466QSF1wJ_wJsVwAgHsnLXD9GAwbPQtXcTDq4aqAeEfQ@mail.gmail.com>
In-Reply-To: <CAGb2v6466QSF1wJ_wJsVwAgHsnLXD9GAwbPQtXcTDq4aqAeEfQ@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 14 Jun 2019 17:36:26 +0530
Message-ID: <CAMty3ZC39yQs+_Cytp25xJO9Da0FWkC9g1VwYmzQZSGNoWc-yw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/9] drm/sun4i: tcon: Add TCON LCD support
 for R40
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_050638_278688_7B68AF10 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 4:32 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Fri, Jun 14, 2019 at 6:56 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > On Fri, Jun 14, 2019 at 9:05 AM Chen-Yu Tsai <wens@csie.org> wrote:
> > >
> > > On Fri, Jun 14, 2019 at 11:19 AM Chen-Yu Tsai <wens@csie.org> wrote:
> > > >
> > > > On Fri, Jun 14, 2019 at 2:53 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > > > >
> > > > > TCON LCD0, LCD1 in allwinner R40, are used for managing
> > > > > LCD interfaces like RGB, LVDS and DSI.
> > > > >
> > > > > Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
> > > > > tcon top.
> > > > >
> > > > > Add support for it, in tcon driver.
> > > > >
> > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > >
> > > > Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> > >
> > > I take that back.
> > >
> > > The TCON output muxing (which selects whether TCON LCD or TCON TV
> > > outputs to the GPIO pins)
> > > is not supported yet. Please at least add TODO notes, or ideally,
> >
> > Are you referring about port selection? it is support in
> > sun8i_tcon_top_de_config.
>
> No. That's supported as you already pointed out. That only selects
> which mixer outputs to which TCON.
>
> I'm talking about the GPIOD and GPIOH bits, which select which of
> LCD or TV TCON outputs to the LCD function pins. Keep in mind that
> the TV TCON's H/V SYNC signals are used in combination with the
> TV encoder RGB outputs for VGA.

Got it, so do I need to add TODO on sun8i_r40_lcd_quirks struct?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
