Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A90C1BDB54
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 14:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P76qfVDy88S/+ZZba0dCJArg/E89nja3Njs5Sjf9/ho=; b=kcploCvj4DnWMr
	3UYriGeWMh3KOyJBVnpkZnUnzVumKuzG3hWPsF1R3S9TWVJtmsYzvRazFJb/oYUAKVNzop5fWtJUX
	E6ef5+F0hDcOF602iDOBoP+RynlASDeu3SfwOVPNYyqioUpT3OCY6J2TcgJ6dZHldE+t6NXrtAIR5
	HSEsEqy56xPa6H0fxV+dGX+w4jtqoiw02sM6SL/6p6gY/8V768doH5HJZmVH5kTJWvb4Epq6auo22
	2mfPSyYLe20trS8SDjuTWiHNsRgrUItbsyHUbzyaJE3atQ8A27w062LyAwygNz1F5JHlJ2yqxpxFm
	+qnzbnaF1sROSVEmeL5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlRj-0000gw-KV; Wed, 29 Apr 2020 12:04:11 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlRV-0000fi-9N
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 12:03:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588161834;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vVvnsQYJBmlhPz+VOWOkjerwwm6oNBR0crQtJmB/QvU=;
 b=MvafjDh0ME65yh6CL0VSTqE/Qep1fH6TmkF/Y5+grm8SY/BH8tUFcY/kpnWkjnm03QmiNq
 q12cStWux86jWMZWiafD52CEQ2PYdezQ/0TvoMQHexq+77tnCVlfVUOuPmWya5eXROGxQi
 3lu/d3/UU2DnZ8B50ofePYij9N3833g=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-216-utFleO5CO9eqrls38mJEtA-1; Wed, 29 Apr 2020 08:03:53 -0400
X-MC-Unique: utFleO5CO9eqrls38mJEtA-1
Received: by mail-wr1-f70.google.com with SMTP id e5so1585611wrs.23
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 05:03:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=PqLyCXunZj5hIFRUBscgO/EQSOL9w9OMkdGXwDOCk6M=;
 b=jVw87umx+l6+ITUsBNWj1iiNl/jFe7SkJWgsRcK1C7AgJWav3rt7eCHLYpDzM6TVl0
 OulTOPLDEtvYcZe3HGjRz2UbtBiD9V9wLX83sh6+FixggKf6XnTBA/5R85EgtJtuKZfH
 TRN3ANkuEL20kaqOF0n9I/vWKcINn0vSsVwmUC792mj4GPqJDkFjQ4FmwykA14xlNpz4
 cCsWOjPBjYGMPoVpXhOpJJIDxgszoRzJXXHZxSr/0zvx7N627jf53HZ9WZf1f4Qngike
 TiAr00S7yMPJFKCYxFiD/0bWfftMT4UluAmdwX78MD2WJAgejfIcRATxwU4FJRvwG2r+
 WcrQ==
X-Gm-Message-State: AGi0PuZTxYeTqOu3AQbfkY8NfBgcSOHWzEpaCQHNVE/lvndno8DQOk/T
 a2XjK9N/2XDYWPUGGhwmkhE0d2JW4UK1XoQSL7/MNNUqogV46My2mvWisWHN+lYM/NdVsQBhCYF
 n3jh3BPgH10lhYl3SHHyn7YYVeA5ou7Rwjw8=
X-Received: by 2002:a5d:470a:: with SMTP id y10mr38056941wrq.63.1588161831804; 
 Wed, 29 Apr 2020 05:03:51 -0700 (PDT)
X-Google-Smtp-Source: APiQypLf4KZ8Rngx22ZnSSPEeNNoZEwjNixMH7nATd8iA4vBWIWJ++JJzRvFnPP9z8By88bEDzPwkg==
X-Received: by 2002:a5d:470a:: with SMTP id y10mr38056907wrq.63.1588161831501; 
 Wed, 29 Apr 2020 05:03:51 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id h16sm33279920wrw.36.2020.04.29.05.03.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 05:03:46 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Subject: Re: [PATCH v4 1/7] KVM: s390: clean up redundant 'kvm_run' parameters
In-Reply-To: <20200427043514.16144-2-tianjia.zhang@linux.alibaba.com>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
 <20200427043514.16144-2-tianjia.zhang@linux.alibaba.com>
Date: Wed, 29 Apr 2020 14:03:41 +0200
Message-ID: <87r1w6h52a.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_050357_404833_E189625A 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [205.139.110.120 listed in bl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
Cc: christoffer.dall@arm.com, wanpengli@tencent.com, kvm@vger.kernel.org,
 david@redhat.com, benh@kernel.crashing.org, heiko.carstens@de.ibm.com,
 peterx@redhat.com, linux-kernel@vger.kernel.org, paulus@ozlabs.org,
 hpa@zytor.com, kvmarm@lists.cs.columbia.edu, linux-s390@vger.kernel.org,
 frankja@linux.ibm.com, chenhuacai@gmail.com, mpe@ellerman.id.au,
 joro@8bytes.org, x86@kernel.org, borntraeger@de.ibm.com, mingo@redhat.com,
 julien.thierry.kdev@gmail.com, thuth@redhat.com, gor@linux.ibm.com,
 suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org, bp@alien8.de,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 tsbogend@alpha.franken.de, tianjia.zhang@linux.alibaba.com, cohuck@redhat.com,
 linux-mips@vger.kernel.org, sean.j.christopherson@intel.com,
 james.morse@arm.com, maz@kernel.org, pbonzini@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tianjia Zhang <tianjia.zhang@linux.alibaba.com> writes:

> In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
> structure. For historical reasons, many kvm-related function parameters
> retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time. This
> patch does a unified cleanup of these remaining redundant parameters.
>
> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
> ---
>  arch/s390/kvm/kvm-s390.c | 23 +++++++++++++++--------
>  1 file changed, 15 insertions(+), 8 deletions(-)
>
> diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
> index e335a7e5ead7..c0d94eaa00d7 100644
> --- a/arch/s390/kvm/kvm-s390.c
> +++ b/arch/s390/kvm/kvm-s390.c
> @@ -4176,8 +4176,9 @@ static int __vcpu_run(struct kvm_vcpu *vcpu)
>  	return rc;
>  }
>  
> -static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
> +static void sync_regs_fmt2(struct kvm_vcpu *vcpu)
>  {
> +	struct kvm_run *kvm_run = vcpu->run;
>  	struct runtime_instr_cb *riccb;
>  	struct gs_cb *gscb;
>  
> @@ -4243,8 +4244,10 @@ static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>  	/* SIE will load etoken directly from SDNX and therefore kvm_run */
>  }
>  
> -static void sync_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
> +static void sync_regs(struct kvm_vcpu *vcpu)
>  {
> +	struct kvm_run *kvm_run = vcpu->run;
> +
>  	if (kvm_run->kvm_dirty_regs & KVM_SYNC_PREFIX)
>  		kvm_s390_set_prefix(vcpu, kvm_run->s.regs.prefix);
>  	if (kvm_run->kvm_dirty_regs & KVM_SYNC_CRS) {
> @@ -4273,7 +4276,7 @@ static void sync_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>  
>  	/* Sync fmt2 only data */
>  	if (likely(!kvm_s390_pv_cpu_is_protected(vcpu))) {
> -		sync_regs_fmt2(vcpu, kvm_run);
> +		sync_regs_fmt2(vcpu);
>  	} else {
>  		/*
>  		 * In several places we have to modify our internal view to
> @@ -4292,8 +4295,10 @@ static void sync_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>  	kvm_run->kvm_dirty_regs = 0;
>  }
>  
> -static void store_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
> +static void store_regs_fmt2(struct kvm_vcpu *vcpu)
>  {
> +	struct kvm_run *kvm_run = vcpu->run;
> +
>  	kvm_run->s.regs.todpr = vcpu->arch.sie_block->todpr;
>  	kvm_run->s.regs.pp = vcpu->arch.sie_block->pp;
>  	kvm_run->s.regs.gbea = vcpu->arch.sie_block->gbea;
> @@ -4313,8 +4318,10 @@ static void store_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>  	/* SIE will save etoken directly into SDNX and therefore kvm_run */
>  }
>  
> -static void store_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
> +static void store_regs(struct kvm_vcpu *vcpu)
>  {
> +	struct kvm_run *kvm_run = vcpu->run;
> +
>  	kvm_run->psw_mask = vcpu->arch.sie_block->gpsw.mask;
>  	kvm_run->psw_addr = vcpu->arch.sie_block->gpsw.addr;
>  	kvm_run->s.regs.prefix = kvm_s390_get_prefix(vcpu);
> @@ -4333,7 +4340,7 @@ static void store_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>  	current->thread.fpu.fpc = vcpu->arch.host_fpregs.fpc;
>  	current->thread.fpu.regs = vcpu->arch.host_fpregs.regs;
>  	if (likely(!kvm_s390_pv_cpu_is_protected(vcpu)))
> -		store_regs_fmt2(vcpu, kvm_run);
> +		store_regs_fmt2(vcpu);
>  }
>  
>  int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
> @@ -4371,7 +4378,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
>  		goto out;
>  	}
>  
> -	sync_regs(vcpu, kvm_run);
> +	sync_regs(vcpu);
>  	enable_cpu_timer_accounting(vcpu);
>  
>  	might_fault();
> @@ -4393,7 +4400,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
>  	}
>  
>  	disable_cpu_timer_accounting(vcpu);
> -	store_regs(vcpu, kvm_run);
> +	store_regs(vcpu);
>  
>  	kvm_sigset_deactivate(vcpu);

Haven't tried to compile this but the change itself looks obviously
correct, so

Reviewed-by: Vitaly Kuznetsov <vkuznets@redhat.com>

-- 
Vitaly


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
