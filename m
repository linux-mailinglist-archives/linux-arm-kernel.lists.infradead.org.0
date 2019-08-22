Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225E8990D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 12:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfdks3tidNviXaC00ydgoVJ7bq2B2mXmf/EAw4uOQZI=; b=c0MQ5l/DETdWcu
	el7EglFQbnW34TRbQ7IjqCsMRULXT42tnHPHDcqi4PMVKA9vFIf9oZhrr9F3pI/vKOy8To5qAQJGP
	NVHnicgFyAEr2lj3UFLb5u0LKDkyBypTCOXygj64J8VpW9ElIYiqe0HJyJlV2jlSjYH0fCvsvAP5v
	VIFe+hTzvYuRbPQ0GlHvF305RbUPpYxKzl0vePaEFLFJMEAuvt9QLOZKlct6g2J1QrHqW2aNcRWvl
	kX55Eyir2fqAZsx+Xwj8cXP3iCgaPbDNLH7OD4t9xU1GoQI6h99yLw4mWRHg7Ek+ECLo3RVMk8g4e
	84W2hUZ+uCYqq6gOwQ8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kMM-0000wE-Pf; Thu, 22 Aug 2019 10:30:27 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kLr-0000vP-4T
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 10:29:57 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B334BCD1D3E5D29EB50F;
 Thu, 22 Aug 2019 18:29:50 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Thu, 22 Aug 2019
 18:29:44 +0800
Date: Thu, 22 Aug 2019 11:29:30 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v3 04/10] KVM: Implement kvm_put_guest()
Message-ID: <20190822112930.000052db@huawei.com>
In-Reply-To: <20190821153656.33429-5-steven.price@arm.com>
References: <20190821153656.33429-1-steven.price@arm.com>
 <20190821153656.33429-5-steven.price@arm.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_032955_334690_3ABE3F58 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Radim =?UTF-8?Q?Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K
 Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Russell
 King <linux@armlinux.org.uk>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo
 Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019 16:36:50 +0100
Steven Price <steven.price@arm.com> wrote:

> kvm_put_guest() is analogous to put_user() - it writes a single value to
> the guest physical address. The implementation is built upon put_user()
> and so it has the same single copy atomic properties.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>  include/linux/kvm_host.h | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
> index fcb46b3374c6..e154a1897e20 100644
> --- a/include/linux/kvm_host.h
> +++ b/include/linux/kvm_host.h
> @@ -746,6 +746,30 @@ int kvm_write_guest_offset_cached(struct kvm *kvm, struct gfn_to_hva_cache *ghc,
>  				  unsigned long len);
>  int kvm_gfn_to_hva_cache_init(struct kvm *kvm, struct gfn_to_hva_cache *ghc,
>  			      gpa_t gpa, unsigned long len);
> +
> +#define __kvm_put_guest(kvm, gfn, offset, value, type)			\
> +({									\
> +	unsigned long __addr = gfn_to_hva(kvm, gfn);			\
> +	type __user *__uaddr = (type __user *)(__addr + offset);	\
> +	int __ret = 0;							\

Why initialize __ret?

> +									\
> +	if (kvm_is_error_hva(__addr))					\
> +		__ret = -EFAULT;					\
> +	else								\
> +		__ret = put_user(value, __uaddr);			\
> +	if (!__ret)							\
> +		mark_page_dirty(kvm, gfn);				\
> +	__ret;								\
> +})
> +
> +#define kvm_put_guest(kvm, gpa, value, type)				\
> +({									\
> +	gpa_t __gpa = gpa;						\
> +	struct kvm *__kvm = kvm;					\
> +	__kvm_put_guest(__kvm, __gpa >> PAGE_SHIFT,			\
> +			offset_in_page(__gpa), (value), type);		\
> +})
> +
>  int kvm_clear_guest_page(struct kvm *kvm, gfn_t gfn, int offset, int len);
>  int kvm_clear_guest(struct kvm *kvm, gpa_t gpa, unsigned long len);
>  struct kvm_memory_slot *gfn_to_memslot(struct kvm *kvm, gfn_t gfn);



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
