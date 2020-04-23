Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 748531B588C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 11:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HvrTfdKGyxH8D9o4crXLAdGLwAHVMYVTBpVToxxJKMs=; b=b1TATvuqbiTEIS
	/cVpODa38qtjjZzcoY1utEAreJ3b4fTi45CtdNDw9uKoPrxRVtLP50hf1GYGFKEF1EQhlVAdLoRsO
	krCgOyYdyrhk2hTVEzl7exquG6Cyui+7zwT8dTAkUuhZOZ7RWQWjTmJfs7vLR1iTXZVLyPZFCXpS0
	VlOP/1NcsynvlB11N5uYP+UQp3JY1G0Xi1n3HSNZZpawMetWRt02SJMqwWc4pJBeMBsmmORcMg2Hk
	VMy5iIu3xC/bltwKEAPwWrdbPqLjouzPCZO1pFPCcCVNwaGypghZprKrjCG0l7Kw/4ZV12rB9MbLK
	7VZZ6qOyjw82W+OTrIRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYU4-0007th-K7; Thu, 23 Apr 2020 09:49:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYTt-0007su-NG
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 09:49:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D937931B;
 Thu, 23 Apr 2020 02:49:16 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.95])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B18433F68F;
 Thu, 23 Apr 2020 02:49:15 -0700 (PDT)
Date: Thu, 23 Apr 2020 10:49:04 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: docs: Mandate that the I-cache doesn't hold stale
 kernel text
Message-ID: <20200423094904.GA45833@C02TD0UTHF1T.local>
References: <20200423093658.10602-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423093658.10602-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_024917_800346_09CAF57A 
X-CRM114-Status: GOOD (  16.08  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 10:36:58AM +0100, Will Deacon wrote:
> Although we require that the loaded kernel Image has been cleaned to the
> PoC, we neglect to spell out the state of the I-cache. Although this
> should be reasonably obvious, it doesn't hurt to be explicit.
> 
> Require that the I-cache doesn't hold any stale entries for the kernel
> Image at boot.
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Will Deacon <will@kernel.org>

This was certianly the intent, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

> ---
>  Documentation/arm64/booting.rst | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/arm64/booting.rst b/Documentation/arm64/booting.rst
> index a3f1a47b6f1c..d063c05d5fb0 100644
> --- a/Documentation/arm64/booting.rst
> +++ b/Documentation/arm64/booting.rst
> @@ -173,7 +173,8 @@ Before jumping into the kernel, the following conditions must be met:
>  - Caches, MMUs
>  
>    The MMU must be off.
> -  Instruction cache may be on or off.
> +  The instruction cache may be on or off, and must not hold any stale
> +  entries corresponding to the loaded kernel image.
>    The address range corresponding to the loaded kernel image must be
>    cleaned to the PoC. In the presence of a system cache or other
>    coherent masters with caches enabled, this will typically require
> -- 
> 2.26.1.301.g55bc3eb7cb9-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
