Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7494D3BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=saRVNoDXbN3/AIwOSDhpX62/IKultB8N+iV8fIzo2uc=; b=madlahLR3zT4Xe
	ge+qNGG116MTYfBtpXupCsQ3BssxHDWlsUHqzQPlAR5/hN4QPerrqnxkgODcwpphu8paaOUl52Gaz
	ZXeboBzN16u1ZLet1KQD1TdG2MRHb8dyqokP301E5qwzQzuHKTzyUg1uplJpjvLS2Lqm5njV+V0qJ
	KKSnbsmWvD/CeqdV9OOal2CfTWCasjxYnGbo7GogOZTEMD1Uaqvp2Xl+KWLr6IYtqO1vnI8xI3uO2
	WRGR6WcsUif7fMPc0Prclqv8KBSQm7xkP8ALGJaPIzJoNWAaJdXeswuPMdjAWBh9VW/W4cZlKbbiM
	6V/ZLm9WbTu3EEFQOTRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzvJ-0000ef-Q3; Thu, 20 Jun 2019 16:28:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzun-0000XB-IL
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:28:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 497012B;
 Thu, 20 Jun 2019 09:27:56 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E69803F246;
 Thu, 20 Jun 2019 09:27:53 -0700 (PDT)
Date: Thu, 20 Jun 2019 17:27:46 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v6 00/19] Unify vDSOs across more architectures
Message-ID: <20190620172746.7f92cb14@donnerap.cambridge.arm.com>
In-Reply-To: <20190530141531.43462-1-vincenzo.frascino@arm.com>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_092757_749878_6254D619 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, Peter Collingbourne <pcc@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 linux-kselftest@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Mark Salyzyn <salyzyn@android.com>, Shuah Khan <shuah@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 May 2019 15:15:12 +0100
Vincenzo Frascino <vincenzo.frascino@arm.com> wrote:

Hi,

> vDSO (virtual dynamic shared object) is a mechanism that the Linux
> kernel provides as an alternative to system calls to reduce where
> possible the costs in terms of cycles.
> [ ... ]
> The porting has been benchmarked and the performance results are
> provided as part of this cover letter.

I can't reveal the absolute numbers here, but vdsotest-bench gives me
quite some performance gain on my board here ("time needed on v6" divided
by "time needed on 5.2-rc1", so smaller percentages are better):
clock-gettime-monotonic:	23 %
clock-gettime-monotonic-raw:	30 %
clock-gettime-tai:		 5 %
clock-getres-tai:		 5 %
clock-gettime-boottime:		 5 %
clock-getres-boottime:		 5 %
clock-gettime-realtime:		25 %
gettimeofday:			26 % 
The other numbers stayed the same or differed by just 1 ns, which seems to
be within the margin of error, as repeated runs on the same kernel suggest.
The 5% numbers are of course those were we went from a syscall-only to the
newly added arm64 VDSO implementation, but even the other calls improved
by a factor of 3 or more.

Sounds like a strong indicator that this is a good thing to have.

Not sure if "running some benchmark a couple of times on a single machine"
qualifies for this, but I guess it means:

Tested-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
