Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E1E1EF418
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 11:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwFBJQqno9tLGsMHp7gaLPQ52368oMU5mlfUzxdZ374=; b=CgQXtXNnMZseTb
	X3GJO2xEDjMoVag8WlaoT1OeZ0UzKIsemRYtqaM69LMTsE+Q8pr4kYsoXUGtlToV7kaztpIyJHP7x
	P9VwSqn8hrEzzOdkA6E73r0VvNptXO8TYtdCGdJltdk3dojymaoAZvjEQPu2MaKt2M0WfTo+0KKRv
	VzvWuZKNzCLg+sgimtuWhawQGNWhnJPvq1E/86ay9F5jvns8CkfvDf5xdvfRWZTnNwYv5wlX0XyMr
	XpP+EXmbaM51wCPIf6mycA87Y6aL1mL01/PVd4ZtA0679sc6F+EUUUJh4teD3YMZXm3IcEW8MlNlG
	ji+sAG5sA8xrLhI5VPdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh8eA-0005tM-VK; Fri, 05 Jun 2020 09:28:18 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh8dz-0005rO-MW; Fri, 05 Jun 2020 09:28:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JD+f68C2xsdIda1o1WPqknMCkMS5OJ8axT7mWVbzTRo=; b=GWG19R4tIHcgtyxteX9uf10fE
 Z7WE2epE/MSItPTXR+xqspTQxH6YYeuyf77a9K8BzhLG1DnAAZcNcrtSQjXOoXrxOnxcz1mjFw40K
 nSHrepHcaoQaIO8hUwaFq3LV7fOPwfekVShU8hky0XpzRdL4JR35CYeaVsIeRIxQh+OhQOmzBtgjj
 JXUyZR1FY1SjUc+B5VpL5f96FdupwBcPTPSGW97+WWiTO0OD/KYX25FWsC82Jpmaj51svWJyJgK4h
 uRsnY2W0Pyr8ypDvkUme5dMS8gpKoiSGoAFv9PNjSB/7k1PvVIpQZZAh/eMLnMzcPbsvhP+Ah7akZ
 mbIqw9Ujw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:49630)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jh8dR-0001kC-TS; Fri, 05 Jun 2020 10:27:34 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jh8dC-0007LF-Q0; Fri, 05 Jun 2020 10:27:18 +0100
Date: Fri, 5 Jun 2020 10:27:18 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Neal Liu <neal.liu@mediatek.com>
Subject: Re: Security Random Number Generator support
Message-ID: <20200605092718.GH1551@shell.armlinux.org.uk>
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
 <CAMj1kXHjAdk5=-uSh_=S9j5cz42zr3h6t+YYGy+obevuQDp0fg@mail.gmail.com>
 <85dfc0142d3879d50c0ba18bcc71e199@misterjones.org>
 <1591169342.4878.9.camel@mtkswgap22>
 <fcbe37f6f9cbcde24f9c28bc504f1f0e@kernel.org>
 <20200603093416.GY1551@shell.armlinux.org.uk>
 <1591341543.19510.4.camel@mtkswgap22>
 <20200605080905.GF1551@shell.armlinux.org.uk>
 <1591347582.21704.9.camel@mtkswgap22>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591347582.21704.9.camel@mtkswgap22>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_022807_738268_4DDE41EC 
X-CRM114-Status: GOOD (  21.17  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Julius Werner <jwerner@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Marc Zyngier <maz@kernel.org>, Matt Mackall <mpm@selenic.com>,
 Sean Wang <sean.wang@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo =?utf-8?B?KOmDreaZtik=?= <Crystal.Guo@mediatek.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 04:59:42PM +0800, Neal Liu wrote:
> On Fri, 2020-06-05 at 09:09 +0100, Russell King - ARM Linux admin wrote:
> > On Fri, Jun 05, 2020 at 03:19:03PM +0800, Neal Liu wrote:
> > > On Wed, 2020-06-03 at 17:34 +0800, Russell King - ARM Linux admin wrote:
> > > > This kind of thing is something that ARM have seems to shy away from
> > > > doing - it's a point I brought up many years ago when the whole
> > > > trustzone thing first appeared with its SMC call.  Those around the
> > > > conference table were not interested - ARM seemed to prefer every
> > > > vendor to do off and do their own thing with the SMC interface.
> > > 
> > > Does that mean it make sense to model a sec-rng driver, and get each
> > > vendor's SMC function id by DT node?
> > 
> > _If_ vendors have already gone off and decided to use different SMC
> > function IDs for this, while keeping the rest of the SMC interface
> > the same, then the choice has already been made.
> > 
> > I know on 32-bit that some of the secure world implementations can't
> > be changed; they're burnt into the ROM. I believe on 64-bit that isn't
> > the case, which makes it easier to standardise.
> > 
> > Do you have visibility of how this SMC is implemented in the secure
> > side?  Is it in ATF, and is it done as a vendor hack or is there an
> > element of generic implementation to it?  Has it been submitted
> > upstream to the main ATF repository?
> > 
> 
> Take MediaTek as an example, some SoCs are implemented in ATF, some of
> them are implemented in TEE. We have no plan to make generic
> implementation in "secure world".

I think you have your answer right there - by _not_ making the API
generic and giving no motivation to use it, different vendors are
going to do different things (maybe even with a different API as well)
so there's no point the kernel driver pretending to be a generic
driver. If the driver isn't going to be generic, I see little point in
the SMC function number being in DT.

I think that as a _whole_ is a big mistake - there should be a generic
kernel driver for this, and there should be a standardised interface to
it through firmware.  So, I would encourage you to try to get it
accepted one way or another amongst vendors as a standardised
interface.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
