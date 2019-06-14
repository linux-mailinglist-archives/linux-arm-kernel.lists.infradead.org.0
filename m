Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E1E46412
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfg/sSQnTfAtZP66peS+jV8gXlmKL574a3fkGJTQDbw=; b=pHOGmv7LuLb5KZ
	ux+5VChVmeMyo0uOKOOoVsgS6fMnUdlbsvZhp8A6DQrC9Vo4y0Np+24cNaolHZOInLs2v5TtfBLje
	hr/7ROsUQGr+ngU/9KnPgpO1X62dJY1nF5eFxI06p64q1NH4o6YZjr0Q8NSWF9PGTwDzesJ2DhGpx
	/eIftVIqx175DelbebymGg9HR3mOYCULZcw5FUTKB0JwUJ/LovoXXbCVfyQsKIG0mw7J6d2gFVSLI
	whSnlo2odX2hTPoTfqja+D4RwovhF8RPJMoePG9oS4fvUb9cQoowOq1Lvn62qA0nYFeZbA2gEwPw6
	5R7ke5DAPrLt8sMKfkNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbp4A-00080f-Pz; Fri, 14 Jun 2019 16:28:38 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbp3z-0007zI-2f
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:28:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qN3vnRHb53QR4NrYMbn2HmpDmW2o9uEvNCslqEN/tPM=; b=yjIDjwazm3SV8M4Wj84Yok1cj
 5wv7ZpUfXUPpQ9FsVeMrVUDKJzf748rMUEwRnhpq0KLB4IMQwIp4EeLw4mVQOHLQpisnQiliF1HAz
 iFUm7Uqzk2yuBTWnmpDervfxYYMiDJLeMf8F2qY7e/M4ua9hMFED/LuoHoBEoJMVoIgdN9gj3Z/Rm
 g+vmCrjqw8/7m1iY+m2NM798/cb/7Q6Zhotciwi2ECYDKMjry5cQfavy11Tj4knTN6YI+7gVQ3ot8
 P/edc4j0SPDmb1lRkJqNSlRdTlp+nEdymXwyPGPTWj6LEAJy+v5czc9+4IdyjdHLjrqM9NyUfoNEX
 yGa1Ann7g==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:38702)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hbp3m-0002Vb-HG; Fri, 14 Jun 2019 17:28:14 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hbp3k-0002Lu-1F; Fri, 14 Jun 2019 17:28:12 +0100
Date: Fri, 14 Jun 2019 17:28:11 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH] security: do not enable CONFIG_GCC_PLUGINS by default
Message-ID: <20190614162811.o33yeq65ythjumrh@shell.armlinux.org.uk>
References: <20190614145755.10926-1-GNUtoo@cyberdimension.org>
 <CAG48ez30+VOj78rCiWMKtm0tHdVR67CcrHVCV-FFCfK-nRQTOw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG48ez30+VOj78rCiWMKtm0tHdVR67CcrHVCV-FFCfK-nRQTOw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_092827_271701_4BA2ECF9 
X-CRM114-Status: GOOD (  15.81  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Emese Revfy <re.emese@gmail.com>,
 Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 06:05:19PM +0200, Jann Horn wrote:
> +32-bit ARM folks
> =

> On Fri, Jun 14, 2019 at 5:10 PM Denis 'GNUtoo' Carikli
> <GNUtoo@cyberdimension.org> wrote:
> > On a Galaxy SIII (I9300), the patch mentioned below broke boot:
> > - The display still had the bootloader logo, while with this
> >   patch, the 4 Tux logo appears.
> > - No print appeared on the serial port anymore after the kernel
> >   was loaded, whereas with this patch, we have the serial
> >   console working, and the device booting.
> >
> > Booting was broken by the following commit:
> >   9f671e58159a ("security: Create "kernel hardening" config area")
> >
> > As the bootloader of this device enables the MMU, I had the following
> > patch applied during the tests:
> >   Author: Arve Hj=F8nnev=E5g <arve@android.com>
> >   Date:   Fri Nov 30 17:05:40 2012 -0800
> >
> >       ANDROID: arm: decompressor: Flush tlb before swiching domain 0 to=
 client mode
> >
> >       If the bootloader used a page table that is incompatible with dom=
ain 0
> >       in client mode, and boots with the mmu on, then swithing domain 0=
 to
> >       client mode causes a fault if we don't flush the tlb after updati=
ng
> >       the page table pointer.
> >
> >       v2: Add ISB before loading dacr.

I'm wondering whether this is sloppy wording or whether the author is
really implying that they call the kernel decompressor with the MMU
enabled, against the express instructions in Documentation/arm/Booting.

If they are going against the express instructions, all bets are off.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
