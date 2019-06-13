Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3169E44929
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 19:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u234491J7T60O+lFAwdFGP7TLYlF9PSX4I2OKN0ttEc=; b=FoLRXKLs+5Yv0S
	vHwykfs/zi6h6lnrNo9MdifcU1Cu7E3mKEHUFta6lYHrpR+Z1Znlo50qbfGNG+R+Vq0SMSwARLF7n
	jcAHSV27xC6qOSZBbrM02RUBbOBK/2ilC1ZyE5HWGNORmIc6wec/i6DAAOMuYcfNpVouMmWXpZAuV
	qWRcMVWEDb53Egh8u3G45Cp/6EQClIvo2oUeguPyIXVTQdaYl2ytdOdG/0qeu7/mPzqBCwZycqf/o
	T1rBWfidQ8KjGo9O09Y37nYotrGc3GYZYRHbUdorjN4JG4IO1qB3G2Lm3RKeSzgmNrP7MrSsu8iak
	UweX5jrMxng8QU6Pf5NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbTJg-00083f-PU; Thu, 13 Jun 2019 17:15:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbTJO-00080X-Ff
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 17:14:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7263F367;
 Thu, 13 Jun 2019 10:14:53 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 01EA73F694;
 Thu, 13 Jun 2019 10:14:51 -0700 (PDT)
Date: Thu, 13 Jun 2019 18:14:44 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Anisse Astier <aastier@freebox.fr>
Subject: Re: [PATCH] arm64/sve: <uapi/asm/ptrace.h> should not depend on
 <uapi/linux/prctl.h>
Message-ID: <20190613171432.GA2790@e103592.cambridge.arm.com>
References: <20190613163801.21949-1-aastier@freebox.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613163801.21949-1-aastier@freebox.fr>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_101454_571247_4BA4FE06 
X-CRM114-Status: GOOD (  18.87  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, "Dmitry V . Levin" <ldv@altlinux.org>,
 Ricardo Salveti <ricardo@foundries.io>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Rich Felker <dalias@aerifal.cx>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 06:38:01PM +0200, Anisse Astier wrote:
> Otherwise this will create userspace build issues for any program
> (strace, qemu) that includes both <sys/prctl.h> (with musl libc) and
> <linux/ptrace.h> (which then includes <asm/ptrace.h>), like this:
> 
> 	error: redefinition of 'struct prctl_mm_map'
> 	 struct prctl_mm_map {
> 
> See https://github.com/foundriesio/meta-lmp/commit/6d4a106e191b5d79c41b9ac78fd321316d3013c0
> for a public example of people working around this issue.
> 
> This fixes an UAPI regression introduced in commit 43d4da2c45b2
> ("arm64/sve: ptrace and ELF coredump support").
> 
> Cc: stable@vger.kernel.org

Consider adding a Fixes: tag.

> Signed-off-by: Anisse Astier <aastier@freebox.fr>
> ---
>  arch/arm64/include/uapi/asm/ptrace.h | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/include/uapi/asm/ptrace.h b/arch/arm64/include/uapi/asm/ptrace.h
> index d78623acb649..03b6d6f029fc 100644
> --- a/arch/arm64/include/uapi/asm/ptrace.h
> +++ b/arch/arm64/include/uapi/asm/ptrace.h
> @@ -65,8 +65,6 @@
>  
>  #ifndef __ASSEMBLY__
>  
> -#include <linux/prctl.h>
> -
>  /*
>   * User structures for general purpose, floating point and debug registers.
>   */
> @@ -113,10 +111,10 @@ struct user_sve_header {
>  
>  /*
>   * Common SVE_PT_* flags:
> - * These must be kept in sync with prctl interface in <linux/ptrace.h>
> + * These must be kept in sync with prctl interface in <linux/prctl.h>

Ack

>   */
> -#define SVE_PT_VL_INHERIT		(PR_SVE_VL_INHERIT >> 16)
> -#define SVE_PT_VL_ONEXEC		(PR_SVE_SET_VL_ONEXEC >> 16)
> +#define SVE_PT_VL_INHERIT		(1 << 1) /* PR_SVE_VL_INHERIT */
> +#define SVE_PT_VL_ONEXEC		(1 << 2) /* PR_SVE_SET_VL_ONEXEC */

Makes sense, but...

Since sve_context.h was already introduced to solve a closely related
problem, I wonder whether we can provide shadow definitions there,
similarly to way the arm64/include/uapi/asm/ptrace.h definitions are
derived.  Although it's a slight abuse of that header, I think that
would be my preferred approach.

Otherwise, at least make the required relationship between ptrace.h and
prctl.h constants a bit more obvious, say,

	#define SVE_PT_VL_INHERIT ((1 << 17) /* PR_SVE_SET_VL_INHERIT */ >> 16)

etc.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
