Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D487F3C0C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 03:01:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZ3ktv7I0zdT4VKRMkATMW7IUJzrLCHwI3EodztZ0iI=; b=oetDgeEDbejKco
	r9OJO1wJBPS2cdLf0jtzyq/uL2Qjry3/HrAQ/flj/wqZwJ/3l4aD64eRi9o7AUsQMupu9tYIw4uyK
	tl7gFpXLxm1WE0CAxx84Gs5cHVdqlboITGjITfpsmWA5nE2DZ75tEafJlQczBxNCltjmj90UQAASh
	VxZeMBAb/7+ydvBt6l10PR8Ycz7+rXvfW3h7PTGCmpB6Pjjl2pSdGtoBBCN6OFbkXtMuoZHrKTWm2
	q3I/fMQY/C7agroBMvmgtz+TkUwIEHLS5rWEbEKuTG/QxaKp1mKqksxE605mdiHQcq5iO4oTk/eIu
	INyCPJ0cjisn67Rq8cSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haV9o-00034d-H0; Tue, 11 Jun 2019 01:01:00 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haV9f-00034H-Bc
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 01:00:52 +0000
Received: by mail-ed1-x542.google.com with SMTP id w13so17277486eds.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 18:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MpTcf2dGU6Up+9YKsTQko4V1d1bIIofdRcq05RBwejs=;
 b=C5rnD9joPDwPRS8tvoFCyWyqamt7ci+rWjII9yd5x36+9rKJjZfbrEldZCUsOe7Stq
 yJfPKyCcx/cuLRrWtPjGjr11+DIZ7eyd81evSeMhFmFF6rJuH/1Fb9QlRKGD7He/Kfuh
 I6ukBGCJye13QZqE8yaF3o0udjefVBte21Y8g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MpTcf2dGU6Up+9YKsTQko4V1d1bIIofdRcq05RBwejs=;
 b=VzkxgLliUBPM8MKiUftMTyEYwws1IokzXwr/HBS2Vt7an35kWKh9Z3uMbu3923MG65
 /sEYtK0IMHXWoxsgrNmJwweCJpxZppf8RJqhFaF2jCSLtjLtjnhDQ5ZOWceFqQ3SRZFc
 0rxuo45dzuhm8KT7a0EXBI/Q8UWH1v+tEfSeajf0Pz78xrwf/Is5+bm/ib39f1RmPe3Q
 Rj0l3rTPnkOxH/d4NNMbawVXMuFziQb/nmdkjw+07Ysqctn9UjswhyrpP56MEotldWSC
 66lHZgxaEbSxocj+7HboMKr6E3cklp7uQmM/+cBckqBoYdZD/uYIMLm3BVO5EO9vdUnQ
 dAow==
X-Gm-Message-State: APjAAAXNy0qbRtwRYXK2vA+8XRmtaCUX2SAZBqR0ENbRvCovZJMhSlKq
 HgoahmTKecg/Bpjx/Osx/fGfGQ==
X-Google-Smtp-Source: APXvYqyjAUeHoNicBgrqNGPB7enKfhpwcmWTkvUeKeyKtWa/DGctlYip+lQ4O6b8QKlIqvmykgLsmQ==
X-Received: by 2002:a50:987a:: with SMTP id h55mr37042106edb.108.1560214849274; 
 Mon, 10 Jun 2019 18:00:49 -0700 (PDT)
Received: from [10.0.2.15] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id f3sm2009104ejc.15.2019.06.10.18.00.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 18:00:48 -0700 (PDT)
Subject: Re: [PATCH] efi/memreserve: deal with memreserve entries in unmapped
 memory
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-efi@vger.kernel.org
References: <20190610150530.10306-1-ard.biesheuvel@linaro.org>
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
Message-ID: <6d51db76-c8d0-aaaa-02a8-0c62058e5c2d@broadcom.com>
Date: Mon, 10 Jun 2019 18:00:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190610150530.10306-1-ard.biesheuvel@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_180051_405286_B009C764 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: marc.zyngier@arm.com, bhsharma@redhat.com, ray.jui@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/10/2019 08:05 AM, Ard Biesheuvel wrote:
> Ensure that the EFI memreserve entries can be accessed, even if they
> are located in memory that the kernel (e.g., a crashkernel) omits from
> the linear map.
> 
> Reported-by: Jonathan Richardson <jonathan.richardson@broadcom.com>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  drivers/firmware/efi/efi.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
> index 16b2137d117c..4b7cf7bc0ded 100644
> --- a/drivers/firmware/efi/efi.c
> +++ b/drivers/firmware/efi/efi.c
> @@ -1009,14 +1009,16 @@ int __ref efi_mem_reserve_persistent(phys_addr_t addr, u64 size)
>  
>  	/* first try to find a slot in an existing linked list entry */
>  	for (prsv = efi_memreserve_root->next; prsv; prsv = rsv->next) {
> -		rsv = __va(prsv);
> +		rsv = memremap(prsv, sizeof(*rsv), MEMREMAP_WB);
>  		index = atomic_fetch_add_unless(&rsv->count, 1, rsv->size);
>  		if (index < rsv->size) {
>  			rsv->entry[index].base = addr;
>  			rsv->entry[index].size = size;
>  
> +			memunmap(rsv);
>  			return 0;
>  		}
> +		memunmap(rsv);
>  	}
>  
>  	/* no slot found - allocate a new linked list entry */
> @@ -1024,7 +1026,13 @@ int __ref efi_mem_reserve_persistent(phys_addr_t addr, u64 size)
>  	if (!rsv)
>  		return -ENOMEM;
>  
> -	rsv->size = EFI_MEMRESERVE_COUNT(PAGE_SIZE);
> +	/*
> +	 * The memremap() call above assumes that a linux_efi_memreserve entry
> +	 * never crosses a page boundary, so let's ensure that this remains true
> +	 * even when kexec'ing a 4k pages kernel from a >4k pages kernel, by
> +	 * using SZ_4K explicitly in the size calculation below.
> +	 */
> +	rsv->size = EFI_MEMRESERVE_COUNT(SZ_4K);
>  	atomic_set(&rsv->count, 1);
>  	rsv->entry[0].base = addr;
>  	rsv->entry[0].size = size;
> 

Thanks for the fix. Tested and reviewed.

Reviewed-by: Jonathan Richardson <jonathan.richardson@broadcom.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
