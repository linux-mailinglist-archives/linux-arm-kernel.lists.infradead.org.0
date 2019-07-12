Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DE167294
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 17:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSj/KCocIC+DUuMAczA7TpxDPbLEn7AYZo4O1CDBk3k=; b=APW413qMXCEceB
	d23JdkGj6Kode/hdrTlFG4vA7ve7iVTBzqBzZ38YrNENc8++nFWSdhwENEYsyx84frU5Nst30duN0
	n1X7eqJ6ML5pWmNO1/BoRJgb35Gyn8eHhz6cXN4HzFGKJLwYxxKAB8SpI4bePwwHUn5adtnrGCp/t
	KFv76zliescoHkSf/3Uqg3Sa4cQS34wRYStnfqUUMJTMGxBIx/YHpuq2nnIKiF/ZONmNsPmwfTEPf
	xB9sI4vqFHW6oDxo8EnLid/ohAOi5Lt7i3lX4fLhkuETiukkesZvI8hCfSyabkUuHiLzNeglHZrCy
	si3sg1GWuLBCSUsKUZCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlxca-0008IK-KZ; Fri, 12 Jul 2019 15:38:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlxcN-0008Hj-I8
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 15:37:52 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E4FE20863;
 Fri, 12 Jul 2019 15:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562945871;
 bh=PH6b4FwrGMrv9z9RDpSOpBcty9ihP8OMeR1bpqd6mEQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EfVv4bKTgQPalAa/KFu4nQKKiH4mCnoSoMFyKsNqliy3LLQDTJPIj40hBDqZeGt79
 Hg2rWJ6NfHY/NlcQFCm24ZJxIIPnN3W9JMZb7fhb5/V5r/Q83HQGp00w7bsTT6SjUq
 fZjcvHBaq+IBbFJbKdu0JABrC1NjuLD9si4ga00Q=
Date: Fri, 12 Jul 2019 16:37:46 +0100
From: Will Deacon <will@kernel.org>
To: Naohiro Aota <naohiro.aota@wdc.com>
Subject: Re: [PATCH v2 2/2] arm64/vdso: fix flip/flop vdso build bug
Message-ID: <20190712153746.5dwwptgrle3z25m7@willie-the-truck>
References: <20190712101556.17833-1-naohiro.aota@wdc.com>
 <20190712101556.17833-2-naohiro.aota@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712101556.17833-2-naohiro.aota@wdc.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_083751_622975_06921F76 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 07:15:56PM +0900, Naohiro Aota wrote:
> Running "make" on an already compiled kernel tree will rebuild the kernel
> even without any modifications:
> 
> $ make ARCH=arm64 CROSS_COMPILE=/usr/bin/aarch64-unknown-linux-gnu-
> arch/arm64/Makefile:58: CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will not be built
>   CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   VDSOCHK arch/arm64/kernel/vdso/vdso.so.dbg
>   VDSOSYM include/generated/vdso-offsets.h
>   CHK     include/generated/compile.h
>   CC      arch/arm64/kernel/signal.o
>   CC      arch/arm64/kernel/vdso.o
>   CC      arch/arm64/kernel/signal32.o
>   LD      arch/arm64/kernel/vdso/vdso.so.dbg
>   OBJCOPY arch/arm64/kernel/vdso/vdso.so
>   AS      arch/arm64/kernel/vdso/vdso.o
>   AR      arch/arm64/kernel/vdso/built-in.a
>   AR      arch/arm64/kernel/built-in.a
>   GEN     .version
>   CHK     include/generated/compile.h
>   UPD     include/generated/compile.h
>   CC      init/version.o
>   AR      init/built-in.a
>   LD      vmlinux.o
> 
> This is the same bug fixed in commit 92a4728608a8 ("x86/boot: Fix
> if_changed build flip/flop bug"). We cannot use two "if_changed" in one
> target. Fix this build bug by merging two commands into one function.
> 
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Fixes: 28b1a824a4f4 ("arm64: vdso: Substitute gettimeofday() with C implementation")
> Signed-off-by: Naohiro Aota <naohiro.aota@wdc.com>
> ---
>  arch/arm64/kernel/vdso/Makefile | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Thanks. I've merged in Vincenzo's compat change too, so I'll send this at
-rc1 for arm64.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
