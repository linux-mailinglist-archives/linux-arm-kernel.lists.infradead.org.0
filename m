Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6081FCA81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4dh5XgLp0GseodEKISE935Y4tAs5qxb0Z4+BBBoEMU=; b=rBKcDlwXSijmo/
	ThW5ZtCE7lCH+06cGEeb+sruaSYWSSozwZ2EuVMVmzkRWvhUAa3C+yVQvU7K2lKojU8qGWEnmBwA6
	pkJMGp6Tdtjbbky6qQXBUefDgytuBoncAl0d/Ebj7tet1Mr+3Bpo9OMYYaB3mMQW5F2axYeROD3/a
	Zw7HAyAjCBxzQNZSGwhVWbC5ufZC95ndKBxKZtZDCo7wz42xBkLr5zIwrcZCMsvy8AamS6J/lLfwL
	hoszpOZ7H68je3PMpR+UeL6ugxw+jVvG7C+tuG6+ERGBuW/ryQXI/ETowrZjHLNgxhAyBAuc6/ryS
	eOI77lJQU/DJpVo452/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUzw-0007zd-Gh; Wed, 17 Jun 2020 10:08:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUzl-0007yz-37
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:08:38 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE541208B3;
 Wed, 17 Jun 2020 10:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592388516;
 bh=l9ELKLx3jzsO4dLay6dnGN77mQaOSxbO3tAK1P4+zCs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EnDLcvmpX1ZM9hIYFHCI6MI4ig6DOY16veaoVldyd73whTnRHgY1FrHeBj749e9MY
 MTdVCUZMyYpK5andWM3SriczTEm/I8nARsnuatBHngpU0mpL0kGFgS4rDPH0FO8cW+
 gtY2v/uQipomJYzC8STAOYvBElip/NrcdXkanw5g=
Date: Wed, 17 Jun 2020 11:08:32 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 2/2] arm64/sve: Eliminate data races on sve_default_vl
Message-ID: <20200617100832.GA3368@willie-the-truck>
References: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
 <1591808590-20210-3-git-send-email-Dave.Martin@arm.com>
 <20200616131808.GA1040@lca.pw>
 <20200616150451.GA1941@willie-the-truck>
 <20200616161704.GN25945@arm.com>
 <20200616171926.GA2129@willie-the-truck>
 <20200617094054.GP25945@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617094054.GP25945@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_030837_167500_702AE2BA 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 10:40:54AM +0100, Dave Martin wrote:
> On Tue, Jun 16, 2020 at 06:19:27PM +0100, Will Deacon wrote:
> > diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
> > index d9eee9194511..55c8f3ec6705 100644
> > --- a/arch/arm64/kernel/fpsimd.c
> > +++ b/arch/arm64/kernel/fpsimd.c
> > @@ -349,7 +349,7 @@ static unsigned int find_supported_vector_length(unsigned int vl)
> >  	return sve_vl_from_vq(__bit_to_vq(bit));
> >  }
> >  
> > -#ifdef CONFIG_SYSCTL
> > +#if defined(CONFIG_ARM64_SVE) && defined(CONFIG_SYSCTL)
> >  
> >  static int sve_proc_do_default_vl(struct ctl_table *table, int write,
> >  				  void *buffer, size_t *lenp, loff_t *ppos)
> > @@ -394,9 +394,9 @@ static int __init sve_sysctl_init(void)
> >  	return 0;
> >  }
> >  
> > -#else /* ! CONFIG_SYSCTL */
> > +#else /* ! (CONFIG_ARM64_SVE && CONFIG_SYSCTL) */
> >  static int __init sve_sysctl_init(void) { return 0; }
> > -#endif /* ! CONFIG_SYSCTL */
> > +#endif /* ! (CONFIG_ARM64_SVE && CONFIG_SYSCTL) */
> 
> Hmm, I guess that works, but it still seems cumbersome.  #ifdefs do
> tend to breed as the code gets extended, so I'd worked hard to
> eliminate them as much as possible.

This is just extending an existing #ifdef though, and I don't think it
makes any sense to compile in the SVE sysctl logic if SVE is not enabled.
If CONFIG_SYSCTL didn't exist, this code would almost certainly be inside
a CONFIG_SVE block anyway.

> Can't we simply leave the helpers outside the #ifdef, and do this?
> 
>  /* Default VL for tasks that don't set it explicitly: */
>  static int __sve_default_vl = -1;
>  
> -static int get_sve_default_vl(void)
> +static inline int get_sve_default_vl(void)
>  {
>  	return READ_ONCE(__sve_default_vl);
>  }
>  
> -static void set_sve_default_vl(int val)
> +static inline void set_sve_default_vl(int val)
>  {
>  	WRITE_ONCE(__sve_default_vl, val);
>  }

That would work too, although I'd be wary of somebody removing the inline
later on because "the compiler knows best about inlining decisions". I'd
also say that calling set_sve_default_vl() is an error if CONFIG_SVE is
not defined as we really want get_sve_default_vl() to return -1
unconditionally in that case. Having set_sve_default_vl() inside the
#ifdef ensures that.

I don't care too strongly either way, but I already queued my diff last
night [1] in order to fix linux-next, so I'd prefer not to drop it unless
there's a functional reason to do so.

Will

[1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/fixes&id=e575fb9e76c8e33440fb859572a8b7d430f053d6

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
