Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 341A61C99D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 20:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOCXoC4kNUMf2Aafm/BrIibiAQyDWFxJorXVMqpq+ho=; b=XmP4nCq6SPqZMh
	qPeqg1XbzTVjkfr4y3TyYbgD0ps9Lqc6OuvZl/rp6eVoydqEj1q1U3OWVCCKsMa4/zpCASMAMoz1B
	joLVGrS+ExtVJ8Dl6g3KnU2cREZ7gbGXjqIGYYxkbWMO3BDu81GdVZfk4v7K09DgnQ03CgnwBEuHd
	ObUedzJdhf7WPh1NtKwaM6Tk0O5vCj7Tkz5oj1MeZpCLp5uCjxQwjjk6bOrvmlkVgqpJLnCtiZg6/
	/eqFE5bAkopCH83nL+V7COd7dSjUmw6YxpXz3Aqc3NAxf7QDCmVkb6qpRl3Xzq9oKEY2xoP1S2JkQ
	dvlAmdGfRM4y5qLnfX1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWlbm-00078B-Ur; Thu, 07 May 2020 18:50:58 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWlbf-00076j-AC
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 18:50:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KUFueCixyr9ZGImB+bHwzqcTN97qUllQYUjflbA/+3c=; b=eqKJAF3fxRs0UQKWkwA+VSOrX
 tB/oVp/vDFKhVmFhroRmDTT7d9tjJ20yLiYdXQbjA+qMBsKbTGibyPWWRKOONB7Yc2MnMyEZ2n0s/
 dEAfqtXhJrU1MFut6f8Q7Z7/Pc4P3t5+TJdCZWMNbLL6DFHX2aYT+gWG1h8OTg9w8WwU6v2CLVHx0
 ph360na3XvvTL2L4S2PzSgfS07ETFlaR7qKyK7+GYx3dWZOp7UFPXOUSR7MiHgjAo/D9jNAfh0aKr
 obyJxPHuHtYvosfHMh505TZ7DrOMx4pod1nnepx9HipeWCemo9baGsWMyL80giVNkB6q8yCd4z/C3
 FkBcmQiFw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:37270)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jWlbV-0006pJ-LY; Thu, 07 May 2020 19:50:41 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jWlbL-0000zz-3p; Thu, 07 May 2020 19:50:31 +0100
Date: Thu, 7 May 2020 19:50:31 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 1/2] ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting
Message-ID: <20200507185030.GT1551@shell.armlinux.org.uk>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-2-f.fainelli@gmail.com>
 <20200507103039.GR1551@shell.armlinux.org.uk>
 <3e7ee3ba-fae9-0ec3-fe1f-c076fc28aba9@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3e7ee3ba-fae9-0ec3-fe1f-c076fc28aba9@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_115051_349509_E0068529 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 sboyd@kernel.org, Kevin Cernekee <cernekee@gmail.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 10:25:16AM -0700, Florian Fainelli wrote:
> 
> 
> On 5/7/2020 3:30 AM, Russell King - ARM Linux admin wrote:
> > On Wed, May 06, 2020 at 04:50:08PM -0700, Florian Fainelli wrote:
> >> From: Kevin Cernekee <cernekee@gmail.com>
> >>
> >> If ARCH_SPARSEMEM_ENABLE=y and ARCH_{FLATMEM,DISCONTIGMEM}_ENABLE=n,
> >> then the logic in mm/Kconfig already makes CONFIG_SPARSEMEM the only
> >> choice.  This is true for all of the existing ARM users of
> >> ARCH_SPARSEMEM_ENABLE.
> >>
> >> Forcing ARCH_SPARSEMEM_DEFAULT=y if ARCH_SPARSEMEM_ENABLE=y prevents
> >> us from ever defaulting to FLATMEM, so we should remove this setting.
> > 
> > No explanation why that is desirable.
> 
> This was explained in the original submission out of which only the
> first patch landed upstream:
> 
> https://lkml.org/lkml/2015/6/4/756

Sorry, I don't see where.  The message you link to is for patch 1.
I'd say that the reason only the first patch landed is because that's
all I was happy with.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
