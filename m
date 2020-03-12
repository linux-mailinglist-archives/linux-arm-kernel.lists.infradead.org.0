Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7640B183168
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:30:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqaLOV402C+6YKUwOSdh7U0k4cu42294t8xe7zclJPI=; b=N0vxITa008sa44
	L12lijsRgMB8bPnfYXzzervd0Z7y1ht+wJ1Z5cvJ3QyQ038WginLKVVO95jqk5W1fJm5aMdiWzlae
	Ge7+HxycdsgE6IEqXeqCedpIzrb3MF9jLta0c4EDQQ4PuO9OhHkIQWwaYG5ejMuNhqYD1Pz5vQ5Ml
	oLHRNsngm+g0NR/wnKm1xtcqUGlodlI4WiekqshkaEFXRM/bIQCOPThcQeMV/u++JpQwGZxgu/2rq
	eTcI8PVL/Hke/w5FIj02SndVEIZoX3Eqel0Ku13CBDgUhfNpRFU/5KgebEz8/9Q6/bwsD4Jr1BHx+
	996CJC/dvClP5GIcbqVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNuY-0001lu-CK; Thu, 12 Mar 2020 13:30:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNuJ-0001l7-E8
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:29:53 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jCNuC-0007Km-DG; Thu, 12 Mar 2020 14:29:44 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jCNuA-0001ji-U0; Thu, 12 Mar 2020 14:29:42 +0100
Date: Thu, 12 Mar 2020 14:29:42 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Pascal Roeleven <dev@pascalroeleven.nl>
Subject: Re: pwm: sun4i: pwm-backlight not working since 5.6-rc1
Message-ID: <20200312132942.2kfspvmoc3mxkdx4@pengutronix.de>
References: <6185b5540ca082d887d7d13330c9d938@pascalroeleven.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6185b5540ca082d887d7d13330c9d938@pascalroeleven.nl>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_062951_477144_64F6D46C 
X-CRM114-Status: GOOD (  15.02  )
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

On Thu, Mar 12, 2020 at 01:22:13PM +0100, Pascal Roeleven wrote:
> Hi all,
> =

> I am working on adding an old A10 device to mainline and noticed an issue
> when testing on 5.5.8 vs master.
> =

> Since 5.6-rc1, I can't control the brightness of my LCD backlight anymore.
> The backlight stays on full brightness instead. I am controlling the
> brightness value via sysfs for testing.
> =

> I am not sure if this is a general pwm-sun4i issue or if it is related to
> the backlight. However I narrowed it down to one commit for pwm-sun4i:
> =

> fa4d81784681a26bcf7d2a43c6ac5cf991ef28f5
> =

> If I use pwm-sun4i.c from 5b090b430d750961305030232314b6acdb0102aa on
> master, the backlight works fine. Unfortunately, due to my lack of kernel
> experience, I can't see how the commit above broke it.

Hmm, I cannot see how fa4d81784681a26bcf7d2a43c6ac5cf991ef28f5 breaks
this. Looking at the output of

	git show -b fa4d81784681a26bcf7d2a43c6ac5cf991ef28f5

(i.e. ignoring whitespace changes) I don't see how the behaviour you're
reporting can be explained.

Are you sure that fa4d81784681a26bcf7d2a43c6ac5cf991ef28f5 is the bad
commit?

Can you install a tool to inspect register values and check how the
affected registers change if you switch kernel versions and/or pwm
settings?

(e.g.
	memtool md 0x1c20e00+0xc
)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
