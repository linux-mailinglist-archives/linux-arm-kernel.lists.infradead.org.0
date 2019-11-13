Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E31FAEC4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:45:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jpAgfEgt72YQH2TX3Jo9lFQEn/iUvZW3JybqdBCBMlA=; b=oOxAt6rU8jkXbW
	YQsZfJoc/k4P9MQWLyQulusZvEk+QJFr3dzrgWjFwZLFqIfFttDgpVCIoMioW4IhSWWmB5K5Mqncs
	gVRgvOgSbQYyQeZmRPF6HRgs8OiurHNNkLFeb0coyfAK7M/uO6A0yXhurpfuI69yJ/kgkDYcAUJRU
	CA0mo09IL2f0USr+xqii5Tg4vhNbw5DAAEn7MRX9zK10700CUY9UbQGIuBKTDX01OFs1gwU9exkQ+
	S0kybEujGl1tKk77ldmj5x/MBzyj4rHBNQZs9Ldwf5EWnJhrCwopB49/zm/TjPMJS67l5a53AZTQW
	zJWSnYs/oRLRmgoNqiiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUq9A-0005rS-HW; Wed, 13 Nov 2019 10:45:12 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUq8s-0005qm-OU
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:44:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kvtuen9NUxjRmvtFGYNShRuWZ73W73fPXLDttAqY7iE=; b=QivEy3YhYpbtWRSJHGj5bZUfP
 J6Rno+DA+ATD7ZghcTxxqrc0+IyjzH071t5o8kuR8Xzff34KIC+HPOGUE6FcxX/dEjcDPgncKtdwv
 lCYAaTX/+TO+plrNHMe4SGsVgtfrU36yHsfvHC3G+2p/CFZdMptUKmGTzg3+qbtl7yvgF7DX2IeaM
 p8HMcm2hdLzJenlOtRmBdR3FBWI0EKGZVV+rvcctKqpq0moTLPbeh6nLExz6LPiwnPNgXLg/9HiJk
 SdQWZlPH22qaT04sWqDoiS7DuEL2cBcC+45AOqU1AL/brcjuMWIo1VA0AX1gRLoZBXldmmmLum1rM
 ONTst1S/A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:39056)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iUq8f-0003c8-Cz; Wed, 13 Nov 2019 10:44:41 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iUq8d-0002OV-HN; Wed, 13 Nov 2019 10:44:39 +0000
Date: Wed, 13 Nov 2019 10:44:39 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH/RFC] ARM: boot: Relax kernel image alignment for RZ/A
 with CS3 SDRAM
Message-ID: <20191113104439.GN25745@shell.armlinux.org.uk>
References: <20191113102729.29303-1-geert+renesas@glider.be>
 <20191113104037.e45j37xoxeztvut3@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113104037.e45j37xoxeztvut3@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_024454_796151_E401A902 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>, linux-renesas-soc@vger.kernel.org,
 Chris Brandt <chris.brandt@renesas.com>, Eric Miao <eric.miao@nvidia.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 11:40:37AM +0100, Uwe Kleine-K=F6nig wrote:
> On Wed, Nov 13, 2019 at 11:27:29AM +0100, Geert Uytterhoeven wrote:
> > The RZA2MEVB sub board has 64 MiB of SDRAM at 0x0C000000 (CS3 space).
> =

> This wording is misleading. You don't adapt the limit because 128 MiB >
> the amount of RAM on that platform but because the alignment of the CS3
> space isn't a multiple of 128 MiB. So I suggest:
> =

> 	On the RZA2MEVB the SDRAM's base is at 0x0C000000 which isn't
> 	aligned to 128 MiB. So to ensure the assumptions of the
> 	decompressor are valid the used alignment must be decreased.
> =

> > Hence the mask for CONFIG_AUTO_ZRELADDR needs to be changed, otherwise
> > the system will crash because it will try to decompress a zImage or
> > uImage to a non-RAM garbage address.
> > =

> > Based on a patch in the BSP by Chris Brandt <chris.brandt@renesas.com>.
> > =

> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > No idea what to do with the rest of the comment, or if this breaks
> > existing platforms.
> =

> I would assume that it indeed breaks existing platforms. So maybe better
> make this configurable, default to 128 MiB and select it to 64 MiB on
> the affected platform? If the resulting kernel supports also other
> machines a warning (at compile time) might be a good idea.

Are we going back to non-multi-platform kernels? ;)

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
