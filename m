Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B0B643EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 10:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G50+9Zw/vyk0tHQYhP49veBDHqFhe2+vjrTFpG4fOZM=; b=rrp/YXwCXMyNGu
	lT6DtYmX6h5nO4LX0abQR43jQlZWPHgkCOs4zcGNfCQf2jXwSOLOc1LsuDhyW8geZ4Jg6ePhBgZBr
	c5SSWGyaN9DfF7izevpc7CyVL3XCUJhHyW51p1hpEJeKqW1vwyj0vRPRP4XlI29vcOSfMEvA8z3tc
	SFAKp/2IgvvJxh6dHAJvRy0eqZa1GsKALZuwXM92w0pQvVkWURvkJZFTtxxOQ68JpcZ8Oa58n+tUR
	5RZGgiusOIRp+dKvr05qZxOx1/RasPoGnksPYwQbppcbhXBfpQmbel/85TbV2hdi/yY6bEywVM+a5
	+T6KL5AJQiKCa0NGP9yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl8RF-0004SK-7y; Wed, 10 Jul 2019 08:58:57 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl8Qq-0004KC-9G
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 08:58:33 +0000
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hl8Ql-0006xp-9o; Wed, 10 Jul 2019 10:58:27 +0200
Date: Wed, 10 Jul 2019 10:58:25 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v7 10/25] arm64: compat: Add vDSO
In-Reply-To: <20190710082750.mvm3e6myzpqsurga@willie-the-truck>
Message-ID: <alpine.DEB.2.21.1907101057190.1758@nanos.tec.linutronix.de>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-11-vincenzo.frascino@arm.com>
 <CALAqxLXxE5B+vVLj7NcW8S05nhDQ+XSKVn=_MNDci667JDFEhA@mail.gmail.com>
 <20190710082750.mvm3e6myzpqsurga@willie-the-truck>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_015832_500198_8F88C6D0 
X-CRM114-Status: GOOD (  16.56  )
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Andre Przywara <andre.przywara@arm.com>, John Stultz <john.stultz@linaro.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Huw Davies <huw@codeweavers.com>, lkml <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jul 2019, Will Deacon wrote:
> On Tue, Jul 09, 2019 at 09:02:54PM -0700, John Stultz wrote:
> > I tried to bisect things down a bit, but as some later fixes are
> > required (at one point, date was returning the start epoch and never
> > increasing), this hasn't worked too well. But I'm guessing since I
> > see: "CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will
> > not be built", and the system is half working, I'm guessing this is an
> > issue with just the 32bit code failing.  While I can try to sort out
> > the proper CROSS_COMPILE_COMPAT in my build environment, I assume
> > userland shouldn't be crashing if that value isn't set.
> > 
> > Any chance this issue has already been raised?
> 
> First I've seen of it, although Vincenzo is likely to know better than me.
> In the meantime, please can you share your .config?

I think the key is: CROSS_COMPILE_COMPAT not defined or empty. And then run
32bit userspace.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
