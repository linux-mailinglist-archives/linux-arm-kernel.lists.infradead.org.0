Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C70B3A33
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ad24azqvdl3f+cGktcKNl3sP5cIJBjEAG7uxdxrQULg=; b=A9fE2KbCeDWwck6RuJxbZusDg
	+OIWEPCvmP8v/VN62ft11KX/H065nTQ/ei0fjZ+LzUYLV4Ly6dRc4ALe9aNI/njzvHOIhUfJZMGxf
	H7H8ZNxz1zIIPOnxHnDbxAzBFpIyJQgwYOaQb8uuiHiE0KJ9rOkEJYgVxKvmVGUR6+r0gqlAdxqec
	ESMEr5LEYrCuwaB3+bRMxrw5LeMfwvTxIOfb23Vbl8GgbOdMGO2xHgQPWQsLHr/QHMMg6WD1yvGq7
	5yZpKw+tnB5scYglytZmHVdOVsWS9XrOKcFGZMXn3iU9JG+H0MKX69K6mcwfKvFWToWqcKMB3vl2K
	l+EJbm9sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9q2v-0002tD-4y; Mon, 16 Sep 2019 12:23:57 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9q2d-0002QH-Ag
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568636616;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xuFZUsJJRGLuvev598sKrB52HnexJgaP+W91bQH5myw=;
 b=fOj31eIGeNkbNyqnSp0xBWWNNnCSekUWUiVuTBWBpLO5rb2OmAzq5eS9ueD4wAXYTii5Cp
 XVWVhOxIrIa0wLFTcpw0kVA8UfdRBPXaTojSFrbXV3wFd9ytQienYqjiwzs7j6qlp3vVB7
 5Yl77mSjRbU76NfTxmoLCV2eVHorC7g=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-194-t6sDWYrpNqKR7wdj0FMGWQ-1; Mon, 16 Sep 2019 08:23:32 -0400
Received: by mail-qk1-f198.google.com with SMTP id r141so14803812qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 05:23:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aFQYEXYlxKj3Sm3zW29/VoCLHuhuxmTHLOejlFqsxPw=;
 b=Jb6IrnI+aHiq5JGluV0KYkZimUWJF5T0dno1NENwrnubLFe2ckXmLK3MEGzRISr5JN
 5a4IB+jGlyomJ5MHCnOUpX2n47NJnnBRXXDCuNuQIjOM1WXxW2n0g7wJZK2zJhcoPGI3
 sKLPK92KKCTpAPypwQG7SX7bRLBTi1Zt6aSim7PVPRE7Ksl9FBwHCM4h1fl4YmWE18cy
 BDeiOWgIZ9GJXCDjtn+8UPEAD4+A3RI8OdMAF65lEGj4BH/sxx6WZwBbO1MBoC1Of/Bn
 +C0O0b9ik8wpAj1SqAxyM8MDumEcjPxrvNpymmzeLXp+HdTsnbjEv5DR+nBZss6DvNvp
 Z1VA==
X-Gm-Message-State: APjAAAUBg7aeMQ4a+BkLRPhFsww98JZhzJPo5oWmpWLM04dhRvzQ4nMj
 w7eThPwKQ7tkNKUjqa4GCooPwH+XHmfaugCYgj9CKmIcHW36jXOJcJU+U+7Jp4VsG9RSnxtOk0b
 FPwsogdn4arBiGoaDJHOEo6ZsfBa2gGTDU7A=
X-Received: by 2002:a37:bcc6:: with SMTP id
 m189mr48798059qkf.436.1568636611756; 
 Mon, 16 Sep 2019 05:23:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxDIGS3OQUOohOp1Ug/qVyEA/U4iNc6+2vozZatrm/x1j+LyqlIhVdzXycKw8RYr2Oc+YqI6g==
X-Received: by 2002:a37:bcc6:: with SMTP id
 m189mr48798037qkf.436.1568636611494; 
 Mon, 16 Sep 2019 05:23:31 -0700 (PDT)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
 [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id z5sm21437547qtb.49.2019.09.16.05.23.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Sep 2019 05:23:30 -0700 (PDT)
Subject: Re: [PATCH] arm64: use generic free_initrd_mem()
To: Mike Rapoport <rppt@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <1568618488-19055-1-git-send-email-rppt@kernel.org>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <0ba20aa4-d2dd-2263-6b5f-16a5c8a39f67@redhat.com>
Date: Mon, 16 Sep 2019 08:23:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568618488-19055-1-git-send-email-rppt@kernel.org>
Content-Language: en-US
X-MC-Unique: t6sDWYrpNqKR7wdj0FMGWQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_052339_454296_0AF2B048 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Mike Rapoport <rppt@linux.ibm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/16/19 8:21 AM, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> arm64 calls memblock_free() for the initrd area in its implementation of
> free_initrd_mem(), but this call has no actual effect that late in the boot
> process. By the time initrd is freed, all the reserved memory is managed by
> the page allocator and the memblock.reserved is unused, so there is no
> point to update it.
> 

People like to use memblock for keeping track of memory even if it has no
actual effect. We made this change explicitly (see 05c58752f9dc ("arm64: To remove
initrd reserved area entry from memblock") That said, moving to the generic
APIs would be nice. Maybe we can find another place to update the accounting?

> Without the memblock_free() call the only difference between arm64 and the
> generic versions of free_initrd_mem() is the memory poisoning. Switching
> arm64 to the generic version will enable the poisoning.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
> 
> I've boot tested it on qemu and I've checked that kexec works.
> 
>   arch/arm64/mm/init.c | 8 --------
>   1 file changed, 8 deletions(-)
> 
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index f3c7952..8ad2934 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -567,14 +567,6 @@ void free_initmem(void)
>   	unmap_kernel_range((u64)__init_begin, (u64)(__init_end - __init_begin));
>   }
>   
> -#ifdef CONFIG_BLK_DEV_INITRD
> -void __init free_initrd_mem(unsigned long start, unsigned long end)
> -{
> -	free_reserved_area((void *)start, (void *)end, 0, "initrd");
> -	memblock_free(__virt_to_phys(start), end - start);
> -}
> -#endif
> -
>   /*
>    * Dump out memory limit information on panic.
>    */
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
