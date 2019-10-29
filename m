Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54ADAE89A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:36:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orb1CYWXM24nYKkjcUcnsxmBpH6Kv9BDfIbk5EdW8NA=; b=UEKOR+f3scCpGs
	3P0IKuowNwfOdFSOhnmQgffgOJwQAdePt+vvX3o/qnfyY+L/uGaAwyubyvu89HxvQ9JGKh3fuRGRs
	dJ0r+aei1jA3HyiPElA+7dq5pZXr1D5Peltp0ygAG73kJ+rHaQMYO1wyyjLxyf4gcl8cOY4k7Nnw2
	75KR9o9JyDialcyctrNP/Is33PZ5a7s0i8cvB6jD/TZe/5kkehQli08nq6Vi3yKMB5c5cNQsWl4d8
	9QfuUA+O7TiRPeRdG77WrGffLxIfrr+BG/bZLWxw/c87vqbFOAe8um7jaetaPjvrdHenAyRzXUMH9
	ToFV/6+FQN8GhgNdQiwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRg8-00067X-8f; Tue, 29 Oct 2019 13:36:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRfx-00065j-Kg
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:36:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B2EC2086A;
 Tue, 29 Oct 2019 13:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572356201;
 bh=hqFAc7xsziLWsBPWZq0srOVOjk5w2lCAS39jmUgm6gA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y9476nuo8bL5TAGLC1+v92LCKfTum9lzcCJ0X92LJuxjup0fFTLFO7wB0Bhntyo6J
 lJGsUV1gi36/3Xq8xAArCCWPjXmpbVXjjfro7Emn4fZWKX1aHQioTrmWa44hJUOJhu
 24Z4tAxVgNRAoyf+ND9k9NbTBj7XRuBb4VsRh5do=
Date: Tue, 29 Oct 2019 13:36:36 +0000
From: Will Deacon <will@kernel.org>
To: Xiang Zheng <zhengxiang9@huawei.com>
Subject: Re: [PATCH v2] arm64: print additional fault message when executing
 non-exec memory
Message-ID: <20191029133635.GA12800@willie-the-truck>
References: <20191029124131.32028-1-zhengxiang9@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029124131.32028-1-zhengxiang9@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_063645_697088_8695B708 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, james.morse@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, wanghaibin.wang@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 08:41:31PM +0800, Xiang Zheng wrote:
> When attempting to executing non-executable memory, the fault message
> shows:
> 
>   Unable to handle kernel read from unreadable memory at virtual address
>   ffff802dac469000
> 
> This may confuse someone, so add a new fault message for instruction
> abort.
> 
> Signed-off-by: Xiang Zheng <zhengxiang9@huawei.com>
> ---
>  arch/arm64/mm/fault.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index 9fc6db0bcbad..9adec86d0f8a 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -318,6 +318,8 @@ static void __do_kernel_fault(unsigned long addr, unsigned int esr,
>  	if (is_el1_permission_fault(addr, esr, regs)) {
>  		if (esr & ESR_ELx_WNR)
>  			msg = "write to read-only memory";
> +		else if (is_el1_instruction_abort(esr))
> +			msg = "execute from non-executable memory";
>  		else
>  			msg = "read from unreadable memory";
>  	} else if (addr < PAGE_SIZE) {

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
