Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C661C50DD7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZiAFKpx1PpdIP6+akTiHnl7XX8LvOYn8M3G/qNU3ADA=; b=RwDaHyKc6Gdmpo
	Iv4Pb0kSqJ9Kq3cgfU4BI4/iG9aYzrQJHLmWkKXxObwdSRSWoFhCnh5dCiAI3djOjmhDEl2U4Lmdt
	GjGFCBtLtWLDjXVPbNz/cu2T/yZOJB8oR08odMYKhdJY9qgpj0K/tWLYOkSwW9Xi1sKwL52RjIC0c
	ijUyyDywPPVqsRNMTrIihF7+qCEDkiapeh3xlRGbGGadkjDNCoMl620T11vzr1z47vQ9hc71mSTUb
	F2EZlMCRehnX4QH7+cVjPzD1NcHKtqskLlnpJFjnZZkypclmLdAcznKsyz6ecin1F5LvcYRvUgZJM
	Xg7AKUfwuwjkFzd6/acQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPtZ-0007au-2K; Mon, 24 Jun 2019 14:24:33 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPtK-0007aJ-7T
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:24:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t1GdDqR3wzu6IU3N+1pA2QXIBdVreuMrAW41kvrOVKU=; b=m1LB7V6AcXMifsxW+zzSdfFLz
 KTyJtpZPdFWcZY9srh//kS/vI+ev1CokN6ZTc3z8RpR0sjJpMDhvhLYOL3JYgeqejAAXwNYSa2GYg
 DXohdbgewTD7fykXUUIwrfcG2LSJR3mWP9wd5KtNFfPcRlOQ1Oz41/rvIaxsqLKKTqMQiLO4Y3osN
 ypvmJ3KVYlUIyt1Kniowqgc3X/WJVQGky1WqO4SxyPnhINmWYxT02JlXMayVMXPbghes6xHq1Rq9t
 HW/5pyD6q2gqROzj/If6FiH2rII/ELe8D+6mPOmfDEatloIqSSi9aTzsE0Ff6uIUXNpcUFj/fG8Z6
 PftrVaNrw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59042)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hfPsv-0000Ao-Bj; Mon, 24 Jun 2019 15:23:53 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hfPso-0006Mg-K2; Mon, 24 Jun 2019 15:23:46 +0100
Date: Mon, 24 Jun 2019 15:23:46 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v7 00/25] Unify vDSOs across more architectures
Message-ID: <20190624142346.pxljv3m4npatdiyk@shell.armlinux.org.uk>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
 <alpine.DEB.2.21.1906241613280.32342@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1906241613280.32342@nanos.tec.linutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_072418_265123_D10A1665 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Shuah Khan <shuah@kernel.org>, linux-arch@vger.kernel.org,
 Dmitry Safonov <0x7f454c46@gmail.com>, Dmitry Safonov <dima@arista.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Andre Przywara <andre.przywara@arm.com>, Sasha Levin <sashal@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Andy Lutomirski <luto@kernel.org>, Michael Kelley <mikelley@microsoft.com>,
 Peter Collingbourne <pcc@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Andrei Vagin <avagin@openvz.org>,
 Huw Davies <huw@codeweavers.com>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 04:18:28PM +0200, Thomas Gleixner wrote:
> Vincenzo,
> 
> On Mon, 24 Jun 2019, Thomas Gleixner wrote:
> 
> > I did not merge the ARM and MIPS parts as they lack any form of
> > acknowlegment from their maintainers. Please talk to those folks. If they
> > ack/review the changes then I can pick them up and they go into 5.3 or they
> > have to go in a later cycle. Nevertheless it was well worth the trouble to
> > have those conversions done to confirm that the new common library fits a
> > bunch of different architectures.
> 
> I talked to Russell King and he suggested to file the ARM parts into his
> patch system and he'll pick them up after 5.3-rc1.
> 
>    https://www.arm.linux.org.uk/developer/patches/
> 
> I paged out how to deal with it, but you'll surely manage :)

Easy way: ask git to add the "KernelVersion" tag as a header to the
email using --add-header to e.g. git format-patch, and just mail them
to patches@armlinux.org.uk

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
