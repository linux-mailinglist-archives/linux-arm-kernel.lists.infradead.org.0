Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA88F644D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 12:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7nZ1MpM1SdvWbov55xMp3+lQHh3dwJkud5HxTJ82GM=; b=pxDpeh3kuVI9bw
	EYFF/1XbVqYDtD1SebbjfS/uHUPmmCFtu+2xwkAk2UOoyh6SC11pk0mXJj8TUd22nf6iOoe0p1FnH
	YjIOOXpboLb/+QupElFIi6YSZUSHIpSB0oiHRk7MDgEAOMuH2TvSTRQKq/Tt+BWNy9M5UX7v5u41j
	IV5mPjM7JSndubxH79aAhPuYr1tjxNY4MS1ez5WAxDgfKGEc0x07XoOLsLEWFyHW0MRvvwaIhIwzm
	eyzkxz5RbZw8uUoTLlPmenZ97IH3+WMn+nqrxd2RsaL/l230j6t4H9SKOEliz+rrzkpgkDaZrwup5
	sLuDwyFTKS05FfkYBxtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl9Qq-0000WJ-0t; Wed, 10 Jul 2019 10:02:36 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl9QT-0000Vo-Ng
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 10:02:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zblxB+iVfb9FLiCBbkBYMri8q4AqXRvs6Ywv9o/5Rqo=; b=rDfFFK3SXpPlFtSdWkR0y+toF
 qfKmQRCwn2mnd3Ev4B+mSw7jcfHGvP1kVsRmFqTbTiCYpzqPTvHI8Lvb9pEdG6VU81WAxDavas5kh
 BVEQFPWlZKBH3RLHLQ7VV4hE6QYFGYdW+zrMWdfpPOoLrO0xpNSF9BfBq91O/ieUJbm2bc3Ce5cGE
 5c2WtrAMR4XqhIjxdmb9zcJdNCxrY5LJ5a5WVktWI1GEtCs7tB1ZTrF2G4s0maBBUJrjlf6H8WZjC
 vNAQxpmNZaRk0tJURIDrrp8PZILiXQiR8OQWPp7aGT7uvjGxtSkmhfQvKmE7lh6Nr96tL4ce+HeeT
 aLnd7PoOw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59428)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hl9QN-00060D-V4; Wed, 10 Jul 2019 11:02:08 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hl9QM-0003o7-6B; Wed, 10 Jul 2019 11:02:06 +0100
Date: Wed, 10 Jul 2019 11:02:06 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: Question about ARM FASTFPE
Message-ID: <20190710100206.yls4piu36wciefbz@shell.armlinux.org.uk>
References: <CAK7LNASSCvLSXVikR7GenXyb8KywpWKVc1Z=5v3c93rxJ+G73w@mail.gmail.com>
 <20190710082335.uzusesefimzpjd3f@shell.armlinux.org.uk>
 <CAK7LNAQpiY4CBawEFhQHeTPSrbrRkNoYCtK4jBak+skyyMqESA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAQpiY4CBawEFhQHeTPSrbrRkNoYCtK4jBak+skyyMqESA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_030213_776778_A0148575 
X-CRM114-Status: GOOD (  21.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 06:54:06PM +0900, Masahiro Yamada wrote:
> On Wed, Jul 10, 2019 at 5:23 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Wed, Jul 10, 2019 at 01:30:24PM +0900, Masahiro Yamada wrote:
> > > Hi.
> > >
> > > I have a question about the following code
> > > in arch/arm/Makefile:
> > >
> > >
> > > # Do we have FASTFPE?
> > > FASTFPE :=arch/arm/fastfpe
> > > ifeq ($(FASTFPE),$(wildcard $(FASTFPE)))
> > > FASTFPE_OBJ :=$(FASTFPE)/
> > > endif
> > >
> > >
> > > Since arch/arm/fastfpe does not exist in the upstream tree,
> > > I guess this is a hook to compile downstream source code.
> > >
> > > If a user puts arch/arm/fastfpe/ into their local source tree,
> > > Kbuild is supposed to compile the files in it.
> > >
> > > Is this correct?
> > >
> > >
> > > If so, I am afraid this would not work for O= building.
> > >
> > > $(wildcard ...) checks if this directory exists in the *objtree*,
> > > while scripts/Makefile.build needs to include
> > > arch/arm/fastfpe/Makefile from *srctree*.
> > >
> > > I think the correct code should be like follows:
> > >
> > > # Do we have FASTFPE?
> > > FASTFPE :=arch/arm/fastfpe
> > > ifneq ($(wildcard $(srctree)/$(FASTFPE)),)
> > > FASTFPE_OBJ :=$(FASTFPE)/
> > > endif
> > >
> > >
> > > Having said that, I am not sure this code is worth fixing.
> > >
> > > This code was added around v2.5.1.9,
> >
> > ... as a _result_ of a discussion and deciding not to upstream it,
> > but to still allow its use.  Fastfpe is faster than nwfpe (so has
> > a definite advantage for FP intensive applications) but we decided
> > we didn't want two FP emulation codes in the kernel.  However, if
> > someone wants to use it, it has to be built into the kernel, it
> > can't be modular.
> 
> 
> IMHO, the entry in Makefile and Kconfig should be removed
> from upstream, then moved to a part of the fastfpe local patch.

Nope.  It means that rather than it being merely a drop-in, it has
to be maintained against changes to both these files.  Sorry, that's
more work.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
