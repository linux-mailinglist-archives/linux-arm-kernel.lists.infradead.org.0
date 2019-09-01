Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9C5A4882
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 11:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ge5aWKBYLPnIKxBNTNK/8OO1c2eAclNmraRE6JWkY1o=; b=euY8guyPcMGGk1
	LoycNK/8rvMRA2ExuksthbOKmbojEYqLTCAp4I4HiYzgNxJBlozN3Jz/ZNyZlRkxLYhNapw+vUzYr
	k4o81ZE0uMBPzjjYfYSUzvKiRGG9qlZ21mXDw9Ru7Ng3OlG0TlDChQW/MMayRzZCIsPgOLExcePhA
	+hn+pq54mCVHoWI26YD0l7G1rMeDLwPz2+m+FkuocQ2tVR9xnjUKsGs+ONWq7umC7L6SXP9T0ls8t
	k+knTPjWA9ZXWTyO2q2BAXGeg+o6EMYwqGehr2k164uxEsxEIPzbgpM/ELJIDejoVo0t5FYBRaIKX
	vX+bSaACcuoP0Hs0uBbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4LlN-00061B-9G; Sun, 01 Sep 2019 09:03:09 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Lkz-00060a-6P
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 09:02:48 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 84556C0005;
 Sun,  1 Sep 2019 09:02:28 +0000 (UTC)
Date: Sun, 1 Sep 2019 11:02:28 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Alejandro =?iso-8859-1?Q?Gonz=E1lez?= <alejandro.gonzalez.correo@gmail.com>
Subject: Re: [RESEND PATCH 1/1] rtc: sun6i: Allow using as wakeup source from
 suspend
Message-ID: <20190901090228.GW21922@piout.net>
References: <20190821210056.11995-1-alejandro.gonzalez.correo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821210056.11995-1-alejandro.gonzalez.correo@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_020245_929673_96948C62 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it, maxime.ripard@bootlin.com,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/08/2019 23:00:56+0200, Alejandro Gonz=E1lez wrote:
> This patch allows userspace to set up wakeup alarms on any RTC handled by=
 the
> sun6i driver, and adds the necessary PM operations to allow resuming from
> suspend when the configured wakeup alarm fires a IRQ. Of course, that the
> device actually resumes depends on the suspend state and how a particular
> hardware reacts to it, but that is out of scope for this patch.
> =

> I've tested these changes on a Pine H64 model B, which contains a
> Allwinner H6 SoC, with the help of CONFIG_PM_TEST_SUSPEND kernel option.
> These are the interesting outputs from the kernel and commands which
> show that it works. As every RTC handled by this driver is largely the
> same, I think that it shouldn't introduce any regression on other SoCs,
> but I may be wrong.
> =

> [    1.092705] PM: test RTC wakeup from 'freeze' suspend
> [    1.098230] PM: suspend entry (s2idle)
> [    1.212907] PM: suspend devices took 0.080 seconds
> (The SoC freezes for some seconds)
> [    3.197604] PM: resume devices took 0.104 seconds
> [    3.215937] PM: suspend exit
> =

> [    1.092812] PM: test RTC wakeup from 'mem' suspend
> [    1.098089] PM: suspend entry (deep)
> [    1.102033] PM: suspend exit
> [    1.105205] PM: suspend test failed, error -22
> =

> In any case, the RTC alarm interrupt gets fired as exptected:
> =

> $ echo +5 > /sys/class/rtc/rtc0/wakealarm && sleep 5 && grep rtc /proc/in=
terrupts
>  29:          1          0          0          0     GICv2 133 Level     =
7000000.rtc
> =

> Signed-off-by: Alejandro Gonz=E1lez <alejandro.gonzalez.correo@gmail.com>
> ---
>  drivers/rtc/rtc-sun6i.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> =

Applied, thanks.

-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
