Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AF01365E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 04:44:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R68e7hT6UAUNdk4jycYWGpJeyLXYB26Cydrt/dDsSVg=; b=CZdDYSQxUHcuyi
	ukuwW7Vp9C9NEsPX6wCQ5H3Qf1IGTSixYIAZOoqZPBItY8x5gXJqNLMLOKDVUdqn8V3tW4PsTKXfq
	WYbEKpX8C2pB5l4Ue3kW0TLQmj0awObbCPnsZf7QfKi9LCtcx1G6kZQhkMedyXXebjlsiFxkUVYfO
	EhLJ7Iqn2P2SGwNjdwaTA4Fvs6EYFzG/wJPSOpNKkNPRl0I1BVYCdPWYzzHwlv2eZ60eDXmXfEeqt
	Uwc7iGvpDI9LafVpHwXsKeQl18UleNEANupZ2ruuup+eMij9zZLUIib4hU6IYyY/JWFFoOIbgxrFA
	pvs9IUQbR6YEhHo5jivg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iplDo-00070F-GE; Fri, 10 Jan 2020 03:44:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iplDg-0006ze-US
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 03:44:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 062E91396;
 Thu,  9 Jan 2020 19:44:20 -0800 (PST)
Received: from [10.162.42.128] (p8cg001049571a15.blr.arm.com [10.162.42.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 EC3FF3F703; Thu,  9 Jan 2020 19:44:16 -0800 (PST)
Subject: Re: [PATCH 11/17] stackleak: allow C to call stackleak_erase()
To: Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-12-mark.rutland@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <b7c6d434-16a1-f270-b656-a1814ea6bab3@arm.com>
Date: Fri, 10 Jan 2020 09:15:31 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200108185634.1163-12-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_194421_030531_2F12744B 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, maz@kernel.org, broonie@kernel.org,
 labbott@redhat.com, robin.murphy@arm.com, julien.thierry.kdev@gmail.com,
 alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/09/2020 12:26 AM, Mark Rutland wrote:
> Currently, stackleak_erase() has no prototype in a header file, and has
> to be called directly from low-level architecture entry assembly code.
> This necessitates ifdeffery and complicates the entry assembly.
> 
> To ameliorate matters, let's provide a prototype so that architecture
> can call stackleak_erase() from slightly higher level C code used as
> part of the entry flow. This makes things easier to read and maintain.

Does this need to be a separate patch or should it be folded into
"[PATCH 13/17] arm64: entry: move common el0 entry/return work to C"
which actually adds the first C call site for this function.

> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Alexander Popov <alex.popov@linux.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Laura Abbott <labbott@redhat.com>
> Cc: Will Deacon <will@kernel.org>
> ---
>  include/linux/stackleak.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/include/linux/stackleak.h b/include/linux/stackleak.h
> index 3d5c3271a9a8..2b09d3759c76 100644
> --- a/include/linux/stackleak.h
> +++ b/include/linux/stackleak.h
> @@ -15,6 +15,8 @@
>  #ifdef CONFIG_GCC_PLUGIN_STACKLEAK
>  #include <asm/stacktrace.h>
>  
> +asmlinkage void notrace stackleak_erase(void);
> +
>  static inline void stackleak_task_init(struct task_struct *t)
>  {
>  	t->lowest_stack = (unsigned long)end_of_stack(t) + sizeof(unsigned long);
> @@ -30,6 +32,7 @@ int stack_erasing_sysctl(struct ctl_table *table, int write,
>  
>  #else /* !CONFIG_GCC_PLUGIN_STACKLEAK */
>  static inline void stackleak_task_init(struct task_struct *t) { }
> +static inline void stackleak_erase(void) { }
>  #endif
>  
>  #endif
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
