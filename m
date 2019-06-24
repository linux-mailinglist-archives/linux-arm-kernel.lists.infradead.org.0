Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB46C50B1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 14:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8G1IWMUDYDuKYk63dBQdEuC+YW+5cTgJgVC7GuyZnXo=; b=ujXqf9HjNf5+H/
	oyWd8W/BcRgp74LggHX1ukP0zWFY0kuqsVSENTRpRbZ+C31ZG7UQbijfT6EJ+t2OtYQxw4BTkz88Y
	3Yrn2z/XxxpUTlKRuJP3OZDXNhQsmcSss2WRQ7AXR2IhvlYu+68Je7NaIBzpFVRjAM/GErqhs1XSE
	2QrmVG4KPKr/DpAT2Dku3y6KqWzKfr8+XUiGywWWKfUM8ikul9nDO+BQvT2meF56bhXwdBLoLTJqH
	EoMwcRETQB7YoKkq/J6d43fDekMTPSYaGZ4ihqIIYzYbdDC69xX9YlMW+MJ/7IEe3tuLtrWmqV4Ug
	FRlEFc7YoMOO++/ORMwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfORG-0005Z3-Fx; Mon, 24 Jun 2019 12:51:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOR5-0005YH-7y
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 12:51:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F20E7344;
 Mon, 24 Jun 2019 05:51:00 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7EDFB3F718;
 Mon, 24 Jun 2019 05:50:58 -0700 (PDT)
Date: Mon, 24 Jun 2019 13:50:55 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v7 00/25] Unify vDSOs across more architectures
Message-ID: <20190624135055.7020fc2a@donnerap.cambridge.arm.com>
In-Reply-To: <20190621095252.32307-1-vincenzo.frascino@arm.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_055103_331286_A0EAAE81 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Shijith Thotton <sthotton@marvell.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Paul Burton <paul.burton@mips.com>, linux-kselftest@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Jun 2019 10:52:27 +0100
Vincenzo Frascino <vincenzo.frascino@arm.com> wrote:

Hi,

> vDSO (virtual dynamic shared object) is a mechanism that the Linux
> kernel provides as an alternative to system calls to reduce where
> possible the costs in terms of cycles.
[ ... ]

Some numbers for the ARM(32) part:

I booted my trusted old Calxeda Midway server (Cortex A-15 cores) and ran
the vdsotest benchmark on it. The results are:
(vdso: times, in nsec/call; n/t: "not tested" (=not implemented))
call				5.2-rc3	5.2-rc3-vdso
clock-gettime-monotonic:        147     142
clock-getres-monotonic:         n/t     34
clock-gettime-monotonic-coarse: 90      96
clock-getres-monotonic-coarse:  n/t     36
clock-gettime-monotonic-raw:    431     142
clock-getres-monotonic-raw:     n/t     35
clock-gettime-tai:              598     150
clock-getres-tai:               n/t     34
clock-gettime-boottime:         592     142
clock-getres-boottime:          n/t     34
clock-gettime-realtime:         149     142
clock-getres-realtime:          n/t     34
clock-gettime-realtime-coarse:  86      96
clock-getres-realtime-coarse:   n/t     36
getcpu:                         n/t     n/t
gettimeofday:                   133     110

So there are some minor improvements, two minor regressions, some
significant improvements (factor 3-4), and some dramatic improvements
(where we actually gained VDSO support).
Overall a pretty impressive outcome for an "Odd fixes" architecture,
especially as it should reduce the future maintenance burden.

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
