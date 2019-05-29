Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A0D2D7C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYWVspjIQIln4aUd+KLtI6MLiYebmylE7KCsGshPVfQ=; b=L8LtbcxOPHHjKp
	j1khT61g7k6AuYQy/o2+VcxoS9dMNESJ9nFmGg4IUK8U1E6uaFyo1ZLzVa8745w/DTm+hL+lFAaUx
	A4X0YfVNIGdLVbmVc3GyK/yUZ5DK1GsMOYs0KY7yDLCfNOlnUOH8mdVcnK139TaYi1fdH/rclDbuS
	FCHNolVTvRtJc8BUegY22xFCJipYnRZzeR67Irf1ZMG0VM1wMyKpHjtLdtv7OoCnVe/oP5Kq82rsk
	WhDCUKr0yJXXRS6ikhxTw1gdfQjnD44XEwVBvLF08GVbIwhfXnKdiRthxE075kiCXsT/PUKt//S92
	mhX3FeWEjMM31c3HP+tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtvB-00037V-30; Wed, 29 May 2019 08:26:53 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtv3-000378-9H
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:26:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D98F580D;
 Wed, 29 May 2019 01:26:41 -0700 (PDT)
Received: from [10.37.8.255] (unknown [10.37.8.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2030D3F5AF;
 Wed, 29 May 2019 01:26:37 -0700 (PDT)
Subject: Re: [PATCH v2 09/15] arm64: KVM: add support to save/restore SPE
 profiling buffer controls
To: Sudeep Holla <sudeep.holla@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
References: <20190523103502.25925-1-sudeep.holla@arm.com>
 <20190523103502.25925-10-sudeep.holla@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <fbd9f15d-2322-5808-de62-9e1010c9c961@arm.com>
Date: Wed, 29 May 2019 09:26:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190523103502.25925-10-sudeep.holla@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012645_334112_2DEB03F9 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kvm@vger.kernel.org, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

On 05/23/2019 11:34 AM, Sudeep Holla wrote:
> Currently since we don't support profiling using SPE in the guests,
> we just save the PMSCR_EL1, flush the profiling buffers and disable
> sampling. However in order to support simultaneous sampling both in
> the host and guests, we need to save and reatore the complete SPE
> profiling buffer controls' context.
> 
> Let's add the support for the same and keep it disabled for now.
> We can enable it conditionally only if guests are allowed to use
> SPE.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  arch/arm64/kvm/hyp/debug-sr.c | 44 ++++++++++++++++++++++++++++-------
>  1 file changed, 35 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
> index a2714a5eb3e9..a4e6eaf5934f 100644
> --- a/arch/arm64/kvm/hyp/debug-sr.c
> +++ b/arch/arm64/kvm/hyp/debug-sr.c
> @@ -66,7 +66,8 @@
>  	default:	write_debug(ptr[0], reg, 0);			\
>  	}
>  
> -static void __hyp_text __debug_save_spe_nvhe(struct kvm_cpu_context *ctxt)
> +static void __hyp_text
> +__debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)

Rather that add a boolean to just indicate "do more stuff" I'd suggest
having two separate functions.

Also this would be an opportunity to fix the naming of this function
which doesn't just save sve context, it also flushes the context and
disables it.

So maybe have a: void __debug_spe_flush_ctx(struct kvm_cpu_context *ctx);

Maybe adapt the name to make it understandable that it does save PMSCR.

and void __debug_spe_save_ctx(struct kvm_cpu_context *ctx);

Which would save the registers you save under the full_ctx condition.

Cheers,

Julien

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
