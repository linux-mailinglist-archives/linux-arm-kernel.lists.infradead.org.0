Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D517E5457
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 21:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgpQxQtbV+8u2AC9NQ3QG7dzwFbIHn2pDGfW9AZK4mQ=; b=OHHgUXxQZ3cCjY
	tvtzuhG3kTn85QnHi5AKaOfZz76wcWl73ay7fX4XMpeCT8XllC12/+XP5JR6t2knIs1kE60Lu761Q
	lH5lS5KOaCs7LZnVssRKfQlN/bvjsJZJMDg4VsGwFKllONWg/6MeE7zY2PHtlbIzIJXpj4Yr2HXId
	RbTCFMzh2eF1cGEuoITGNPO5JGVq+L2M7L5DDwvZOXNegAqKR1mib9vQ6AQ3QxmEPw+V2MiNbTWXW
	FxwZ0+SxjQ2x2ru9qxsK2j8uYMoPOHvd9cA4PtqrOC4y5l3POs8ilhAQSmmco14AjhEDoauJSE5f8
	7775eo07G59CVw685sNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO5Ge-0002yP-TN; Fri, 25 Oct 2019 19:29:00 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO5GU-0002xp-Ff
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 19:28:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LH8KzzfbG4w6U8dPlUcYNQGbWhpitBUuBGmvDlCNbnE=; b=KnYWJ5nbxjQDdWqxk1wFn0qpH
 crUUgcBsqcpe9f9+jBHC3X9t7XR11Fc01kqZccQtQQDqxlIOZ+5bCIFlFy1OLEtvrEzITUuVbVVEk
 qPCko4nXxLbE7v+cYcNlNYxjQajVb9FPREMnugAlCA9PyrK6ZauIK3aIAh7x3KZ6KzDkqXNzbOSOe
 0IMPFG44IAExA32p1CrWmn2B8Jy4w5fLwL5zhH5e8/UItlpMhL/Vv/kMmTUOn0AmBG+mQXdUJ0ekM
 lPWT1G70wcMIFdEdmk3zwrFGoSbbez5ZKMhqFr24kPhChu/OvBQJXiST4wkuI0MokGZR5RXZLZtBR
 +BlDKDPbw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:47374)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iO5GO-0004hJ-EU; Fri, 25 Oct 2019 20:28:44 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iO5GN-0007h5-Bl; Fri, 25 Oct 2019 20:28:43 +0100
Date: Fri, 25 Oct 2019 20:28:43 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: arm version of generic VDSO?
Message-ID: <20191025192843.GF25745@shell.armlinux.org.uk>
References: <CAK8P3a2RDBTnKZ-yOJkqY5+2LBeeqvGJ3AMnf+cnqbDVPeUf6g@mail.gmail.com>
 <df19494e-589b-fbf5-bf19-8e8752b5e5be@arm.com>
 <20191025191735.GE25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025191735.GE25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_122850_524716_300F8AC2 
X-CRM114-Status: GOOD (  15.71  )
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
Cc: y2038 Mailman List <y2038@lists.linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 08:17:36PM +0100, Russell King - ARM Linux admin wrote:
> On Thu, Oct 24, 2019 at 01:47:24PM +0100, Vincenzo Frascino wrote:
> > Hi Arnd,
> > 
> > On 10/24/19 1:34 PM, Arnd Bergmann wrote:
> > > Hi Vinvenzo,
> > > 
> > > I'm looking through some of the remaining y2038 work, and noticed
> > > that arch/arm64 has the new generic vdso implementation, but arch/arm
> > > does.
> > > 
> > 
> > This is correct, arch/arm does not have support for the generic vDSO library.
> > 
> > > Do you patches for using the same code on arch/arm?
> > > 
> > 
> > The patches were send for review together with the arm64 ones and the rest of
> > the architectures supported but they did not get merged yet and I do not know why.
> 
> I think you've forgotten, you didn't read the email from the patch
> system, or the "Regression in 5.3-rc1 and later" email thread on the
> mailing lists.
> 
>   https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=8868/1
>   https://lore.kernel.org/lkml/faaa3843-09a6-1a21-3448-072eeed1ea00@googlemail.com/
> 
> Basically, I couldn't merge for the last merge window without causing
> a regression, so it's delayed until the next merge window.

Okay, having discussed with Arnd what the current situation is, he
points out that he needs an additional patch to solve some further
build issues with the generic VDSO patches - caused by the Kconfig
changes in your first patch.

I'd rather that gets fixed up before I apply the patches, rather
than applying a set of patches and a fix on top.

Please re-spin with Arnd's Kconfig changes included.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
