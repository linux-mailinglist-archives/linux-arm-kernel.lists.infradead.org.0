Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20733156358
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 08:54:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VK8lUNjnHI0qdD9qhwCS4mek6FgfIbmJCm2gupJDjs=; b=lBmi/PmKG9MPsT
	sKl651wMA8QJnkyC/jQRLARsIltjdHy5VsV0E8rYWHnOSzgPzSIv9gjDepM5uRl3tuLnNsodPXhsH
	e2Ox+nXpS5IVwMSm4phaCI0JvI6XTEIkowK4S6wbJmvkhpatG0u7+HR/D+kV33yn/uBpGBMIXKsH3
	l8Zf/+k1DyHsW5gv++F0l71dTAe8UlcACjcR2kttUeGrIHqX/cJ7VVH3tzEK1mHA+GhytWVacUmzq
	9NaLiZOI6lVVJl7gNLPvoOWatsjK82WVZsSQkM2kIJQacMIbAS/7g5VRdWGWVqH79vWiqHT69FmIc
	hOls7bXcINC8kRSO1ECQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Kwg-0004AK-2C; Sat, 08 Feb 2020 07:54:30 +0000
Received: from smtpout.aon.at ([195.3.96.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0KwY-00049s-Vf
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 07:54:25 +0000
Received: (qmail 25784 invoked from network); 8 Feb 2020 07:54:19 -0000
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 WARSBL604.highway.telekom.at
X-Spam-Level: 
Received: from 91-114-188-72.adsl.highway.telekom.at (HELO DESKTOP26LQET5)
 ([91.114.188.72]) (envelope-sender <stefan-lehner@aon.at>)
 by smarthub77.res.a1.net (qmail-ldap-1.03) with DHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 8 Feb 2020 07:54:19 -0000
X-A1Mail-Track-Id: 1581148458:25476:smarthub77:91.114.188.72:1
From: "Stefan Lehner" <stefan-lehner@aon.at>
To: <linux-arm-kernel@lists.infradead.org>
References: <001a01d5d0fb$5f85ca70$1e915f50$@at>
 <20200122092221.GL25745@shell.armlinux.org.uk>
 <000601d5d10d$ba6292e0$2f27b8a0$@at>
 <20200122102514.GM25745@shell.armlinux.org.uk>
 <002d01d5ddac$fc6f6590$f54e30b0$@at>
 <20200207231946.GZ25745@shell.armlinux.org.uk>
In-Reply-To: <20200207231946.GZ25745@shell.armlinux.org.uk>
Subject: AW: StrongARM SA-1110 / SA-1111 and Kernel 4.9.210 (Jornada 720)
Date: Sat, 8 Feb 2020 08:54:16 +0100
Message-ID: <000d01d5de54$f804c920$e80e5b60$@at>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Content-Language: de-at
Thread-Index: AdXeDS2zx8rjHEq4SDi8t9Po36QXkQARflUQ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_235423_331678_EE2AAD3A 
X-CRM114-Status: GOOD (  23.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [stefan-lehner[at]aon.at]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [195.3.96.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.3.96.115 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: 'Russell King - ARM Linux admin' <linux@armlinux.org.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!
You misunderstand me. It detects CF and PCMCIA also with both options
enabled! =

I think i messed up the kernel source with my first try. With a fresh kernel
source and config the hardware works, as long as i comment in the
CONFIG_PCMCIA_SA1111=3Dy for CF and PCMCIA.

Thanks for your help.

Regards
Stefan Lehner

PS for Mr. Russell: Maybe you can have a look at my problem with the SA-1111
and USB in the other mail.

 =


-----Urspr=FCngliche Nachricht-----
Von: linux-arm-kernel [mailto:linux-arm-kernel-bounces@lists.infradead.org]
Im Auftrag von Russell King - ARM Linux admin
Gesendet: Samstag, 8. Februar 2020 00:20
An: Stefan Lehner
Cc: linux-arm-kernel@lists.infradead.org
Betreff: Re: StrongARM SA-1110 / SA-1111 and Kernel 4.9.210 (Jornada 720)

Hi,

Hmm, if you enable early printk, can you then get the kernel boot
messages?

Enable CONFIG_EARLY_PRINTK, and then supply "earlyprintk" on the
kernel command line.

Thanks.

On Fri, Feb 07, 2020 at 12:51:51PM +0100, Stefan Lehner wrote:
> Hello!
> I tested it with both options enabled and it makes no difference. No error
> messages during boot. The kernel compiles fine!
> =

> Regards
> Stefan
> =

> =

> =

> =

> -----Urspr=FCngliche Nachricht-----
> Von: linux-arm-kernel
[mailto:linux-arm-kernel-bounces@lists.infradead.org]
> Im Auftrag von Russell King - ARM Linux admin
> Gesendet: Mittwoch, 22. J=E4nner 2020 11:25
> An: Stefan Lehner
> Cc: linux-arm-kernel@lists.infradead.org
> Betreff: Re: StrongARM SA-1110 / SA-1111 and Kernel 4.9.210 (Jornada 720)
> =

> On Wed, Jan 22, 2020 at 11:21:36AM +0100, Stefan Lehner wrote:
> > =

> > On Wed, Jan 22, 2020 at 09:10:13AM +0100, Stefan Lehner wrote:
> > > Hi!
> > > I like to get a newer Linux Kernel running on my Jornada 720. It has a
> > > StrongArm SA-1110 CPU and the SA-1111 companion chip. =

> > > I patched the kernel source with the BX emulation to run a newer
Debian
> > > userland. The kernel compiled fine. =

> > > It starts to boot on the Jornada with the linexec bootloader. But it
> seems
> > > that it doesnt detect any CF or PCMCIA card. I managed to get the
> > > jornada720_pcmcia_configure_socket() running and it detects the card
and
> > > powers it up with the correct voltage (3V for the CF card in socket
1).
> > =

> > >> What was required for that?
> > =

> > I had to comment out: =

> > # CONFIG_PCMCIA_SA1100 is not set
> > and activate:
> > CONFIG_PCMCIA_SA1111=3Dy
> > in the kernel .config.
> =

> Yes, you'll need CONFIG_PCMCIA_SA1111 set, because the Jornada720 uses
> the companion chip.  CONFIG_PCMCIA_SA1100 should make no difference, so
> can we spend some time working out why you needed to disable it?
> =

> Did you get any error messages during boot with both enabled?
> =

> -- =

> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps
> up
> According to speedtest.net: 11.9Mbps down 500kbps up
> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> =


-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
