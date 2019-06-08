Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5120E39A85
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 05:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbTNW5sJOS/wNuE9S25/m95zIOqgnf0D87eDJUbVm1U=; b=b5CBzJWZ8IEq3v
	S3zXRC0nFv8AsJMfLa6MsOlvDp0uaeThvWakKCx/tRQKuAp8gdxwvApigo4iaRWb14duVz/vNVJTR
	p0d5RhymPUhD8ykVNgt0UECidn7nt2Sw2mzuAQM5C/Mnj3kCp0TiAsl8EHnoxtmGAJmpKLOhgJNXM
	geCQxFQIu4ZfnmQOsWwF3MAEeNDvh6XogfEc1tZyNCz+JINlZESltu+tL2xOxmvtg11Uybt8mBLM7
	e3vx3Mho+UBwts+aeo3SjCOoYeRyT0R+xBuywvAcKm9ehbQ7whPLcwtovbrT4R8tfiFJsWyX+qQ27
	/6WcfvYnTSnIGxT6L2pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZSPc-0001M7-Ha; Sat, 08 Jun 2019 03:53:00 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZSPP-0001Lf-GF
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 03:52:48 +0000
Received: by mail-pg1-x541.google.com with SMTP id d30so2134038pgm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 20:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FvOvhN7lAMb05Jgucbn4i/kkfk6C+xm00bozwGUiDHE=;
 b=jSdD6RhFfZkeqgS8TcayMIER7Pkkx++KxJ0VlFLn9BvHk82PjgIJ2PrdItWwSzYW05
 NLhWR71M5RDwErf/bBmmALg5hWrf7JykHz8MqC0HoRPvtnrf7wJZvYnVmInDaDa0hprb
 7Wa5xVFo7VF+cw+RSx/ka7MEiF5SaHkm3s0FY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FvOvhN7lAMb05Jgucbn4i/kkfk6C+xm00bozwGUiDHE=;
 b=dxxDLf3suElweujrI97uWZSsqkNuCBxnyoRVA2dsXIgmsfK8N8Am6wq+ZE6yH2i+A6
 940S8nmWPc+fDrv6vmDsv8NSQ5gCfOcwcg657ZGIv8/KhfE12e+2td/yATMZc3cVMiHR
 nXfdPvfSJxPlmjk5aAqN9SoCuxgDEp16aJ54Q8JqdmbAI/3BT8Nf8M+Vi5SWaR5w3IUU
 cZZ19JqG/aPBPIdPr/XTUqmsIlXce4Kj504ktymSZSKTG3Sz86E9WNApdcKVvW/vSS3g
 WehSbmOWeYrzAcevz4pTNwJsrEtV5GKijcusFbUZ/9vf8M4DgIv5ppnZR+sn5UOLvHcn
 cbZg==
X-Gm-Message-State: APjAAAXOC+8kocAzsqwcbhwPjykpXh9eK6MpyYrXMTQNeZNlhJvYOdzg
 RmIuWxOJ9SD9eKtJP8xrIVyh/w==
X-Google-Smtp-Source: APXvYqwjIf2RUpKbV2HVLPuystSV0iOPs0w3Y10dXMrzubhjEtN6FPReOOA3bdEKg814UJFukvJHYg==
X-Received: by 2002:a17:90a:37c8:: with SMTP id
 v66mr9429258pjb.33.1559965966947; 
 Fri, 07 Jun 2019 20:52:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id l1sm3510268pgj.67.2019.06.07.20.52.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 20:52:46 -0700 (PDT)
Date: Fri, 7 Jun 2019 20:52:45 -0700
From: Kees Cook <keescook@chromium.org>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v16 13/16] media/v4l2-core, arm64: untag user pointers in
 videobuf_dma_contig_user_get
Message-ID: <201906072052.077135B@keescook>
References: <cover.1559580831.git.andreyknvl@google.com>
 <31821f3538ddacb7e57e0248e86a3d28f9789d2f.1559580831.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31821f3538ddacb7e57e0248e86a3d28f9789d2f.1559580831.git.andreyknvl@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_205247_543865_C3EC3120 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, linux-kselftest@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 06:55:15PM +0200, Andrey Konovalov wrote:
> This patch is a part of a series that extends arm64 kernel ABI to allow to
> pass tagged user pointers (with the top byte set to something else other
> than 0x00) as syscall arguments.
> 
> videobuf_dma_contig_user_get() uses provided user pointers for vma
> lookups, which can only by done with untagged pointers.
> 
> Untag the pointers in this function.
> 
> Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  drivers/media/v4l2-core/videobuf-dma-contig.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/v4l2-core/videobuf-dma-contig.c b/drivers/media/v4l2-core/videobuf-dma-contig.c
> index e1bf50df4c70..8a1ddd146b17 100644
> --- a/drivers/media/v4l2-core/videobuf-dma-contig.c
> +++ b/drivers/media/v4l2-core/videobuf-dma-contig.c
> @@ -160,6 +160,7 @@ static void videobuf_dma_contig_user_put(struct videobuf_dma_contig_memory *mem)
>  static int videobuf_dma_contig_user_get(struct videobuf_dma_contig_memory *mem,
>  					struct videobuf_buffer *vb)
>  {
> +	unsigned long untagged_baddr = untagged_addr(vb->baddr);
>  	struct mm_struct *mm = current->mm;
>  	struct vm_area_struct *vma;
>  	unsigned long prev_pfn, this_pfn;
> @@ -167,22 +168,22 @@ static int videobuf_dma_contig_user_get(struct videobuf_dma_contig_memory *mem,
>  	unsigned int offset;
>  	int ret;
>  
> -	offset = vb->baddr & ~PAGE_MASK;
> +	offset = untagged_baddr & ~PAGE_MASK;
>  	mem->size = PAGE_ALIGN(vb->size + offset);
>  	ret = -EINVAL;
>  
>  	down_read(&mm->mmap_sem);
>  
> -	vma = find_vma(mm, vb->baddr);
> +	vma = find_vma(mm, untagged_baddr);
>  	if (!vma)
>  		goto out_up;
>  
> -	if ((vb->baddr + mem->size) > vma->vm_end)
> +	if ((untagged_baddr + mem->size) > vma->vm_end)
>  		goto out_up;
>  
>  	pages_done = 0;
>  	prev_pfn = 0; /* kill warning */
> -	user_address = vb->baddr;
> +	user_address = untagged_baddr;
>  
>  	while (pages_done < (mem->size >> PAGE_SHIFT)) {
>  		ret = follow_pfn(vma, user_address, &this_pfn);
> -- 
> 2.22.0.rc1.311.g5d7573a151-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
