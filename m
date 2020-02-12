Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6837A15A3E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 09:50:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5U1s3SqaDrhWBMkro9Nai27Mu6Ns4ZhciPecS16/be0=; b=Eyeh1Oujcnrw0O
	NmCeXiVsp+6w09HPpdEm80Cn50h5hY7gQr58gHEP288jDsluvRKRgaOkjY71dpDHQpcxb9OqTZfUe
	NMZeu8NZ3QzMbzB2RhAbCITApsi38FttDX5VbZy30YD1CYmsevRWm92HMTTdIbSVjzYChWl9Tm3F5
	CtjT3xTn3eROdwV7+lFCPuPe/oGnbNu4tHfaCEuv5CjLaAxIIjk/uwvRU2XpPweSQ7y8KNANOgYRR
	Br9JdxWtJZLVT71PxvkveVYULXfWhQsxccZ+dbKpyjM5lD8eg8aJ0U97L0AoIdPbPswMMC0PKOxOQ
	QPabuvptSoHwo2G3brIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1njC-00039x-Lu; Wed, 12 Feb 2020 08:50:38 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1nj2-000390-7v
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 08:50:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NpTlCgYb/z6Vi+BVrieZmKjPIGNXZC/UxztwFhX/oFk=; b=1GpmvKdEeXdDZ/5zRSW5wO/Ao
 nIujDFAzKzE3wq0D2nTcxVjtYyGVdgu1Jd5MgAcflDcQotS08VoIoR0OIO/fNaU0VVhPk8cID0BAL
 QEAkby765VihaP7Gjoam3MhHORaKOqUuSWkPj7RvVZXr+I34PhC2m7RFnanmtkN8r7DQrlrm1G7DI
 ArD1iqCp0xPVPiIUKYD+Gob2cBT0UT4YUKEWG2R3mNUdWaA7FXqEQd2nGm4WtJhllzYfyZE9AYJUT
 TA43u+2ZLmgsFKARTkcG9MICatJ953z6e8k5lEgMM03lkQDPJkMtQjKyp7zW/IwKFqKSCHzzLLK0G
 0D0f9OELg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:50926)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j1nim-0001dz-8f; Wed, 12 Feb 2020 08:50:12 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j1nie-0001HG-SN; Wed, 12 Feb 2020 08:50:04 +0000
Date: Wed, 12 Feb 2020 08:50:04 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
Message-ID: <20200212085004.GL25745@shell.armlinux.org.uk>
References: <20200211175507.178100-1-hannes@cmpxchg.org>
 <29b6e848ff4ad69b55201751c9880921266ec7f4.camel@surriel.com>
 <20200211193101.GA178975@cmpxchg.org>
 <20200211154438.14ef129db412574c5576facf@linux-foundation.org>
 <CAHk-=wiGbz3oRvAVFtN-whW-d2F-STKsP1MZT4m_VeycAr1_VQ@mail.gmail.com>
 <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
 <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_005028_436933_5CF5141A 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Michal Hocko <mhocko@suse.com>, Rik van Riel <riel@surriel.com>,
 Catalin Marinas <catalin.marinas@arm.com>, kernel-team@fb.com,
 Dave Chinner <david@fromorbit.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Yafang Shao <laoar.shao@gmail.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Johannes Weiner <hannes@cmpxchg.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <guro@fb.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 05:03:02PM -0800, Linus Torvalds wrote:
> On Tue, Feb 11, 2020 at 4:47 PM Andrew Morton <akpm@linux-foundation.org> wrote:
> >
> > What's the situation with highmem on ARM?
> 
> Afaik it's exactly the same as highmem on x86 - only 32-bit ARM ever
> needed it, and I was ranting at some people for repeating all the
> mistakes Intel did.
> 
> But arm64 doesn't need it, and while 32-bit arm is obviosuly still
> selling, I think that in many ways the switch-over to 64-bit has been
> quicker on ARM than it was on x86. Partly because it happened later
> (so all the 64-bit teething pains were dealt with), but largely
> because everybody ended up actively discouraging 32-bit on the Android
> side.
> 
> There were a couple of unfortunate early 32-bit arm server attempts,
> but they were - predictably - complete garbage and nobody bought them.
> They don't exist any more.
> 
> So at least my gut feel is that the arm people don't have any big
> reason to push for maintaining HIGHMEM support either.
> 
> But I'm adding a couple of arm people and the arm list just in case
> they have some input.
> 
> [ Obvious background for newly added people: we're talking about
> making CONFIG_HIGHMEM a deprecated feature and saying that if you want
> to run with lots of memory on a 32-bit kernel, you're doing legacy
> stuff and can use a legacy kernel ]

Well, the recent 32-bit ARM systems generally have more than 1G
of memory, so make use of highmem as a rule.  You're probably
talking about crippling support for any 32-bit ARM system produced
in the last 8 to 10 years.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
