Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 485B229F8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 22:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Z6vwaPghqu3/Hk6Z0yD6waePTn6PhNUpqqzIEWjm40=; b=I36/a5you0l0lZ
	rZuRvBv3LRkM97AAdFsSXD108zMxpur6f4miCVw0jQPfDqdnW8EGuEZR+yIACTym/TgqobHPlboMj
	zJJYLCQmkEY8KBzPxOLdVWsVCLenFB6nV9OJwICAKhGZDSmrD6YJXCgZGtYStzpx9404k87wrRI/9
	5Yroue3sSwZoI8qe5NyN2DnRBjrXPWiTtk7sj6tCkM5QncL4ZwQeWJtcMuk5r0Ah4qUAfgUAocMRG
	PBJVOGzs7Xivz4cD1I5QkFJKAzuyZ1fvOpsc6e98gMiFOtrURZGQv0G/CquEHpOSbkX59CV+ew1+0
	1xLU9yazflD7X4O+cZFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGPs-0006db-7t; Fri, 24 May 2019 20:03:48 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGPl-0006ct-93
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 20:03:42 +0000
Received: from mail-ot1-f71.google.com ([209.85.210.71])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <dann.frazier@canonical.com>)
 id 1hUGPi-0007ws-EC
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 20:03:38 +0000
Received: by mail-ot1-f71.google.com with SMTP id z1so4988516oth.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 13:03:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MdZgSrzvQrNvArhhMwV6uq98L6kGwXydzTCUTc3ed/4=;
 b=VAc5dvof9rMm9m8ENTnY3lUsM0EFewI+QpEVDwq3V4ij8wvmq40PaU4hW5MNRzmH7v
 fpvTw99Dt5wWJ7IUkFgwEmZH/826He5Z8bYTesPg/onpRFxeC+yonaxl2vRpgrF2Kl39
 PXAlTTHAQyzUjncIhTAJndk+UDYE4XG4kGMGllc4Pz1UrvTTgLBdQ+xtb+FlIMJEjqTn
 ig8UyFj+7J9w6koV6wew3GVlfqEqN36STtc2bZxR/VvRv0ZMCa6CmDN8D58O/N+l1Q3J
 g/EYsrWfa9Q0Wabv5JAd86moS44jU1NmBO/FXKGCBrd20wFEriuucIBg+CkltpoksmMx
 HMNg==
X-Gm-Message-State: APjAAAU6e1EosRM8CnFBf3B796I58MYUpHGv2uYKUnjXYcizv3082Au3
 sjYKYRY03hKLuGPNH8Toiz4lea84sIoPYw3A77N1N+9fORUt57OlwEBHYJ/n759jlCJAOQD8rNf
 HteTAgh1U/J6ZentMB1tZR+Grvfcm07c2Wd0LhBHgj67kFnZjSOmxMFWJrayreu7Mm6me
X-Received: by 2002:a05:6830:164d:: with SMTP id
 h13mr31758683otr.99.1558728217208; 
 Fri, 24 May 2019 13:03:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxoya9uYRsSIEv51UV91v8Z+LxDz8k4gGrzqqMySgCjbel8axNiXlhuqaT0Un+V+0ZUNeHLZgzLuTVB5rKzbzc=
X-Received: by 2002:a05:6830:164d:: with SMTP id
 h13mr31758663otr.99.1558728216929; 
 Fri, 24 May 2019 13:03:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190524040633.16854-1-nicoleotsuka@gmail.com>
In-Reply-To: <20190524040633.16854-1-nicoleotsuka@gmail.com>
From: dann frazier <dann.frazier@canonical.com>
Date: Fri, 24 May 2019 14:03:25 -0600
Message-ID: <CALdTtnu=WdYbqyq57EkB-=rsyz72SW-J8oyD7f6Xm-da2OgRgQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Optimize dma_*_from_contiguous calls
To: Nicolin Chen <nicoleotsuka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_130341_458671_B9999428 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: tony@atomide.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, jcmvbkbc@gmail.com,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
 sfr@canb.auug.org.au, joro@8bytes.org, linux@armlinux.org.uk,
 treding@nvidia.com, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 akpm@linux-foundation.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, chris@zankel.net,
 wsa+renesas@sang-engineering.com, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 iamjoonsoo.kim@lge.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 10:08 PM Nicolin Chen <nicoleotsuka@gmail.com> wrote:
>
> [ Per discussion at v1, we decide to add two new functions and start
>   replacing callers one by one. For this series, it only touches the
>   dma-direct part. And instead of merging two PATCHes, I still keep
>   them separate so that we may easily revert PATCH-2 if anything bad
>   happens as last time -- PATCH-1 is supposed to be a safe cleanup. ]
>
> This series of patches try to optimize dma_*_from_contiguous calls:
> PATCH-1 abstracts two new functions and applies to dma-direct.c file.
> PATCH-2 saves single pages and reduce fragmentations from CMA area.
>
> Please check their commit messages for detail changelog.
>
> Nicolin Chen (2):
>   dma-contiguous: Abstract dma_{alloc,free}_contiguous()
>   dma-contiguous: Use fallback alloc_pages for single pages
>
>  include/linux/dma-contiguous.h | 11 +++++++
>  kernel/dma/contiguous.c        | 57 ++++++++++++++++++++++++++++++++++
>  kernel/dma/direct.c            | 24 +++-----------
>  3 files changed, 72 insertions(+), 20 deletions(-)

Thanks Nicolin. Tested on a HiSilicon D06 system.

Tested-by: dann frazier <dann.frazier@canonical.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
