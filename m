Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D1B1FAF11
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 13:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJTKYNXkx/kR3JO/a8DCWgycVP2ZZXM0SSPA+t0HT94=; b=GHFzlE2aCKE0nO
	lvked/MICgTzKfMyZvosKBikdoMVoUOg3OkYiarj3vwXIDOJbILSqdI4xbCn3KwVNurg8lNvkjJWs
	DFG/Sv0i39qGY5+wT0sdwCx3wTRRKV2nd1/9/kB6c6TxI4fN7nxRCtiheLXfqPX0oPI/9kYJWOGjT
	FwcVY+myPmmmKWk4ee4PUUVb/h9+gUjRhoMxF6t/UAFBh5HxBdV4cHy6m+baTTomSQuul8ETd+mEV
	qHAcT+Q7Pmol6lOJDpxTotwuZhIq4BTPSpnW7Rk/ZTG8DOpjoJzLjWjp1oSZusTYfKOgk6f0EcNqV
	zoW+0L/a9sByOsQyuiRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl9hg-0007U8-Ij; Tue, 16 Jun 2020 11:24:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl9hY-0007TQ-Mg
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 11:24:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A4D71F1;
 Tue, 16 Jun 2020 04:24:23 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.1.157])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AD463F6CF;
 Tue, 16 Jun 2020 04:24:21 -0700 (PDT)
Date: Tue, 16 Jun 2020 12:24:18 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Andrei Vagin <avagin@gmail.com>
Subject: Re: [PATCH 2/6] arm64/vdso: Zap vvar pages when switching to a time
 namespace
Message-ID: <20200616112418.GC11780@C02TD0UTHF1T.local>
References: <20200616075545.312684-1-avagin@gmail.com>
 <20200616075545.312684-3-avagin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616075545.312684-3-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_042424_840488_4CC91CD1 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Dmitry Safonov <dima@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 12:55:41AM -0700, Andrei Vagin wrote:
> The VVAR page layout depends on whether a task belongs to the root or
> non-root time namespace.

Please be more explicit as to what you mean by `layout` here, as that seems to
be an overloaded term. For example, the comment above timens_setup_vdso_data()
can be read to directly contradict this:

| A time namespace VVAR page has the same layout as the VVAR page which
| contains the system wide VDSO data.

... I think you're trying to say is that when we add time namespace support,
we'll have multiple VVAR pages, and their position in the address space depends
on whether the task is part of a time namespace.

> Whenever a task changes its namespace, the VVAR
> page tables are cleared and then they will be re-faulted with a
> corresponding layout.

How does this work for multi-threaded applications? Are there any
concerns w.r.t. atomicity of the change?

> Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Reviewed-by: Dmitry Safonov <dima@arista.com>
> Signed-off-by: Andrei Vagin <avagin@gmail.com>
> ---
>  arch/arm64/kernel/vdso.c | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
> index b0aec4e8c9b4..df4bb736d28a 100644
> --- a/arch/arm64/kernel/vdso.c
> +++ b/arch/arm64/kernel/vdso.c
> @@ -125,6 +125,38 @@ static int __vdso_init(enum vdso_abi abi)
>  	return 0;
>  }
>  
> +#ifdef CONFIG_TIME_NS
> +/*
> + * The vvar page layout depends on whether a task belongs to the root or
> + * non-root time namespace. Whenever a task changes its namespace, the VVAR
> + * page tables are cleared and then they will re-faulted with a
> + * corresponding layout.
> + * See also the comment near timens_setup_vdso_data() for details.
> + */

As with the commit message, this is not very clear and can be read to
contradict the comment it refers to, which is rather unhelpful.

How about:

/*
 * The vvar mapping contains data for a specific time namespace, so when
 * a task changes namespace we must unmap its vvar data for the old
 * namespace. Subsequent faults will map in data for the new namespace.
 *
 * For more details see timens_setup_vdso_data().
 */

Thanks,
Mark.

> +int vdso_join_timens(struct task_struct *task, struct time_namespace *ns)
> +{
> +	struct mm_struct *mm = task->mm;
> +	struct vm_area_struct *vma;
> +
> +	if (mmap_write_lock_killable(mm))
> +		return -EINTR;
> +
> +	for (vma = mm->mmap; vma; vma = vma->vm_next) {
> +		unsigned long size = vma->vm_end - vma->vm_start;
> +
> +		if (vma_is_special_mapping(vma, vdso_info[VDSO_ABI_AA64].dm))
> +			zap_page_range(vma, vma->vm_start, size);
> +#ifdef CONFIG_COMPAT_VDSO
> +		if (vma_is_special_mapping(vma, vdso_info[VDSO_ABI_AA32].dm))
> +			zap_page_range(vma, vma->vm_start, size);
> +#endif
> +	}
> +
> +	mmap_write_unlock(mm);
> +	return 0;
> +}
> +#endif
> +
>  static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
>  			     struct vm_area_struct *vma, struct vm_fault *vmf)
>  {
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
