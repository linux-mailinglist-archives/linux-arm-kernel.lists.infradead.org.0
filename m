Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C9B1BE4A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 19:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=peAx8MMXBU4vAOtu7Jq6uT7TOsRHoJpdCItv7IXxQ90=; b=iNztwlooa2tpzP
	iwbvCsooJNv6PMMqda51b8fqeq/2Nk+Qrp7JycjuVFExJuNzw/ac6wV7r0ehdSKxGL/cj6mfE4HgS
	Z5UQlL/a40tGCVpN3VtQ9SYQUqRjBTjDD94xEJ6QqQqayZKWi6jVJFZcri0jjH0zisowl5H/yHs+K
	EklmpKuO0bpEto1VIHbVtM/zSTIl6kD2Mjhr7klZRgMLS/wUfJaQWiuFdl0cQb9tEmDMiZ0O9zufK
	7lpdVpnlXL8her2ZmcPZ6CfqmXRBz0Po3CWOG3L0A+DNIJbscgqM34ns7+dKpJAIaSHG+nJ7AydrE
	Ov3hKYBBu4B0EU55NStA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTq7G-0003xn-Du; Wed, 29 Apr 2020 17:03:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTq5S-0002Sj-Jc; Wed, 29 Apr 2020 17:01:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C00F3106F;
 Wed, 29 Apr 2020 10:01:29 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3A5A63F73D;
 Wed, 29 Apr 2020 10:01:27 -0700 (PDT)
Subject: Re: [PATCH v9 08/18] arm64: kexec: move relocation function setup
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
 <20200326032420.27220-9-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <ea2b39d7-d496-d9ac-23c9-c279ec29f5d5@arm.com>
Date: Wed, 29 Apr 2020 18:01:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200326032420.27220-9-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_100130_703597_55A1B9CC 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, catalin.marinas@arm.com, bhsharma@redhat.com,
 steve.capper@arm.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, rfontana@redhat.com,
 ebiederm@xmission.com, maz@kernel.org, matthias.bgg@gmail.com,
 tglx@linutronix.de, will@kernel.org, selindag@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 26/03/2020 03:24, Pavel Tatashin wrote:
> Currently, kernel relocation function is configured in machine_kexec()
> at the time of kexec reboot by using control_code_page.
> 
> This operation, however, is more logical to be done during kexec_load,
> and thus remove from reboot time. Move, setup of this function to
> newly added machine_kexec_post_load().

This would avoid the need to special-case the cache maintenance, so its a good cleanup...


> Because once MMU is enabled, kexec control page will contain more than
> relocation kernel, but also vector table, add pointer to the actual
> function within this page arch.kern_reloc. Currently, it equals to the
> beginning of page, we will add offsets later, when vector table is
> added.

If the vector table always comes second, wouldn't this be extra work to hold the value 0?
You can control the layout of this relocation code, as it has to be written in assembly.
I don't get why this would be necessary.


> diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
> index ae1bad0156cd..ec71a153cc2d 100644
> --- a/arch/arm64/kernel/machine_kexec.c
> +++ b/arch/arm64/kernel/machine_kexec.c
> @@ -58,6 +59,17 @@ void machine_kexec_cleanup(struct kimage *kimage)
>  	/* Empty routine needed to avoid build errors. */
>  }
>  
> +int machine_kexec_post_load(struct kimage *kimage)
> +{
> +	void *reloc_code = page_to_virt(kimage->control_code_page);
> +
> +	memcpy(reloc_code, arm64_relocate_new_kernel,
> +	       arm64_relocate_new_kernel_size);
> +	kimage->arch.kern_reloc = __pa(reloc_code);

Could we move the two cache maintenance calls for this area in here too. Keeping it next
to the modification makes it clearer why it is required.

In this case we can use flush_icache_range() instead of its __variant because this now
happens much earlier.


> +	return 0;
> +}

Regardless,
Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
