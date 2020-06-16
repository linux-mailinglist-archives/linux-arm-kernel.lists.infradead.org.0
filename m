Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA701FAA37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjgkyD+lRtLXwok4hV+WU5JTJWX0ut/6iefl2IJTAJ8=; b=QV+ezel5KJKxnb
	e0Q+FcjbQFVD/7kwuvF8v8/N+1Kp/mtFJSLOen5/ysnDrWQx0gg0GKhRUZeLY1usB62dfHDJDP0CF
	6ZYqyBCLIOrbjoNieOSlo4ksH4pAkjZSnD/mUFwe6CEXTjPdO1Brxp8+3Xq0JaQXipziPZz+akwhF
	9lUbC5evX98WBuwBplJ7PqBP593Oybx5mscuzS8H9PKFtFM6JXljMsY9yPS9bvCM3D0F0VjhGsfnP
	/s/vayTYwSLq2ADlCH5oxoeUYU/VNfbqw1cTN0ZfDIJfelZme0Xqm1lx+WGqnd0JA9bL1eIZJ7BCs
	X2Y7djv4DOtbDOZ+fatA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6Ff-00086L-KW; Tue, 16 Jun 2020 07:43:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6FY-00085b-H1
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:43:17 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7225C20663;
 Tue, 16 Jun 2020 07:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592293392;
 bh=1pSplotTuJJE4CyD+G9q++EnmPd7meShTvU8xyLK98A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RuPgEAc02r/JqeDH31iJkiWWj5azW5vcasRKc2UKkNnkKYt7rUlLB3t8e6YLzm/mp
 tTiI8JNt5w7p08n+zxG+gkvLQxSdAaOfHuJSWmpvUFzU4x1Sm4AGxf9E9b87vpKlvQ
 FybJSAg3ok7ivN2DQjLnxxlJV+K+Q3KvRVj5aS50=
Date: Tue, 16 Jun 2020 08:43:08 +0100
From: Will Deacon <will@kernel.org>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH 06/25] mm/arm64: Use mm_fault_accounting()
Message-ID: <20200616074307.GA1637@willie-the-truck>
References: <20200615221607.7764-1-peterx@redhat.com>
 <20200615221607.7764-7-peterx@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615221607.7764-7-peterx@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_004316_582758_C898D8B7 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Andrea Arcangeli <aarcange@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 06:15:48PM -0400, Peter Xu wrote:
> Use the new mm_fault_accounting() helper for page fault accounting.
> 
> CC: Catalin Marinas <catalin.marinas@arm.com>
> CC: Will Deacon <will@kernel.org>
> CC: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Peter Xu <peterx@redhat.com>
> ---
>  arch/arm64/mm/fault.c | 17 ++---------------
>  1 file changed, 2 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index c9cedc0432d2..09af7d7a60ec 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -484,8 +484,6 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  					 addr, esr, regs);
>  	}
>  
> -	perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, addr);
> -
>  	/*
>  	 * As per x86, we may deadlock here. However, since the kernel only
>  	 * validly references user space from well defined areas of the code,
> @@ -535,20 +533,9 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  			      VM_FAULT_BADACCESS)))) {
>  		/*
>  		 * Major/minor page fault accounting is only done
> -		 * once. If we go through a retry, it is extremely
> -		 * likely that the page will be found in page cache at
> -		 * that point.
> +		 * once.
>  		 */
> -		if (major) {
> -			current->maj_flt++;
> -			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1, regs,
> -				      addr);
> -		} else {
> -			current->min_flt++;
> -			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1, regs,
> -				      addr);
> -		}
> -
> +		mm_fault_accounting(current, regs, address, major);

Please can you explain why it's ok to move the PERF_COUNT_SW_PAGE_FAULTS
update like this? Seems like a user-visible change to me, so some
justification would really help.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
