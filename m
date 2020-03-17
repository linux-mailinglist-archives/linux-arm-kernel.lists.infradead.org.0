Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECE8188C2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 18:32:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cwfqb9vam3b2cNqGrji8JJ6/Q6SNd8yGS2eclLY+W+I=; b=sFtoK1thN4NFFg
	rKlv0vSQOtdASLdv6caCfgKtsbuaTocBSL5iMF+QDVRmwS7Vi2r/Rz8ibBRRu+hvBPKTEBgVY06bX
	Py3VOwVP1njDneH5LLLe5OK4ujHRpua0n9VUaFdDy9TFyC3/Y66wkmzKHzE2ap1SnDVSDe+m/NV2v
	/rxnGH71rzs31FFUVh8b5s8dADDu/H1XFRItTSqfxWgpv/1bBTP4b8sihuEDckqkvcF5ccFh3ymB3
	QfjvVXVPER3vt/03ERa/eXl12IwhUZ37vtAlyFZSveQx87XpXI+Su4F6BEBgnStkCWP10CA2StKQO
	mVkDHJcQCodtI7A7M8kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEG4p-0002FO-L8; Tue, 17 Mar 2020 17:32:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEG4f-0002Eh-Fm
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 17:32:19 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jEG4Y-0008Oe-4d; Tue, 17 Mar 2020 18:32:10 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jEG4W-0005Tl-OS; Tue, 17 Mar 2020 18:32:08 +0100
Date: Tue, 17 Mar 2020 18:32:08 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Pascal Roeleven <dev@pascalroeleven.nl>
Subject: Re: pwm: sun4i: pwm-backlight not working since 5.6-rc1
Message-ID: <20200317173208.t5s63pfz3byxsgzi@pengutronix.de>
References: <6185b5540ca082d887d7d13330c9d938@pascalroeleven.nl>
 <20200312132942.2kfspvmoc3mxkdx4@pengutronix.de>
 <6e995c4c22c4e6c93acb1f491e5aa109@pascalroeleven.nl>
 <20200316072613.37lnjfloac4npudf@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316072613.37lnjfloac4npudf@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_103217_526084_55B4AB57 
X-CRM114-Status: GOOD (  25.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Pascal,

On Mon, Mar 16, 2020 at 08:26:13AM +0100, Uwe Kleine-K=F6nig wrote:
> On Thu, Mar 12, 2020 at 04:06:07PM +0100, Pascal Roeleven wrote:
> > On 2020-03-12 14:29, Uwe Kleine-K=F6nig wrote:
> > > On Thu, Mar 12, 2020 at 01:22:13PM +0100, Pascal Roeleven wrote:
> > > > Hi all,
> > > > =

> > > > I am working on adding an old A10 device to mainline and noticed an
> > > > issue
> > > > when testing on 5.5.8 vs master.
> > > > =

> > > > Since 5.6-rc1, I can't control the brightness of my LCD backlight
> > > > anymore.
> > > > The backlight stays on full brightness instead. I am controlling the
> > > > brightness value via sysfs for testing.
> > > > =

> > > > I am not sure if this is a general pwm-sun4i issue or if it is
> > > > related to
> > > > the backlight. However I narrowed it down to one commit for pwm-sun=
4i:
> > > > =

> > > > fa4d81784681a26bcf7d2a43c6ac5cf991ef28f5
> > > > =

> > > > If I use pwm-sun4i.c from 5b090b430d750961305030232314b6acdb0102aa =
on
> > > > master, the backlight works fine. Unfortunately, due to my lack of
> > > > kernel
> > > > experience, I can't see how the commit above broke it.
> > > =

> > > Hmm, I cannot see how fa4d81784681a26bcf7d2a43c6ac5cf991ef28f5 breaks
> > > this. Looking at the output of
> > > =

> > > 	git show -b fa4d81784681a26bcf7d2a43c6ac5cf991ef28f5
> > > =

> > > (i.e. ignoring whitespace changes) I don't see how the behaviour you'=
re
> > > reporting can be explained.
> > > =

> > > Are you sure that fa4d81784681a26bcf7d2a43c6ac5cf991ef28f5 is the bad
> > > commit?
> > > =

> > > Can you install a tool to inspect register values and check how the
> > > affected registers change if you switch kernel versions and/or pwm
> > > settings?
> > > =

> > > (e.g.
> > > 	memtool md 0x1c20e00+0xc
> > > )
> > > =

> > > Best regards
> > > Uwe
> > =

> > Thanks for your response.
> > =

> > Yes I am sure that is the commit. If I am on master, and replace pwm-su=
n4i.c
> > with the one from 5b090b43, everything works. If I then apply fa4d8178,=
 it
> > stops working.
> > =

> > And strangely the output of the registers is exactly the same before and
> > after fa4d8178:
> > =

> > 01c20e00: 00000050 00130014 00000000 (full brightness)
> > 01c20e00: 00000050 00130006 00000000 (min brightness)
> > =

> > Even when I'm on 5b090b43 and cherry-pick fa4d8178 can I reproduce the
> > issue.
> =

> Very strange. I'm out of sensible ideas. The remaining ones are:
> =

> - enable tracing in the kernel and boot with
> =

> 	trace_event=3Dpwm
> =

>   And then check after the problem occurred in
>   /sys/kernel/debug/tracing/trace if something sticks out.
> =

> - Try modifying the registers using memtool. E.g.
> =

> 	memtool mw 0x01c20e04 0x00130012
> =

> - Do you have equipment to check the actual output of the PWM hardware?
>   If so, what do you see?

I assume the sun4i-series you sent earlier today resolves the problems
you reported here?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
