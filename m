Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE0F149888
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 04:02:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2HSA7kviF+1mXn22iB7cVIy9yA8SemAwxDdj1wZYmE=; b=K2yUE827ZWqeyB
	H+adbcMc9kUlnGy4kfgUk0O9MQeTFAdoM+vvnUAI0nyxNalbsnRvczFtUcY55/VcIP7/zT5pvQrX+
	b/N40nlExnMjN28GXwbBx1qwZZo6726uj0Lzd4UivdYDm9ObQJV26h0LMsaGuTYNWMuhKwf4K2XGZ
	+PMRrQeVb9oRf7RiHYDaRYFgAhowbFPUN2nUyVQT2rSJxWo/EwKaS34o72UyCDURkoXUC9CxUrtJw
	/Rd5AWxsApaCdBfH9bqMfYBIqQO0aDeyCmhhBgj0L3fCOCQt+3WHFs/ZtxkHAJAEjYzQDbRrDs9z4
	zc9vBFHQc/bAPZQ+n+yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivYC8-0002CD-Lx; Sun, 26 Jan 2020 03:02:40 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivYC0-0002Bs-8M
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 03:02:33 +0000
Received: by mail-yw1-xc43.google.com with SMTP id l22so3044742ywc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Jan 2020 19:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tII4AVx3br1wrYA9rc56+ZdNuhnFX5KM9kteNOyiS3I=;
 b=lJIXcxbgCpGMRp6Zhvk2vdNUDh4nIe7voMjfHZxQXifoDNtapG1wg1VPXaJ/D5W50V
 q++Qs7815rrRcG1L7K91MxNz42/vCV917pKz+9tZLTxiAmjfYanj20HwdKQydpmE8KjY
 tDlpYmVMQWyr6MwKAd9+zqXhUsPdYj3bwOgycRD9kcbZ7EYqcByFtvK6zRrCsz/VBjJ4
 sLYwOcJ//TFJvb61wypLOyUvG/FePeJawpqNadA7y+xAnoGeTbtGKwBUIsWjy4E82OvC
 duMEH8TkUvPKoMimw74utO6UXNSMWYG5NgjQfg1fKhnGS4Nb7D9RTS+nENdf6YceeAf7
 20Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=tII4AVx3br1wrYA9rc56+ZdNuhnFX5KM9kteNOyiS3I=;
 b=dd/FFQJVmQd7UpEA7Mw22ppTiZsErAUzyRO5suSvSJgTW+cc8QglnZUR+FWfpsP9/H
 dJJW44zsKNSYgH/pENcvNkAYvKTSNrNbhaaSf+HKX4qkf5qIZpBEkutgAMbS8dBjlpil
 SW+lFf0hV2Swx+05KZhL1ReJtBz1g4JLsmWOlKsf3WG93yfH6sgXYASOt9QZpYdBprD/
 lcBVBLsx8mBvkvoLbL/Jlm/UrZv0I0FiR762q2veLYzZTbQdXrT4obumUk7BTOdZx7g/
 I8e5GvBv64CS12vbangWkaBAgbNGSKzDvVJULYssVMl9hV83ftTxbesz6G33D9PcPwKV
 AdyQ==
X-Gm-Message-State: APjAAAVbftGpCc6FgX9QfFDdxw/fUsNM2fa/eLQf0ggaOO44IiNyHfgf
 xKWbfjwyEaiVvKRAdtAIuKs=
X-Google-Smtp-Source: APXvYqxidmu1wxYikxWGAWqi1KWvgtfYYggyQy+ED7b5j1UZ0or2nxTKdnePwrdbB9N0a8F2AlDozg==
X-Received: by 2002:a0d:d8c2:: with SMTP id a185mr7623650ywe.337.1580007748730; 
 Sat, 25 Jan 2020 19:02:28 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id s3sm4845031ywf.22.2020.01.25.19.02.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 Jan 2020 19:02:28 -0800 (PST)
Date: Sat, 25 Jan 2020 19:02:26 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 30/45] KVM: Move vcpu alloc and init invocation to
 common code
Message-ID: <20200126030226.GA7167@roeck-us.net>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-31-sean.j.christopherson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218215530.2280-31-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_190232_322171_BFAA9993 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, James Hogan <jhogan@kernel.org>,
 linux-kernel@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Greg Kurz <groug@kaod.org>,
 kvm-ppc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 01:55:15PM -0800, Sean Christopherson wrote:
> Now that all architectures tightly couple vcpu allocation/free with the
> mandatory calls to kvm_{un}init_vcpu(), move the sequences verbatim to
> common KVM code.
> 
> Move both allocation and initialization in a single patch to eliminate
> thrash in arch specific code.  The bisection benefits of moving the two
> pieces in separate patches is marginal at best, whereas the odds of
> introducing a transient arch specific bug are non-zero.
> 
> Acked-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> Reviewed-by: Cornelia Huck <cohuck@redhat.com>

[ ... ]

> diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
> index 8543d338a06a..2ed76584ebd9 100644
> --- a/arch/s390/kvm/kvm-s390.c
> +++ b/arch/s390/kvm/kvm-s390.c
>  

[ ... ]

> -struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
> -				      unsigned int id)
                                      ^^^^^^^^^^^^^^^
> +int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
>  {
> -	struct kvm_vcpu *vcpu;
>  	struct sie_page *sie_page;
>  	int rc;
>  
> -	rc = -ENOMEM;
> -
> -	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
> -	if (!vcpu)
> -		goto out;
> -
> -	rc = kvm_vcpu_init(vcpu, kvm, id);
> -	if (rc)
> -		goto out_free_cpu;
> -
> -	rc = -ENOMEM;
> -
>  	BUILD_BUG_ON(sizeof(struct sie_page) != 4096);
>  	sie_page = (struct sie_page *) get_zeroed_page(GFP_KERNEL);
>  	if (!sie_page)
> -		goto out_uninit_vcpu;
> +		return -ENOMEM;
>  
>  	vcpu->arch.sie_block = &sie_page->sie_block;
>  	vcpu->arch.sie_block->itdba = (unsigned long) &sie_page->itdb;
> @@ -3087,15 +3070,11 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
>  		 vcpu->arch.sie_block);
>  	trace_kvm_s390_create_vcpu(id, vcpu, vcpu->arch.sie_block);
                                   ^^^

For extensive changes like this, wouldn't it be desirable to at least
compile test it ?

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
