Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFD416135F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 14:30:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wxMpdft0q8TSm83oY3C76Tqz1doac7xpxd3X3ZOtjI=; b=lnTaQAjINv9o0n
	KNNUua8Js0hKTgdfQfPXD2YIQRM+T+3TmKc6VDI9D8ek0itOBQd3sG+3LBNPdF35qn1v4cuF2M9qo
	XDYu+iYXO80FDfz53HQstZM1JgYQ4pJi+ljJgggOyYKgurUrIBhB0TI0Fleu8KZ7Cs1yXe0pPFB4H
	HXUVbhc+rBKD27e+AQM7Alw/V+5wxrG5fd3shYHp8vZV9Kx3NM/21DMMv2hka4KH4GO6D/SEwl9TI
	kNC2kx2+NLKbzsRbj/RaK3G8ZPQ4qZFi1Lc6eq8gGNxcQ3uQ7nLBzSYfuNFhpnxLGvXVscserWoCC
	l4iKVADvRHnmDRB8WRbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3gTk-0006xK-1e; Mon, 17 Feb 2020 13:30:28 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3gTX-0006wk-Fc; Mon, 17 Feb 2020 13:30:17 +0000
Received: by mail-il1-x141.google.com with SMTP id t17so14186103ilm.13;
 Mon, 17 Feb 2020 05:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oKZige4m/AoNTTthLZdSUaeHyHzQ4UT6ng0N8s0kzVk=;
 b=McIHR4HqYVgFbC6brytrdSkaOQ3tJKrEhWb45DEuUAYXqoA+IO8qwVbx2KpqFr9DUb
 o6njCVJFfIXDCRBfv711DuWgjJphYFThWmvOv9evpZ3TsdOV/Rk1ZPIqXxZLs6Sainmc
 S1zxOVLhQRiOwSH1GMfEcsuD2KtXgUMJrRMViVoq/UZL0HZt6ERELVgYoFml+6uggMFX
 cGLzk6Weomiv0gAG8h5grNeHOOHNF15TVuokP0GoIDIxVc+bnGX1DzNdMRar+5yqfEM3
 hAyOKF3b1iCXri88ClHayFeOvwp5Xp3aYia+cJ90T4xMdC1SDfrtBTehcKf/VtSEzeK+
 LQjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oKZige4m/AoNTTthLZdSUaeHyHzQ4UT6ng0N8s0kzVk=;
 b=Pkzi4ezVLBF+n5nuyXoitE/+2ozxaC7ge+cjb5XsQZAOa3FxFdvdaWqT5GExqtUFlm
 N5GFjEkDYtkFrqW62+6Xm4CG3i9Yq7RmF987pXA87dCcfJXXqXWQQwTt0+b1T4M3YA9Q
 8eqaHG+U8uuyFypLqAB35474f+5q1Agzlx/LJBLXMb+NAOmA9s8dBvSKTYXU8ES2W2BJ
 izdW+1mZxZngDIj7QsrOT1F+tvq1GZ28wCACmj/7Fb3RGnmTBDFAG7I/W8AlHvG9ODYy
 UBVhq1ozyS88uBLOPENsez6GI5Ams3JUdH/At3zQDjFNCSck0FxksEaCI4cKQobGWMVY
 hkBQ==
X-Gm-Message-State: APjAAAUqX8SxRKJTTotsgwTnLa7qBsTAvkgsGvZ3Rz2UA7KVc4sZ3gKC
 vXvE+gJki4lChxK+IybqoqmxbMJOo/Ymbj4221A=
X-Google-Smtp-Source: APXvYqz/hD3abK5iZXSi3wPYlOwN8FrT1CFYkRgJTPJUClxe+fHEd7f1yn8unX05mzbhhqRWfk9p5Hb28CxRNQtgwpQ=
X-Received: by 2002:a92:85c1:: with SMTP id
 f184mr14075867ilh.221.1581946214224; 
 Mon, 17 Feb 2020 05:30:14 -0800 (PST)
MIME-Version: 1.0
References: <20200216173446.1823-1-linux.amoon@gmail.com>
 <20200216173446.1823-4-linux.amoon@gmail.com>
 <1jmu9hzlo2.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jmu9hzlo2.fsf@starbuckisacylon.baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 17 Feb 2020 19:00:04 +0530
Message-ID: <CANAwSgSaQgU=H3h0S9deT11HA8z9R=Fhy5Kawii9tSBxKf2Wgw@mail.gmail.com>
Subject: Re: [PATCHv1 3/3] clk: meson: g12a: set cpu clock divider flags too
 CLK_IS_CRITICAL
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_053015_565075_9A0F36CD 
X-CRM114-Status: GOOD (  24.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jeronme,

Thanks for your  review comments.
On Mon, 17 Feb 2020 at 13:32, Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>
> On Sun 16 Feb 2020 at 18:34, Anand Moon <linux.amoon@gmail.com> wrote:
>
> > Odroid N2 would fail to boot using microSD unless we set
> > cpu freq clk divider flags to CLK_IS_CRITICAL to avoid stalling of
> > cpu when booting, most likely because of PWM module linked to
>
> Where did you see a PWM ?
>
> > the CPU for DVFS is getting disabled in between the late_init call,
>
> between the late_init call and what ?
>
> > so gaiting the clock source shuts down the power to the codes.
>
> what code ?
>
Sorry, I was really upset about my self.
I tried to improvise this commit message based on previous mails.
sorry about that.

> > Setting clk divider flags to CLK_IS_CRITICAL help resolve the issue.
> >
> > Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > Cc: Jerome Brunet <jbrunet@baylibre.com>
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Suggested-by: Neil Armstrong <narmstrong@baylibre.com>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> >
> > Following Neil's suggestion, I have prepared this patch.
> > https://patchwork.kernel.org/patch/11177441/#22964889
> > ---
> >  drivers/clk/meson/g12a.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
> > index d2760a021301..accae3695fe5 100644
> > --- a/drivers/clk/meson/g12a.c
> > +++ b/drivers/clk/meson/g12a.c
> > @@ -283,6 +283,7 @@ static struct clk_fixed_factor g12a_fclk_div2_div = {
> >               .ops = &clk_fixed_factor_ops,
> >               .parent_hws = (const struct clk_hw *[]) { &g12a_fixed_pll.hw },
> >               .num_parents = 1,
> > +             .flags = CLK_IS_CRITICAL,
>
> This makes no sense for because:
> * This clock cannot gate and none of its parents can either. IOW, the
> output of this clock is never disabled.
> * I cannot guess the relation between fdiv2 and the commit description
>

Ok I check this code changes is not needed for this fix.

> >       },
> >  };
> >
> > @@ -681,7 +682,7 @@ static struct clk_regmap g12b_cpub_clk = {
> >                       &g12a_sys_pll.hw
> >               },
> >               .num_parents = 2,
> > -             .flags = CLK_SET_RATE_PARENT,
> > +             .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
>
> Why not. Neil what do you think of this ?
> If nothing is claiming this clock and enabling it then I suppose it
> could make sense.
>
I would like core developers to handle this.
Sorry for the noise.

-Anand
>
> >       },
> >  };
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
