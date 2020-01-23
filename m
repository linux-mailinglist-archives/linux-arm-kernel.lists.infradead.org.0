Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FAC1465CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 11:33:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=as8+0uV651sQmD3S1JgYgq6zmnK14jcl15psvdytf/0=; b=T9iVRy/QOMi3VI
	gKeY+KszWuNnvbcMRRh2CxiD8keuXxfULInxK9X8/Y1QzRZcULJtfTvWS0xDiu8Gv1fdOC7NEIx/b
	tYdmNw1XpJCPLXPYV/1xAU2nS9mGb3ECeVT94++/hqn+0G11XFf1tGHBGtfn5faWHqU18y/Ge//wb
	89xFE48J82FX9NRMNjC8halA+0nHHHUFK0IPya5XIAZXFzyMP2mA092t5Dd1d4WhLR36rvNNZvVmV
	S5Qccf4HkrZT18J8GKWur4c+bbI8CM2uZ1j3aw4YzCUnplz7KliINnVQSoUVRsP6IoefdMq7QAa2h
	5JYBpfrV3X+CqaU3X2+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZnD-0005Rw-GN; Thu, 23 Jan 2020 10:32:55 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZn4-0005RA-2v
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:32:47 +0000
Received: by mail-oi1-f194.google.com with SMTP id d62so2398487oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 02:32:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QcZp4gfVUSDInEQle12WovyUYPuFeimVii8rBuqstqk=;
 b=MtgtZ+dObdbd8Np7KSDqIiNZ0EQmXpmh+SR0yvhB3NPI8BoxcVgV3NYIIVpEsB0Sbo
 HCH9g0PVwfLzce80rafn25ZZLZC2NVqIWJensVEsqHbJeEuEf/ukUGVzUnnkNq3gw5n/
 eyHxAHtH2IYBKiptflK+daLOndRrnuTqAN1nokhfsok8OAIpMwIS3oYYxj31eIG+feVE
 E4Aeh1K2B8eKyy+kvc43M8mYp5Ti9vHcdzo88v+UyRLx4YvqnD89OnnJ2nsQkkw8cIZk
 HixggILl0mASpEY7sdbWxylvkwtv4eXJV8sMqCgojJohLd7l6q6MAsYufzh2DlehbsHE
 Na5w==
X-Gm-Message-State: APjAAAXquAfrfOl9b927m8iHbXbptac97iKbmROqkBE79nDYBgEdF4PC
 5fSIlIq/3vubu85c72i5MXyyI9qpGGcY1KqD/Rw=
X-Google-Smtp-Source: APXvYqy2H34MWaUdGdf1bbSGCmjx+hi8NQGrCSPpVJ9h7cLecMi626nnbrNMNEVvCTAVxOtrtW3m1l6awh+14xF2ZtM=
X-Received: by 2002:aca:1a06:: with SMTP id a6mr9548275oia.148.1579775564167; 
 Thu, 23 Jan 2020 02:32:44 -0800 (PST)
MIME-Version: 1.0
References: <56c7b6d5-1248-15bd-8441-5d80557455b3@free.fr>
 <CAMuHMdX3kZoEfCeGamreeWq0-Tu2+Mw8MYEbRUZV8wBS+e2K=A@mail.gmail.com>
 <8f1f01a1-b0c7-77d5-7d01-dd53811fa217@free.fr>
In-Reply-To: <8f1f01a1-b0c7-77d5-7d01-dd53811fa217@free.fr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 23 Jan 2020 11:32:32 +0100
Message-ID: <CAMuHMdW=0Qf=bdE8Vy75wySRV5wzWhgM=-vhXjc0RhLGwomF_g@mail.gmail.com>
Subject: Re: [RFC PATCH v2] clk: Use a new helper in managed functions
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_023246_126763_703A10E4 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Thu, Jan 23, 2020 at 11:13 AM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
> On 22/01/2020 14:33, Geert Uytterhoeven wrote:
> > On Wed, Jan 22, 2020 at 2:02 PM Marc Gonzalez wrote:
> >> Introduce devm_add() to factorize devres_alloc/devres_add calls.
> >>
> >> Using that helper produces simpler code and smaller object size:
> >>
> >> 1 file changed, 27 insertions(+), 66 deletions(-)
> >>
> >>     text           data     bss     dec     hex filename
> >> -   1708             80       0    1788     6fc drivers/clk/clk-devres.o
> >> +   1508             80       0    1588     634 drivers/clk/clk-devres.o
> >>
> >> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>

> >> --- a/drivers/base/devres.c
> >> +++ b/drivers/base/devres.c
> >> @@ -685,6 +685,20 @@ int devres_release_group(struct device *dev, void *id)
> >>  }
> >>  EXPORT_SYMBOL_GPL(devres_release_group);
> >>
> >> +void *devm_add(struct device *dev, dr_release_t func, void *arg, size_t size)
> >
> > Is there any advantage of using dr_release_t over "void (*action)(void *)",
> > like devm_add_action() does?  The latter lacks the "device *" parameter.
>
> (I did forget to mention that v1 used devm_add_action.)
> https://patchwork.kernel.org/patch/11262685/
>
> A limitation of devm_add_action is that it stores the void *data argument "as is".
> Users cannot pass the address of a struct on the stack. devm_add() addresses that
> specific use-case, while being a minimal wrapper around devres_alloc + devres_add.
> (devm_add_action adds an extra level of indirection.)

I didn't mean the advantage of devm_add() over devm_add_action(),
but the advantage of dr_release_t, which has a device pointer.

> >> +{
> >> +       void *data = devres_alloc(func, size, GFP_KERNEL);
> >> +
> >> +       if (data) {
> >> +               memcpy(data, arg, size);
> >> +               devres_add(dev, data);
> >> +       } else
> >> +               func(dev, arg);
> >> +
> >> +       return data;
> >
> > Why return data or NULL, instead of 0 or -Efoo, like devm_add_action()?
>
> My intent is to make devm_add a minimal wrapper (it even started out as
> a macro). As such, I just transparently pass the result of devres_alloc.
>
> Do you see an advantage in processing the result?

There are actually two questions to consider here:
  1. Is there a use case for returning the data pointer?
     I.e. will the caller ever use it?
  2. Can there be another failure mode than out-of-memory?
     Changing from NULL to ERR_PTR() later means that all callers
     need to be updated.

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
