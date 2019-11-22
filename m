Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4A5105DBF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 01:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPGL/Q6Sc9a9cm7yqYD9HjFdNKQyhbfc4uNhQntZSL8=; b=txsisENbQILJaQ
	RwgQAKxJ96Vmkfrszs+/ExZ32I+1hsuvyM3mFhdCjpTHvEw07MJrLn9Pl9mpy4n53yVm7jRy3rjec
	9NDIIabG8p7zlTZDVPHmJPzK7Bbz6DsoAxBT5nfZoepXRQoc08H95CRGSt5uTUoNVYP/Tk4MH9OAT
	zrMyfPOefEwRhzcreEhqbGTqLuu30bIBv30+auVUp+m8brnscNbN8zJoKtBT5PVcWNYKCsF0aUaR6
	+jcoP73C4po8Fkay5ZciHPV0b0Dp3cQIzqA6qlP4G2Ju76ArAUSmJJPts77UUxjoU/KGakLD6b1NS
	vFYe/+b17dNmD1uOqAWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXwvM-0005aC-To; Fri, 22 Nov 2019 00:35:48 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXwvD-0005Zj-RR
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 00:35:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aNyMrZGi1ytX4T6Y1L2udQxbuMw2fttK87FjgMDAYUk=; b=L+ozNyJ+BLJds7rUUZwTGmJ7R
 5e4PdATY1wuc72kBvYhSNqzWkMLSHsiNJaRKKZ+QW6c/CaPxnlL0mM/RPN1bk4jPOFZREl6QSpL4L
 U3SAD87N8NAF8bzJqfo9CxhGXIHbgmAZZDd6BRqC9ys8sxVq7Xz172xTF71hYopdiv8Ho/rc7y1Yp
 9U9/ujkr8zeakeK8TCVh42YDuJelKERsJKDzxphKgN/A7SiBXQtk6Xcx/3Op+FveXgSucAFoCOSum
 XMJNkFyEpvPjQWNAF0yn6kqWii0P0XsxVVkOtrF7xV1CzBDQeXXUUFjx0ebt5BwyPw9NsN4yUw2ZV
 6LjfuU4/g==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:38750)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iXwuz-0001fH-G7; Fri, 22 Nov 2019 00:35:25 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iXwuy-0003Cf-Q2; Fri, 22 Nov 2019 00:35:24 +0000
Date: Fri, 22 Nov 2019 00:35:24 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH 1/3] arm/arm64/xen: use C inlines for privcmd_call
Message-ID: <20191122003524.GH25745@shell.armlinux.org.uk>
References: <20191121184805.414758-1-pasha.tatashin@soleen.com>
 <20191121184805.414758-2-pasha.tatashin@soleen.com>
 <20191122002258.GD25745@shell.armlinux.org.uk>
 <CA+CK2bDtADA2eVwJAUEPhpic8vXWegh8yLjo6Q6WmXZDxAfJpA@mail.gmail.com>
 <20191122003403.GG25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122003403.GG25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_163539_942389_EA8EB575 
X-CRM114-Status: GOOD (  16.18  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, stefan@agner.ch,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Sasha Levin <sashal@kernel.org>,
 sstabellini@kernel.org, James Morris <jmorris@namei.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, alexios.zavras@intel.com,
 boris.ostrovsky@oracle.com, allison@lohutok.net, jgross@suse.com,
 steve.capper@arm.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 12:34:03AM +0000, Russell King - ARM Linux admin wrote:
> On Thu, Nov 21, 2019 at 07:30:41PM -0500, Pavel Tatashin wrote:
> > > > +#ifdef CONFIG_CPU_SW_DOMAIN_PAN
> > > > +static __always_inline void uaccess_enable(void)
> > > > +{
> > > > +     unsigned long val = DACR_UACCESS_ENABLE;
> > > > +
> > > > +     asm volatile("mcr p15, 0, %0, c3, c0, 0" : : "r" (val));
> > > > +     isb();
> > > > +}
> > > > +
> > > > +static __always_inline void uaccess_disable(void)
> > > > +{
> > > > +     unsigned long val = DACR_UACCESS_ENABLE;
> > 
> > Oops, should be DACR_UACCESS_DISABLE.
> > 
> > > > +
> > > > +     asm volatile("mcr p15, 0, %0, c3, c0, 0" : : "r" (val));
> > > > +     isb();
> > > > +}
> > >
> > > Rather than inventing these, why not use uaccess_save_and_enable()..
> > > uaccess_restore() around the Xen call?
> > 
> > Thank you for suggestion: uaccess_enable() and uaccess_disable() are
> > common calls with arm64, so I will need them, but I think I can use
> > set_domain() with DACR_UACCESS_DISABLE /DACR_UACCESS_ENABLE inside
> > these inlines.
> 
> That may be, but be very careful that you only use them in ARMv7-only
> code.  Using them elsewhere is unsafe as the domain register is used
> for other purposes, and merely blatting over it (as your
> uaccess_enable and uaccess_disable functions do) is unsafe.

In fact, I'll turn that into a bit more than a suggestion.  I'll make
it a NAK on adding them to 32-bit ARM.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
