Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671D7849C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+QCWbO9BOgKL/7h+KMudvVFG6DcQPGAdWBDSR7DnRU=; b=RzR8ZFll/qTu6g
	HUdGNYBQPD+yA37ecfRhLuJMSiy39PujKxknBNIahwq9IHFGNfvjomWjc43ELp4axhPhutqciDMEW
	ZuylwbB6vEAnzv4jFtBs6KP/4Lpm4iBNbIbqjODL+4U/5WTDDUNS4VT77+0CpITDtg5lMDQt/A1Q4
	jy/L+KqpqLYBJ/upgdW3iiZ1RpEJROpXx+ciwpQWuKFKn7781DJdaDNy0Oyfx07XjWI2ErXyvaL3g
	EmtikxSK2mW0I+EuEsajD/uxTrce1ldS+9cBGROUWVdwNkvuSHNPjxXUP71hT31vpnyVRbbcVRrSY
	NR9s/0IfK+p5d5wqxBpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJKt-0004yZ-GX; Wed, 07 Aug 2019 10:38:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJKg-0004xq-5f
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:38:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B04A328;
 Wed,  7 Aug 2019 03:38:13 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C72913F575;
 Wed,  7 Aug 2019 03:38:12 -0700 (PDT)
Date: Wed, 7 Aug 2019 11:38:10 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH] arm64/ptrace: Fix typoes in sve_set() comment
Message-ID: <20190807103810.GF10425@arm.com>
References: <20190807103445.32257-1-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807103445.32257-1-julien.grall@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_033814_261248_993BD047 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin.marinas@arm.com, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, oleg@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 11:34:45AM +0100, Julien Grall wrote:
> The ptrace trace SVE flags are prefixed with SVE_PT_*. Update the
> comment accordingly.
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> ---
>  arch/arm64/kernel/ptrace.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> index 17525da8d5c8..0de3eae09d36 100644
> --- a/arch/arm64/kernel/ptrace.c
> +++ b/arch/arm64/kernel/ptrace.c
> @@ -870,7 +870,7 @@ static int sve_set(struct task_struct *target,
>  		goto out;
>  
>  	/*
> -	 * Apart from PT_SVE_REGS_MASK, all PT_SVE_* flags are consumed by
> +	 * Apart from SVE_PT_REGS_MASK, all SVE_PT_* flags are consumed by
>  	 * sve_set_vector_length(), which will also validate them for us:
>  	 */

Thanks for spotting that.

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
