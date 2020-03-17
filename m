Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB34188C99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 18:52:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2ZrwWiFrhS/Yy6xmZ49ZxqVM1muXC0vK+Yr7SKrBx0=; b=PCnhfQWZHrXrHA
	Que5grIOcxxUyz/OVVYULUxzKzX26CvgZeoz2X5G1+53XrVCVZLWsDi7iB723EcWlY7qM0Q4F+A9Z
	MxpS4FycY4bwkcHFArj2ei8XtmTfJmYUTjwv6Hb2uP2hJIEVuk7h9AvuKF3RfnQnWaOI5dH7zYpze
	0GIewSYd47fXUkY1/5q7fT7H4FD8/RACnJ36MBcHDE2lTWb9oVfaOowOrSRCU2Dgfr1bxtqfAMf1G
	mKFTYVL94EOEVE689Ym8Yg+mk6jVU48y9l8QFW1GUpADW/aLOeQmdWuLDSFaPF0dymU0kDLqgVHLn
	wDL4+UdWORdCLIJt+lBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEGOP-0001Qg-JT; Tue, 17 Mar 2020 17:52:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEGOH-0001Q3-L7
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 17:52:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6A8831B;
 Tue, 17 Mar 2020 10:52:32 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C112E3F67D; Tue, 17 Mar 2020 10:52:29 -0700 (PDT)
Date: Tue, 17 Mar 2020 17:52:27 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v4 19/26] arm64: Introduce asm/vdso/processor.h
Message-ID: <20200317175227.GF632169@arrakis.emea.arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-20-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317122220.30393-20-vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_105233_736097_8014326F 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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

On Tue, Mar 17, 2020 at 12:22:13PM +0000, Vincenzo Frascino wrote:
> The vDSO library should only include the necessary headers required for
> a userspace library (UAPI and a minimal set of kernel headers). To make
> this possible it is necessary to isolate from the kernel headers the
> common parts that are strictly necessary to build the library.
> 
> Introduce asm/vdso/processor.h to contain all the arm64 specific
> functions that are suitable for vDSO inclusion.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

This patch looks fine, though it depends on the previous discussion on
compat ABI compatibility.

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
