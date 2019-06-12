Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6BA42661
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pP90VNatcnq2rINE2LkWITt7JXmPl8Zs4hES4S4WjUQ=; b=CtpeYAsSAp28TT
	Z/PtS3l1VIGO9GJEJI+ly+fQMGuAFHs7c/dcxeoJST7+P19t/9zD2O3B8Vq8N9hGMRA3K6M78qsir
	1erQMAVPMMSmQc5jIPzr9mnAUITJdgMpGufPZG5wTAOSc7RZyqN1Pb1f8du5wwAJS2UogGQc7zb30
	eCvdeXuzWwqdj5OsI/oFNRH4y4ZYkSuua1lQGIWIUr5WspkTXZ7/V0f1kNfU/hJra+/t+9MqUtUch
	QtdHbQ2ULWNfd8MLtawMVQGED3GCDr18paKTAsdU8RJ/SNcxdOZi/dZZFFmEEStnSJ8lyBJ/cjjIR
	9pXo6bs3YDrynkLscwNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2g0-0003Pb-TV; Wed, 12 Jun 2019 12:48:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2fk-0003Gq-9Y
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:48:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 80036337;
 Wed, 12 Jun 2019 05:48:09 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 39D8E3F246;
 Wed, 12 Jun 2019 05:48:07 -0700 (PDT)
Subject: Re: [PATCH v1 1/5] KVM: arm/arm64: Remove kvm_mmio_emulate tracepoint
To: Zenghui Yu <yuzenghui@huawei.com>
References: <1560330526-15468-1-git-send-email-yuzenghui@huawei.com>
 <1560330526-15468-2-git-send-email-yuzenghui@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <e915c19a-51df-be88-ea3a-7c9a211f4518@arm.com>
Date: Wed, 12 Jun 2019 13:48:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560330526-15468-2-git-send-email-yuzenghui@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054812_398841_1BD8F808 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: acme@redhat.com, kvm@vger.kernel.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 acme@kernel.org, linuxarm@huawei.com, linux-perf-users@vger.kernel.org,
 peterz@infradead.org, alexander.shishkin@linux.intel.com, mingo@redhat.com,
 xiexiangyou@huawei.com, ganapatrao.kulkarni@cavium.com, namhyung@kernel.org,
 jolsa@redhat.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 12/06/2019 10:08, Zenghui Yu wrote:
> In current KVM/ARM code, no one will invoke trace_kvm_mmio_emulate().
> Remove this TRACE_EVENT definition.

Oooer. We can't just go removing these things, they are visible to user-space.

I recall an article on this: https://lwn.net/Articles/737530/
"Another attempt to address the tracepoint ABI problem"

I agree this is orphaned, it was added by commit 45e96ea6b369 ("KVM: ARM: Handle I/O
aborts"), but there never was a caller.

The problem with removing it is /sys/kernel/debug/tracing/events/kvm/kvm_mmio_emulate
disappears. Any program relying on that being present (but useless) is now broken.


Thanks,

James


> diff --git a/virt/kvm/arm/trace.h b/virt/kvm/arm/trace.h
> index 204d210..8b7dff2 100644
> --- a/virt/kvm/arm/trace.h
> +++ b/virt/kvm/arm/trace.h
> @@ -114,27 +114,6 @@
>  		  __entry->type, __entry->vcpu_idx, __entry->irq_num, __entry->level)
>  );
>  
> -TRACE_EVENT(kvm_mmio_emulate,
> -	TP_PROTO(unsigned long vcpu_pc, unsigned long instr,
> -		 unsigned long cpsr),
> -	TP_ARGS(vcpu_pc, instr, cpsr),
> -
> -	TP_STRUCT__entry(
> -		__field(	unsigned long,	vcpu_pc		)
> -		__field(	unsigned long,	instr		)
> -		__field(	unsigned long,	cpsr		)
> -	),
> -
> -	TP_fast_assign(
> -		__entry->vcpu_pc		= vcpu_pc;
> -		__entry->instr			= instr;
> -		__entry->cpsr			= cpsr;
> -	),
> -
> -	TP_printk("Emulate MMIO at: 0x%08lx (instr: %08lx, cpsr: %08lx)",
> -		  __entry->vcpu_pc, __entry->instr, __entry->cpsr)
> -);
> -
>  TRACE_EVENT(kvm_unmap_hva_range,
>  	TP_PROTO(unsigned long start, unsigned long end),
>  	TP_ARGS(start, end),
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
