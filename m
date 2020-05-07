Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE0E1C8D03
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bkrWWT/K9qpoueEmNMu1J+HkThTqRizqfRMOoTfzi8=; b=ocR/hErWMbhXta
	Vh+zE0wGGyQvGTqyYWeUMs+be2Bi3w2b6kgCvpNf039dDrhtFg1wtGzySLBLLoSajImyMWBv/mDK+
	fZvLK46ethEzVAurlAaUqomcjnedB2qrfSwFN+6UpJS2+1tFu/iP77DK+lhN4bv/u1BxM6kh36i18
	wbItGPPpDwakjPYWbmWLtl1OeDOzrPoP0SakY8/2PSvaLlTRsZW1jz8wj8wBKkidIPh7cekeC4vGb
	dt25xXYdbKlwkhSwo9BohAnrV52vQuLe+dATDNFTDlamHwYGH/52mDM1S6c71rXP8hZmEAKyS5nWn
	hH3ePpA4AIZ+fO419jBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgwt-00078A-VN; Thu, 07 May 2020 13:52:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgwl-00077e-LH
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:52:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 681E52073A;
 Thu,  7 May 2020 13:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588859539;
 bh=IwsXYXmDs9aNaYPa4+QMKqQ65GYmJMLHHgZOQO0ito0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mnd4bYDWYAIZ4zCHfaiJgGW7gq/naBS9fqditzfIOrsnv40Et2ZRgwpNfZocNknka
 Axg7s2N1KjHSV9RE7TilOJ7BeJnjKctTrwdNmwvVRrJhDfMgNkonFMoZ7eABSB+qyC
 PuuBS2r0GmqVqCNKkbKQu7tNa+Iw0qnZXMIV3cCs=
Date: Thu, 7 May 2020 14:52:14 +0100
From: Will Deacon <will@kernel.org>
To: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: Re: [PATCH] arm64: stacktrace: Factor out some common code info
 on_stack()
Message-ID: <20200507135213.GA32706@willie-the-truck>
References: <10b188af-a03b-3acc-8a06-cf31a46f735a@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10b188af-a03b-3acc-8a06-cf31a46f735a@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_065219_716829_64AAD2EF 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, hewenliang4@huawei.com, lorenzo.pieralisi@arm.com,
 hushiyuan@huawei.com, catalin.marinas@arm.com, 0x7f454c46@gmail.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com, tglx@linutronix.de,
 Dave.Martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 05:28:19PM +0800, Yunfeng Ye wrote:
> diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
> index fdb913cc0bcb..b92bef2fb6cd 100644
> --- a/arch/arm64/include/asm/stacktrace.h
> +++ b/arch/arm64/include/asm/stacktrace.h
> @@ -69,27 +69,40 @@ extern void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
> 
>  DECLARE_PER_CPU(unsigned long *, irq_stack_ptr);
> 
> -static inline bool on_irq_stack(unsigned long sp,
> +static inline bool on_stack(unsigned long sp, unsigned long low,
> +				unsigned long high, enum stack_type type,
>  				struct stack_info *info)
>  {
> -	unsigned long low = (unsigned long)raw_cpu_read(irq_stack_ptr);
> -	unsigned long high = low + IRQ_STACK_SIZE;
> -
> -	if (!low)
> -		return false;
> -
>  	if (sp < low || sp >= high)
>  		return false;
> 
>  	if (info) {
>  		info->low = low;
>  		info->high = high;
> -		info->type = STACK_TYPE_IRQ;
> +		info->type = type;
>  	}
> -
>  	return true;
>  }
> 
> +static inline bool on_valid_stack(unsigned long sp, unsigned long low,
> +				unsigned long high, enum stack_type type,
> +				struct stack_info *info)
> +{
> +	if (!low)
> +		return false;
> +
> +	return on_stack(sp, low, high, type, info);
> +}

Do we need this as distinct from on_stack()? Afaict, 'low' is never
going to be NULL for the on_stack() callers, so I suggest just having
on_stack() check 'low' and getting everybody to call that instead.

Make sense?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
