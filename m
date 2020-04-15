Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEC81A97F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxdon5cdGYr5EfkI37V9qmdr0hinO4AlMC/gX2RUm/Q=; b=I2ZiYuDNK7FbzI
	YNMT5Po2v/TEIaKIrZU/ZrDtoJ6540C0Xs4Gl1qOpHnXLk3Hxf6fbWZK6zzIfZdJm+jaR4z6AYHqx
	vpAZqLzywh4unGG8NEvbGnZeVbUjs+MmoOwbd/FgGhSsfizgOXGeIm+nuD1tZe9Rimsv0bJ04I/j5
	3xOaOxIewU5pkF1oWL//YDmrPwO5tLTO5RrAY6EielLAmskwjXlkhuk6Icg4MaV4XdBkacT+mEajO
	BPWYjhsAHDI+ig0TZDFXPLXekn+cOlj0glTJgZIDISabbYq4+La26jZDZROQKZO9ls4DyPkv5uRGX
	BX735EE/911uJ/TtPfiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOe1j-0001vr-8w; Wed, 15 Apr 2020 09:08:11 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOe1b-0001v8-Hw
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 09:08:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586941681;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/EXNpOGZswAeAZPkceeFE/XM7sXAwUaoIFU9vZ0wVCE=;
 b=VW7jjurxPbyHCG/FNL75ia3WUyupsknBjqgN4zcWwBQhK+aizFby2zYvoa3V0U/7JGLwOP
 yNb6V8PKYlMsdJedxapOvy+BafR+8haBgueSZ8yX063UuOgbUcBnJGuVPkHjbheKkU8oAO
 66cruLVHMn//rsRIBynU495tFFZGluA=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-354-i-emuO9kNNq9y6abaLYvEA-1; Wed, 15 Apr 2020 05:07:57 -0400
X-MC-Unique: i-emuO9kNNq9y6abaLYvEA-1
Received: by mail-wm1-f72.google.com with SMTP id t62so5492778wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 02:07:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=lisOMIPYzGEOUKW/w9q538cTmyUuHd07/Sojgyr8MlQ=;
 b=AqZOwrFfmCVpWF+Ps1mjhV4rmhlLFm4TOxsNEu0F899TjRf22bTTmVVxBBaKuGB5L9
 Epl4wRG6JbyH7kL0YmDVlaaXsTtXensuhCtnAQiztJNLunrOg6XpeUNRdRBDIkInN+xg
 PcTtdkQ0Kwq9TWbtZjaPLUtSglMd9w4MybL58U4lfM2H6KvaKhP0FOCkacjMjZlOWBWZ
 70rGCUAP91xvOMHV4T3eQxfGE5naDyW7vduz8vsOcks9cfbWd5q5PEmdHX2vnwtT4k9L
 b1PF2k1P13fHrkC9IcJj6f0Ywtu/R0Fuu+ZgltcFymw9T+oja8bjU35dNF67JS1+WAd2
 UY7A==
X-Gm-Message-State: AGi0Pub/Uz4LXT+xaPRjU5Wu+DSwkdDiuRLRhWgPPQhyGVhCa/+nc5qq
 m1S9s5DjOI4ZzHzmKoSvsEsmb5V15HX37hyMhmqHBYGdPsFIUXFfUKggPJn+jexutMWquAk0cAw
 76xVMZd+WfbILsff1UcUys5WO/R2dBq2vBb4=
X-Received: by 2002:a5d:6841:: with SMTP id o1mr27977391wrw.412.1586941676336; 
 Wed, 15 Apr 2020 02:07:56 -0700 (PDT)
X-Google-Smtp-Source: APiQypIXD/p9LNlXg20pn+U/yQCcvvORh177d5YZbgu7SsoqIprQYNJ2FhjSis/HsfEJeQMW+4tCHg==
X-Received: by 2002:a5d:6841:: with SMTP id o1mr27977353wrw.412.1586941676047; 
 Wed, 15 Apr 2020 02:07:56 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id e5sm23214697wru.92.2020.04.15.02.07.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 02:07:55 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Subject: Re: [PATCH] KVM: Optimize kvm_arch_vcpu_ioctl_run function
In-Reply-To: <cc29ce22-4c70-87d1-d7aa-9d38438ba8a5@linux.alibaba.com>
References: <20200413034523.110548-1-tianjia.zhang@linux.alibaba.com>
 <875ze2ywhy.fsf@vitty.brq.redhat.com>
 <cc29ce22-4c70-87d1-d7aa-9d38438ba8a5@linux.alibaba.com>
Date: Wed, 15 Apr 2020 11:07:53 +0200
Message-ID: <87a73dxgk6.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_020803_668894_FDF7F1F5 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: wanpengli@tencent.com, james.morse@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, maz@kernel.org, joro@8bytes.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, sean.j.christopherson@intel.com,
 mingo@redhat.com, bp@alien8.de, julien.thierry.kdev@gmail.com, hpa@zytor.com,
 pbonzini@redhat.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, jmattson@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tianjia Zhang <tianjia.zhang@linux.alibaba.com> writes:

> On 2020/4/14 22:26, Vitaly Kuznetsov wrote:
>> Tianjia Zhang <tianjia.zhang@linux.alibaba.com> writes:
>> 
>>> kvm_arch_vcpu_ioctl_run() is only called in the file kvm_main.c,
>>> where vcpu->run is the kvm_run parameter, so it has been replaced.
>>>
>>> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
>>> ---
>>>   arch/x86/kvm/x86.c | 8 ++++----
>>>   virt/kvm/arm/arm.c | 2 +-
>>>   2 files changed, 5 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
>>> index 3bf2ecafd027..70e3f4abbd4d 100644
>>> --- a/arch/x86/kvm/x86.c
>>> +++ b/arch/x86/kvm/x86.c
>>> @@ -8726,18 +8726,18 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>>>   		r = -EAGAIN;
>>>   		if (signal_pending(current)) {
>>>   			r = -EINTR;
>>> -			vcpu->run->exit_reason = KVM_EXIT_INTR;
>>> +			kvm_run->exit_reason = KVM_EXIT_INTR;
>> 
>> I have a more generic question: why do we need to pass 'kvm_run' to
>> kvm_arch_vcpu_ioctl_run() if it can be extracted from 'struct kvm_vcpu'?
>> The only call site looks like
>> 
>> virt/kvm/kvm_main.c:            r = kvm_arch_vcpu_ioctl_run(vcpu, vcpu->run);
>> 
>
> In the earlier version, kvm_run is used to pass parameters with user 
> mode and is not included in the vcpu structure, so it has been retained 
> until now.
>

In case this is no longer needed I'd suggest we drop 'kvm_run' parameter
and extract it from 'struct kvm_vcpu' when needed. This looks like a
natural add-on to your cleanup patch.

-- 
Vitaly


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
