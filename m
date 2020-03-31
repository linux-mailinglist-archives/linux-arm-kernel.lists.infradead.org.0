Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4A1199027
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 11:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QeFPh1QG5lC3B3SJN2Im8tkydFOjvrY6Q12KfB5MJ48=; b=MvzDxE3Lcf8Uqt
	vfw7tRrXAboQdDNRE7K936xlPCQJSS7bwn6RjTe9r5QUe0H2R9/Z5eLkgQRV/bFmyYeJIQu5+8koD
	K8WaLYyaOQvHpSTbmk3+EHcZFyxgWIrbDJgutoOxFNoxpLASYRl8ya/wcGN5dJ9WhZ3uEuUSpKIZK
	4W6XRb4nW8ipFVB1Ymy7yHD6BEbB2NL+t8b+3jaUTEjNi+BsP1QICQnzklSzl+A/wcvdhCGmSzvt+
	27b2Ynwy9fcAiXyrTMxbDNcEzXaBjn8W6MbwM80ChCLG0mPIKwRXW26SkAUDg3gcAEnMaSJtbRv7B
	NXYrDlc1Zeq+2AZBvXzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJCtw-0000ZJ-Dw; Tue, 31 Mar 2020 09:09:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJCth-0000Xt-1P
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 09:09:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id g62so1703624wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 02:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=i22ZQA6yLmZMoZO/Ys64tPvaaV7DizoXI2gCdBKlzmw=;
 b=VJQf9c9yp4DTJHeJnWmBct+Ii+sd87JXSUcDzExavZP19US/obSWJAde5NTQUyAUrN
 a53aNKl0a8JOl5Mn6X6PtaW7G5/txWRli9dk9taOQgZ5AL2vt3KkSgwqsW3dCrXZAylY
 FKAlKVnY4mYigkU4Q3S5r1YpeNpv4UMCJfYAAUfQ+FDJHWgOmiEtTIZxyjldK9LYXwn7
 EHV0PLKKRU7bfkBjcQd8+CqRFFKl1ytuNWu7KqRDzOIMlB+EjiZocYs6X8/i0PZiFJX7
 LxwZ9vruhgECADpLvr9/Y3BNHaEIs0jdi/rGiwh60bxVV2bh1lFaqboIUXeszI8s+mPM
 mfng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=i22ZQA6yLmZMoZO/Ys64tPvaaV7DizoXI2gCdBKlzmw=;
 b=MdmYCuTPcSf+hxlvUkVB1lXZa/dOuuhTgdmeBCFm9hWJ70cVvPJlhx2P2oy18wpE/G
 ydEVTZUFjcrHdcM0PDM2A3OfXWKRZ8gYClIDOpSPXB7WcY6wSn+ALSEFjnMG+eqa1YO9
 fnsYPPDFtO8QjCdzqFlzdqJTByGvPPm0/QaPFoTN4NIFCyHZ0+O+79OfjVMyDMMFKbhK
 wfT2HNyBfUOg2A8TS8pPiubSdSQ6+wEk7R3wqwwx5Tp5o7Z4eruNt5+uT1yRBtXLjLP2
 anSCCra+Aq0Eh8fjB/GEqo2DoHYB0KFMfS9jk4IDImON088l+zrkBUSGpiN64O8k6i97
 k6YQ==
X-Gm-Message-State: ANhLgQ0w+Og4l+jyCG6F3sT2xGr185GCqtFXPtxHZM77Oql3FRLickBD
 U1Ih/b8HH6zR+qStXRbFcAM=
X-Google-Smtp-Source: ADFU+vsH4BDnMYsXGWqcq35Ioc0BDHVoghojzyDrHUGfBAWWqXSVgd/W6BFq09yVFwhT/6I7e2CZEA==
X-Received: by 2002:a1c:ba04:: with SMTP id k4mr2399511wmf.10.1585645761805;
 Tue, 31 Mar 2020 02:09:21 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id f25sm3030600wml.11.2020.03.31.02.09.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 02:09:21 -0700 (PDT)
Date: Tue, 31 Mar 2020 11:09:19 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 09/12] docs: fix broken references for ReST files that
 moved around
Message-ID: <20200331090919.GA18238@Red>
References: <cover.1584450500.git.mchehab+huawei@kernel.org>
 <6ea0adf72ae55935f3649f87e4b596830b616594.1584450500.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ea0adf72ae55935f3649f87e4b596830b616594.1584450500.git.mchehab+huawei@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_020925_958468_C43AC9CB 
X-CRM114-Status: GOOD (  24.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: x86@kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, kvm@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, Joerg Roedel <joro@8bytes.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Maxime Ripard <mripard@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-crypto@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 02:10:48PM +0100, Mauro Carvalho Chehab wrote:
> Some broken references happened due to shifting files around
> and ReST renames. Those can't be auto-fixed by the script,
> so let's fix them manually.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/doc-guide/maintainer-profile.rst      | 2 +-
>  Documentation/virt/kvm/mmu.rst                      | 2 +-
>  Documentation/virt/kvm/review-checklist.rst         | 2 +-
>  arch/x86/kvm/mmu/mmu.c                              | 2 +-
>  drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c | 2 +-
>  drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c   | 2 +-
>  drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c | 2 +-
>  drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c   | 2 +-
>  drivers/media/v4l2-core/v4l2-fwnode.c               | 2 +-
>  include/uapi/linux/kvm.h                            | 4 ++--
>  tools/include/uapi/linux/kvm.h                      | 4 ++--
>  11 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/doc-guide/maintainer-profile.rst b/Documentation/doc-guide/maintainer-profile.rst
> index 5afc0ddba40a..755d39f0d407 100644
> --- a/Documentation/doc-guide/maintainer-profile.rst
> +++ b/Documentation/doc-guide/maintainer-profile.rst
> @@ -6,7 +6,7 @@ Documentation subsystem maintainer entry profile
>  The documentation "subsystem" is the central coordinating point for the
>  kernel's documentation and associated infrastructure.  It covers the
>  hierarchy under Documentation/ (with the exception of
> -Documentation/device-tree), various utilities under scripts/ and, at least
> +Documentation/devicetree), various utilities under scripts/ and, at least
>  some of the time, LICENSES/.
>  
>  It's worth noting, though, that the boundaries of this subsystem are rather
> diff --git a/Documentation/virt/kvm/mmu.rst b/Documentation/virt/kvm/mmu.rst
> index 60981887d20b..46126ecc70f7 100644
> --- a/Documentation/virt/kvm/mmu.rst
> +++ b/Documentation/virt/kvm/mmu.rst
> @@ -319,7 +319,7 @@ Handling a page fault is performed as follows:
>  
>   - If both P bit and R/W bit of error code are set, this could possibly
>     be handled as a "fast page fault" (fixed without taking the MMU lock).  See
> -   the description in Documentation/virt/kvm/locking.txt.
> +   the description in Documentation/virt/kvm/locking.rst.
>  
>   - if needed, walk the guest page tables to determine the guest translation
>     (gva->gpa or ngpa->gpa)
> diff --git a/Documentation/virt/kvm/review-checklist.rst b/Documentation/virt/kvm/review-checklist.rst
> index 1f86a9d3f705..dc01aea4057b 100644
> --- a/Documentation/virt/kvm/review-checklist.rst
> +++ b/Documentation/virt/kvm/review-checklist.rst
> @@ -10,7 +10,7 @@ Review checklist for kvm patches
>  2.  Patches should be against kvm.git master branch.
>  
>  3.  If the patch introduces or modifies a new userspace API:
> -    - the API must be documented in Documentation/virt/kvm/api.txt
> +    - the API must be documented in Documentation/virt/kvm/api.rst
>      - the API must be discoverable using KVM_CHECK_EXTENSION
>  
>  4.  New state must include support for save/restore.
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index 560e85ebdf22..2bd9f35e9e91 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -3586,7 +3586,7 @@ static bool fast_page_fault(struct kvm_vcpu *vcpu, gpa_t cr2_or_gpa,
>  		/*
>  		 * Currently, fast page fault only works for direct mapping
>  		 * since the gfn is not stable for indirect shadow page. See
> -		 * Documentation/virt/kvm/locking.txt to get more detail.
> +		 * Documentation/virt/kvm/locking.rst to get more detail.
>  		 */
>  		fault_handled = fast_pf_fix_direct_spte(vcpu, sp,
>  							iterator.sptep, spte,
> diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
> index a5fd8975f3d3..a6abb701bfc6 100644
> --- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
> +++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
> @@ -8,7 +8,7 @@
>   * This file add support for AES cipher with 128,192,256 bits keysize in
>   * CBC and ECB mode.
>   *
> - * You could find a link for the datasheet in Documentation/arm/sunxi/README
> + * You could find a link for the datasheet in Documentation/arm/sunxi.rst
>   */
>  
>  #include <linux/crypto.h>
> diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> index 3e4e4bbda34c..b957061424a1 100644
> --- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> +++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> @@ -7,7 +7,7 @@
>   *
>   * Core file which registers crypto algorithms supported by the CryptoEngine.
>   *
> - * You could find a link for the datasheet in Documentation/arm/sunxi/README
> + * You could find a link for the datasheet in Documentation/arm/sunxi.rst
>   */
>  #include <linux/clk.h>
>  #include <linux/crypto.h>
> diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
> index 84d52fc3a2da..c89cb2ee2496 100644
> --- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
> +++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
> @@ -8,7 +8,7 @@
>   * This file add support for AES cipher with 128,192,256 bits keysize in
>   * CBC and ECB mode.
>   *
> - * You could find a link for the datasheet in Documentation/arm/sunxi/README
> + * You could find a link for the datasheet in Documentation/arm/sunxi.rst
>   */
>  
>  #include <linux/crypto.h>
> diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
> index 6b301afffd11..8ba4f9c81dac 100644
> --- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
> +++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
> @@ -7,7 +7,7 @@
>   *
>   * Core file which registers crypto algorithms supported by the SecuritySystem
>   *
> - * You could find a link for the datasheet in Documentation/arm/sunxi/README
> + * You could find a link for the datasheet in Documentation/arm/sunxi.rst
>   */
>  #include <linux/clk.h>
>  #include <linux/crypto.h>
> diff --git a/drivers/media/v4l2-core/v4l2-fwnode.c b/drivers/media/v4l2-core/v4l2-fwnode.c
> index 97f0f8b23b5d..8a1e1b95b379 100644
> --- a/drivers/media/v4l2-core/v4l2-fwnode.c
> +++ b/drivers/media/v4l2-core/v4l2-fwnode.c
> @@ -980,7 +980,7 @@ static int v4l2_fwnode_reference_parse(struct device *dev,
>   *
>   * THIS EXAMPLE EXISTS MERELY TO DOCUMENT THIS FUNCTION. DO NOT USE IT AS A
>   * REFERENCE IN HOW ACPI TABLES SHOULD BE WRITTEN!! See documentation under
> - * Documentation/acpi/dsd instead and especially graph.txt,
> + * Documentation/firmware-guide/acpi/dsd/ instead and especially graph.txt,
>   * data-node-references.txt and leds.txt .
>   *
>   *	Scope (\_SB.PCI0.I2C2)
> diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
> index 5e6234cb25a6..704bd4cd3689 100644
> --- a/include/uapi/linux/kvm.h
> +++ b/include/uapi/linux/kvm.h
> @@ -116,7 +116,7 @@ struct kvm_irq_level {
>  	 * ACPI gsi notion of irq.
>  	 * For IA-64 (APIC model) IOAPIC0: irq 0-23; IOAPIC1: irq 24-47..
>  	 * For X86 (standard AT mode) PIC0/1: irq 0-15. IOAPIC0: 0-23..
> -	 * For ARM: See Documentation/virt/kvm/api.txt
> +	 * For ARM: See Documentation/virt/kvm/api.rst
>  	 */
>  	union {
>  		__u32 irq;
> @@ -1106,7 +1106,7 @@ struct kvm_xen_hvm_config {
>   *
>   * KVM_IRQFD_FLAG_RESAMPLE indicates resamplefd is valid and specifies
>   * the irqfd to operate in resampling mode for level triggered interrupt
> - * emulation.  See Documentation/virt/kvm/api.txt.
> + * emulation.  See Documentation/virt/kvm/api.rst.
>   */
>  #define KVM_IRQFD_FLAG_RESAMPLE (1 << 1)
>  
> diff --git a/tools/include/uapi/linux/kvm.h b/tools/include/uapi/linux/kvm.h
> index 4b95f9a31a2f..e5f32fcec68f 100644
> --- a/tools/include/uapi/linux/kvm.h
> +++ b/tools/include/uapi/linux/kvm.h
> @@ -116,7 +116,7 @@ struct kvm_irq_level {
>  	 * ACPI gsi notion of irq.
>  	 * For IA-64 (APIC model) IOAPIC0: irq 0-23; IOAPIC1: irq 24-47..
>  	 * For X86 (standard AT mode) PIC0/1: irq 0-15. IOAPIC0: 0-23..
> -	 * For ARM: See Documentation/virt/kvm/api.txt
> +	 * For ARM: See Documentation/virt/kvm/api.rst
>  	 */
>  	union {
>  		__u32 irq;
> @@ -1100,7 +1100,7 @@ struct kvm_xen_hvm_config {
>   *
>   * KVM_IRQFD_FLAG_RESAMPLE indicates resamplefd is valid and specifies
>   * the irqfd to operate in resampling mode for level triggered interrupt
> - * emulation.  See Documentation/virt/kvm/api.txt.
> + * emulation.  See Documentation/virt/kvm/api.rst.
>   */
>  #define KVM_IRQFD_FLAG_RESAMPLE (1 << 1)
>  
> -- 
> 2.24.1
> 

Hello

for sun8i-ss and sun8i-ce:
Acked-by: Corentin LABBE <clabbe.montjoie@gmail.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
