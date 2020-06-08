Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBBE1F1635
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 12:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90H1XzBpfUwU3TLtr/TaGjE8xH1AnEd6OJTSzvzF9GA=; b=QoTP/A0yiAykTo
	E0EclLu3ofKclQIO1of67OsjIfgGuK427PxvOYCmpQL/2IKJtEi77HpEB8uTiFC+1YRXuF4GB7Hal
	5phbmhhp3sL0o+gC1Cug6UgZUgjKOddyvZ5sQw/oDvGT1R3HrWwcgeZNKI/RDC2dxx4n+bz6iEBAg
	X1CUMActPaiDrASzxV1Yd47rBErxSgZz49ZRKysglgpOcNo4N6qFOw6JkUrE2IU6ev1O9cyKzEg2v
	MSrZNqQcVbJfGVIRes2i8vyXGSQ0TXs5Q4za3U5ePCvyo3zKgKRVIFsy/cQ37U/zkMTFmmRk+vM4C
	hspEWamLWwgFwA1k+b1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiEc9-0007Tq-Nr; Mon, 08 Jun 2020 10:02:45 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiEby-0007TI-0C
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 10:02:35 +0000
Received: by mail-pg1-x541.google.com with SMTP id d10so8537758pgn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 03:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2zoo0ERaliX/JjKEGnYqTQZHfKutQDjXGBUR6MxE50E=;
 b=up0PRyxOK9NsFIv2bsBl0byvSjs9TKlq7122/ilkRkEttg+3QL6Te0gWz3TYNBv0vi
 IE21MrMkSmBoOM0mY4Ym6dD4h0fHd8PJqbmjpqRLAoD8EgiLZJlztmdayzlMxvl64uad
 DTmDDiOoifJ+qZNcLaLd2QSV/HmYZnGjko8DYlFAtHLeNrU6eLEN23fhJDEXcZO9k6su
 5btG1FU90NfVPGLZPU9H4xy++nNO22Mb48r9L7eryuGK6DS+fMUjxg5jPDGiU2+oNHCp
 xKXJVPkjQbjd51oijoYnbZKVI1lUIdfoc2nsSSfQ/4wyGgwYugHqOswiCBWgOn9shtpA
 CEbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2zoo0ERaliX/JjKEGnYqTQZHfKutQDjXGBUR6MxE50E=;
 b=tZYQA9a1OToyxGsFlO/qrKoackUj5r83AFUkfKcrT5dKgTvDsj8pdrARPrm3KtjvvA
 bTcONKjoan9RQl16XoOBqoKUwNYh8HcgXeiHUYTRU84GxUnBAZQPJO8FcKvzgB0CpI2Z
 Hq6O4JNTvuhkar5nN0IDWcDCL3S5Uy8K4JcF1fZumT7hdyPnYc/yKhET3+xRtFsmBFl4
 4o1s1Bm2tQO0mvGTpm9gMoE8eh8me1ggflb5aApmsh/1AaR3qIFG4KcMN/SDAGBdZPWS
 LBUD0QLPJL9YKbvqpc0DxrV4mzolWnsFDhdN44cpcHOimVyxBkZa2qwyxQ0x8nxmUONM
 oz2w==
X-Gm-Message-State: AOAM531u/dONNxmzbOAwqF4237qRS66V6pLWg8lHqKgta59lQBILhne+
 y1FQcoyhLYoo7wl3woGk6LJ+XHipZp5fwiHU5dU=
X-Google-Smtp-Source: ABdhPJx86tPKDhVhcYy12URCDzcRNhNuX2MCH50rKMBNeLvTYoOCyhjdRnZsCXkMUtFO7r9gOz6BiOXhGjPZOdlfhLw=
X-Received: by 2002:a63:ff52:: with SMTP id s18mr20149238pgk.203.1591610553061; 
 Mon, 08 Jun 2020 03:02:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
 <20200605065709.GD3714@dell> <20200605105026.GC5413@sirena.org.uk>
 <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
 <20200606114645.GB2055@sirena.org.uk>
 <dc052a5c77171014ecc465b1da8b7ef8@walle.cc> <20200608082827.GB3567@dell>
In-Reply-To: <20200608082827.GB3567@dell>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 8 Jun 2020 13:02:21 +0300
Message-ID: <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
To: Lee Jones <lee.jones@linaro.org>, 
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>, david.m.ertman@intel.com,
 shiraz.saleem@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_030234_042748_CDF9B44F 
X-CRM114-Status: GOOD (  31.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Cc: some Intel people WRT our internal discussion about similar
problem and solutions.

On Mon, Jun 8, 2020 at 11:30 AM Lee Jones <lee.jones@linaro.org> wrote:
> On Sat, 06 Jun 2020, Michael Walle wrote:
> > Am 2020-06-06 13:46, schrieb Mark Brown:
> > > On Fri, Jun 05, 2020 at 10:07:36PM +0200, Michael Walle wrote:
> > > > Am 2020-06-05 12:50, schrieb Mark Brown:

...

> Right.  I'm suggesting a means to extrapolate complex shared and
> sometimes intertwined batches of register sets to be consumed by
> multiple (sub-)devices spanning different subsystems.
>
> Actually scrap that.  The most common case I see is a single Regmap
> covering all child-devices.

Yes, because often we need a synchronization across the entire address
space of the (parent) device in question.

>  It would be great if there was a way in
> which we could make an assumption that the entire register address
> space for a 'tagged' (MFD) device is to be shared (via Regmap) between
> each of the devices described by its child-nodes.  Probably by picking
> up on the 'simple-mfd' compatible string in the first instance.
>
> Rob, is the above something you would contemplate?
>
> Michael, do your register addresses overlap i.e. are they intermingled
> with one another?  Do multiple child devices need access to the same
> registers i.e. are they shared?
>
> > > > But, there is more in my driver:
> > > >  (1) there is a version check
>
> If we can rid the Regmap dependency, then creating an entire driver to
> conduct a version check is unjustifiable.  This could become an inline
> function which is called by each of the sub-devices instead, for
> example.
>
> > > >  (2) there is another function for which there is no suitable linux
> > > >      subsystem I'm aware of and thus which I'd like to us sysfs
> > > >      attributes for: This controller supports 16 non-volatile
> > > >      configuration bits. (this is still TBD)
>
> There is a place for everything in Linux.
>
> What do these bits configure?
>
> > > TBH I'd also say that the enumeration of the subdevices for this
> > > device should be in the device rather than the DT, they don't
> > > seem to be things that exist outside of this one device.
> >
> > We're going circles here, formerly they were enumerated in the MFD.
> > Yes, they are devices which aren't likely be used outside a
> > "sl28cpld", but there might there might be other versions of the
> > sl28cpld with other components on different base addresses. I
> > don't care if they are enumerated in DT or MFD, actually, I'd
> > prefer the latter. _But_ I would like to have the device tree
> > properties for its subdevices, e.g. the ones for the watchdog or
> > whatever components there might be in the future.
>
> [...]
>
> > MFD core can
> > match a device tree node today; but only one per unique compatible
> > string. So what should I use to differentiate the different
> > subdevices?
>
> Right.  I have been aware of this issue.  The only suitable solution
> to this would be to match on 'reg'.
>
> FYI: I plan to fix this.
>
> If your register map needs to change, then I suggest that this is
> either a new device or at least a different version of the device and
> would also have to be represented as different (sub-)mfd_cell.
>
> > Rob suggested the internal offset, which I did here.
>
> FWIW, I don't like this idea.  DTs should not have to be modified
> (either in the first instance or subsequently) or specifically
> designed to patch inadequacies in any given OS.
>
> > But then, there is less use in duplicating the offsets in the MFD
> > just to have the MFD enumerate the subdevices and then match
> > the device tree nodes against it. I can just use
> > of_platform_populate() to enumerate the children and I won't
> > have to duplicate the base addresses.
>
> Which is fine.  However this causes a different issue for you.  By
> stripping out the MFD code you render the MFD portion seemingly
> superfluous.  Another issue driver authors commonly contend with.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
