Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C202D64529
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 12:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=THW54wNCqap1R60eoauKwXq57gOfvT+OksuwWDtV9PY=; b=YMD0p9xg7Zjp+U
	UdHUr3gP/xCoRAC7rrFYPAeilBY5iK4WR1SmX+I6bss9uWialDpsASHzxUEIYik1le7O/NDpcT0rl
	MGzXo2fNlZDtXAcH85hpY/SHJARw1Ewyjh0VbTF9io4NQKsYsivDjzT1dhCf3VSR+fAUZkjlSzjNY
	t9RohPgTMVubjh/Cm5A3UJbA4PIsJvL5tkmECRf3ea0Hk4XJfPfWibsM0ap5wrrfPG1xHkGytl5pt
	TZ/XfBVppOhAfFzdabwL/qBhplXQ2N3+iZhOhdPuXoZ4q1JQ4wRCXg2pAYwYdDxH6YzDOb+ApwkbG
	kpBSyZpsuCWe2UlHLcjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl9o7-0002Il-Lz; Wed, 10 Jul 2019 10:26:39 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl9nu-0002Hp-CA
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 10:26:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v7EIF64Wkq9L2U08cgfJ9QXJ/QICE1LcS3K3e2v/4c4=; b=MyEPM7fw/XW5Lt3m9+rpuMph9
 QwBfKkpHSu5UkP561Kk8ywf0HtzkNrLfMvQQHJHZYdTcVmlPINSB9Ul4273RDB1Fr92xoxyHanSXK
 JnYOzBdjHyXcHWYyfu/x2m9WX1HcsDuSzoNtWHs1WN64RfnH1TvY26RUvYRLbD5whMq8RRtRwUWMM
 MRtQGcVeNcLdcBWxsnQFs3yRDPqvwNNsKprWyfozj3/jcQ++ekZWHsSwCdpuQgMvaoUBlJ0fOGSBG
 hAFMlOzqbaWnqnjKvG/krh4YJZ634GTzEqgLrIhfOdh5rGjB8hhh/Hr305Ya4Fg1BrW/EQe40C3JO
 P9t9FT5UQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59430)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hl9nn-00066F-An; Wed, 10 Jul 2019 11:26:19 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hl9nl-0003pO-Sx; Wed, 10 Jul 2019 11:26:17 +0100
Date: Wed, 10 Jul 2019 11:26:17 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: Question about ARM FASTFPE
Message-ID: <20190710102617.nhbsm4lpby3mtfc6@shell.armlinux.org.uk>
References: <CAK7LNASSCvLSXVikR7GenXyb8KywpWKVc1Z=5v3c93rxJ+G73w@mail.gmail.com>
 <20190710082335.uzusesefimzpjd3f@shell.armlinux.org.uk>
 <CAK7LNAQpiY4CBawEFhQHeTPSrbrRkNoYCtK4jBak+skyyMqESA@mail.gmail.com>
 <20190710100206.yls4piu36wciefbz@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710100206.yls4piu36wciefbz@shell.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_032626_411007_BF4A7639 
X-CRM114-Status: GOOD (  12.06  )
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
Cc: Olof Johansson <olof@lixom.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 11:02:06AM +0100, Russell King - ARM Linux admin wrote:
> On Wed, Jul 10, 2019 at 06:54:06PM +0900, Masahiro Yamada wrote:
> > On Wed, Jul 10, 2019 at 5:23 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > > On Wed, Jul 10, 2019 at 01:30:24PM +0900, Masahiro Yamada wrote:
> > > > $(wildcard ...) checks if this directory exists in the *objtree*,
> > > > while scripts/Makefile.build needs to include
> > > > arch/arm/fastfpe/Makefile from *srctree*.
> > > >
> > > > I think the correct code should be like follows:
> > > >
> > > > # Do we have FASTFPE?
> > > > FASTFPE :=arch/arm/fastfpe
> > > > ifneq ($(wildcard $(srctree)/$(FASTFPE)),)
> > > > FASTFPE_OBJ :=$(FASTFPE)/
> > > > endif

That does indeed work for split object builds.
 
-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
