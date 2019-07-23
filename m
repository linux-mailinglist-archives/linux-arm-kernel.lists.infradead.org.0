Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458F671FE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 21:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KUfL2vNdOb+QfXyEFtiTur/yT0geXzMv2oO9xchyRI=; b=YdGmYef994XSg/
	/MrI+nzgGSHA+VwfbpXFWNqnw3YV64VoSn7J0Vzcbp9pIArlKdv7ETRfI6+1xjkbTW8eyVfyXhdUl
	qA5qFWrDpp9TxuHNur6Yn06aNAtQ2dAuHmg04UU2vnaGHYu5Acf4ZzAUShAeTMEJTDYSlxC4Vs0hu
	f0RZiPvNdHTiwVmxOrlqW4kLxNoyEjxD+NOD97hmPlqFA/H7yRc42s9AJHPAuKbz6qkglfwbxU0ue
	HjcTTTUC2M95UDkDhGkyl1PfqCEOHYZEmasn3ojt3+sylUspKLXeWyO5ZpOYIw+Gcfh28kSFQd7ft
	mgrlqE7w1Tnsqg/vYsgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq07g-0000bD-RX; Tue, 23 Jul 2019 19:06:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq07T-0000aB-Rg
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 19:06:41 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hq07S-0000iK-6H; Tue, 23 Jul 2019 21:06:38 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hq07R-0004b3-0N; Tue, 23 Jul 2019 21:06:37 +0200
Date: Tue, 23 Jul 2019 21:06:36 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Oliver Hartkopp <socketcan@hartkopp.net>
Subject: Re: TS-219 RTC issue with Debian Buster
Message-ID: <20190723190636.tuzob2w2fznmtsmb@pengutronix.de>
References: <99a8e2cc-61a2-3b43-0d72-6f001cffe572@hartkopp.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99a8e2cc-61a2-3b43-0d72-6f001cffe572@hartkopp.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_120639_896015_6FA4F6AE 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, tbm@cyrius.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Oliver,

I added the RTC maintainers and list to Cc.

On Tue, Jul 23, 2019 at 05:30:48PM +0200, Oliver Hartkopp wrote:
> I upgraded my TS-219 to Debian Buster with Kernel 4.19.0-5-marvell.
> =

> They use dtbs/4.19.0-5-marvell/./kirkwood-ts219-6282.dtb
> =

> Unfortunately the RTC doesn't seem to work.
> =

> root@xxxxx:~# hwclock -v --test
> hwclock from util-linux 2.33.1
> System Time: 1563296223.425648
> Trying to open: /dev/rtc0
> Using the rtc interface to the clock.
> Last drift adjustment done at 1563291472 seconds after 1969
> Last calibration done at 1563291472 seconds after 1969
> Hardware clock is on UTC time
> Assuming hardware clock is kept in UTC time.
> Waiting for clock tick...
> hwclock: select() to /dev/rtc0 to wait for clock tick timed out
> ...synchronization failed
> Test mode: nothing was changed.
> With strace the clock tick problem looks like this:
> =

> write(1, "Waiting for clock tick...\n", 26Waiting for clock tick...
> ) =3D 26
> ioctl(4, RTC_UIE_ON)                    =3D 0
> _newselect(5, [4], NULL, NULL, {tv_sec=3D10, tv_usec=3D0}) =3D 0 (Timeout)
> write(2, "hwclock: ", 9hwclock: )                =3D 9
> write(2, "select() to /dev/rtc0 to wait fo"..., 54select() to /dev/rtc0 to
> wait for clock tick timed out) =3D 54
> write(2, "\n", 1)                       =3D 1
> ioctl(4, PHN_NOT_OH or RTC_UIE_OFF)     =3D 0

Maybe rtc-mv should set uie_unsupported if no irq is aquired? =


> It looks the same with
> =

> # hwclock --hctosys
> hwclock: select() to /dev/rtc0 to wait for clock tick timed out

hwclock (from util-linux) is being stupid here. The tradtional RTC on
the x86 platform has a resolution of 1s only and if you set it the next
increment is 1 second after the last increment instead of 1 second after
the new time was set. So hwclock waits for an update event and then sets
the new time (in some cases to a tad later than requested) to ensure the
PC clock is off by less than half a second. For most (if not all) other
RTCs this is wrong and still worse if the RTC in question doesn't
support UIE.

> I wonder whether the problem comes from a missing interrupt assignment
> =

> rtc: rtc@10300 {
>              compatible =3D "marvell,kirkwood-rtc", "marvell,orion-rtc";
>              reg =3D <0x10300 0x20>;
>              interrupts =3D <53>;            <- HERE!?!
>              clocks =3D <&gate_clk 7>;
>                };
> =

> ... I found in linux/arch/arm/boot/dts/kirkwood-6282.dtsi ?!?
> =

> In /proc/interrupts there's no rtc assigned to an interrupt 53.

What is the output of dmesg | grep 10300 ?
 =

> Accessing the rtc values (time/date) via /sys/class/rtc/rtc0 entries works
> well and setting the date/time via "hwclock --systohc" does its job too. =
So
> I2C and the rtc_s35390a driver seem to work so far.

You're not using the s35390a driver, do you?
 =

> Any ideas why hwclock fails to work properly?

Try if =


	busybox hwclock =


works better for you. At least this one doesn't have this strange PC
quirk.
 =

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
