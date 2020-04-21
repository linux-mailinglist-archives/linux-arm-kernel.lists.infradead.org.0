Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F213B1B2BD5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z5s3Ii9h6TyyIzOH77wpTOE9LipglNNkIYMNcvU4nog=; b=JLmOhFWuRdja44
	vwPpWUf6zO1biU25NXpoKU5XMsCcZjOECEcovXmjhORYKirCwkAlT2PJPDvyjhW6qvxWmB/VWPizi
	9+45NcCsJ60/CPko1Bce5jJ6Hqbp5Yo4J8iy4T2kPWvWKSq4U9dvcJmbc7iQ3QerZufohLBBcWTWW
	4ie13v00FnSAvVRQNIbgZkn2LxKRlK5uSELZPakUDGrtPO6O9Sp76tNtDAjRJdRkoVPYefh+4UMvJ
	LunLEA9aH6WTZtkVfvzOv2DI+YdBOvUUYcrW9O2UjWD+pByaLFrsWlbm0wH5rP1Gso0CjkmIZzql/
	9OXFuVYkdawkaAc49DDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvLn-0007Il-Pi; Tue, 21 Apr 2020 16:02:19 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvLf-0007HW-Gb
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FMOKi9JN1zmL3ex+upDVJ+JPiBtToBzeS9dSmqwVosg=; b=Wv6j/tRpqNiXWtF1allIjgglQ
 wCkIn+1dSOjzx9s33cJ53XlMgapGXUtnCb87O5un+VMg1aZajWfMzSGd2TLBW8Ha6HdyQFbcmaA+v
 tWr5M4uIJJL8JlK8h+oeULeBZkaTITb/e+qz/iY3KKQusbXCUnh0eQyPlKeifFOAIuLwgz6GrXi+A
 HPLTTUh3Jh80t9DHH3VzrBbmkW8I3f09LA/iFFNnaOrM+wJl3c7CNREETRaIphmZwgMZ87zjSdxEj
 CHV4voJDJ7W4lRx797+SBuXSukrYpeOouAJK0WPecaqpr/j2txC5GXfdYzeLjbT4xNEP9p0Mjkw9j
 i4qtFisaQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:41646)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jQvLE-0002XX-Id; Tue, 21 Apr 2020 17:01:44 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jQvL7-00079R-7Q; Tue, 21 Apr 2020 17:01:37 +0100
Date: Tue, 21 Apr 2020 17:01:37 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v5] ARM: boot: Obtain start of physical memory from DTB
Message-ID: <20200421160137.GE25745@shell.armlinux.org.uk>
References: <20200415153409.30112-1-geert+renesas@glider.be>
 <CAMj1kXHm=xA4gafwAaBn8=YcAsQCYDNmZ=4REsfvEUgZShm3Ww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXHm=xA4gafwAaBn8=YcAsQCYDNmZ=4REsfvEUgZShm3Ww@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_090211_714872_81B99582 
X-CRM114-Status: GOOD (  22.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Nicolas Pitre <nico@fluxnic.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 05:19:40PM +0200, Ard Biesheuvel wrote:
> On Wed, 15 Apr 2020 at 17:34, Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> >
> > Currently, the start address of physical memory is obtained by masking
> > the program counter with a fixed mask of 0xf8000000.  This mask value
> > was chosen as a balance between the requirements of different platforms.
> > However, this does require that the start address of physical memory is
> > a multiple of 128 MiB, precluding booting Linux on platforms where this
> > requirement is not fulfilled.
> >
> > Fix this limitation by obtaining the start address from the DTB instead,
> > if available (either explicitly passed, or appended to the kernel).
> > Fall back to the traditional method when needed.
> >
> > This allows to boot Linux on r7s9210/rza2mevb using the 64 MiB of SDRAM
> > on the RZA2MEVB sub board, which is located at 0x0C000000 (CS3 space),
> > i.e. not at a multiple of 128 MiB.
> >
> > Suggested-by: Nicolas Pitre <nico@fluxnic.net>
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
> > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> > Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> > Tested-by: Dmitry Osipenko <digetx@gmail.com>
> 
> This is ready to go into the patch system, no?
> 
> The sooner Russell picks it up, the sooner I can respin my patches
> that go on top.

This seems to be a particularly risky change (it's already been subject
to various failures for people) so I do not intend to rush to pick it
up.

In any case, Masahiro Yamada has resubmitted a patch to sort out the
libfdt builds that he's been trying to get merged for some time now,
so I'm going to be giving that priority. Your change conflicts with
this libfdt build change.

So, I think all in all, it needs to spend a bit longer being provenly
tested before I merged it (and eventually fixed up for the libfdt
change), and I don't think merging it so it appears in linux-next
will help with that.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
