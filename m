Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F991D7768
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5sVpwsI3Olyw2aYBm4p5vutilh/0+QJzg6YoOsHqjDw=; b=dXTXSB6nkANO7l
	wSz5V8I5dwE/JBJC2D+SNUUasxm2Jc5lSwGHz11zDP5nyX8roThcGS9mXJvTVU94ibU5xPClpVa5o
	MdzVdfQ0hhhQm/+GrfajBrZBIVWa+5ZSBeylWU8kq2cZbElsqC3Ak7pUmChYI0KFKBkobiyRkvCTm
	zAijYw3/VYm+5wlef35xjgGG5ChM32DIGFBfxoDS+uho+/9UrfhWEMb7pxeH/ZdyXUSEgCM1lOmlf
	cpIhXGjV/UFGpMKzs/dpZdHwXEnxpkxOlGKWUh4hBSnU5iTUHx5cpcTMYyG57xzqkUUyp2mG+Jfi+
	XQxrX/S43qMASAIZ/HkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jae5K-0005ML-N8; Mon, 18 May 2020 11:37:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jae59-0005Lu-56
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:37:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73515106F;
 Mon, 18 May 2020 04:37:18 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D9F263F52E;
 Mon, 18 May 2020 04:37:15 -0700 (PDT)
Date: Mon, 18 May 2020 12:37:10 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/6] arm64: scs: Store absolute SCS stack pointer value
 in thread_info
Message-ID: <20200518113710.GA1957@C02TD0UTHF1T.local>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-2-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515172756.27185-2-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_043719_233996_B10887DB 
X-CRM114-Status: GOOD (  13.71  )
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Rutland <mark.rutland@am.com>, Sami Tolvanen <samitolvanen@google.com>,
 kernel-team@android.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 06:27:51PM +0100, Will Deacon wrote:
> Storing the SCS information in thread_info as a {base,offset} pair
> introduces an additional load instruction on the ret-to-user path,
> since the SCS stack pointer in x18 has to be converted back to an offset
> by subtracting the base.
> 
> Replace the offset with the absolute SCS stack pointer value instead
> and avoid the redundant load.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

One trivial nit below, but regardless this looks sound to me, and I
certainly prefer having the absolute address rather than an offset, so:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

> diff --git a/kernel/scs.c b/kernel/scs.c
> index 9389c28f0853..5ff8663e4a67 100644
> --- a/kernel/scs.c
> +++ b/kernel/scs.c
> @@ -60,8 +60,7 @@ int scs_prepare(struct task_struct *tsk, int node)
>  	if (!s)
>  		return -ENOMEM;
>  
> -	task_scs(tsk) = s;
> -	task_scs_offset(tsk) = 0;
> +	task_scs(tsk) = task_scs_sp(tsk) = s;

I think this would be more legible as two statements:

|	task_sys(tsk) = s;
|	task_scs_sp(tsk) = s;

... as we usually save `foo = bar = baz` stuff for the start of a
function or within loop conditions.

Thanks,
Mark.

>  	scs_account(tsk, 1);
>  	return 0;
>  }
> -- 
> 2.26.2.761.g0e0b3e54be-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
