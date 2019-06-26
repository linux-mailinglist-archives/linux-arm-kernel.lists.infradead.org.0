Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C709056275
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 08:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoteB6GVmxz5HtalV509m+HRwO+twdZ+S4Z1oUIad4Q=; b=hLYqradJQbrQMX
	sSZoVj8su1UM7n+jnC5ZX6o0uv05g/BwBKVcKF6obagTRCsrorpeSd7oM4KzF3QYKklepXgAGUxmP
	HsVBAmcy3wdgUVqgO0ax4zecFvMuGryA5WwoJ86BWjaHGdkSastf7oqCOfcCcP2/BAaUQlcqqD4pI
	21EHvFp3h127H2qpEi7EfhJHnMDHSorlHtG5yEucJOo3l9USaXcKaFavJHjICqbjvOf3sV5oQo0sc
	upHcIHXcJGagZ8zFK+ijvHzOfO4F4r10R+tuNMbtHMY+dykCD1p8MNyfivihxZQ+2izfpcQelgmVi
	ZOKWklWwEddvXMzY6MYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg1aT-0007qD-Nm; Wed, 26 Jun 2019 06:39:22 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg1a7-0007p4-KK
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 06:39:01 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hg1Zx-0005Tw-AG; Wed, 26 Jun 2019 08:38:49 +0200
Date: Wed, 26 Jun 2019 08:38:48 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 1/3] lib/vdso: Delay mask application in do_hres()
In-Reply-To: <alpine.DEB.2.21.1906251851350.32342@nanos.tec.linutronix.de>
Message-ID: <alpine.DEB.2.21.1906260832470.32342@nanos.tec.linutronix.de>
References: <20190624133607.GI29497@fuggles.cambridge.arm.com>
 <20190625161804.38713-1-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906251851350.32342@nanos.tec.linutronix.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_233859_823143_E111B3D8 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, shuah@kernel.org, sthotton@marvell.com,
 andre.przywara@arm.com, Arnd Bergmann <arnd@arndb.de>, huw@codeweavers.com,
 catalin.marinas@arm.com, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, paul.burton@mips.com,
 linux-kselftest@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux@armlinux.org.uk, 0x7f454c46@gmail.com, salyzyn@android.com,
 pcc@google.com, LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019, Thomas Gleixner wrote:
> On Tue, 25 Jun 2019, Vincenzo Frascino wrote:
> > do_hres() in the vDSO generic library masks the hw counter value
> > immediately after reading it.
> > 
> > Postpone the mask application after checking if the syscall fallback is
> > enabled, in order to be able to detect a possible fallback for the
> > architectures that have masks smaller than ULLONG_MAX.
> 
> Right. This only worked on x86 because the mask is there ULLONG_MAX for all
> VDSO capable clocksources, i.e. that ever worked just by chance.

But it's actually worse than that:

> > +		cycles &= vd->mask;
> >  		if (cycles > last)
> >  			ns += (cycles - last) * vd->mult;
> >  		ns >>= vd->shift;

This is broken for any clocksource which can legitimately wrap around. The
core timekeeping does the right thing:

     		 (cycles - last) & mask

That makes sure that a wraparound is correctly handled. With the above the
wrap around would be ignored due to

     	    if (cycles > last)

Stupid me. I should have added big fat comments to the x86 vdso why this
all works correctly and only correctly for the x86 crud. That was part of
squeezing the last cycles out of the vdso.

Sorry for not noticing earlier. Working on a fix.

Thanks,

	tglx



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
