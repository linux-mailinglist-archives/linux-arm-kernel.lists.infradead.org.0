Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B02196686
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 15:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=584hVBJFrF1PKhrXTsTHrrnaOiOSY23Yw9lMoyjDuwI=; b=MGn0P57Ap3+EMh
	8L+YCs0aykGiFDVK95OC67scMep3nSupKjVFDvxxOmvvp5mggyi18qkTgMAHaffgS4i91w4TyM+OU
	eoxpB/14uxT2RErasm2KWbUYUxwOXGJY9qwJ9rg7wPOeXaNvrf8pk0v3LA4wHsCQI5xl8SwgKK0pH
	BLsun/e1akJNga7shMuS86H9uo1qRU5zoilBM8g0dX5ugmxHKdlCZZceEjBFMwtERBvQZhDTrF4GS
	LlpU9htd28Q+5CzDAQYCNQ/ZZcOYt4KLz1YZAqJsVsSf516auCQjnIGSee64K4W+JuOJYWOZLHG98
	F5giwlqkgVn/ok8RZlNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIC75-0002y8-JA; Sat, 28 Mar 2020 14:07:03 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIC6x-0002xg-Mg
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 14:06:57 +0000
Received: by mail-qv1-xf42.google.com with SMTP id ca9so6443308qvb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 07:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fGsxLmh5pI9jvRewegPjPIfMEi2hmilikFGOfTAF5n0=;
 b=IOO3tBQGnquvTK7I5PcGhVPWgR1i1JQM8vZDTxeBnMynSeT3Tj5qUkdsBGWoypkwH6
 VNYAJ3Lav0AcTEpIVlVn6OKSoqtewxs/6oGA7p4w077LydglVR+IBqKUqvJOqHNHfM1Q
 woHY3D8XZxUm9Zy9kmmNnpVgxTrsVQp7Z3H90vH+RLg3HxI2XZka30IbHogQ3M0GvikK
 o90X+Q4DQuCS7Rh+ZdytIlZ/NL9iSH6nUFIWS0FjVF8pjrjLLKSb9pFkF3r5PYpQFfM5
 1crvEzaNmXIvNMqNI6Vt8QjxB8n95bpXqznPg7IJmhwkd/YVdgvvOLrLTj4iPBz8ETPU
 k3yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=fGsxLmh5pI9jvRewegPjPIfMEi2hmilikFGOfTAF5n0=;
 b=M2fGtl6Wo3opjOdGr00vYB2WWg2Wrw58oEUsi7WvxC4KIpNRt0O6CRf3rFN1FjGyhd
 8S1VlWqRE6GTOqpTYs0cxbVQO69LQT6KlpBgkVcw/n3Tt0NAhoUeP0J9L0W+0ZtFc2KG
 rHBDFcCEeBQux9araMEzGzO2Zhh5mhvLB3eOLy9KLpw9ZRoPrOI+ysf4O3XQ9NXqUi9s
 Im9NmJyR+uNHsv4Ieoj3KWa2NSS2gZTS9h3qIp7uMO55ujYtMxECRLEMC0AwHysOr8/M
 0MzGVd53VwrM+sJRKBop9MfyOBGcgZk3gQxyJoUqj9BJ+zqRM5N/3SefX4KPYXFsT8xu
 Qqkw==
X-Gm-Message-State: ANhLgQ3m4BbsyZl1oZUSJXRgUBKJ391uyOUM5SpQL8SsL4L71kz29Qfd
 b0DYTWPTG8Epz1I/y5mvAIY=
X-Google-Smtp-Source: ADFU+vvDhFVr8QcLMkylqFmHCvdb9E2vpDpaAVlxWGhCU5iJIINJbAUGk2ScwdB+6LDE7TQWnuqsQw==
X-Received: by 2002:ad4:4468:: with SMTP id s8mr3875503qvt.115.1585404412066; 
 Sat, 28 Mar 2020 07:06:52 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id p9sm6171497qtu.3.2020.03.28.07.06.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 07:06:51 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Sat, 28 Mar 2020 10:06:50 -0400
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 2/2] efi/arm64: increase the PE/COFF alignment so the
 kernel can run in place
Message-ID: <20200328140648.GA234129@rani.riverdale.lan>
References: <20200326165905.2240-1-ardb@kernel.org>
 <20200326165905.2240-3-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326165905.2240-3-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_070655_743453_B656AAB6 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-efi@vger.kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 05:59:05PM +0100, Ard Biesheuvel wrote:
> Update the PE/COFF metadata so that the UEFI image loader will load the
> kernel image at an offset that allows it to execute in place.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/arm64/kernel/efi-header.S | 2 +-
>  arch/arm64/kernel/image-vars.h | 7 +++++++
>  2 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/efi-header.S b/arch/arm64/kernel/efi-header.S
> index 914999ccaf8a..f9ee1c2a5fd6 100644
> --- a/arch/arm64/kernel/efi-header.S
> +++ b/arch/arm64/kernel/efi-header.S
> @@ -32,7 +32,7 @@ optional_header:
>  
>  extra_header_fields:
>  	.quad	0					// ImageBase
> -	.long	SZ_4K					// SectionAlignment
> +	.long	PECOFF_SECTION_ALIGNMENT		// SectionAlignment
>  	.long	PECOFF_FILE_ALIGNMENT			// FileAlignment
>  	.short	0					// MajorOperatingSystemVersion
>  	.short	0					// MinorOperatingSystemVersion
> diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
> index be0a63ffed23..7a7fa3ba7b2f 100644
> --- a/arch/arm64/kernel/image-vars.h
> +++ b/arch/arm64/kernel/image-vars.h
> @@ -15,6 +15,13 @@
>  __efistub_kernel_size		= _edata - _text;
>  __efistub_primary_entry_offset	= primary_entry - _text;
>  
> +#ifndef CONFIG_RELOCATABLE
> +PECOFF_SECTION_ALIGNMENT = SZ_4K;
> +#elif THREAD_ALIGN > SEGMENT_ALIGN
> +PECOFF_SECTION_ALIGNMENT = THREAD_ALIGN;
> +#else
> +PECOFF_SECTION_ALIGNMENT = SEGMENT_ALIGN;
> +#endif
>  
>  /*
>   * The EFI stub has its own symbol namespace prefixed by __efistub_, to
> -- 
> 2.17.1
> 

The section virtual addresses and (possibly) size of image need to be
updated to be a multiple of PECOFF_SECTION_ALIGNMENT, no?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
