Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6049D45CAB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSatYBt23BnO+J8psoA4lTxAw6jtqXpk7mL66V6ZS8Y=; b=tMC0v7DTYpH2z1
	Lvbbd62KHbkswLccf/110GWMQJjErZRuQCzbiMCiEmGWgLRw09pyhI5+9kD8mBISAlHagkPVDL349
	CzJzzyU+2kN3QdJWAEaq8nIhP/IKbFeAyjYuEHTCsDO3Mvzvz9IemfvxdZYSrfpL4Jl1+F3MWAS7M
	ObuoU3sxhppW1D5PyFfGeBqCq0hoX74bmaNfam1cOrKWno0PdnQYjLcqu8d9cwLzVvpBtorwj3KiA
	blwYssiOi6WEea5hIcIhd4TJtIj2yLlDOtMex3G/vvC0KIPQvzsp9Hp6HBBdoRd05LTewTl6sULpB
	qYGIjM34bUd4tomvGGOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblDQ-0005S1-Kh; Fri, 14 Jun 2019 12:21:56 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl7k-0007Xo-Dk
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:16:09 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hbl7g-0002bC-Mi; Fri, 14 Jun 2019 14:16:00 +0200
Date: Fri, 14 Jun 2019 14:16:00 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v6 00/19] Unify vDSOs across more architectures
In-Reply-To: <d96667d5-e43b-d33a-fbd0-5acfb4904316@arm.com>
Message-ID: <alpine.DEB.2.21.1906141413070.1722@nanos.tec.linutronix.de>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <CAK8P3a11DE0sXteZoaP_N=mDhx3tXitGKddn1ogtFqJBYO-SCA@mail.gmail.com>
 <d96667d5-e43b-d33a-fbd0-5acfb4904316@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051604_663711_C37B5910 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019, Vincenzo Frascino wrote:
> On 31/05/2019 09:46, Arnd Bergmann wrote:
> > One open question I touched in my review is whether we want to
> > have a vdso version of clock_getres() in all architectures or not.
> > I'd prefer to leave it out because there is very little advantage to
> > it over the system call (the results don't change at runtime and
> > can easily be cached by libc if performance ever matters), and
> > it takes up a small amount of memory for the implementation.
> > 
> 
> I thought about it and I ended up with what proposed in this patchset mainly for
> symmetry across all the architectures since in the end they use the same common
> code.
> 
> It seems also that there is some performance impact (i.e.):
> 
> clock-getres-monotonic:    libc(system call): 296 nsec/call
> clock-getres-monotonic:    libc(vdso): 5 nsec/call

clock_getres() is usually not a hot path operation.

> I agree with you though when you say that caching it in the libc is a
> possibility to overcome the performance impact.
> 
> > We shouldn't just need it for consistency because all callers
> > would require implementing a fallback to the system call
> > anyway, to deal with old kernels.

libc has the fallback already. Let's aim for 1:1 replacement of the
architecture code first and then add the extra bits in separate patches.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
