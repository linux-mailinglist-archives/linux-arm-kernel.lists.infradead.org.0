Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A60B110EA1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 13:33:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wf4WRc/uZqSCyz4aTikpK3s2klqyyJwU33nx7HGzR0=; b=QZUPKkkLsG8Rp4
	ay4IlCcVx4i5ol3RM67hxJQkKqjwEIfql+rq/ZzYJzWHrnd63REfUQx/rmpYtWu+vtO04Ly7yOxwN
	Uko6ViY5dlM64O7lAs59ADpq5OpFl58WAtI/WRZYv1uQ0/aYAMhMR9wncyuiTGL3idx34jhdz5e7N
	L5TNH7xhJ4Nd4deHXWyHHU1fnHdQHAeQDh2ms4e6jTGk0nU+DEVKJDMO3D1C49fUi/LCX1V9r0IBg
	TJauLPsw53DuzW2wz3NBTwUcVFtH70F5KnCjyqgrkMnfuB9B2f6tUudo7M6G/gCzw9jiv5pvcx6te
	l/eQrWcfe7esMyfYMhsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibktV-00028g-Rc; Mon, 02 Dec 2019 12:33:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibktN-00027R-RI
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 12:33:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 876B1DA7;
 Mon,  2 Dec 2019 04:33:26 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A31F53F7D8;
 Mon,  2 Dec 2019 04:33:25 -0800 (PST)
Date: Mon, 2 Dec 2019 12:33:19 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Heyi Guo <guoheyi@huawei.com>
Subject: Re: [PATCH] arm64/kernel/entry: refine comment of stack overflow check
Message-ID: <20191202123319.GA25809@lakrids.cambridge.arm.com>
References: <20191202113702.34158-1-guoheyi@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202113702.34158-1-guoheyi@huawei.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_043329_927698_3A229786 
X-CRM114-Status: GOOD (  16.02  )
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
Cc: wanghaibin.wang@huawei.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 07:37:02PM +0800, Heyi Guo wrote:
> Stack overflow checking can be done by testing
> sp & (1 << THREAD_SHIFT)
> only for the stacks are aligned to (2 << THREAD_SHIFT) with size of
> (1 << THREAD_SIZE), and this is the case when CONFIG_VMAP_STACK is
> set.

Good point, I was sloppy with this comment.

> 
> Fix the code comment to avoid confusion.
> 
> Signed-off-by: Heyi Guo <guoheyi@huawei.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/kernel/entry.S | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index cf3bd2976e57..9e8ba507090f 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -76,7 +76,8 @@ alternative_else_nop_endif
>  #ifdef CONFIG_VMAP_STACK
>  	/*
>  	 * Test whether the SP has overflowed, without corrupting a GPR.
> -	 * Task and IRQ stacks are aligned to (1 << THREAD_SHIFT).
> +	 * Task and IRQ stacks are aligned to (2 << THREAD_SHIFT) with size of
> +	 * (1 << THREAD_SHIFT).
>  	 */

Can we make that:

	Task and IRQ stacks are aligned so that SP & (1 << THREAD_SHIFT)
	should always be zero.

... which I think is a bit clearer.

With that wording:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

>  	add	sp, sp, x0			// sp' = sp + x0
>  	sub	x0, sp, x0			// x0' = sp' - x0 = (sp + x0) - x0 = sp
> -- 
> 2.19.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
