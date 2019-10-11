Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89791D4764
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F5a9NCsS9Hpa6jzjQED5deo/En6IG6CHgvJaGhMHgf4=; b=bmmje1tq7DCxyH
	SUKXRPM5EC6vzucLeXve+8QkmMqcEKGEGT/IYcvr3r9WNXXlf0ajapRBSxNA2xBenJCHpb/cAEKbJ
	BhA2vVYNvbmRiBfftua/hkk/jpXmi0tk/Ihx0n51X/CSOK6FexivpguHWqVF3OJXUSkJE9N1aFC8k
	gYgKUmvR4TaTvxaHa0tXvDDbrK7S1JBhKJsESyEwdVerCQgtIM+qPN124nWsKJ6lQMykl7jWPszJd
	DN7LjyNRtBCb4M4qc43eRpP+J1Jt3ws0pgsG993JvYdvCh/P7Runcuy34/45Dbe99GMSvdoO6zL2+
	kmDrtpM0K2d1iG1DzA5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzVj-0006on-8D; Fri, 11 Oct 2019 18:19:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzVV-0006mh-AW; Fri, 11 Oct 2019 18:19:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 43859142F;
 Fri, 11 Oct 2019 11:19:16 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2BAC13F703;
 Fri, 11 Oct 2019 11:19:14 -0700 (PDT)
Subject: Re: [PATCH v6 14/17] arm64: kexec: move relocation function setup and
 clean up
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
 <20191004185234.31471-15-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <f1c50a5f-103e-e6d7-e93d-e873a169833e@arm.com>
Date: Fri, 11 Oct 2019 19:19:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191004185234.31471-15-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_111917_448459_FC9F719E 
X-CRM114-Status: GOOD (  17.78  )
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, ebiederm@xmission.com,
 matthias.bgg@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 04/10/2019 19:52, Pavel Tatashin wrote:
> Currently, kernel relocation function is configured in machine_kexec()
> at the time of kexec reboot by using control_code_page.
> 
> This operation, however, is more logical to be done during kexec_load,
> and thus remove from reboot time. Move, setup of this function to
> newly added machine_kexec_post_load().
> 
> In addition, do some cleanup: add infor about reloction function to

infor ? reloction?


> kexec_image_info(), and remove extra messages from machine_kexec().


> Make dtb_mem, always available, if CONFIG_KEXEC_FILE is not configured
> dtb_mem is set to zero anyway.

This is unrelated cleanup, please do it as an earlier patch to make it clearer what you
are changing here.

(I'm not convinced you need to cache va<->pa)


> diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> index 12a561a54128..d15ca1ca1e83 100644
> --- a/arch/arm64/include/asm/kexec.h
> +++ b/arch/arm64/include/asm/kexec.h
> @@ -90,14 +90,15 @@ static inline void crash_prepare_suspend(void) {}
>  static inline void crash_post_resume(void) {}
>  #endif
>  
> -#ifdef CONFIG_KEXEC_FILE
>  #define ARCH_HAS_KIMAGE_ARCH
>  
>  struct kimage_arch {
>  	void *dtb;
>  	unsigned long dtb_mem;

> +	unsigned long kern_reloc;

This is cache-ing the physical address of an all-architectures value from struct kimage,
in the arch specific part of struct kiamge. Why?

(You must have the struct kimage on hand to access this thing at all!)

If its supposed to be a physical address, please use phys_addr_t.

>  };


> diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
> index 0df8493624e0..9b41da50e6f7 100644
> --- a/arch/arm64/kernel/machine_kexec.c
> +++ b/arch/arm64/kernel/machine_kexec.c
> @@ -42,6 +42,7 @@ static void _kexec_image_info(const char *func, int line,
>  	pr_debug("    start:       %lx\n", kimage->start);
>  	pr_debug("    head:        %lx\n", kimage->head);
>  	pr_debug("    nr_segments: %lu\n", kimage->nr_segments);
> +	pr_debug("    kern_reloc: %pa\n", &kimage->arch.kern_reloc);
>  
>  	for (i = 0; i < kimage->nr_segments; i++) {
>  		pr_debug("      segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\n",
> @@ -58,6 +59,19 @@ void machine_kexec_cleanup(struct kimage *kimage)
>  	/* Empty routine needed to avoid build errors. */
>  }
>  
> +int machine_kexec_post_load(struct kimage *kimage)
> +{
> +	unsigned long kern_reloc;
> +
> +	kern_reloc = page_to_phys(kimage->control_code_page);

kern_reloc should be phys_addr_t.


> +	memcpy(__va(kern_reloc), arm64_relocate_new_kernel,
> +	       arm64_relocate_new_kernel_size);
> +	kimage->arch.kern_reloc = kern_reloc;


Please move the cache maintenance in here too. This will save us doing it late during
kdump. This will also group the mmu-on changes together.


> +}


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
