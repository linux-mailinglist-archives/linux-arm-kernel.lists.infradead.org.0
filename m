Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC738E83D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 10:05:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQ/eLb8vJBO66bAcxvvi+MRQp0D63R+usVUPBzBGqC0=; b=gHidP+4ALM8AiY
	nbWo/qYC+tpygvHdbqEFBNKpGp/fG49ggJDc51IdW9ad3+V+eoOr9O6c0AT24bWFrzIFFUNBC7ur7
	dI5RMhZCgccltH9fTRablPtOWttNvW8Jb0yLVCuBeTAXnZPsWVBP9qC+CTtqZTyU+e81FNHV9U0CW
	Cqw1OdhO53PaW7S8D+sHPk8Kh3/JW1jzfWFN98BvFVliGhanBKFwtmZkV2jsXpMTfiJk8hJts1bPn
	Bql6cQ2Wzg36etTffIHFU0Tz57uDAxIXx8gHaeHczVCOKMXJJxQC4dDwBkWPwAiHnoj3c669S10hQ
	WMTUgCOkQbFnrEGYVUgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPNRI-0005K1-86; Tue, 29 Oct 2019 09:05:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNQo-0004js-9a
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 09:04:52 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iPNQe-00023m-5q; Tue, 29 Oct 2019 10:04:40 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iPNQd-0007Qk-2y; Tue, 29 Oct 2019 10:04:39 +0100
Date: Tue, 29 Oct 2019 10:04:39 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH 0/3] Add touchscreen support for TBS A711 Tablet
Message-ID: <20191029090439.ikgzrixv7wv2o6xb@pengutronix.de>
References: <20191029005806.3577376-1-megous@megous.com>
 <20191029041516.GE57214@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029041516.GE57214@dtor-ws>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:03:51 up 164 days, 15:22, 99 users,  load average: 0.12, 0.15,
 0.07
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_020450_443184_2FA6A1F6 
X-CRM114-Status: GOOD (  17.42  )
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@bootlin.com>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-input@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 19-10-28 21:15, Dmitry Torokhov wrote:
> On Tue, Oct 29, 2019 at 01:58:03AM +0100, Ondrej Jirman wrote:
> > This is a resurrection of https://lkml.org/lkml/2018/7/25/143
> > =

> > Compared to v4 of Myl=E8ne's series I've dropped all attempts to
> > power off the chip during suspend. This patch just enables the
> > regulator during probe and disables it on driver rmmod.
> > =

> > I've tested the driver with suspend/resume and touching the
> > panel resumes my soc.
> =

> OK, I guess we can revisit when someone really needs power savings in
> suspend...

Please have a look on https://patchwork.kernel.org/cover/11149039/. I've
already send patches for it.

Regards,
  Marco

> I folded bindings into the driver change and applied, dts changes should
> go through respective tree.
> =

> Thanks.
> =

> -- =

> Dmitry
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
