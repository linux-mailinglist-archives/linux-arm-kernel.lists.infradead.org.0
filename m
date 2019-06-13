Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB01B43D71
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=37+1xtqQWTas2A0YgW3FYzQulIFGPAcfL/gX95t0Gdw=; b=ewb5EDLa2uewZZoG/TOnIENLv
	DIcUOh4HJZKjmE2eAbDf4sW1pMxEBYuf+ITle4cCD77mSrN0yyRiBXJ4X5RAsSHsEe42kRattjXYe
	t1qB94hlFsxqknbebrIh1M0E4HUfIqE7g+7x8ktCX3gK7+8gX6HJsEu4i8K1ToVUPa6ud7xh0xI6k
	BQnqmen00dKWxmsXo7ayiVSir3xQfKlM9aBC9tcnJcTy7amp04kuStiDMdb9udn7KbIYF09L0lNlR
	Iy3JAGn1MEzysRNTy/Psm3oCA5f5PP2G0kfhj3Xl3zH1IUpBSOV4K76UmP+brGSdDkvM+MyhrX/Ro
	P0uFaNAtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRrj-00047Z-Ke; Thu, 13 Jun 2019 15:42:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRrV-00046q-Sz
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:42:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 59AF6367;
 Thu, 13 Jun 2019 08:42:01 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 12F603F718;
 Thu, 13 Jun 2019 08:41:59 -0700 (PDT)
Subject: Re: [RFC v2 4/7] arm64: enable ptrauth earlier
To: kristina.martsenko@arm.com, linux-arm-kernel@lists.infradead.org
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-5-kristina.martsenko@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <9886324a-5a12-5dd8-b84c-3f32098e3d35@arm.com>
Date: Thu, 13 Jun 2019 16:41:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529190332.29753-5-kristina.martsenko@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_084201_983559_716DBC48 
X-CRM114-Status: GOOD (  20.06  )
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
Cc: mark.rutland@arm.com, keescook@chromium.org, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, will.deacon@arm.com, ramana.radhakrishnan@arm.com,
 Amit.Kachhap@arm.com, dave.martin@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29/05/2019 20:03, Kristina Martsenko wrote:
> When the kernel is compiled with pointer auth instructions, the boot CPU
> needs to start using address auth very early, so change the cpucap to
> account for this.
> 
> A function that enables pointer auth cannot return, so compile such
> functions without pointer auth (using a compiler function attribute).
> The __no_ptrauth macro will be defined to the required function
> attribute in a later patch.
> 
> Do not use the cpu_enable callback, to avoid compiling the whole
> callchain down to cpu_enable without pointer auth.
> 
> Note the change in behavior: if the boot CPU has address auth and a late
> CPU does not, then we offline the late CPU. Until now we would have just
> disabled address auth in this case.
> 
> Leave generic authentication as a "system scope" cpucap for now, since
> initially the kernel will only use address authentication.
> 
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
> ---
> 
> Changes since RFC v1:
>   - Enable instructions for all 5 keys
>   - Replaced __always_inline with __no_ptrauth as it turns out __always_inline
>     is only a hint (and could therefore result in crashes)
>   - Left the __no_ptrauth definition blank for now as it needs to be determined
>     with more complex logic in a later patch
This patch looks fine to me as such. But if you switch to doing the
SCTLR bits in assembly, managed by alternatives, you may not need
the attribute support for C functions.

You may be able to enable the ptr-auth for all the CPUs from early on
in the assembly and also park the CPUs which don't have the capability
via alternative code patching that gets applied just after the boot CPU
is initialized (via apply_boot_alternatives()).


Rough version :

e.g:

+
+/*
+ * ptr_auth_setup(bool primary)
+ *	x0 = 1 for primary, 0 for secondary
+ */
+ptr_auth_setup:
+#ifdef CONFIG_ARM64_PTR_AUTH
+	/* check ptr auth support */
+	mrs	x1, id_aa64isar1_el1
+	ubfx	x1, x1, 4, 8
+	cbz	x1, 1f
+
+	/* x2 = system_has_ptr_auth() */
+alternative_if ARM64_HAS_PTR_AUTH
+	mov	x2, 1
+alternative_else
+	mov	x2, 0
+alternative_endif
+	orr	x0, x2, x0		// primary || system_has_ptr_auth()
+	cbz	x0, 2f
+	mrs	x1, sctlr_el1
+	/* Set the PTR_AUTH_BITS orr	x1, x1, (SCTLR_ELx_AUTH_BITS) */
+	msr	sctlr_el1, x1
+	b	2f
+1:	/* No pionter authentication support */
+alternative_if ARM64_HAS_PTR_AUTH
+	b	3f
+alternative_else_nop_endif
+2:
+#endif
+	ret
+
+#ifdef CONFIG_ARM64_PTR_AUTH
+3:	/* Park the secondary CPU after updating the boot status */
+	update_early_cpu_boot_status \
+	   CPU_STUCK_IN_KERNEL | CPU_STUCK_REASON_NO_PTR_AUTH, x0, x1
+	b	__cpu_park_early
+#endif
+ENDPROC(ptr_auth_setup)
+


Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
