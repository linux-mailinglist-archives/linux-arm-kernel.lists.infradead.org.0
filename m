Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C797F10E0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5U4LAoVpKgF0ia2fhP2FZUy9sW/cvkux99x+jWlTtA=; b=TwNLgAU5sBxVVH
	2dVNJ774fy7tab+CEVK2dtob+NG8OLvkxFnLKvM0qmwfW3xU4kMUJpEzDzMifqvTH8I8mPv6jsEwK
	pYBFH9W7ZX+RgbtDA+ZMQV8uUPdpLg2kPFVQjub6kHJ9g9ovCIOAJw/BtPD5jJSHM0HgnQg0Tg8Iq
	MvhUdTFVe20R+A8Hasbbo0+8NaaugMEOiUSNCoMTjZzi1RXQ0SW4sjZvnmpzBFgGrGZ6jgltpOwb/
	jKJpnwzAaWBN+VJS7r/bTXkB5UBnsky/jSoaFByECwyFmkqqXLZ25nhls8R2gIdFv2wTfSKGp/WEq
	wwjB0pQkEoYjp29e2/6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvsM-0005hY-UY; Wed, 01 May 2019 20:30:46 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvsG-0005gn-6K
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 20:30:41 +0000
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id BE03B240008;
 Wed,  1 May 2019 20:30:23 +0000 (UTC)
Date: Wed, 1 May 2019 22:30:23 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Trent Piepho <tpiepho@impinj.com>
Subject: Re: [PATCH] rtc: st-lpc: remove unnecessary check
Message-ID: <20190501203023.GL11339@piout.net>
References: <20190430201834.12634-1-alexandre.belloni@bootlin.com>
 <1556663479.31309.36.camel@impinj.com>
 <20190501142513.GK11339@piout.net>
 <1556730703.31309.53.camel@impinj.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556730703.31309.53.camel@impinj.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_133040_386100_EF4CD105 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "patrice.chotard@st.com" <patrice.chotard@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/05/2019 17:11:44+0000, Trent Piepho wrote:
> > I can't believe you can possibly have more than one second between the
> > check in the core and the check in the driver, it doesn't make much
> > sense to check, even in the current state of the core.
> 
> It's certainly possible to have multiple seconds pass.  For an external
> device over SPI or I2C, one has to wait for the bus to become free. 
> And on SPI that requires the kernel thread running the bus to be 
> scheduled.  Just put in some real-time tasks and maybe a big transfer
> to a flash chip and it could be a while before that happens.
> 
> I don't think this device has that issue as I don't think it's
> external.  And ever for a device on an external bus, delays > 1 second
> are unlikely.  Possible, but unlikely.
> 
> You can also get them when Linux is running under a hypervisor, i.e. a
> Linux VM.  But also something like an NMI and ACPI BIOS.  If the Linux
> guest is not scheduled to run for while anything that is supposed to be
> based on real time, like the value returned by an RTC, will still
> advance.  It is possible that multiple seconds elapse from the guest
> CPU executing one instruction to the next.
> 
> But even ignoring that, does it require > 1 second to elapse.  Can't it
> happen when the clock ticks from one second to the next, which happens
> effectively instantly?
> 
> If the time from the check to the time when the alarm is set is 1
> microsecond, and the time this call to set the alarm is made is
> randomly done and not synchronized to the RTC, then isn't there a 1 out
> of 1 million chance (1 microsecond / 1 second), that the once per
> second clock tick will hit our 1 us window?

No, let's say you want Talarm == Tcurrent + 1, if the core check happens
right before the next second, then you necessarily end up with
Talarm == Tcurrent after the check. This means that you now have one
second before the time read in st-lpc to avoid the
alarm_secs -= now_secs; underflow.

Obviously, in that case, you are likely to miss the alarm but this is as
likely to happen with the check that is in the driver. This check
doesn't provide anything but a false sense of security.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
