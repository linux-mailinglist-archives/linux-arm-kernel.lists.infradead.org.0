Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57FAC34BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 14:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZ48tagZQJdJz0Sv/wu4VIn0CowGsYbdKaRD7OFTMNI=; b=Qj9iLHBiBJLR+w
	r06HntJiQbysjdgVAhqY9I40j72deJkLC89cpWOSL34xf83HYtTjUI8QpuXnaBol1nlS9zXqagLlP
	8Ywk5YsjXUUidyfobUmEkPkloF8vPlkfmEqtZWhUWvrCq/9y9TEaF3+3PJr4E/Z8ApdT+JvkjTNeQ
	sC1sVzZnRYxxMYuZupKKRh5GlhqFEtf2bIYXfz9/x5umZpa0P+xldZhHUoRKglK7o4cf2iRdF3osY
	TMpbjJFOWjnX+q+XAR9U7M22SCMLZ4ux50y0D1mmblf5xdFauMLqSI5onOVeUy0KVlzigXXX31lQY
	uV2hY3AqZspH3jYn0lQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHc7-0004uy-Aq; Tue, 01 Oct 2019 12:50:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHc0-0004tt-FQ
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 12:50:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5197E21872;
 Tue,  1 Oct 2019 12:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569934237;
 bh=/gPSJI6zO7uojDFJ0+HevJuNlGn4NzxfqGO+ldy/Pn4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vFqF2QRXYBnbbTCXivGapO2pDUlAUngoCGoIkS3oh9r2HpKbLT3eU+AP+VjIjEGOP
 e0YoAtuKKCTtzfQqfIIEfGceqRKTf6Shy79nxMHUx3NY9Geoci6VSH2Zt3rzLCmPVM
 6yvRfrdXfiDaiQgqPTt64jLelAubqy/Uw24e8b/I=
Date: Tue, 1 Oct 2019 13:50:32 +0100
From: Will Deacon <will@kernel.org>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v10 2/3] arm64: mm: implement arch_faults_on_old_pte() on
 arm64
Message-ID: <20191001125031.7ddm5dlwss6m3dth@willie-the-truck>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-3-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930015740.84362-3-justin.he@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_055040_536026_216871CB 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 hejianet@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 09:57:39AM +0800, Jia He wrote:
> On arm64 without hardware Access Flag, copying fromuser will fail because
> the pte is old and cannot be marked young. So we always end up with zeroed
> page after fork() + CoW for pfn mappings. we don't always have a
> hardware-managed access flag on arm64.
> 
> Hence implement arch_faults_on_old_pte on arm64 to indicate that it might
> cause page fault when accessing old pte.
> 
> Signed-off-by: Jia He <justin.he@arm.com>
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/include/asm/pgtable.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 7576df00eb50..e96fb82f62de 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -885,6 +885,20 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
>  #define phys_to_ttbr(addr)	(addr)
>  #endif
>  
> +/*
> + * On arm64 without hardware Access Flag, copying from user will fail because
> + * the pte is old and cannot be marked young. So we always end up with zeroed
> + * page after fork() + CoW for pfn mappings. We don't always have a
> + * hardware-managed access flag on arm64.
> + */
> +static inline bool arch_faults_on_old_pte(void)
> +{
> +	WARN_ON(preemptible());
> +
> +	return !cpu_has_hw_af();
> +}

Does this work correctly in a KVM guest? (i.e. is the MMFR sanitised in that
case, despite not being the case on the host?)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
