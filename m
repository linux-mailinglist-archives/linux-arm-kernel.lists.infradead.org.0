Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2827201107
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 17:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=StLo5rz2OYOGBraIk2fYCPFL+OGsIeSfiX8HVuPCPHw=; b=tkgP6aWjh46srJ
	pwFWZhAZyONE4+DSsnGAqXauMsJhQjXJGDiPSnYceUY9UZSm0UOZJ5Zm5qUqAUhZcj9DU8yP7RbRo
	oiT9XIuD4SeWxLlH6TRcvDqJGlTE5Lkztm3IlAcxrXz9UmwoE7fLZHSIOVIrqB5ilxYIBvsJNPJ3K
	bBJ8qv5qO6DuGZbqoVbZuvVJip6Leo/t4Q1NRsjPha5Ke4wrDwf3vpqhmcQvWpHezVpE0ur9uMYky
	QjmNUxAtoSPiZblEsEg2tPqYGEYZDXP4QyN475E1osXL+3vRczNMUsh7xq4juSd3YHrcpQzlPNN7e
	0boWLSgOEsDjgHEa8qtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmJ66-0004G4-9T; Fri, 19 Jun 2020 15:38:30 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmJ5t-0004FG-2S
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 15:38:18 +0000
Received: from ip-109-41-0-196.web.vodafone.de ([109.41.0.196]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1jmJ5r-0000km-CT; Fri, 19 Jun 2020 15:38:15 +0000
Date: Fri, 19 Jun 2020 17:38:12 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Andrei Vagin <avagin@gmail.com>
Subject: Re: [PATCH 2/6] arm64/vdso: Zap vvar pages when switching to a time
 namespace
Message-ID: <20200619153812.2d6anaynb4p37qv2@wittgenstein>
References: <20200616075545.312684-1-avagin@gmail.com>
 <20200616075545.312684-3-avagin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616075545.312684-3-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_083817_243289_C8787BF1 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dmitry Safonov <dima@arista.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 12:55:41AM -0700, Andrei Vagin wrote:
> The VVAR page layout depends on whether a task belongs to the root or
> non-root time namespace. Whenever a task changes its namespace, the VVAR
> page tables are cleared and then they will be re-faulted with a
> corresponding layout.
> 
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
> +int vdso_join_timens(struct task_struct *task, struct time_namespace *ns)
> +{
> +	struct mm_struct *mm = task->mm;
> +	struct vm_area_struct *vma;
> +
> +	if (mmap_write_lock_killable(mm))
> +		return -EINTR;

Hey,

Just a heads-up I'm about to plumb CLONE_NEWTIME support into setns()
which would mean that vdso_join_timens() ould not be allowed to fail
anymore to make it easy to switch to multiple namespaces atomically. So
this would probably need to be changed to mmap_write_lock() which I've
already brought up upstream:
https://lore.kernel.org/lkml/20200611110221.pgd3r5qkjrjmfqa2@wittgenstein/
(Assuming that people agree. I just sent the series and most people here
are Cced.)

Thanks!
Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
