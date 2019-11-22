Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5E7105DDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 01:53:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HYwyz/NuThhF6bprI/zlmg5Up1IoM7B7oJZmdd/ZGo=; b=uddAoO5iMev9CN
	7SIv/iAuI9My4V/G/wzWk94bIDBO20PFTKhMzqMrmKgmqajy6I0r9/Ey7OEIHs/LZTiW3p4zRtOTm
	KsvZx+YE/cKYnytxYxWJXcj7bpWoDXS07swVoMulZDAFLswjfEu9ckxOIShe5zJxAjRN+/CdImjmp
	OT4u3brtuA3H5n+ClGuXui8/SzbjBVz/a9lA/2QJc8QtJK6kyhqeW5y89JZf+AMICjhknfelKObhl
	DijNeUL4viXxZyaLM7wWwHRtKzYoC5rbM20eD1xN3oKjDuWc30ogVTcuTA0gNgrjdo3VF3FmTMwnH
	8fH+YLgeEtazXd6W0mxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXxCk-0002nJ-Sx; Fri, 22 Nov 2019 00:53:46 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXxCc-0002mh-Dm
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 00:53:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m8abUx8pSYpn1hn5D1w1GLb8aL+UUj0d2TyW9NfUG1g=; b=QDvDXbAXyOJq5lNNXeptcbMNI
 k0VOOqaMtYLgAsH3CMe5FWVVhuAK2Q6LNZOjK4odsCCM1Nt3Phq7R9wp5OcXjYdvnMflj6mnI7PBH
 dreG7wO50Wn1ZumhGlCeC8+ee4x0AIVreVJfffqnZrOUdAp8rmWQn7FKqJ0zTt6qON6JBxm6hrCt1
 baCBq+6gHLQ5/6oHlov+evlBhdaxnQmYoDOR7ren/sR9HvX04+IDgURZAcqSXWAvj7spzEslGG+1J
 jWNum5v1ebB+VbwhXd7tlF/z5W43Q2emlgEDWrOQsUTIHov/zb7VRYJSryVEAPmFGjGs0rB2hZ65Y
 SdDtKL8Sg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:38760)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iXxCJ-0001kC-NV; Fri, 22 Nov 2019 00:53:19 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iXxCC-0003Dm-2F; Fri, 22 Nov 2019 00:53:12 +0000
Date: Fri, 22 Nov 2019 00:53:12 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH 1/3] arm/arm64/xen: use C inlines for privcmd_call
Message-ID: <20191122005311.GI25745@shell.armlinux.org.uk>
References: <20191121184805.414758-1-pasha.tatashin@soleen.com>
 <20191121184805.414758-2-pasha.tatashin@soleen.com>
 <20191122002258.GD25745@shell.armlinux.org.uk>
 <CA+CK2bDtADA2eVwJAUEPhpic8vXWegh8yLjo6Q6WmXZDxAfJpA@mail.gmail.com>
 <20191122003403.GG25745@shell.armlinux.org.uk>
 <20191122003524.GH25745@shell.armlinux.org.uk>
 <CA+CK2bAm0r8zLMz_gdq30zF8io5RzVnbXFSV9NkyT_uUxKJwLA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+CK2bAm0r8zLMz_gdq30zF8io5RzVnbXFSV9NkyT_uUxKJwLA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_165338_466562_1DC8036C 
X-CRM114-Status: GOOD (  15.35  )
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

On Thu, Nov 21, 2019 at 07:39:22PM -0500, Pavel Tatashin wrote:
> > > That may be, but be very careful that you only use them in ARMv7-only
> > > code.  Using them elsewhere is unsafe as the domain register is used
> > > for other purposes, and merely blatting over it (as your
> > > uaccess_enable and uaccess_disable functions do) is unsafe.
> >
> > In fact, I'll turn that into a bit more than a suggestion.  I'll make
> > it a NAK on adding them to 32-bit ARM.
> >
> 
> That's fine, and I also did not want to change ARM 32-bit. But, do you
> have a suggestion how differentiate between arm64 and arm in
> include/xen/arm/hypercall.h without ugly ifdefs?

Sorry, I don't.

I'm surprised ARM64 doesn't have anything like that, but I suspect
that's because they don't need to do a save/restore type operation.
Whereas, 32-bit ARM does very much need the save/restore behaviour
(although not in this path.)

The problem is, turning uaccess_enable/disable into C code means
that it's open to being used elsewhere in the kernel (ooh, a couple
of useful looking functions that work on both architectures!  I can
use that too!) and then we end up with stuff breaking subtly.  It's
the potential for subtle breakage that is making me NAK the idea of
adding the inline C functions.

Given the two have diverged, the only answer is ifdefs, sorry.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
