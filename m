Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176831F4177
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 18:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWNrKp5PObx+a6S4LMT16gXqarIgnEqs6RkQxpB4rKs=; b=BOvwwlS1Y+55f3
	PrYlqmD+yfBBs5nXqxT2TpYFH9dsPSMBlurO0rBV12gceCjxCPqZ4I8RSqTp8l9GvU2zHdpWEZDtI
	Aswvb1S1PlFhjdAXGSt+xIST8RTPn/3CHfK02ChjM7b33vxELHBQPQG8xbmxq6uqbYRhRr7c6rEky
	JTyEE9Q3jGnX+cg8hwfgEthLdEROPQ0uYh+V3oX8t6pfAOZ8+WyBE+z965tP/OcmRACg9ATgB97hM
	ThAOLPffD7km18+W36yXSCnbJ5TKqjnz256DaXuN9NJxEke+nDhPoLwWNajzN7Ye84yw7CrNQ9vE5
	BxgLuS9j5XReVSLYM11A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jihVu-00030Q-0x; Tue, 09 Jun 2020 16:54:14 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jihVk-0002zu-Mv
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 16:54:06 +0000
Received: by mail-il1-f194.google.com with SMTP id 18so20976293iln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 09:54:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KmkTV1fA8j8tDa2ByE5bz4rItMAJ7USXbj2L8eg6OQc=;
 b=RbK+emehtIgZ7J5y/PSxNskQ1RFMAis7is97JnqbGF+c8ScmMUcXHF0jc/Ats+bpej
 5lgLxB7fFfApsbFguzXVUHBcGYVQwfbLUJqLTm7ITY7wqgoPIddP0/2gbU51kf0OAksD
 4Fc2TCZmEzuCPxWoR/47IXkXExcfqplSbXy7++z4eLOERhvZKc1NlqCqzn1kD7ek1GkL
 G7yEf9cAofUV6rROOXGOoB/BUh+WUKiNrxHmekMjfHi7C71R7ReYnCdobgzov75+aBoM
 HVUYdUT6VeG/2cuN0Vpll9RSWgUcNXTEDPhonvCxKHDOWAj19BDlRV5BF3u/G4aaBhd5
 U5Vw==
X-Gm-Message-State: AOAM533QxnV0zxpQ5FrYIneAeg82W2qjExFuH9VbUXrr/ZX7ql/kAA5I
 AphzXKjwRGyLmB3MY4uKHw==
X-Google-Smtp-Source: ABdhPJyxG7y3K+cLyUuJIAZTdZr/u/4CxX3l41yFs/vx7KzsnZpaQg3XY4fT7PITdO9rXJOWTk7gAA==
X-Received: by 2002:a05:6e02:972:: with SMTP id
 q18mr25848913ilt.60.1591721643763; 
 Tue, 09 Jun 2020 09:54:03 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id t72sm2432957ilk.23.2020.06.09.09.54.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 09:54:03 -0700 (PDT)
Received: (nullmailer pid 1059999 invoked by uid 1000);
 Tue, 09 Jun 2020 16:54:01 -0000
Date: Tue, 9 Jun 2020 10:54:01 -0600
From: Rob Herring <robh@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200609165401.GB1019634@bogus>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
 <20200605065709.GD3714@dell> <20200605105026.GC5413@sirena.org.uk>
 <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
 <20200606114645.GB2055@sirena.org.uk>
 <dc052a5c77171014ecc465b1da8b7ef8@walle.cc>
 <20200608082827.GB3567@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608082827.GB3567@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_095404_746708_6FC7FCD4 
X-CRM114-Status: GOOD (  34.71  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 08, 2020 at 09:28:27AM +0100, Lee Jones wrote:
> Rob, something for you below.
> 
> On Sat, 06 Jun 2020, Michael Walle wrote:
> > Am 2020-06-06 13:46, schrieb Mark Brown:
> > > On Fri, Jun 05, 2020 at 10:07:36PM +0200, Michael Walle wrote:
> > > > Am 2020-06-05 12:50, schrieb Mark Brown:
> > > 
> > > > > I have no idea what you are thinking of when you say "simple-regmap" so
> > > > > it is difficult to comment.
> > > 
> > > > I guess, Lee is suggesting to be able to create a regmap instance via
> > > > device tree (and populate its child nodes?). Like
> > > >   compatible = "syscon", "simple-mfd";
> > > > but for any regmap, not just MMIO.
> 
> Bingo!
> 
> > > I don't understand why this would be anything separate to
> > > simple-mfd.
> > 
> > Don't just simple-mfd tells the of core, to probe the children this
> > node? Where does the regmap then come from?
> 
> Right.  I'm suggesting a means to extrapolate complex shared and
> sometimes intertwined batches of register sets to be consumed by
> multiple (sub-)devices spanning different subsystems.
> 
> Actually scrap that.  The most common case I see is a single Regmap
> covering all child-devices.  It would be great if there was a way in
> which we could make an assumption that the entire register address
> space for a 'tagged' (MFD) device is to be shared (via Regmap) between
> each of the devices described by its child-nodes.  Probably by picking
> up on the 'simple-mfd' compatible string in the first instance.
> 
> Rob, is the above something you would contemplate?

No. I'd like to just kill off syscon and simple-mfd really. Those are 
just hints meaning a specific compatible is still needed, but I see them 
all the time alone (or combined like above). 'syscon' just serves to 
create a regmap. This could be accomplished just with a list of 
compatibles to register a regmap for. That might be a longish list, but 
wanting a regmap is really a kernel implementation detail and decision.

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

The same register set at a different offset is the same (sub)device.

> 
> > Rob suggested the internal offset, which I did here.
> 
> FWIW, I don't like this idea.  DTs should not have to be modified
> (either in the first instance or subsequently) or specifically
> designed to patch inadequacies in any given OS.

My understanding is there can be differing combinations or number of 
instances of sub devices for this device. That's when having DT sub 
devices makes sense. If the h/w changes, then the DT should change.

Multiple instances of devices require an address to identify them and we 
don't make up numbering if we can avoid it. The earlier revisions just 
had made up indices for addresses.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
