Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699E3175817
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:15:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEg/HJplbPoLKIt3JTANERBRyjmuWh6b2Py3LA2/13o=; b=rzlvNDls8CANyH
	RYHQFFvEN5EN0kWeAomJA4FOzYJs8T+WT7paW6sdgU7KXbBiKHRKY8wkzkUcCo1Uz7yqRsxWWlcom
	OGSS584atCgi1b6gfcGdDl3gxVSrd48b/XnXP+b7kPqUFEqmX5B831knFtk+Ca3h6y0yBHbNYNlqY
	rb5UvH5I5Iz6wTGHekW+IA6VEblzEaw+Vd5TeFREMuT7S9DPzOPQmLvpcRceP678NYZesTWHbuwqS
	nu6AC6cE4BPOwE7d0/MVfHpkwzrfkCBcDQkVfeNHrj7/O88KF2FDBO/2KQOQtFb8xp0Kf/a3E1oZq
	/ayRQz8Q6DlTXPiZDbJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8i6R-0002ml-As; Mon, 02 Mar 2020 10:15:11 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8i5z-0002eT-T9
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:14:45 +0000
Received: by mail-ot1-f66.google.com with SMTP id x19so4319642otp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 02:14:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SVlemy32h72Zpj8jVlIGq7eQAhoadA5R3segFYSq66w=;
 b=LRIc/d3bQIKZh1cs5cRjllBHZDAjbD3Of9bKVUc+uWaQoEbCkY389XWsKvPcChTyD1
 NAvywXuTuB69dCur31/2+jmvtkkLB+5KJs+ljzFDPsT5yin9wP3dVMylJhp8JJejM9+q
 LLA+22/xQtu8V5R6pr39O7m31mrt/sDMzcyuR8ITDOw/DNwL3AAI67k59xUPq9Qqbl8K
 f8IchETzJ7PP+so06eMVRhl3616ucDTptaThU0Q7ooiS57RgxpgMg2HHYghQ1pLrdBxV
 Zym3wWUHrC4wA5ANlMh89I8dLzgQ5QyLZSwdwV0lr1T9j0pZkQgchPcibBAnwO1jfnON
 yeHw==
X-Gm-Message-State: ANhLgQ0dfKqhHis/mkEhc4jRMuq4E/k/FKINLuBc//iQhg36rUDjUmDR
 ZuK2+al7IYuKZqCUQYiJLQtMcCORLKefchhh/L0=
X-Google-Smtp-Source: ADFU+vs/0ZiJfqPA7EukyL4+DZs2EJZ2FkBQDZwJ/jcv1Cma/xnhZmbg/F6SIEf/URrc+W049AaZlV2ArAclptArrf0=
X-Received: by 2002:a05:6830:12d1:: with SMTP id
 a17mr3526676otq.39.1583144083038; 
 Mon, 02 Mar 2020 02:14:43 -0800 (PST)
MIME-Version: 1.0
References: <68219a85-295d-7b7c-9658-c3045bbcbaeb@free.fr>
 <e88ca46a-799d-9c86-f2d2-6284eb3c3419@free.fr>
 <CAMuHMdUZfR6pYG-hourZCKT-jhh1t+x-ySF4JnEPJjscGAQT+A@mail.gmail.com>
 <7622db71-b1f4-62b4-86ee-78e00d5bd52c@free.fr>
In-Reply-To: <7622db71-b1f4-62b4-86ee-78e00d5bd52c@free.fr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 2 Mar 2020 11:14:21 +0100
Message-ID: <CAMuHMdVYghD_xLeXVFD+PGBKECSkQ+_KxPBwFmUDDO3W5skscQ@mail.gmail.com>
Subject: Re: [RFC PATCH v4 2/2] clk: Use devm_add in managed functions
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_021443_938200_A8DC4A5E 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-clk <linux-clk@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, Russell King <linux@armlinux.org.uk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Mon, Mar 2, 2020 at 11:01 AM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
> On 27/02/2020 14:36, Geert Uytterhoeven wrote:
> > On Wed, Feb 26, 2020 at 4:55 PM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
> >> Using the helper produces simpler code, and smaller object size.

> >> --- a/drivers/clk/clk-devres.c
> >> +++ b/drivers/clk/clk-devres.c

> >> @@ -128,30 +109,22 @@ static int devm_clk_match(struct device *dev, void *res, void *data)
> >>
> >>  void devm_clk_put(struct device *dev, struct clk *clk)
> >>  {
> >> -       int ret;
> >> -
> >> -       ret = devres_release(dev, devm_clk_release, devm_clk_match, clk);
> >> -
> >> -       WARN_ON(ret);
> >> +       WARN_ON(devres_release(dev, my_clk_put, devm_clk_match, clk));
> >
> > Getting rid of "ret" is an unrelated change, which actually increases
> > kernel size, as the WARN_ON() parameter is stringified for the warning
> > message.
>
> Weird... Are you sure about that? I built the preprocessed file,
> and it didn't appear to be so.
>
> #ifndef WARN_ON
> #define WARN_ON(condition) ({                                           \
>         int __ret_warn_on = !!(condition);                              \
>         if (unlikely(__ret_warn_on))                                    \
>                 __WARN();                                               \
>         unlikely(__ret_warn_on);                                        \
> })
> #endif
>
> Maybe you were thinking of i915's WARN_ON?
>
> #define WARN_ON(x) WARN((x), "%s", "WARN_ON(" __stringify(x) ")")

Oops, you're right.  I got trapped again by an override of a standard macro
(IMHO this should be removed).

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
