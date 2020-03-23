Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE27F18F469
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:22:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jh9R3bct4ql/irYrPnwVLDKmOTpgvwgxUDhomIfu+us=; b=pqrcLI0VET9beL
	wtvdXRV1fTDRrODiL6fiy1kZZqlTt3TGKhCoDfHBqi3rkSn1YtPnvZ+r6x0sStDGcqKm2Otrk8d3m
	5ZjZ3CWp9n3oqpaMkAorq0eOZMX0bel88BauMpfhBiyy2eCSYWfBlmV1DH/bIDcaaJ7EviZ9YsiYj
	AUeLEDOBCP6VlCam0QLU77PZRqehJElnw9nL16nWachQGR4o66PDISQaL1L0GWDRcuqMQKQinob3c
	f7MmjHF2Ss10uxojao79xtlRWLnUiA4lYjFM2MzTDvuee5rxwEjOtzA/KeodoKY7UD8bklvgwim4I
	gedmZwbKK3Um4NW+lgDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGM5f-0002AZ-Am; Mon, 23 Mar 2020 12:21:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGM5X-0002A0-06
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:21:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1DCC1FB;
 Mon, 23 Mar 2020 05:21:49 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AFEC3F52E;
 Mon, 23 Mar 2020 05:21:46 -0700 (PDT)
Date: Mon, 23 Mar 2020 12:21:44 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Szabolcs Nagy <szabolcs.nagy@arm.com>
Subject: Re: [PATCH v10 00/13] arm64: Branch Target Identification support
Message-ID: <20200323122143.GB4892@mbp>
References: <20200316165055.31179-1-broonie@kernel.org>
 <20200320173945.GC27072@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320173945.GC27072@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_052151_134046_C7B348D4 
X-CRM114-Status: GOOD (  17.04  )
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>, nd@arm.com,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 05:39:46PM +0000, Szabolcs Nagy wrote:
> The 03/16/2020 16:50, Mark Brown wrote:
> > This patch series implements support for ARMv8.5-A Branch Target
> > Identification (BTI), which is a control flow integrity protection
> > feature introduced as part of the ARMv8.5-A extensions.
> 
> i was playing with this and it seems the kernel does not add
> PROT_BTI to non-static executables (i.e. there is an interpreter).
> 
> i thought any elf that the kernel maps would get PROT_BTI from the
> kernel. (i want to remove the mprotect in glibc when not necessary)

I haven't followed the early discussions but I think this makes sense.

> i tested by linking a hello world exe with -Wl,-z,force-bti (and
> verified that the property note is there) and expected it to crash
> (with SIGILL) when the dynamic linker jumps to _start in the exe,
> but it executed without errors (if i do the mprotect in glibc then
> i get SIGILL as expected).
> 
> is this deliberate? does the kernel map static exe and dynamic
> linked exe differently?

I think the logic is in patch 5:

+int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
+                        bool has_interp, bool is_interp)
+{
+       if (is_interp != has_interp)
+               return prot;
+
+       if (!(state->flags & ARM64_ELF_BTI))
+               return prot;
+
+       if (prot & PROT_EXEC)
+               prot |= PROT_BTI;
+
+       return prot;
+}

At a quick look, for dynamic binaries we have has_interp == true and
is_interp == false. I don't know why but, either way, the above code
needs a comment with some justification.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
