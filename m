Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520094A288
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jx5mtBFcShBQRvbvEvaJL89n939NrTofVwDvLwFL2V8=; b=WjIPpl+oC4Fmw+
	XFPBYi+O5Whqw1YvOg1ihMPqLYJSGl2wmfQA1Vp/xXmwQBQdt11ZfyVvAgx99v8JYmYS5aMRdEvYq
	QR1uhqMMtHIbEpg+VTb5pNkUo3iI8xGR5SPmCg21nQh0FM9PkiZ3A2XBJwcPop8xOudATLSCxx/7u
	caPAgfBrgWFcJ9nSuszuU8HRnyB7gfBG7NEfssoZrqdESPHfIR4YMizsSzwZYacgk1EiF4I9LQUjc
	oZf8WkMI2nD2oYOphs+jTqeGFij3xhsX/PsKHq0BOs54oAE+Er1JPgfjGiSJYXp5tlmNH5jqYizWu
	xYie9wX7bnppn9PHdgVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEMH-0002OS-06; Tue, 18 Jun 2019 13:41:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdELh-0002NG-LS
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:40:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E46682B;
 Tue, 18 Jun 2019 06:40:32 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 726B63F718;
 Tue, 18 Jun 2019 06:40:31 -0700 (PDT)
Date: Tue, 18 Jun 2019 14:40:29 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Anisse Astier <aastier@freebox.fr>
Subject: Re: [PATCH v2] arm64/sve: <uapi/asm/ptrace.h> should not depend on
 <uapi/linux/prctl.h>
Message-ID: <20190618134029.GE2790@e103592.cambridge.arm.com>
References: <20190613163801.21949-1-aastier@freebox.fr>
 <20190614164600.36966-1-aastier@freebox.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614164600.36966-1-aastier@freebox.fr>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_064033_768211_307C1FFE 
X-CRM114-Status: GOOD (  20.96  )
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
 Catalin Marinas <catalin.marinas@arm.com>, Rich Felker <dalias@aerifal.cx>,
 linux-kernel@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 "Dmitry V . Levin" <ldv@altlinux.org>, Ricardo Salveti <ricardo@foundries.io>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 06:46:00PM +0200, Anisse Astier wrote:
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
> Copying the defines is a bit imperfect here, but better than creating a
> whole other header for just two defines that would never change, as part
> of the kernel ABI.
> 
> Fixes: 43d4da2c45b2 ("arm64/sve: ptrace and ELF coredump support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Anisse Astier <aastier@freebox.fr>
> ---
> Changes since v1:
>  - made a bit more explicit that we copied defined symbols, in commit
>    and code.
>  - Use Fixes: tag in commit message
> 
> Thanks to Dave Martin and Will Deacon for the review.
> 
> ---
>  arch/arm64/include/uapi/asm/ptrace.h | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/include/uapi/asm/ptrace.h b/arch/arm64/include/uapi/asm/ptrace.h
> index d78623acb649..438759e7e8a7 100644
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
>   */
> -#define SVE_PT_VL_INHERIT		(PR_SVE_VL_INHERIT >> 16)
> -#define SVE_PT_VL_ONEXEC		(PR_SVE_SET_VL_ONEXEC >> 16)
> +#define SVE_PT_VL_INHERIT		((1 << 17) /* PR_SVE_VL_INHERIT */ >> 16)
> +#define SVE_PT_VL_ONEXEC		((1 << 18) /* PR_SVE_SET_VL_ONEXEC */ >> 16)

FWIW,
Acked-by: Dave Martin <Dave.Martin@arm.com>

Ideally we would create a common <uapi/asm/prctl.h> that arm64 could
specialise as appropriate, but since x86 already has a similar header
shadowing this, it may be more trouble than it's worth to generalise it.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
