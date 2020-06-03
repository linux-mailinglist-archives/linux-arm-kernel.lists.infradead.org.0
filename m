Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5755C1ECCA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 11:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWBAjDRERDb3zu3t5aPEP16ZlwxN3a1thyFtN8w5aIM=; b=Pt1LMZaDc3KBcy
	4QhbkYQeimg7IZmbobbFtJALLRT+9eSEqIpHglF4zK9/ZVyUFfs4eZBvc2/0Uq5ZrSZIFzITqXN85
	5vK/cnKkwracT6Re11CH1XLTHZ8Ha8mlLxW4uYWIBMgwmMT/hw+PlLbotf3TcBOkNa83D1KN6vj30
	VNsnpaf4q5JD9d76jnvZjkSVxXpjeicRhk5VNEqfsf3ujE+TL/6jsDkmLrSi48nX8VND8CqgqmfEi
	qHCCMufHz1A09SaBSzHw5SeMTLfc7uHWwwlsogX7jj7pihnxFEH787Uxe3PRZfhqgFUTVTWhVJrq/
	vt+24LAdhoR/yP1iWj5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgPpx-0004xP-Tb; Wed, 03 Jun 2020 09:37:29 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgPpq-0004YG-Ku; Wed, 03 Jun 2020 09:37:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RCFP1A+jP0Ejskt3PALHHBHaCjZj9CjOP9H+ZUjtVwM=; b=aFWUUXJqdnK1WDUWqzRKMDXBM
 1kVv5yXQAwa2Lb3TmbtSDvvBJ64BRFACoVB+RZ0tgL0YuklkRY/bcQdyJW2P60h1MJeiTlpxi6g9I
 meZNBHpZMQ8WsKgm4tqAC16EYMcl/NpNGlG4fgZTNJE0RCxca/b0rSHQvJeKrbKnKWv4YWXgf58he
 yXqLmgHCujl9SFNppMaI9CEPWAtNSvh3A3yBafP64u3ywxSGDLlNuRtysF6aLQd1qGP0SIeIHJT2Y
 ZI/Lc0+PtL3erv1xuxcT+FQtsMq8POUrUjHA1w7xpnoTb1gNl9uRDIQuJ8AenWbYjQCTLvoKghfki
 s4pbL54Lg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:38300)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jgPn9-00058L-4d; Wed, 03 Jun 2020 10:34:35 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jgPmq-0005HW-Su; Wed, 03 Jun 2020 10:34:16 +0100
Date: Wed, 3 Jun 2020 10:34:16 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: Security Random Number Generator support
Message-ID: <20200603093416.GY1551@shell.armlinux.org.uk>
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
 <CAMj1kXHjAdk5=-uSh_=S9j5cz42zr3h6t+YYGy+obevuQDp0fg@mail.gmail.com>
 <85dfc0142d3879d50c0ba18bcc71e199@misterjones.org>
 <1591169342.4878.9.camel@mtkswgap22>
 <fcbe37f6f9cbcde24f9c28bc504f1f0e@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fcbe37f6f9cbcde24f9c28bc504f1f0e@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_023722_687517_F6D0701B 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Julius Werner <jwerner@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sean Wang <sean.wang@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 Crystal Guo =?utf-8?B?KOmDreaZtik=?= <Crystal.Guo@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Neal Liu <neal.liu@mediatek.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 03, 2020 at 08:40:58AM +0100, Marc Zyngier wrote:
> On 2020-06-03 08:29, Neal Liu wrote:
> > On Tue, 2020-06-02 at 21:02 +0800, Marc Zyngier wrote:
> > > On 2020-06-02 13:14, Ard Biesheuvel wrote:
> > > > On Tue, 2 Jun 2020 at 10:15, Neal Liu <neal.liu@mediatek.com> wrote:
> > > >>
> > > >> These patch series introduce a security random number generator
> > > >> which provides a generic interface to get hardware rnd from Secure
> > > >> state. The Secure state can be Arm Trusted Firmware(ATF), Trusted
> > > >> Execution Environment(TEE), or even EL2 hypervisor.
> > > >>
> > > >> Patch #1..2 adds sec-rng kernel driver for Trustzone based SoCs.
> > > >> For security awareness SoCs on ARMv8 with TrustZone enabled,
> > > >> peripherals like entropy sources is not accessible from normal world
> > > >> (linux) and rather accessible from secure world (HYP/ATF/TEE) only.
> > > >> This driver aims to provide a generic interface to Arm Trusted
> > > >> Firmware or Hypervisor rng service.
> > > >>
> > > >>
> > > >> changes since v1:
> > > >> - rename mt67xx-rng to mtk-sec-rng since all MediaTek ARMv8 SoCs can
> > > >> reuse
> > > >>   this driver.
> > > >>   - refine coding style and unnecessary check.
> > > >>
> > > >>   changes since v2:
> > > >>   - remove unused comments.
> > > >>   - remove redundant variable.
> > > >>
> > > >>   changes since v3:
> > > >>   - add dt-bindings for MediaTek rng with TrustZone enabled.
> > > >>   - revise HWRNG SMC call fid.
> > > >>
> > > >>   changes since v4:
> > > >>   - move bindings to the arm/firmware directory.
> > > >>   - revise driver init flow to check more property.
> > > >>
> > > >>   changes since v5:
> > > >>   - refactor to more generic security rng driver which
> > > >>     is not platform specific.
> > > >>
> > > >> *** BLURB HERE ***
> > > >>
> > > >> Neal Liu (2):
> > > >>   dt-bindings: rng: add bindings for sec-rng
> > > >>   hwrng: add sec-rng driver
> > > >>
> > > >
> > > > There is no reason to model a SMC call as a driver, and represent it
> > > > via a DT node like this.
> > > 
> > > +1.
> > > 
> > > > It would be much better if this SMC interface is made truly generic,
> > > > and wired into the arch_get_random() interface, which can be used much
> > > > earlier.
> > > 
> > > Wasn't there a plan to standardize a SMC call to rule them all?
> > > 
> > >          M.
> > 
> > Could you give us a hint how to make this SMC interface more generic in
> > addition to my approach?
> > There is no (easy) way to get platform-independent SMC function ID,
> > which is why we encode it into device tree, and provide a generic
> > driver. In this way, different devices can be mapped and then get
> > different function ID internally.
> 
> The idea is simply to have *one* single ID that caters for all
> implementations, just like we did for PSCI at the time. This
> requires ARM to edict a standard, which is what I was referring
> to above.

This sounds all too familiar.

This kind of thing is something that ARM have seems to shy away from
doing - it's a point I brought up many years ago when the whole
trustzone thing first appeared with its SMC call.  Those around the
conference table were not interested - ARM seemed to prefer every
vendor to do off and do their own thing with the SMC interface.

Then OMAP came along with its SMC interfaces, and so did the pain of
not having a standardised way to configure the L2C when Linux was
running in the non-secure world, resulting in stuff like l2c_configure
etc, where each and every implementation has to supply a function to
call its platform specific SMC interfaces to configure a piece of
hardware common across many different platforms.

ARM have seemed reluctant to standardise on stuff like this, so
unless someone pushes hard for it from inside ARM, I doubt it will
ever happen.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
