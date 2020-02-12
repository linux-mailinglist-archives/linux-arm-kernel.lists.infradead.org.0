Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3935159EFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 03:08:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BC4c0xl0e+e8exI5B6hxAEAIoJBW3UhnMnWj+ztkeXA=; b=YvFLWu8OwGhsFg
	+bQL/leyLCIO6CGCVMyrIIfArC5LNBRiSuRC9rt8PnzwSbDn9Y2zAUsq9v6Uq2cnNSCG+kDS/TRyG
	3OzIzMilmX5fVWJdE/UTbltH4s9CHfRYLJDOOp9OHhYB/I+RgRq+Pz18/NejkPUClt37ToZj9eKyf
	qzjMEcFYvWHCodCK+cQWOGm7XT8xsP8rw3tlFdRB5Kjx/TUtCkShgllPLXBp7KCvmo0fq8FSyrJGU
	04O7k3/V5wq3ywCj9Uz9RyddbNAqq+ht8CkA5DYdHAZnVFX+RJxr6CSFRGXDXJxKue0LZy7S5bgfV
	RnWkaNZdS3zFbV36G0Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1hSL-0003Cu-6h; Wed, 12 Feb 2020 02:08:49 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1hSB-0003BP-91
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 02:08:42 +0000
Received: by mail-qk1-x744.google.com with SMTP id c20so628030qkm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 18:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aO1UKgSaz5CktVcc4Y8RcygWfgexx86iGtyjlHVU3kc=;
 b=Ra4CJUVRnDxwoRk1QHlRr35m77IrmNP+H+pxr+bZOB0DUqvHsCjOXSRfGg8rh5YTc/
 bgIS4sXVXPWDN0WSvdb5FMIFOhtL88yKaI01xKq0D1/4ULI+kJq4x8UcjsWQePCqsrs8
 6+XGOuD6jIhd4dxdCqcpHLWlftWwwtVIkMYXo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aO1UKgSaz5CktVcc4Y8RcygWfgexx86iGtyjlHVU3kc=;
 b=Gy/+Na0v8lozHqI3wlZPf16xCY8UfbJGTvQ4Hi0ZN2Is8eoFVM4cJye18Pdf2UO1sf
 cmQgHd3ujENPhk2kPv/1pwhXiz7ObJTRuWjxSDvwXq6hkioOK1s6xxrb6uwl4Y44w4I3
 J1/7U2Rl+e/oclz88C/3mT7ezLs6g0ei9tlxSSppxomDbXpVODGttIAMekbveDUYBx7T
 sSEf+OhBC2axaKoPWr4hSsdzoX77RX7TEikBoiQa3NL/++oGk0JLO/Jg4xPCTlrSVulr
 S7hKrwJrrkYqb+AhhNjxkz2ShHnmnFwZYV8VGrxtsOJRKYtOjYJ+YeEl06rRNSqhAJog
 PXkw==
X-Gm-Message-State: APjAAAW/b2hnKItyuX6M6MhXMm5EN67sfBiunsj7nra3KV/8bcViDP/8
 YPynMr53FkG5933BCgPmPRw/dKry9kZohZSuB7Z99Q==
X-Google-Smtp-Source: APXvYqwbzvTmz/rK3xPb+7Zh0OWCEANWSI8B0x6aGBv3LzyJNw2pam02x3/hzeuy9xsPHf377lq3HNhZe8a4gYL9G7M=
X-Received: by 2002:a05:620a:6d7:: with SMTP id
 23mr8405839qky.299.1581473317421; 
 Tue, 11 Feb 2020 18:08:37 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-6-drinkcat@chromium.org>
 <CAL_JsqLshgzmhGGa+XibosSgk6R_9DQkDf12s793UZcvbQbxKw@mail.gmail.com>
 <CAGETcx_3-ZoVAf+Uf0Yo86pUU1nL4S4-jrS0eZi50yvhCO985g@mail.gmail.com>
In-Reply-To: <CAGETcx_3-ZoVAf+Uf0Yo86pUU1nL4S4-jrS0eZi50yvhCO985g@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 12 Feb 2020 10:08:26 +0800
Message-ID: <CANMq1KC2LEQ2iQzGDVAi+-x4Uy1LLB8JU-grTBVTL-iRej-t4A@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] drm/panfrost: Add support for multiple power
 domains
To: Saravana Kannan <saravanak@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_180840_455947_5B268319 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 4:09 AM Saravana Kannan <saravanak@google.com> wrote:
>
> On Tue, Feb 11, 2020 at 11:44 AM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > +Saravana
> >
> > On Thu, Feb 6, 2020 at 11:27 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> > >
> > > When there is a single power domain per device, the core will
> > > ensure the power domain is switched on (so it is technically
> > > equivalent to having not power domain specified at all).
> > >
> > > However, when there are multiple domains, as in MT8183 Bifrost
> > > GPU, we need to handle them in driver code.
> > >
> > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > >
> > > ---
> > > [snip]
> > > +               pfdev->pm_domain_links[i] = device_link_add(pfdev->dev,
> > > +                               pfdev->pm_domain_devs[i], DL_FLAG_PM_RUNTIME |
> > > +                               DL_FLAG_STATELESS | DL_FLAG_RPM_ACTIVE);
> >
> > We're in the process of adding device links based on DT properties.
> > Shouldn't we add power domains to that? See drivers/of/property.c for
> > what's handled.
>
> Rob,
>
> drivers/of/property.c doesn't enable the RPM_ACTIVE AND PM_RUNTIME
> flags. Wanted to start off conservative. But adding command line ops
> to change the default flags shouldn't be difficult. But before I do
> that, I want to change of_devlink to
> fw_devlink=<disabled|permissive|enabled>. May be I can extend that to
> "disabled, permissive, suspend, runtime".
>
> Nicholas,
>
> And the adding and removing of device links for power domains will be
> a 2 line change. I've been meaning to add a few more bindings like
> hwspinlocks and pinctrl. I can roll power domains support into that if
> you want.

Adding power domains makes sense to me, as there are a bunch of other
users (git grep dev_pm_domain_attach_by_name).

This seems to be a bit orthogonal to this patch though. If your
solution lands before this (and not something that is behind a command
line option), then I'm happy to make use of it. Either way, happy to
test things.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
