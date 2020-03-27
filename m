Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E47C196052
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 22:17:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8REibLtDwqyIHgPbX/9JVKrE0Eb5jj5UTihmmHdZ14=; b=pHChDd0ccq4huq
	t+XY4YEipBLYop/Lbt8HXYNs9j9TpiFGfPL1jEvZJHBk+hjhdG+DdPCnfYY3XmRivDSWpOa506DBi
	4fiTp6CRo+V6SlHgWwcTNINDKKZ5afB0l/GuyfHIJpTi5hAojKZMNxv1dYnqh1CsDp9mGmo9vniCL
	3zfTGqVvKgRcpR0XWJA0E1NUWUYhsG3LBRBJNXbLLxXZZsq6XwrMljXt7Jz6dylpcXGStrmjfLvhg
	eihQsH8VlO0dQkEoa1sChOJzj1SPsrVXzw7tF32CW179tZRjpv5bTcxykgEn5B/KqVNPb9OJIrLXt
	OLCwVwDpxxWgRcQB8J+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHwLm-0002bx-85; Fri, 27 Mar 2020 21:17:10 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHwLF-0002O2-Ul
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 21:16:39 +0000
Received: by mail-lf1-x141.google.com with SMTP id h6so3283011lfp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 14:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S6vOE3rGUMZ+RYsgdraJOYkRxgZu8t7KhB7vPevIess=;
 b=Xsb0kWSBu1/GELNlY8DMO3whE9U5ls1xzzxwujutuRJy4RyZEhYqQlT2g2O72Yxxjy
 hvGG210KRTiHoMqStYx99P8EVLDDXmRsdeT9VfDBVsb+9MGKChgBepOToXUfKTax9ZTu
 qNI+AlEelBakzAoWaL8qruaq8wRdXQ951z8gKg9LQ4Dyr6lxLRHoV6SV86kmYKrUKCmu
 7UL+cMqdqJuI+HrR01zLvEsKF1ndlPbvMHLMkqZiZnYWutZBRQqHNPDRe6EqbbDDdTIo
 b9exIwj/4EQR48eBctiMg5MmHwlIGPynSw9hoS+OCj9/u/dM4/8Gdabsq8ExWyzVjUlB
 vkeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S6vOE3rGUMZ+RYsgdraJOYkRxgZu8t7KhB7vPevIess=;
 b=cNmL6D9w4azF3lu8rgir2Ax37D4mhKI5fHsanKQY5vWpk07gQTgY+n6o2yp7PdpVvf
 SgBnOzFNZ81nsNQMCzrESj4QblrUP7UffXW6wAsY2JlH+PP+UAe8qiAxrTSG86gd0mgO
 uwYYE6ViS643mAzV2UxnMw6n9MBn0GQBLKfXtGXrUa1QIzBQdMzGFkmThuBU/ov4Osa7
 Hfh1LVKnGSObrmFKd/z7SiIurkux/SvH826VJ1hoNvOVRS+m9r/JzgS+dyI66b0NAMpD
 A/oa6k4208dlZAm0uAKsMB6g2ntHwx/h+2lSHL/7AOXV14iYxDJ5H9Q/TJyBHM6azcc1
 P/Fg==
X-Gm-Message-State: AGi0PuZTPiOrrY71H5WARZgkoOViOj6NS51kwc7n6cZBFmxCWdYvWOA/
 QzIk3sqHYGzhsrXB4qfUQLGwKTDgG/VkAzjEY4agxA==
X-Google-Smtp-Source: APiQypJwH6Wd0Xc0zpnuF09cr9xxid/TGq37k9HX/22XZx4EiL6OCU0Bz45xvuvX9r9OU2HGnp0Muk+VBucPpL8Rsrs=
X-Received: by 2002:a19:be92:: with SMTP id o140mr706458lff.217.1585343796208; 
 Fri, 27 Mar 2020 14:16:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200322112437.18070-1-linus.walleij@linaro.org>
 <CAP245DXiU9XUwP-h1CAnORG=a+NAOcZiY7RvkOsgRQSAhSGG4Q@mail.gmail.com>
 <CACRpkdZzMsq6fYv3QiKi-FnnNivnyXj7oKzMrvt3XvN2-6WnDw@mail.gmail.com>
 <CAP245DW-D5EGFq0cpMNy2DSa6DNrYjehwCBzjKyOiaWGEZVpLw@mail.gmail.com>
In-Reply-To: <CAP245DW-D5EGFq0cpMNy2DSa6DNrYjehwCBzjKyOiaWGEZVpLw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Mar 2020 22:16:24 +0100
Message-ID: <CACRpkdaTMmOXeksTKgbqovC8MVfsabjzZDFQauALeZPkvuc+NA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: Fix leftover entry-methods for PSCI
To: Amit Kucheria <amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_141638_009861_3DC16253 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Lists LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 6:56 AM Amit Kucheria <amit.kucheria@linaro.org> wrote:
> On Sun, Mar 22, 2020 at 5:26 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> > On Sun, Mar 22, 2020 at 12:49 PM Amit Kucheria <amit.kucheria@linaro.org> wrote:
> >
> > > My patch went in, in 4.18.
> > >
> > > The FSL entry went in, in 4.20 and the spreadtrum one in 5.5.
> > >
> > > > Fixes: commit e9880240e4f4 ("arm64: dts: Fix various entry-method properties to reflect documentation")
> > >
> > > So only minor comment is that it isn't really a fix.
> >
> > OK I'll resend a v2 without the Fixes and your reviewed-by.
> >
> > > We've tried
> > > improving the text in the binding too but somehow people still get
> > > confused. Converting the binding to YAML and enforcing it seems to be
> > > the only course of action left now.
> >
> > Since nothing in the kernel checks for entry-method right now, maybe
> > we could just add code to do that and warn in dmesg if entry-method
> > is set to anything else than "psci"?
>
> Hi Linus,
>
> Documentation/devicetree/bindings/arm/idle-states.yaml already
> triggers an error on 'make dtbs_check'. Perhaps we just keep an eye on
> these?
>
> db845c-check-2020-02-24-222456.log:/home/amit/work/builds/build-check/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dt.yaml:
> idle-states: entry-method:0: 'psci' was expected
> db845c-check-2020-02-24-222456.log:/home/amit/work/builds/build-check/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dt.yaml:
> idle-states: entry-method:0: 'psci' was expected
> db845c-check-2020-02-24-222456.log:/home/amit/work/builds/build-check/arch/arm64/boot/dts/sprd/sp9863a-1h10.dt.yaml:
> idle-states: entry-method:0: 'psci' was expected

Aha that's pretty awesome actually.

I think right now we have a bit too many warnings coming out of the
YAML schema but sooner or later we'll actually start to plow through the
backlog of warnings and fix stuff up... :)

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
