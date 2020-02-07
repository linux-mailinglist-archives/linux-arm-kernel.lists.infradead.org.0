Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AC0155074
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 03:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2k2CdEKbROrPR99fcf+3A39IxLDV9XeRJplM9cT/3A=; b=nB71l7CDyoIbLc
	MoFtWa79K6zopXeTyWXzdapqa1s4FrNM3uRk/G7vVZkGci3LY+Z+WFe5UdKngCCK5wvSoEFxmsQWX
	N96AyWNDKGqXShF2QEhCs93Gg832uqxBgRKmrVQWcSD852Xq3TtQaXDLk9m7ajgeOHnqe1n0LyTgT
	NkTGi8OQF72d67X5jDzM+FfI7WmGnrnO7i6GHbeCtAfBiiN67HFUO59G/kurkG7aWld8iXIsjlPtb
	qOEfpRGIYU4pUy6TryLV2x6DRLGLxwodJYFxEKyBFeyXQQKh9RRKnEL/ztT3TuryVmVsT3kPpPFiE
	7Tp12JovYUhAbrmaENYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izt0K-0007wo-00; Fri, 07 Feb 2020 02:04:24 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izt0D-0007vM-8Y
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 02:04:18 +0000
Received: by mail-qv1-xf44.google.com with SMTP id o18so291128qvf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 18:04:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=f/k2mGN9MY7NNfoOb4gMqNsjIZIFXh28kOhlDVSQmA0=;
 b=n54HafII/Lex3YLQXDbmveG7TRPxgfQUwWoNXykBlSczgnFnbEiABU6Nlwne2EnVqZ
 BLZNg9eH05yf+6HnfQFJWO3Ox35KsJoJtLmFEwLlc7LmqfuMonfkWKrE2MVp0ijf+rlC
 pgFHFzmYKEZYMyZMpnzqCt5JXY3Du2ndL/p2s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=f/k2mGN9MY7NNfoOb4gMqNsjIZIFXh28kOhlDVSQmA0=;
 b=HpFbkQrHFG1Cffc4vl4hs+j2c4XbRGdLLkE9Hab9IncUYYWjiiEyZ3HYc8EpsIm9ts
 A6FdOLsuEVAScOQLAMPNTVreGViKAUG7K8UOAHMC1FHKVPveku06md7PGsW45EdL3+kD
 SrV7vAOQtDiEO6KkXkQ/2nPZ5QHgSjy8maqhPfy6yD3BgvIMV/No/s6CATN03b+Bk8jL
 1vQZpl348yuJSqGKvWmBhvinAREmeeIH7oVy9OIttCa8CkAxnXTP3g/9uH8CUMTzZRod
 sjfLa1RDbjb6up84jgd3RWJ232tzeDOxL86fyDncWXSlrKZt4Bglm/xT6DEr1/VvLLPb
 U9Sw==
X-Gm-Message-State: APjAAAXWhVfawANTC+cZ4N8Mqr5Yetkj+UIg8rk5IuK60saTGuJEKqxJ
 y9pQ26v9INcsmuIVwCyG7r6vVjOQnFQHUlYh846f9g==
X-Google-Smtp-Source: APXvYqy6BPTxmJROJmd8xpRbLnJsPInZlt9zqkAt5bAH9XGkXglHOonteC+kQPoH8wbuH3FDnIt6xkHqcmjd+EAPUBo=
X-Received: by 2002:ad4:5a48:: with SMTP id ej8mr4977078qvb.187.1581041055375; 
 Thu, 06 Feb 2020 18:04:15 -0800 (PST)
MIME-Version: 1.0
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-6-drinkcat@chromium.org>
 <b58a8cf9-3275-cf89-6dff-596aceeb8000@arm.com>
 <CANMq1KBcNr=1_poBHrA_SDo_h-5i3e5TMqASEVaDj5LevsRcOQ@mail.gmail.com>
 <CAPDyKFr4Vz1ihuFQNnhDLEnOs=BZ1n2wzw3CATgPcDXs9g54uA@mail.gmail.com>
In-Reply-To: <CAPDyKFr4Vz1ihuFQNnhDLEnOs=BZ1n2wzw3CATgPcDXs9g54uA@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 7 Feb 2020 10:04:04 +0800
Message-ID: <CANMq1KBCd0wNgVAxAzxBwafHoafPExz07wKFhEWQFViAc0LL1Q@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] drm/panfrost: Add support for multiple power
 domain support
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_180417_330796_CDAFFF43 
X-CRM114-Status: GOOD (  26.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Devicetree List <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, Mark Brown <broonie@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf,

On Mon, Jan 27, 2020 at 3:55 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Fri, 10 Jan 2020 at 02:53, Nicolas Boichat <drinkcat@chromium.org> wrote:
> >
> > +Ulf to keep me honest on the power domains
> >
> > On Thu, Jan 9, 2020 at 10:08 PM Steven Price <steven.price@arm.com> wrote:
> > >
> > > On 08/01/2020 05:23, Nicolas Boichat wrote:
> > > > When there is a single power domain per device, the core will
> > > > ensure the power domains are all switched on.
> > > >
> > > > However, when there are multiple ones, as in MT8183 Bifrost GPU,
> > > > we need to handle them in driver code.
> > > >
> > > >
> > > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > > > ---
> > > >
> > > > The downstream driver we use on chromeos-4.19 currently uses 2
> > > > additional devices in device tree to accomodate for this [1], but
> > > > I believe this solution is cleaner.
> > >
> > > I'm not sure what is best, but it seems odd to encode this into the Panfrost driver itself - it doesn't have any knowledge of what to do with these power domains. The naming of the domains looks suspiciously like someone thought that e.g. only half of the cores could be powered, but it doesn't look like that was implemented in the chromeos driver linked and anyway that is *meant* to be automatic in the hardware! (I.e. if you only power up one cores in one core stack then the PDC should only enable the power domain for that set of cores).
> >
> > This is actually implemented in the Chrome OS driver [1]. IMHO power
> > domains are a bit confusing [2]:
> >  i. If there's only 1 power domain in the device, then the core takes
> > care of power on the domain (based on pm_runtime)
> >  ii. If there's more than 1 power domain, then the device needs to
> > link the domains manually.
> >
> > So the Chrome OS [1] driver takes approach (i), by creating 3 devices,
> > each with 1 power domain that is switched on/off automatically using
> > pm_runtime.
> >
> > This patch takes approach (ii) with device links to handle the extra domains.
> >
> > I believe the latter is more upstream-friendly, but, as always,
> > suggestions welcome.
>
> Apologies for the late reply. A few comments below.

No worries, than for the helpful reply!

> If the device is partitioned across multiple PM domains (it may need
> several power rails), then that should be described with the "multi PM
> domain" approach in the DTS. As in (ii).
>
> Using "device links" is however optional, as it may depend on the use
> case. If all multiple PM domains needs to be powered on/off together,
> then it's certainly recommended to use device links.

That's the case here, there's no support for turning on/off the
domains individually.

> However, if the PM domains can be powered on/off independently (one
> can be on while another is off), then it's probably easier to operate
> directly with runtime PM, on the returned struct *device from
> dev_pm_domain_attach_by_id().
>
> Also note, there is dev_pm_domain_attach_by_name(), which allows us to
> specify a name for the PM domain in the DTS, rather than using an
> index. This may be more future proof to use.

Agree, probably better to have actual names than just "counting" the
number of domains like I do, especially as we have a compatible struct
anyway. I'll update the patch.

> [...]
>
> Hope this helps.
>
> Kind regards
> Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
