Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A42C186C2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 14:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gtxxUHZBd1loDEUWTASX915zp7WnbnxM1HyDho4AqA=; b=Fy8LSElkUf5oa0
	dybuvKpiLxooREKCNwFdSEHYwDxwRwnJXf+U+q35lW09b6bdGQIFDq6uyDuhKypjEHZIh0N+KvqD6
	E8x5cd0GZn1zaXyPJPRNnoFhT9nIDME3hFAM5C2AjRMVrYW8sNiIEkV/HnUwZwkC4PcWdTbEW9IHK
	9PfFGfX21pTGWOmcUDHuUL7unCm1lhIQQ1cjAADDMqU1XGTmda8CNHqG/naK59BW7PGKTssrU/Sxn
	medpwCZHSg1d9X7lY0oUe6mKoRlwlgfsXM+skfZpEFIyBluoqEeecEHCzn6On6/QLT2SENGzms8Nx
	BoAYe0f7PWxzoFtTTPzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDpti-0005DK-NT; Mon, 16 Mar 2020 13:35:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDptR-0005CI-Fh
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 13:34:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 31D61FEC;
 Mon, 16 Mar 2020 06:34:55 -0700 (PDT)
Received: from [10.37.9.38] (unknown [10.37.9.38])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E9C093F52E;
 Mon, 16 Mar 2020 06:34:49 -0700 (PDT)
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp> <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316103437.GD3005@mbp> <77a2e91a-58f4-3ba3-9eef-42d6a8faf859@arm.com>
 <20200316112205.GE3005@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <9a0a9285-8a45-4f65-3a83-813cabd0f0d3@arm.com>
Date: Mon, 16 Mar 2020 13:35:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200316112205.GE3005@mbp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_063457_566527_0A96FAD7 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 linux-mips@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrei Vagin <avagin@openvz.org>,
 Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 3/16/20 11:22 AM, Catalin Marinas wrote:
> On Mon, Mar 16, 2020 at 10:55:00AM +0000, Vincenzo Frascino wrote:
>> On 3/16/20 10:34 AM, Catalin Marinas wrote:
[...]


> 
> As I said above, I don't see how removing 'if ((u32)ts >= (1UL << 32))'
> makes any difference. This check was likely removed by the compiler
> already.
> 
> Also, userspace doesn't have a trivial way to figure out TASK_SIZE and I
> can't see anything that tests this in the vdsotest (though I haven't
> spent that much time looking). If it's hard-coded, note that arm32
> TASK_SIZE is different from TASK_SIZE_32 on arm64.
> 
> Can you tell what actually is failing in vdsotest if you remove the
> TASK_SIZE_32 checks in the arm64 compat vdso?
> 

To me does not seem optimized out. Which version of the compiler are you using?

Please find below the list of errors for clock_gettime (similar for the other):

passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
clock-gettime-monotonic/abi: 1 failures/inconsistencies encountered

passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
clock-gettime-monotonic-coarse/abi: 1 failures/inconsistencies encountered

passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
clock-gettime-realtime/abi: 1 failures/inconsistencies encountered

passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
clock-gettime-realtime-coarse/abi: 1 failures/inconsistencies encountered

Please refer to [1] for more details on the test.

[1]
https://github.com/nlynch-mentor/vdsotest/blob/master/src/clock_gettime_template.c

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
