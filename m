Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303A41DD088
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58sqS11r+oSvrgsDw3l+9eLvR/idImFXl6Rd11nUlBg=; b=MQ88skqJRBp3jg
	aIU8VRyUdctezNceMzfX2hQUbsnMWpjitYnwXfi27aT8CegoxsJkd2X38Ko0j/c4i6D3s+hJ+5ukN
	FitlWopL3ZmL/JJq+jbeLc3oK7Xpxb3vV/wQihCTobJwCc9aZPkV/H0/meGyZxkPB4ompWynLsI8g
	rpyHoZywWB5BsGcahjlJ7CDshiWP4h23jhkwb6xitcaMy6tSrHrLhNXgQ758N0rjsh9XVoTo3DCFJ
	w+e2JsTx6z4GXE1p+QLcgip5Q8J2BM7Zo5P5yxinNa4aQU/UWNWjob1hMLp/iDG9aGydF8Naj6KgC
	aezvccthlXQEm4gjPIOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbma7-0000O7-83; Thu, 21 May 2020 14:53:59 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmZx-0000Nh-QD
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:53:51 +0000
IronPort-SDR: 6QZB6LGzdlwrREhQmgByPxVdR1zWlWvkHWW/CZkMCFZpMgvqW4on1X+xYaTx4JmWpVrFxE5CzE
 t2H5SJ7YP8GQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 07:53:49 -0700
IronPort-SDR: CB261a1GJ8FH2/VHlwwKegEMCLgFPSudpuK9cAivmEf2gXDxZY8ZSeaP1UTGCBvzUk02CvmFs8
 cpKaQJw4V22A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,418,1583222400"; d="scan'208";a="412417898"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga004.jf.intel.com with ESMTP; 21 May 2020 07:53:44 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jbmZv-0083Dh-LU; Thu, 21 May 2020 17:53:47 +0300
Date: Thu, 21 May 2020 17:53:47 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v12 2/3] i2c: npcm7xx: Add Nuvoton NPCM I2C controller
 driver
Message-ID: <20200521145347.GO1634618@smile.fi.intel.com>
References: <20200521110910.45518-1-tali.perry1@gmail.com>
 <20200521110910.45518-3-tali.perry1@gmail.com>
 <20200521142340.GM1634618@smile.fi.intel.com>
 <20200521143100.GA16812@ninjato>
 <CAHb3i=vcVLWHjdiJoNZQrwJCqzszpOL7e9SAjqObsZCRH4ifwg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHb3i=vcVLWHjdiJoNZQrwJCqzszpOL7e9SAjqObsZCRH4ifwg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_075349_932387_1A061F35 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>, Tomer Maimon <tmaimon77@gmail.com>,
 Wolfram Sang <wsa@the-dreams.de>, avifishman70@gmail.com,
 Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Brendan Higgins <brendanhiggins@google.com>, Ofer Yehielli <ofery@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kfting@nuvoton.com,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 Nancy Yuen <yuenn@google.com>, linux-arm-kernel@lists.infradead.org,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 05:45:03PM +0300, Tali Perry wrote:
> On Thu, May 21, 2020 at 5:31 PM Wolfram Sang <wsa@the-dreams.de> wrote:
> > On Thu, May 21, 2020 at 05:23:40PM +0300, Andy Shevchenko wrote:
> > > On Thu, May 21, 2020 at 02:09:09PM +0300, Tali Perry wrote:
> > > > Add Nuvoton NPCM BMC I2C controller driver.
> > >
> > > Thanks. My comments below.
> > > After addressing them, FWIW,
> > > Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> >
> > Thanks, Andy, for all the review!
> >
> =

> Highly appreciate your time and patience for a newbie :)
> =

> > From a glimpse, this looks good to go. I will have a close look later
> > today.
> >
> > > > +#ifdef CONFIG_DEBUG_FS
> > >
> > > Again, why is this here?
> > >
> > > Have you checked debugfs.h for !CONFIG_DEBUG_FS case?
> =

> I compiled both options. I removed the ifdef in most places, except in the
> struct itself. Users that don't use the debugfs don't need this in the st=
ruct.
> =

> >
> > I wondered also about DEBUG_FS entries. I can see their value when
> > developing the driver. But since this is done now, do they really help a
> > user to debug a difficult case? I am not sure, and then I wonder if we
> > should have that code in upstream. I am open for discussion, though.
> =

> The user wanted to have health monitor implemented on top of the driver.
> The user has 16 channels connected the multiple devices. All are operated
> using various daemons in the system. Sometimes the slave devices are powe=
r down.
> Therefor the user wanted to track the health status of the devices.

Ah, then there are these options I have in mind (Wolfram, FYI as well!):
1) push with debugfs as a temporary solution and convert to devlink health =
protocol [1];
2) drop it and develop devlink_health solution;
3) push debugfs and wait if I=B2C will gain devlink health support

[1]: https://www.kernel.org/doc/html/latest/networking/devlink/devlink-heal=
th.html

-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
