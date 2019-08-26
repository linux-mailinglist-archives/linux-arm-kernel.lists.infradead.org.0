Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9848E9C9C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQ71d4WpbUjmkfDGcooGNvsSSMdscr+Gz1+Klw3zZGo=; b=gxqyTOnzDeeTmb
	IAfNY1qnKobmstrP5bvjDhtimeEdsqGRdPAEoX1FlDgor8lfzaiYGNxFy++ebUfxGZ7PDZoSmTb/x
	XetQyRftxDU7T1eYAhMtOFfimFn6j1qIADAmw3y7PCORO6BosiyNfhHV9AJ6W9me7Gi35eMlHfEap
	fHMPnRvVAcBk0NBV4d3Y/0WrJiC/F+icfNlMMGR/XYdS30OHoFhQMsKsoWQ8HYNWeQru+hsXeRDMJ
	4CWfJWf/UHly6XVLLvfIW7eue8WfXmTYdt241d5BQn4VLTjfLk+DcKq8zes3LU41B5U0X6Zu2SloQ
	yA3KaF4lvjy61dl3bfdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i291D-0008Bo-4X; Mon, 26 Aug 2019 07:02:23 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i290f-0008BR-I3
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:01:52 +0000
Received: by mail-ed1-x542.google.com with SMTP id a21so24985978edt.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 00:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nTkNb4qhu4LWrFg09llWi3oBh88pK95w54xsWrsdjT0=;
 b=WRcwatvAI0WEvdFUv/sT0oyCxKW9JAWDmzw43+hawcVPvkP4MC+sOxq613oe7+u4MD
 bjj8wG02Jk6cwVwZCt36tlQmALBdiNQObpjmpl0NVmcWhLPGKFfJioYsChUsQ2SvXU+Z
 +1RwYI0ZvOyR/CpVy0n1vVMkrI8RqOW2IPN3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nTkNb4qhu4LWrFg09llWi3oBh88pK95w54xsWrsdjT0=;
 b=dj7yuqQ8ZIJcIifwEFZ8agN6e9itVW7q69RMuzc3Pzb3AzCdItIyv6jXb/W22K8sDw
 yWwownHqXUu/WNmIiWE6/gbb+/aMhDCQ9fOKT7N/7fRGNJU5oBtcYwywOrl6QNWEvUot
 Jh7MdMZkEaFQBjDh2uBhI5LVBTCcfLFulsl2jV2Xb0zaPTaLyF+Sx4jyhjq8MHM6uAUq
 7OsRsxuS7OJvRvrz/3BSIqpSh43q8eYB87DkIpJepuyMU2hNtZPxCze2QtZiKF1+WwZC
 zug7votv0IdXLqYVIPZfJaMrPy2Y+cSUevQ2jwEUY6Gt8RWkxUQJRy2mRygXd0mpFoZx
 OSxA==
X-Gm-Message-State: APjAAAWAN/l6QxO+taGW5nmAY/SRjX5npCB+5F5RZwc7FgAdNlCCkB3I
 4o4BTKb1NKuRcwk8/7gpXvMakO6KMMsKpQ==
X-Google-Smtp-Source: APXvYqxIU6SC1OH88bVgXKxOtxH/cn2cUOwPFSOQyX8TLWHUMCkh8dY1G0T7BiVzsJB85iwgBQ5srw==
X-Received: by 2002:aa7:d30a:: with SMTP id p10mr16718192edq.79.1566802907693; 
 Mon, 26 Aug 2019 00:01:47 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id 59sm1114528edg.44.2019.08.26.00.01.47
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Aug 2019 00:01:47 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id k2so14191272wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 00:01:47 -0700 (PDT)
X-Received: by 2002:adf:fc03:: with SMTP id i3mr19059644wrr.48.1566802476916; 
 Sun, 25 Aug 2019 23:54:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190819034331.13098-1-dongchun.zhu@mediatek.com>
 <20190819034331.13098-3-dongchun.zhu@mediatek.com>
 <20190821103038.GA148543@chromium.org>
 <20190821110542.GD31967@paasikivi.fi.intel.com>
In-Reply-To: <20190821110542.GD31967@paasikivi.fi.intel.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 26 Aug 2019 15:54:25 +0900
X-Gmail-Original-Message-ID: <CAAFQd5A-ze9FgDqNpPgyu7gA3nQPUW_G0zEG8ThNGjVEb=_jjA@mail.gmail.com>
Message-ID: <CAAFQd5A-ze9FgDqNpPgyu7gA3nQPUW_G0zEG8ThNGjVEb=_jjA@mail.gmail.com>
Subject: Re: [V3, 2/2] media: i2c: Add Omnivision OV02A10 camera sensor driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_000149_975015_16C2C35A 
X-CRM114-Status: GOOD (  24.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, shengnan.wang@mediatek.com,
 Louis Kuo <louis.kuo@mediatek.com>, Sj Huang <sj.huang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 dongchun.zhu@mediatek.com, Matthias Brugger <matthias.bgg@gmail.com>,
 Cao Bing Bu <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 8:05 PM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Hi Tomasz,
>
> On Wed, Aug 21, 2019 at 07:30:38PM +0900, Tomasz Figa wrote:
[snip]
> > Is it really correct to enable the clock before the regulators?
> >
> > According to the datasheet, it should be:
> >  - PD pin HIGH,
> >  - nRST pin LOW,
> >  - DVDDIO and AVDD28 power up and stabilize,
> >  - clock enabled,
> >  - min 5 ms delay,
> >  - PD pin LOW,
> >  - min 4 ms delay,
> >  - nRST pin HIGH,
> >  - min 5 ms delay,
> >  - I2C interface ready.
> >
> > > +
> > > +   /* Note: set 0 is high, set 1 is low */
> >
> > Why is that? If there is some inverter on the way that should be handled
> > outside of this driver. (GPIO DT bindings have flags for this purpose.
> >
> > If the pins are nRESET and nPOWERDOWN in the hardware datasheet, we should
> > call them like this in the driver too (+/- the lowercase and underscore
> > convention).
> >
> > According to the datasheet, the reset pin is called RST and inverted, so we should
> > call it n_rst, but the powerdown signal, called PD, is not inverted, so pd
> > would be the right name.
>
> For what it's worth sensors generally have xshutdown (or reset) pin that is
> active high. Looking at the code, it is not the case here. It's a bit odd
> since the usual arrangement saves power when the camera is not in use; it's
> not a lot but still. Oh well.
>

I guess we could drive powerdown low after disabling the regulators
and clocks, but that wouldn't work for the cases where the regulators
are actually shared with something else, especially if that is not
related to the same camera module.

> ...
>
> > > +static struct i2c_driver ov02a10_i2c_driver = {
> > > +   .driver = {
> > > +           .name = "ov02a10",
> > > +           .pm = &ov02a10_pm_ops,
> > > +           .of_match_table = ov02a10_of_match,
> >
> > Please use of_match_ptr() wrapper.
>
> Not really needed; the driver does expect regulators, GPIOs etc., but by
> leaving out of_match_ptr(), the driver will also probe on ACPI based
> systems.

Good point, I always keep forgetting about the ability to probe OF
drivers from ACPI. Then we also need to remove the #if
IS_ENABLED(CONFIG_OF) from ov02a10_of_match.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
