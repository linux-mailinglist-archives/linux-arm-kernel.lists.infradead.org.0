Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2BC3B965
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkPuQl8o+4PCjWbTwC/IkPReaPtpF4FK75aqUzuOfpU=; b=PvxPLh6OrUJhg5
	b1xgLuyKYIZc9uyuT72j6moqmOfSQKUvO4yD7vCPClydo9daBAAtQiuBFYlf2bgZ+U37wzBePo7Vd
	IKrrwqm+g06WSHBgfjkDlRfrK1B8WFqUmB8vbMCd0nLXr+wG9ldk+nPZGmCCRUWInhgZP2w/7ZINB
	YBxLa9JVVpfbkpCt+MUlKbG4fquT9HIcp3rUw2A9bhAyXc94gqhghDKwdYzmAyOJ6lCwtmP7FzG0E
	yfS6n0udBSSvV7pAVLJ11RWXOi722uD7LlDOQtwTZCRot9fOM8NtSXIrfqH7d1foVvj6FJZahweo3
	IF/v6AlyNekCIWyfKNsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haN9Z-0002xd-Sx; Mon, 10 Jun 2019 16:28:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haN9O-0002x0-AH
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:28:03 +0000
Received: by mail-pf1-x444.google.com with SMTP id d126so5614039pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 09:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rL21jzm4DEy1xDUiIII7jAF0C5px68rHf/bpk3oGjp4=;
 b=S8kaOjTUfDdlO8OaUujI//RWD+C3cbVhauwBAfu8YDyUlFTQFQFYxhqFpy6eBlY+nY
 Bdn3l5y35YylzY0lwR8myOdaKcN9xol6ZwXKUWN1/bnn/yTfDy8CG29E0FPHODWAGEnn
 j9bNMMjkw7sM51UBzCZKMcXzQzyJNJ1v+SG+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rL21jzm4DEy1xDUiIII7jAF0C5px68rHf/bpk3oGjp4=;
 b=RSOqWwmjwS+lSARJ5/it8JQI9K6tamXPTPiAUvV8Q4LC11vuWJolNrOg+OoXpzEDR1
 cLAzBDLD5hA1d0w0YbjTqcnBz3OlMHn7cogiXd8YIxlvlSR4vxetcctppqXCOubtnBWZ
 iwQdGB/5AJ6yIzxVGyv4jVUyMQxc1m5vgK1Mz3S63CrqMuUb3dj2E1zVzl0pvh2fHvzU
 bZacfPNxOc7m8bfVEsD9LUVwUqiomBWWs797jtlZv61vzsHbiOAMKCajXubnTJW6jkEW
 UtU/aOxKb6XzQqRr5J4w0qIgd0Yu1AsPx3SsIwai9aygO1adrtwaATARX4K2O2s42usr
 mkew==
X-Gm-Message-State: APjAAAUen+vEr3l8NCcA6FOSTKxLxH48YnVoSqR4uEBRLFgCqo9f5Y7A
 5hpXdzY9P7eK8cqpAwbRkFC/9Q==
X-Google-Smtp-Source: APXvYqxt+PdkwJbUxDxYRnQSU6veQPQ2lMLu1XqZIDTkIOcAGtpZ5ul24t2buihpdmHON+nQ77dKfw==
X-Received: by 2002:a63:e304:: with SMTP id f4mr16240248pgh.187.1560184079575; 
 Mon, 10 Jun 2019 09:27:59 -0700 (PDT)
Received: from [10.136.8.252] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id p23sm2797pjo.4.2019.06.10.09.27.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 09:27:58 -0700 (PDT)
Subject: Re: [PATCH] efi/memreserve: deal with memreserve entries in unmapped
 memory
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-efi@vger.kernel.org
References: <20190610150530.10306-1-ard.biesheuvel@linaro.org>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <76a0336c-31b1-11fe-11d5-a7971a9e44f8@broadcom.com>
Date: Mon, 10 Jun 2019 09:27:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610150530.10306-1-ard.biesheuvel@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_092802_358322_285267F6 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: marc.zyngier@arm.com, bhsharma@redhat.com,
 Jonathan Richardson <jonathan.richardson@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

On 6/10/2019 8:05 AM, Ard Biesheuvel wrote:
> Ensure that the EFI memreserve entries can be accessed, even if they
> are located in memory that the kernel (e.g., a crashkernel) omits from
> the linear map.
> 
> Reported-by: Jonathan Richardson <jonathan.richardson@broadcom.com>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Does it make sense to add a Fixes tag?

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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
