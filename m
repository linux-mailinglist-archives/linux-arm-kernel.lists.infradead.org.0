Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 794B29EF89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:59:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lm9m43c6WiX2Nt9sedX1y2vsruafO/SnwZR2nhTQ+4Q=; b=e907hVFii0/VJD
	2s3jTVbqN7rpRQES5/btwFL/g4LnCMAy/thAkntv7KDQxjZ7gSKZRWzcpze7dw8I1JcW5PSzcH4gk
	lGXW+a//xEvmhsuR0V1dPcCe/SGl8Xryo5rbB1NlWFVIj3azwgYgQDbexxsJIDYcF2MI3A4TXMbr6
	rTTq4+tRK6WY12xnKd1aPhOSQmKofTJbCtmE2c5cN2gUQINPfT+3pr9zmyddOOGdJhQhFG845ERdT
	HjW5i24kS+c0bLJv/GthmRvKViarGAoBCR4mILokhML/iWYNPOfqeeMtOxz9cFOkNWr8PS2yaol7M
	ZOInUjekZ/Wr5GEi8kUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dsu-00061z-30; Tue, 27 Aug 2019 15:59:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dsk-00061c-8U
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:59:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F12E337;
 Tue, 27 Aug 2019 08:59:41 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C7AE23F59C;
 Tue, 27 Aug 2019 08:59:40 -0700 (PDT)
Date: Tue, 27 Aug 2019 16:59:38 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 3/3] arm64: smp: Treat unknown boot failures as being
 'stuck in kernel'
Message-ID: <20190827155938.GB43183@lakrids.cambridge.arm.com>
References: <20190827151815.2160-1-will@kernel.org>
 <20190827151815.2160-4-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827151815.2160-4-will@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_085942_341277_87BC9B2B 
X-CRM114-Status: GOOD (  15.47  )
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
Cc: catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 04:18:15PM +0100, Will Deacon wrote:
> When we fail to bring a secondary CPU online and it fails in an unknown
> state, we should assume the worst and increment 'cpus_stuck_in_kernel'
> so that things like kexec() are disabled.

Definitely! I has assumed we already did this, but I see that we don't.

> Signed-off-by: Will Deacon <will@kernel.org>

I don't see a nicer way of doing this, so:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

> ---
>  arch/arm64/kernel/smp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 1f8aeb77cba5..dc9fe879c279 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -147,6 +147,7 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
>  		default:
>  			pr_err("CPU%u: failed in unknown state : 0x%lx\n",
>  					cpu, status);
> +			cpus_stuck_in_kernel++;
>  			break;
>  		case CPU_KILL_ME:
>  			if (!op_cpu_kill(cpu)) {
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
