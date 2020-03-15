Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9D8185F11
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 19:32:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Bm38f0cIQguZfDnBSVGBhXv8aB7Vkb2jErC9x8SX84=; b=UXDbWT5CBw0LzZ
	sPujfSEh2JK6vyAqrUNQsngkxARcuY8U5jRZipTjAxGZyPkkrAxblmzqpKqUxbBLBQkUeB3cS+vyG
	ILvPQ15/ck/UJ+ajq+8SuCSrlY83l5ZBSox70WuSADrlBU+pmbNFTu2KlkITa5euavx07wi1bI0Uz
	PZLNJe/Mi8b3MhEtgFa2fAjbY3m9vMBbp5jU27t27N44h4nrhIM+UHAQTI6ojt4GR2tJ3qB/eoFCx
	ixaMJGsASvah/VtBMWk9yWMXR5bDECoiY8KzjplRizD2Xd1v5w9Z6L1rjKsYVa59dZcgs86Auf6/E
	leG/S/1yG3rXttzAS/rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDY3y-0004iM-W8; Sun, 15 Mar 2020 18:32:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDY3q-0004i2-Ly
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 18:32:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E967D1FB;
 Sun, 15 Mar 2020 11:32:29 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BEC763F67D;
 Sun, 15 Mar 2020 11:32:26 -0700 (PDT)
Date: Sun, 15 Mar 2020 18:32:16 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v3 21/26] arm64: Introduce asm/vdso/arch_timer.h
Message-ID: <20200315183151.GE32205@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-22-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313154345.56760-22-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_113230_756479_B81F16BC 
X-CRM114-Status: GOOD (  12.69  )
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

On Fri, Mar 13, 2020 at 03:43:40PM +0000, Vincenzo Frascino wrote:
> The vDSO library should only include the necessary headers required for
> a userspace library (UAPI and a minimal set of kernel headers). To make
> this possible it is necessary to isolate from the kernel headers the
> common parts that are strictly necessary to build the library.
> 
> Introduce asm/vdso/arch_timer.h to contain all the arm64 specific
> code. This allows to replace the second isb() in __arch_get_hw_counter()
> with a fake dependent stack read of the counter which improves the vdso
> library peformances of ~4.5%. Below the results of vdsotest [1] ran for
> 100 iterations.

The subject seems to imply a non-functional change but as you read, it
gets a lot more complicated. Could you keep the functional change
separate from the header clean-up, maybe submit it as an independent
patch? And it shouldn't go in without Will's ack ;).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
