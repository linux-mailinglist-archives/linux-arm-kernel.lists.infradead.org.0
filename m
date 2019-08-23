Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362CC9AF5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIfnwsNTxy3EQ/tbYWpAozgwczD9xinPv9xE0jg2DQ4=; b=rh75ZZDF6xKdJO
	s3pNsZrUNre58nypjm2RzUjc8uP3IWaaWa3v+G1+T8jCmimhfoUXMvjf9vCD1BX76o0tXwrwm00yc
	gH4sVv8P/M/i2BGEGkkI9ltdOZRsJ80P+sigGfv+rkgdcpbHtkmP075hRR1Rh5kvit5D50S3lMSkf
	Wgp9/X2BPC/rcEDVgwts7ZqTeke4LK2EnrYNPUENVeNld+R4Z59Jt1V3blMEfpVHElGVSPMijxPL0
	BO82Vrflq+wNmLq4O4+hFtYObkkaH8Gx+Bv5FIZnuhnR2PaNSJr9vIQtXPve+9im3fmRPULHU4OvR
	/D5ZvPH2yDLU0w4IRgew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18eJ-00029Q-IM; Fri, 23 Aug 2019 12:26:35 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18eC-00028t-Le
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:26:30 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1i18do-0001xv-4e; Fri, 23 Aug 2019 14:26:04 +0200
Date: Fri, 23 Aug 2019 14:25:58 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: Regression in 5.3-rc1 and later
In-Reply-To: <20190823111712.GB13294@shell.armlinux.org.uk>
Message-ID: <alpine.DEB.2.21.1908231424230.1896@nanos.tec.linutronix.de>
References: <faaa3843-09a6-1a21-3448-072eeed1ea00@googlemail.com>
 <20190823103654.GX13294@shell.armlinux.org.uk>
 <20190823104050.o6golaa4fmdd7np5@willie-the-truck>
 <20190823111712.GB13294@shell.armlinux.org.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_052628_851248_D25BF8EF 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux@rasmusvillemoes.dk, catalin.marinas@arm.com, will.deacon@arm.com,
 LKML <linux-kernel@vger.kernel.org>, linux-kselftest@vger.kernel.org,
 vincenzo.frascino@arm.com, shuah@kernel.org, linux-arch@vger.kernel.org,
 Will Deacon <will@kernel.org>, daniel.lezcano@linaro.org, arnd@arndb.de,
 andre.przywara@arm.com, Chris Clayton <chris2553@googlemail.com>,
 0x7f454c46@gmail.com, pcc@google.com, linux-arm-kernel@lists.infradead.org,
 huw@codeweavers.com, linux-mips@vger.kernel.org, ralf@linux-mips.org,
 salyzyn@android.com, paul.burton@mips.com, sthotton@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 23 Aug 2019, Russell King - ARM Linux admin wrote:

> On Fri, Aug 23, 2019 at 11:40:50AM +0100, Will Deacon wrote:
> > On Fri, Aug 23, 2019 at 11:36:54AM +0100, Russell King - ARM Linux admin wrote:
> > > To everyone on the long Cc list...
> > > 
> > > What's happening with this?  I was about to merge the patches for 32-bit
> > > ARM, which I don't want to do if doing so will cause this regression on
> > > 32-bit ARM as well.
> > 
> > tglx fixed it:
> > 
> > https://lkml.kernel.org/r/alpine.DEB.2.21.1908221257580.1983@nanos.tec.linutronix.de
> > 
> > which I assume is getting routed as a fix via -tip.
> 
> Right, so Chris reported the issue to everyone involved.  Tglx's
> reply severely trimmed the Cc list so folk like me had no idea what
> was going on, removing even the mailing lists.  On the face of it,
> it looks like an intentional attempt to cut people out of the loop
> who really should've been kept in the loop.  Yea, that's just great.

Sorry that was no intentional attempt to cut anyone out of the
loop. Trimmed it too agressively without applying much brain.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
