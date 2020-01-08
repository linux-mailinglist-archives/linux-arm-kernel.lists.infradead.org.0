Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63F713489E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:57:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8mFsQuNYcSg7abYZPtOZnUsJ96G5DJIwo/ifK3VFMM=; b=Sy46SSh6XKZFhL
	rAc0WB4MoVhh8gglbWG2uPQtZ5If6Km09ko22onmb5kaKkbMagyQBrmB6I1NPPeqnXEPAQl7wrsqH
	pPJC8megLrn7Rzqk0hqSoj7GjgSHsKcbbGVacBZOtWYJUErqCpoayLXw6NDa+foEoLmsoO4ZnQVzu
	rRUorwKEq7aq1AA082VhTjAc/QTA8UGpuWoR41jiaA77tGZrrDhpTWV/C02gBW7P79+JHZuIzWrJ7
	rKmqFh6W6Ot4jPacmcquygoTzKc2ncTJCLDcCmsD+6RdXcXXqPt1Yz6yjVD5cyTvylwM9Gt+aRsx8
	+Gdr+f1mIrUu//hFld8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipEdz-00089E-Vn; Wed, 08 Jan 2020 16:57:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipEdq-00088h-Ao
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 16:57:11 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D26F20678;
 Wed,  8 Jan 2020 16:57:08 +0000 (UTC)
Date: Wed, 8 Jan 2020 11:57:07 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] arm/ftrace: fix building on BE32
Message-ID: <20200108115707.2419bf97@gandalf.local.home>
In-Reply-To: <20200108143640.1034808-1-arnd@arndb.de>
References: <20200108143640.1034808-1-arnd@arndb.de>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_085710_393934_CC360192 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Denys Vlasenko <dvlasenk@redhat.com>,
 ard.biesheuvel@linaro.org, Peter Zijlstra <peterz@infradead.org>,
 Brian Gerst <brgerst@gmail.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, rabin@rab.in,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, james.morse@arm.com,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  8 Jan 2020 15:36:30 +0100
Arnd Bergmann <arnd@arndb.de> wrote:

> Compiling patch.c on BE32 fails because there is no definition
> of __opcode_to_mem_thumb32()
> 
> arch/arm/kernel/patch.c: In function '__patch_text_real':
> arch/arm/kernel/patch.c:94:11: error: implicit declaration of function '__opcode_to_mem_thumb32' [-Werror=implicit-function-declaration]
> 
> Since we don't actually call it, only a declaration is required
> here, add one without a definition that fixes the build here
> but will cause a link failure if someone actually relies on the
> result.
> 
> Fixes: 5a735583b764 ("arm/ftrace: Use __patch_text()")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> Not sure if this version is any less ugly than the first
> approach of adding an #ifdef in patch.c

Adding #ifdef in headers is always better than adding it in C code.

Reviewed-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve

> ---
>  arch/arm/include/asm/opcodes.h | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/include/asm/opcodes.h b/arch/arm/include/asm/opcodes.h
> index 6bff94b2372b..f75f59c1257a 100644
> --- a/arch/arm/include/asm/opcodes.h
> +++ b/arch/arm/include/asm/opcodes.h
> @@ -110,14 +110,19 @@ extern asmlinkage unsigned int arm_check_condition(u32 opcode, u32 psr);
>  #define __opcode_to_mem_thumb16(x) ___opcode_identity16(x)
>  #define ___asm_opcode_to_mem_arm(x) ___asm_opcode_identity32(x)
>  #define ___asm_opcode_to_mem_thumb16(x) ___asm_opcode_identity16(x)
> -#ifndef CONFIG_CPU_ENDIAN_BE32
>  /*
>   * On BE32 systems, using 32-bit accesses to store Thumb instructions will not
>   * work in all cases, due to alignment constraints.  For now, a correct
> - * version is not provided for BE32.
> + * version is not provided for BE32, only an extern declaration to allow
> + * compiling patch.c
>   */
> +#ifndef CONFIG_CPU_ENDIAN_BE32
>  #define __opcode_to_mem_thumb32(x) ___opcode_swahw32(x)
>  #define ___asm_opcode_to_mem_thumb32(x) ___asm_opcode_swahw32(x)
> +#else
> +#ifndef __ASSEMBLY__
> +extern unsigned __opcode_to_mem_thumb32(unsigned);
> +#endif
>  #endif
>  
>  #endif /* ! CONFIG_CPU_ENDIAN_BE8 */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
