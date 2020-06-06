Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4567D1F068F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 14:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kDe0PWkAiphjSvhhtMt6m0PNzdxdInifGQu9zq8ys6s=; b=e0dpxgyrMLfrild+itGhFT1m+
	FGNTMf5x0W6NaA9eQ+19suHJuAOPToY1y2MvdRRvE3z3k31bBZqqc+TNhhgToL8u6YUNC02qug2uV
	uE74T+AG0Rqsb+CkF2A4TAJcVhWGEVWRPvgCUFUfOX7CdQNPkqwemTh+45iGtcWAarYNULygjCrc4
	PeNcZaw1kQWnGS1cz4B8q2HCtYj7wJGXuqyYec6zuCz3pMLEsnno2v1NR9cDFDK28k9LQru1/rVrs
	zBrm3fIQvxYfmAD0tYg9Ee+EA2HI78uM352fAbGEoniuYvPJgyBIID26Gvdgzxn/VqUbxVWQaXnqo
	DtHymJg0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhYDA-0005Yg-21; Sat, 06 Jun 2020 12:46:08 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhYD1-0005XC-Sz
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 12:46:02 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 999A322EE3;
 Sat,  6 Jun 2020 14:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591447546;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gM7IewjQCAkSDvRzyGMjXyQ6q6nkyRovpb2OhFZgErU=;
 b=KuYGZZ03XJdDL/35fA1elmt+MIj+rU+0eKSys+0i1Gm2egVv5RXaD3aFB3MbhRgnovcamY
 4aT7AEghDPLkUWLir3HVwjqlo7DG4MYmumZOnXR3FIRnd/DzSgbqimwkYeeY+6keWPjTC2
 uwzuGiRic8TGrOkkEq19V8gU90hnB3Y=
MIME-Version: 1.0
Date: Sat, 06 Jun 2020 14:45:38 +0200
From: Michael Walle <michael@walle.cc>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
In-Reply-To: <20200606114645.GB2055@sirena.org.uk>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc> <20200605065709.GD3714@dell>
 <20200605105026.GC5413@sirena.org.uk>
 <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
 <20200606114645.GB2055@sirena.org.uk>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <dc052a5c77171014ecc465b1da8b7ef8@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_054600_090395_E8BBC834 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-06-06 13:46, schrieb Mark Brown:
> On Fri, Jun 05, 2020 at 10:07:36PM +0200, Michael Walle wrote:
>> Am 2020-06-05 12:50, schrieb Mark Brown:
> 
>> > I have no idea what you are thinking of when you say "simple-regmap" so
>> > it is difficult to comment.
> 
>> I guess, Lee is suggesting to be able to create a regmap instance via
>> device tree (and populate its child nodes?). Like
>>   compatible = "syscon", "simple-mfd";
>> but for any regmap, not just MMIO.
> 
> I don't understand why this would be anything separate to
> simple-mfd.

Don't just simple-mfd tells the of core, to probe the children this
node? Where does the regmap then come from?

> 
>> But, there is more in my driver:
>>  (1) there is a version check
>>  (2) there is another function for which there is no suitable linux
>>      subsystem I'm aware of and thus which I'd like to us sysfs
>>      attributes for: This controller supports 16 non-volatile
>>      configuration bits. (this is still TBD)
> 
> TBH I'd also say that the enumeration of the subdevices for this
> device should be in the device rather than the DT, they don't
> seem to be things that exist outside of this one device.

We're going circles here, formerly they were enumerated in the MFD.
Yes, they are devices which aren't likely be used outside a
"sl28cpld", but there might there might be other versions of the
sl28cpld with other components on different base addresses. I
don't care if they are enumerated in DT or MFD, actually, I'd
prefer the latter. _But_ I would like to have the device tree
properties for its subdevices, e.g. the ones for the watchdog or
whatever components there might be in the future. MFD core can
match a device tree node today; but only one per unique compatible
string. So what should I use to differentiate the different
subdevices? Rob suggested the internal offset, which I did here.
But then, there is less use in duplicating the offsets in the MFD
just to have the MFD enumerate the subdevices and then match
the device tree nodes against it. I can just use
of_platform_populate() to enumerate the children and I won't
have to duplicate the base addresses.

So here we are, any ideas appreciated.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
