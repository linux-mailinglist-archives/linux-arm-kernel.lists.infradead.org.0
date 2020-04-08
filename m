Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5ED01A21FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZA+T21vaPbvsGR5uQd6l4aHzsrcjzN13taDUJEgzAvk=; b=D9ol741DfIMDuL
	FrY9oe/r9ADOzGPUzCD+7ouVyQWLy+N0YoqScTzcsRTCUOIZLuCqn/l0HXR/pLdzDb7r+carKeg63
	tPN+Usfx+MtPn7yz4DoojaVrQxMg+FbICakc+hYpSz2UIw2YhSx2ZyVzfs89bfn5h/XXIf7xNxRju
	Qjg+Ast+YStNrPvIlS7GeLzD3IKhzf9OOKmmX1tB04NfpZgNQjAi7/iavzNyG46oPIWByAae+7umc
	zzVvNBqvxIzCId0+KDpAlxPMdQtNhWV4tIWsEs1cR9vLK457NQyXZkff1WBAvm2lh6Xsw5LNmUbbi
	aawYQMWpvzPWexZAGOfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9m2-0004Fg-RH; Wed, 08 Apr 2020 12:25:42 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9lW-0002h7-Ed
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 12:25:13 +0000
Received: by mail-wr1-x444.google.com with SMTP id h15so7577472wrx.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 05:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=S+T3eMWPDVVKjkhAMCN4OLY+AXtsqs3KpyYmqj2eyPw=;
 b=iTDVFh9zGz+cA8knHYYQ0Yf9dPIyYyDTxXa4CjSfrmLiD5i70f+PrvxbUf3+NKNs6P
 0FpMET5mzx+JLVZSzcC1hvsXM+4Tttd8dTrz+Xv2lGQ2cbnW/q88kgg5209meIQ7muh4
 h9U+2WX4Hzg6PB+HIxI6ZXmC8Lzm/Rzktbqts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=S+T3eMWPDVVKjkhAMCN4OLY+AXtsqs3KpyYmqj2eyPw=;
 b=haS84Ebk+HCdTHSFQdxhtSTDjcY1Q2WXIlZT7Haa8mRwQLDiRZHlp/jXusZI4Snp6H
 jt4WmSKw2LMDKFrpVDlRYBGUGHFeh0LCjVmqCp35YRd4/2uhArh12XSXH3toHlAlsni+
 BBdlmnbaXoEl75iJBX8w4krB0vrZFdSkyNyYkYuWKKEpVuhKahA3oy/e0aOTb1YxAB/+
 6faxEfP1Z5CnfQosMHVVIqS7eXQ95u8wyqhj5SnGerMsTfX3otIbfLCiRlNhW32O97Ll
 WiSKehTsHOPyHxdtgSJUwUZ5IC1/QM8iq1bO54hfdRiWQhNhWf2JbqBqR/YUvUlxL68l
 GFEg==
X-Gm-Message-State: AGi0PubWDN/P399bI8aasTjpX+lrqyeEHwE2/I61wDvixo81x68QsnqY
 AGd7eIz8fTpIt2MMlfDolgvrTg==
X-Google-Smtp-Source: APiQypJvxn06n6RmmZE3e7ZfAJg02E1DO8+MxqNnF9onm5w/+2r1QjPARt8wv7KYk/4tgJKIUOQMMQ==
X-Received: by 2002:a5d:4111:: with SMTP id l17mr8794439wrp.271.1586348708002; 
 Wed, 08 Apr 2020 05:25:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v7sm35651554wrs.96.2020.04.08.05.25.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 05:25:07 -0700 (PDT)
Date: Wed, 8 Apr 2020 14:25:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christoph Hellwig <hch@lst.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 19/28] gpu/drm: remove the powerpc hack in
 drm_legacy_sg_alloc
Message-ID: <20200408122504.GO3456981@phenom.ffwll.local>
Mail-Followup-To: Christoph Hellwig <hch@lst.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Wei Liu <wei.liu@kernel.org>, x86@kernel.org,
 David Airlie <airlied@linux.ie>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Peter Zijlstra <peterz@infradead.org>,
 linuxppc-dev@lists.ozlabs.org, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-arch@vger.kernel.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org,
 bpf@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-20-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408115926.1467567-20-hch@lst.de>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_052510_589490_B23C026E 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 x86@kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Laura Abbott <labbott@redhat.com>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 01:59:17PM +0200, Christoph Hellwig wrote:
> If this code was broken for non-coherent caches a crude powerpc hack
> isn't going to help anyone else.  Remove the hack as it is the last
> user of __vmalloc passing a page protection flag other than PAGE_KERNEL.

Well Ben added this to make stuff work on ppc, ofc the home grown dma
layer in drm from back then isn't going to work in other places. I guess
should have at least an ack from him, in case anyone still cares about
this on ppc. Adding Ben to cc.
-Daniel

> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/gpu/drm/drm_scatter.c | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_scatter.c b/drivers/gpu/drm/drm_scatter.c
> index ca520028b2cb..f4e6184d1877 100644
> --- a/drivers/gpu/drm/drm_scatter.c
> +++ b/drivers/gpu/drm/drm_scatter.c
> @@ -43,15 +43,6 @@
>  
>  #define DEBUG_SCATTER 0
>  
> -static inline void *drm_vmalloc_dma(unsigned long size)
> -{
> -#if defined(__powerpc__) && defined(CONFIG_NOT_COHERENT_CACHE)
> -	return __vmalloc(size, GFP_KERNEL, pgprot_noncached_wc(PAGE_KERNEL));
> -#else
> -	return vmalloc_32(size);
> -#endif
> -}
> -
>  static void drm_sg_cleanup(struct drm_sg_mem * entry)
>  {
>  	struct page *page;
> @@ -126,7 +117,7 @@ int drm_legacy_sg_alloc(struct drm_device *dev, void *data,
>  		return -ENOMEM;
>  	}
>  
> -	entry->virtual = drm_vmalloc_dma(pages << PAGE_SHIFT);
> +	entry->virtual = vmalloc_32(pages << PAGE_SHIFT);
>  	if (!entry->virtual) {
>  		kfree(entry->busaddr);
>  		kfree(entry->pagelist);
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
