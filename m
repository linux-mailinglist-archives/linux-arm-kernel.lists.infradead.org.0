Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E26E51BBACF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0VcO5CHaalYOxUDgbyKThtkvkbYRbuY9358nIMvCMk=; b=lj4zujJao6mmCK
	8AEtBfxj6ml+7W28XfYZvPaEuy6aqyXb2feYwwZxr0QHOZ+JGJQaC72yt9gdjobrn5dzntX5bJHXw
	TA4287S7KAlcproJAtspQBkpWzTGzPMxuqvbVszzuTwSzxD8I9NDdNo/I0vFg2TDHGSge95kUCA4R
	3Pl6fOYgEkt+VPCTFUX3NDGBQI/XtXCAdeXHAaPyyicA+U5HF0Kskh/rUO1FDi02PYLE2MYnlCXmd
	xvbFG2idhSnAnvHvgThBBMMdPGOIoNNwv9nFBpE/U2w19Oq6QgExR3/AEJhx1yCpSLL7ZUuXFFAQb
	3ScSSv57ztuRiEcxKpMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTNAe-0003tB-Ap; Tue, 28 Apr 2020 10:08:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN9g-0003Wh-Lh
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:07:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3A1A30E;
 Tue, 28 Apr 2020 03:07:53 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.1.132])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DBE313F305;
 Tue, 28 Apr 2020 03:07:51 -0700 (PDT)
Date: Tue, 28 Apr 2020 11:07:45 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH] hw_breakpoint: Remove unused
 '__register_perf_hw_breakpoint' declaration
Message-ID: <20200428100745.GA15300@C02TD0UTHF1T.local>
References: <1588063937-5744-1-git-send-email-bhsharma@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588063937-5744-1-git-send-email-bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030756_763240_1399FF5C 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Frederic Weisbecker <fweisbec@gmail.com>, bhupesh.linux@gmail.com,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bhupesh,

On Tue, Apr 28, 2020 at 02:22:17PM +0530, Bhupesh Sharma wrote:
> commit b326e9560a28 ("hw-breakpoints: Use overflow handler instead of
> the event callback") removed '__register_perf_hw_breakpoint' function
> usage and replaced it with 'register_perf_hw_breakpoint' function.
> 
> Remove the left-over unused '__register_perf_hw_breakpoint' declaration
> from 'hw_breakpoint.h' as well.
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>

This is generic code, so I'm a bit confused as to why you've sent it to
us. I'd expect this to go via the perf core maintainers (cc'd).

FWIW, this looks sane to me, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  include/linux/hw_breakpoint.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/include/linux/hw_breakpoint.h b/include/linux/hw_breakpoint.h
> index 6058c3844a76..fe1302da8e0f 100644
> --- a/include/linux/hw_breakpoint.h
> +++ b/include/linux/hw_breakpoint.h
> @@ -72,7 +72,6 @@ register_wide_hw_breakpoint(struct perf_event_attr *attr,
>  			    void *context);
>  
>  extern int register_perf_hw_breakpoint(struct perf_event *bp);
> -extern int __register_perf_hw_breakpoint(struct perf_event *bp);
>  extern void unregister_hw_breakpoint(struct perf_event *bp);
>  extern void unregister_wide_hw_breakpoint(struct perf_event * __percpu *cpu_events);
>  
> @@ -115,8 +114,6 @@ register_wide_hw_breakpoint(struct perf_event_attr *attr,
>  			    void *context)		{ return NULL; }
>  static inline int
>  register_perf_hw_breakpoint(struct perf_event *bp)	{ return -ENOSYS; }
> -static inline int
> -__register_perf_hw_breakpoint(struct perf_event *bp) 	{ return -ENOSYS; }
>  static inline void unregister_hw_breakpoint(struct perf_event *bp)	{ }
>  static inline void
>  unregister_wide_hw_breakpoint(struct perf_event * __percpu *cpu_events)	{ }
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
