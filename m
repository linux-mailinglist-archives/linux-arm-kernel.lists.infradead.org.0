Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20EC15618C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 00:20:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkeV+YVycXp5zGdWYfIA0oZq+xuFiezJsRoVmVFWD/A=; b=Kn0WlxogN3RtHn
	/Va4daIX7O/CGPIlB0jrBBw6tAD9ad6xjdtb2JBEkeePGIXgk7tBf4870Kd1So5HnvqYbKr8A6KO1
	9yhInbWH0MdCoxxGBq++TKqmYCZbqTd3AT9KQ2V6Df7VnX+HeVVjT3GZdlyTZOGrSVYSNXwdmgGRM
	kLjNJJDU/MhnpouR8JiWgnzuGvD//LXKKtyOIAcxaScGa3MQyEUQ4ItyEqFsB+NDjn0YzPgtk8TDR
	WDu80PF9NHfLPkxJ8UNr721ZnWSucr7WTzVS8im2N9HVD15ims+9K/I7eKVmqtdeV1qXIkxDrr2fg
	19mKIQ64MFGGNpyTO31w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Cux-0007uU-Ur; Fri, 07 Feb 2020 23:20:11 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Cuk-0007to-BS
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 23:20:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ywzPyEJ18PB1JpSQOlImpS6FuhscJJ9aWoOem12GQ3Y=; b=ZL4/9/u6mDWnUkBwoKRvrTllq
 tdtnJHi8MM9UHlaPdbrZNhSdqhgwX7TJhQheEwj2YG2+WQsuPb1sk063aK0mGjDXeE4QZIkf2Bf3e
 2tpw1edyTHsYN5E89Lh98rDfVWU8kExcyREQvKsW5MpXxDyQ8V9MuVlrsMLtaftjymDRoEB6VVoGH
 dP6vTY/fEhZWIzbvHfI3mXFgv21D0Nk/bJygmj/hzsvXVeLIOFmv36uHhaogM7u9iu8l6EdG0CX0u
 RdfgfkUWplonOhSxXlmfr8jQxAAxF5XFpR5KnhQBdm8+4Aa+ePNbdA2PpK45dCUXFVkjNmJzzSLOW
 +e4MlOZOQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:44846)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j0Cua-0008Vi-2B; Fri, 07 Feb 2020 23:19:48 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j0CuY-0004EY-DD; Fri, 07 Feb 2020 23:19:46 +0000
Date: Fri, 7 Feb 2020 23:19:46 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Lehner <stefan-lehner@aon.at>
Subject: Re: StrongARM SA-1110 / SA-1111 and Kernel 4.9.210 (Jornada 720)
Message-ID: <20200207231946.GZ25745@shell.armlinux.org.uk>
References: <001a01d5d0fb$5f85ca70$1e915f50$@at>
 <20200122092221.GL25745@shell.armlinux.org.uk>
 <000601d5d10d$ba6292e0$2f27b8a0$@at>
 <20200122102514.GM25745@shell.armlinux.org.uk>
 <002d01d5ddac$fc6f6590$f54e30b0$@at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <002d01d5ddac$fc6f6590$f54e30b0$@at>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_151958_544607_90BA0483 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
> Von: linux-arm-kernel [mailto:linux-arm-kernel-bounces@lists.infradead.or=
g]
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

> > > I patched the kernel source with the BX emulation to run a newer Debi=
an
> > > userland. The kernel compiled fine. =

> > > It starts to boot on the Jornada with the linexec bootloader. But it
> seems
> > > that it doesnt detect any CF or PCMCIA card. I managed to get the
> > > jornada720_pcmcia_configure_socket() running and it detects the card =
and
> > > powers it up with the correct voltage (3V for the CF card in socket 1=
).
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
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
