Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48921468F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 14:24:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skp9YD2xoLOSkrxtWxxWLo9IlQNo4/x4i76BxPOw27Y=; b=hZcP5j1MWkaKWs
	IjUG7ToZuVLPsFSQEKwOkA2tUI0CeIYOqYhwlcdalDcn6XRcsm9ZIbdtG4hM/Z6MQ4OG8sTmvyB8L
	6Y+Uad5ykSnyA8rpKIwzRb8w6qBb8xOBW8aWy4Jzsfwz7Pjc9aXgeepMkguPwE4lNISl5EU46wlIE
	yH2vH0AorfBMUiej6NcnpBwTDl28SzQHjVCP7+wzHUuAcipDbw001keLIxtIj3s1hBrgbO8YWE2zc
	OgOJrdw8I9X+0nPz4dkzjUUfyxkyDy6IRSya0V+PXsm0ZLjcGLrsH75F7MSL+Je28jnaqX/cKRwxk
	gUsBF5xg30dGlv6TX+rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucSj-0006LQ-Vy; Thu, 23 Jan 2020 13:23:58 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucSZ-0006Ko-A9
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 13:23:48 +0000
Received: by mail-ot1-f68.google.com with SMTP id p8so2655092oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 05:23:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0+L/2IhzPeQzIOBWlkZ5pb6nsfpL9PHovfEkpJKJ33U=;
 b=lh55Cf7UYNdoPYE9LBRoQWKpRAhW1VoeKjqaMxDoCUbQYx1YoCnzln+uNF24YEzAf4
 RizQ5ml1b0F77IsdiOkqNq70cneKLWefq4SqNjbAGKr9cxaSeVO/Q6VXfQpq7R7A4/nr
 0A3GwDbSumXcQXxHXA1Pjl9TdqS2iWw4Kfx03VVeLJrAQyfYNroIadc9QQ1SzSidWuHG
 FJf6lR8ueJM3ajvY0LSjCGtTKYvkk2VuHnZolmD7bi40X2WhGCNCh9lwRl5OiEfnkwgN
 JkpvfSQu+8NmcmiDJ/6rplECi6sbKAcR2ExRb1LS8r4LGwLB8G777fOc1C1G86wxeAaL
 pLDg==
X-Gm-Message-State: APjAAAXQdjjmM0TR7qXlYA3dEHh7uJvGkj6AOCrsTlx6mGwfBLLJFbua
 Gjwn190n55oeku+3n4Z/7A4CcDFb9cpuIHn6tDo=
X-Google-Smtp-Source: APXvYqyRlraHNmDMZdZCjBusJQDVjLX1k8LZn1KXe8p0/vt6EjbszONOt8LLgQR0Jfc3uHWQsHfSAGvWLUwy+B2lRik=
X-Received: by 2002:a9d:7984:: with SMTP id h4mr11516407otm.297.1579785825019; 
 Thu, 23 Jan 2020 05:23:45 -0800 (PST)
MIME-Version: 1.0
References: <56c7b6d5-1248-15bd-8441-5d80557455b3@free.fr>
 <CAMuHMdX3kZoEfCeGamreeWq0-Tu2+Mw8MYEbRUZV8wBS+e2K=A@mail.gmail.com>
 <8f1f01a1-b0c7-77d5-7d01-dd53811fa217@free.fr>
 <CAMuHMdW=0Qf=bdE8Vy75wySRV5wzWhgM=-vhXjc0RhLGwomF_g@mail.gmail.com>
 <91058d8f-7075-6baa-6131-cce1ccd160a6@free.fr>
In-Reply-To: <91058d8f-7075-6baa-6131-cce1ccd160a6@free.fr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 23 Jan 2020 14:23:33 +0100
Message-ID: <CAMuHMdWVisqq-rXi4aB2woKb9rHbXoQjWcbhN4zcf3F2+jhewg@mail.gmail.com>
Subject: Re: [RFC PATCH v2] clk: Use a new helper in managed functions
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_052347_351577_CD88DB2D 
X-CRM114-Status: GOOD (  23.51  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Guenter Roeck <linux@roeck-us.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Thu, Jan 23, 2020 at 1:18 PM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
> On 23/01/2020 11:32, Geert Uytterhoeven wrote:
> > On Thu, Jan 23, 2020 at 11:13 AM Marc Gonzalez wrote:
> >> A limitation of devm_add_action is that it stores the void *data argument "as is".
> >> Users cannot pass the address of a struct on the stack. devm_add() addresses that
> >> specific use-case, while being a minimal wrapper around devres_alloc + devres_add.
> >> (devm_add_action adds an extra level of indirection.)
> >
> > I didn't mean the advantage of devm_add() over devm_add_action(),
> > but the advantage of dr_release_t, which has a device pointer.
>
> I'm confused...
>
>         void *devres_alloc(dr_release_t release, size_t size, gfp_t gfp);
>         int devm_add_action(struct device *dev, void (*action)(void *), void *data);
>
> devres_alloc() expects a dr_release_t argument; devm_add() is a thin wrapper
> around devres_alloc(); ergo devm_add() expects that dr_release_t argument.

OK.

> devm_add_action() is a "heavier" wrapper around devres_alloc() which defines
> a "private" release function which calls a user-defined "action".
> (i.e. the extra level of indirection I mentioned above.)
>
> I don't understand the question about the advantage of dr_release_t.

OK. So devm_add_action() is the odd man out there.

> >>>> +       void *data = devres_alloc(func, size, GFP_KERNEL);
> >>>> +
> >>>> +       if (data) {
> >>>> +               memcpy(data, arg, size);
> >>>> +               devres_add(dev, data);
> >>>> +       } else
> >>>> +               func(dev, arg);
> >>>> +
> >>>> +       return data;
> >>>
> >>> Why return data or NULL, instead of 0 or -Efoo, like devm_add_action()?
> >>
> >> My intent is to make devm_add a minimal wrapper (it even started out as
> >> a macro). As such, I just transparently pass the result of devres_alloc.
> >>
> >> Do you see an advantage in processing the result?
> >
> > There are actually two questions to consider here:
> >   1. Is there a use case for returning the data pointer?
> >      I.e. will the caller ever use it?
> >   2. Can there be another failure mode than out-of-memory?
> >      Changing from NULL to ERR_PTR() later means that all callers
> >      need to be updated.
>
> I think I see your point. You're saying it's not good to kick the can down
> the road, because callers won't know what to do with the pointer.

Exactly.

> Actually, I'm in the same boat as these users. I looked at
> devres_alloc -> devres_alloc_node -> alloc_dr -> kmalloc_node_track_caller -> __do_kmalloc
>
> Basically, the result is NULL when something went wrong, but the actual
> error condition is not propagated. It could be:
> 1) check_add_overflow() finds an overflow
> 2) size > KMALLOC_MAX_CACHE_SIZE
> 3) kmalloc_slab() or kasan_kmalloc() fail
> 4) different errors on the CONFIG_NUMA path
>
> Basically, if lower-level functions don't propagate errors, it's not
> easy for a wrapper to do something sensible... ENOMEM looks reasonable
> for kmalloc-related failures.

Indeed.  If devm_add() would return an error code, callers could just check
for error, and propagate the error code, without a need for hardcoding -ENOMEM.

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
