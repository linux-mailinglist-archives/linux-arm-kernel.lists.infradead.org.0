Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9740A1D1945
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvHMjeIEUBoB2Hsr5xKmi04k+oq1DEv2pewjrxkNdb0=; b=mwY5yXdZzIM3cZ
	oGCT03vaoIZCBDBnaBXMAKG68rL+Y2j90GFPPLW/UqsorTBbMwHm8ja0f8CxstQGcZhihJgp8fRKE
	TIDTpXwGZfNlDPaRiQzK0dXSiiS38KaEXF6PjI1/qZ9TAQpoyGtRw4KaM3+Yl57R9bwISRFJ/bYT0
	M3rF5ACb9r8UNfTLF33aHnD0gjxIdrX+e79hJXysi25GkP5MJIQjNA7qe7d8XMzF8syAvddPX2cdT
	qtGHD5tZvK3YrnKZcxyRCfZFSEv8hihfiUrTAtzOA6VE1eJ6+SS6kyWwPciZ2nyQfe6fquuy+wkTa
	p2F9svM1ZJnXILR79SRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtFD-0001kV-1w; Wed, 13 May 2020 15:24:27 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtF1-0001jn-W8
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:24:17 +0000
IronPort-SDR: qgasKBz1jKesJZkglr7s+4b7dNP2keAkG7ahCobN4Wx5DA6L3tdipt6bAhfH3ozgV3w6aBq/Zx
 RXNQdXiR/2EA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 08:24:14 -0700
IronPort-SDR: LEYmL0D8h4/MJPzQww7+nG6ZMTyIUMdrpW620uivs8d1RMOvGn0hsKExHGUYjZoUgEhe4Gmdup
 YKNkAXzriOTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,388,1583222400"; d="scan'208";a="251288456"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga007.jf.intel.com with ESMTP; 13 May 2020 08:24:10 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jYtEz-006Rr3-Pi; Wed, 13 May 2020 18:24:13 +0300
Date: Wed, 13 May 2020 18:24:13 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v10 2/3] i2c: npcm7xx: Add Nuvoton NPCM I2C controller
 driver
Message-ID: <20200513152413.GQ185537@smile.fi.intel.com>
References: <20200510102330.66715-1-tali.perry1@gmail.com>
 <20200510102330.66715-3-tali.perry1@gmail.com>
 <20200511091759.GE185537@smile.fi.intel.com>
 <CAHb3i=tERsM+gwmQN1+vjnML9o5NxRK=uBokEUsd-Ljyje4s3A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHb3i=tERsM+gwmQN1+vjnML9o5NxRK=uBokEUsd-Ljyje4s3A@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_082416_048671_52B089E0 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
 Nancy Yuen <yuenn@google.com>, avifishman70@gmail.com,
 Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, Wolfram Sang <wsa@the-dreams.de>,
 Brendan Higgins <brendanhiggins@google.com>, ofery@google.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kfting@nuvoton.com,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 02:28:50PM +0300, Tali Perry wrote:
> On Mon, May 11, 2020 at 12:18 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> > On Sun, May 10, 2020 at 01:23:29PM +0300, Tali Perry wrote:

...

> > > +#if IS_ENABLED(CONFIG_DEBUG_FS)
> >
> > Why?
> 
> We wanted to add an optional feature to track i2c slave status.
> the NPCM has 16 channels handling multiple devices each. Some of the devices
> are polled periodically, and might power down.
> The user wanted to implement a health monitoring option
> to occasionally check the status of the buses (how many timeouts, recovery etc.)
> This feature is optional and depends on CONFIG_DEBUG_FS The counters are exposed
> to user through the file system.

What I meant is why do you need an #ifdef?


...

> > > +#define I2C_NUM_OF_ADDR 10
> >
> > Is it 10-bit address support or what?
> >
> 
> No, the NPCM has an option to respond to multiple slave addresses
> (10 own slave addresses)

Perhaps more descriptive name then?

...

> > > +     // Repeat the following sequence until SDA is released
> > > +     do {
> > > +             // Issue a single SCL toggle
> > > +             iowrite8(NPCM_I2CCST_TGSCL, bus->reg + NPCM_I2CCST);
> > > +             udelay(20);
> > > +             // If SDA line is inactive (high), stop
> > > +             if (npcm_i2c_get_SDA(_adap)) {
> > > +                     done = true;
> > > +                     status = 0;
> > > +             }
> > > +     } while (!done && iter--);
> >
> > readx_poll_timeout() ?
> 
> Not exactly, readx_poll_timeout includes only a read operation, here there is a
> write in the middle. (iowrite8)

Ah, indeed. Perhaps time to add writex_poll_timeout() ?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
