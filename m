Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 023CB1A6FDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 01:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCLpjjynbirq7a/sh5NNdfaNJPiDQjhM4DGDN0a6NtI=; b=hKjUlJpwwZQ2Gb
	tXzRww38wauG29q7Go2HMbdPVuqsLn23CFomt0PZbhpExd/jFZX3OqE+lEKVR08kNqPNHwwT9LCT3
	dXVv3QamQQN0RreASHgNocvrHminP8AdP3byT2ZbJC2YFNkDgMaUSom3WsDkMLhzIw776LML3vBsO
	/Fhw9wpOZ4YBypq4ug/437ihiEWitWzJhWqjh2GsaeMoTJWIicBCZHcMzpYr1DLvQmKiZ6ND8ayhV
	0qGSPSGHOEyviItyTJgzeW2f5kAGTloYfoy9HSlh0CPUjkOXXOL+Kw/UZrBzeUzMB6pYQZ3nE3NDj
	rwq4q1cMa4OVb9qc2C5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO8dt-0007I3-Gm; Mon, 13 Apr 2020 23:37:29 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO8dn-0007HN-Tm
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 23:37:25 +0000
Received: by mail-pf1-x442.google.com with SMTP id r14so5227832pfl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 16:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lMPIRjn0PE7jnqkkSuf3FQb+qv7klZT/6x17CMWdL34=;
 b=d9NwDt3IHShJ2ZFMU0WdEcCis4G+93NeL33oosLAJ0QBuuU2m6PWo3KMjSfpLJlU4I
 t06sp32EumYZEhSVDRcWGyPkyeetQP8+MvbdwRXYykzoH3+AITWvVP64YO93bwnOJxLF
 D5KfnhButbLosSN8/qU629tHEf6ViakscnvvxpZ3hhQXplpdLVNheOPeHCaq8xhmjbzn
 s6Z9ObCL9VQ4ioIaVHFzpurAEI0OZDQEdMmeCPFrIo58ZFT/7Xe0wdFRaU5Vdi3dQhlc
 rYQcrSsUKZOdKvzTe+NmJgyRZz7G74rogHaSGx7C4MrN6k8npbyfw+gF6whUx0hQek9X
 eQOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lMPIRjn0PE7jnqkkSuf3FQb+qv7klZT/6x17CMWdL34=;
 b=PKFU/G29F/lVtIxEb6p8Z1WE7vv79qWJwcEWiYEqp9gkrv3NNKxUtNKK5k1BkOK9pF
 1xkmE0svCV+4Wwy0BLH4b39JIT3vdMJ3HNNutEJ6T195s8amviNRqcZ7BqqLygzjJJM2
 U9PZMhmiAhE5hSTTx4tEJynJkMxezJUgKD3a5OKkmR5B1/fEAuszf0ZCmPh0uRxS4rlh
 KGNC7RN82yznQ8BGCa7djBeb9zsMENhJ1CB35JeiG+l638HtDKta18FUWB12nacxcG31
 Dx54hnWJ+I92JQ0mfgGnu7P/rUftxyY5GtkgMGuUlB6YcWvkK2WdAVsd32Quovu4vDmu
 1yMQ==
X-Gm-Message-State: AGi0PuZFbj7+J1wBytUZRB0iwBattQa/yZ8RRKYLZtmKJmFYTv2H9UR3
 q44kRkJRTbATgxRMDxFUXxDpH4UGGfmKhACW/AytTg==
X-Google-Smtp-Source: APiQypIIArEcMtBa+6lU3ecAVeDtyJ9+R/7AtvwXV6mkhFTgICAF71cY/Q7KBQ2W2N1aHsHsV6yeVXwI/BROaWewvSM=
X-Received: by 2002:a63:6604:: with SMTP id a4mr18265124pgc.381.1586821042616; 
 Mon, 13 Apr 2020 16:37:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200413231016.250737-1-maskray@google.com>
In-Reply-To: <20200413231016.250737-1-maskray@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 13 Apr 2020 16:37:10 -0700
Message-ID: <CAKwvOdn35v5LkvhWugfLmK_FjVsd0RdPtBCRSqVaM9EP_1KU7w@mail.gmail.com>
Subject: Re: [PATCH] arm64: kvm: Delete duplicated label: in invalid_vector
To: Fangrui Song <maskray@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_163723_986271_580CB1E7 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 4:10 PM Fangrui Song <maskray@google.com> wrote:
>
> SYM_CODE_START defines \label , so it is redundant to define \label again.
> A redefinition at the same place is accepted by GNU as
> (https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=159fbb6088f17a341bcaaac960623cab881b4981)
> but rejected by the clang integrated assembler.
>
> Fixes: 617a2f392c92 ("arm64: kvm: Annotate assembly using modern annoations")

Thanks for the patch!  I think a more accurate Fixes tag would be:
Fixes: 2b28162cf65a ("arm64: KVM: HYP mode entry points")

With this patch applied, and your other arm64 integrated assembler
patch (https://lore.kernel.org/linux-arm-kernel/20200413033811.75074-1-maskray@google.com/T/#u),
I can now assemble arch/arm64/kvm/.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> Link: https://github.com/ClangBuiltLinux/linux/issues/988
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>  arch/arm64/kvm/hyp/hyp-entry.S | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
> index c2a13ab3c471..9c5cfb04170e 100644
> --- a/arch/arm64/kvm/hyp/hyp-entry.S
> +++ b/arch/arm64/kvm/hyp/hyp-entry.S
> @@ -198,7 +198,6 @@ SYM_CODE_END(__hyp_panic)
>  .macro invalid_vector  label, target = __hyp_panic
>         .align  2
>  SYM_CODE_START(\label)
> -\label:
>         b \target
>  SYM_CODE_END(\label)
>  .endm
> --
> 2.26.0.110.g2183baf09c-goog
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
