Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9171C51D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 11:25:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47jdHZorR+dD7tolkaW9JWxJ4wnvI8vC/MFJRdn4AAA=; b=WlfS+Qk91CBdiV
	d7dRmbwA3R7OFQCrfe7O8oKsfg2aYQKzNbM2EtCA3jfMv4dAZAoyQNvDgNNHGKI9kKvxbwPyPCIev
	WGyvylsDXLaVssd7ehUqBJHtMrj+ezxgoe986CfuUufKLbu1bQwm3097rA5VP8ctpMlD2okdKse93
	3p7fgRqepPU/WP2TBjsZJmX4ZFo6rUz7a80OK3PS1w+WpNAf5IfzpY37MUafsLjU++btFzmYob4gT
	ZPouhK30uM4DByNhgMv9HOosP+LR3AIh1ygSbsI8SjdRsHLCNxfivmdN2LXW1tv2dAdeRjeSn6WV0
	eNqCe6SaJHIv79v+ILsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtoy-0005lP-GV; Tue, 05 May 2020 09:25:00 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtoo-0005jv-9h
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 09:24:54 +0000
Received: by mail-oi1-f193.google.com with SMTP id o24so1419496oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 02:24:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fA6tjdmApvG0BpsjkTdWv9/ZTQZ9vjPp82obp9l863E=;
 b=X7XNrFsEX6EtUt9Qfkn+TMW6MZ51KaQeReZhP4+NU2OxAhW2kxEVRu7yekd1KD4/h0
 zM2/iU5+DF3sHN9ZWjtgtULXNQYHqfzj3ISsLaaxPIqqfLqDKapFQ9ly+T8NZ/k4MMDF
 VZtn+yB7X5uyIW2elC1P8d9nzPhzHEV+iYpuvIpy3Kgmydd9od0Lq4KzQfwSM8CapLbd
 pv9Njaa2QcdkO4kOVQ/kCpJbqmLCn3Nrru7OTtSxGozn3YVsSziwFen7ZgEaA2HNzhH0
 UyM++lTnWFAwm9q4QYsjvIPsAlxz7TtzNVTJhLdkPL6Hk7xsW5nnTwlacPsRme0k9vVd
 /iFA==
X-Gm-Message-State: AGi0PuZdGhcSzvUBhw59zC+ONih9aogb+Tze0kQdC0+NTHGMCsR98cfp
 wGSxf6CUmQAiOy706GcIOF30G9sDXgh6l5KEYek=
X-Google-Smtp-Source: APiQypKOjAo7caYTLLrvaP2LfYH11Xj01QYaa+uBtqm/9mZJ41Mdkz0F6pXJ47B38HgwsYDHPLvoSnLN/Mh8S4elUzU=
X-Received: by 2002:aca:f541:: with SMTP id t62mr1674694oih.148.1588670688206; 
 Tue, 05 May 2020 02:24:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <CGME20200505084634eucas1p1e0ea160dd77afbf6d2f7e6154ded40d0@eucas1p1.samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <20200505084614.30424-18-m.szyprowski@samsung.com>
In-Reply-To: <20200505084614.30424-18-m.szyprowski@samsung.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 5 May 2020 11:24:37 +0200
Message-ID: <CAMuHMdVisnijasoxazj+6kUFM3UrTYkVo6kC1dxZv5zK0yD7TQ@mail.gmail.com>
Subject: Re: [PATCH v3 18/25] drm: rcar-du: fix common struct sg_table related
 issues
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_022453_116756_7726B068 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Tue, May 5, 2020 at 10:48 AM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
> The Documentation/DMA-API-HOWTO.txt states that dma_map_sg returns the
> numer of the created entries in the DMA address space. However the
> subsequent calls to dma_sync_sg_for_{device,cpu} and dma_unmap_sg must be
> called with the original number of the entries passed to dma_map_sg. The
> sg_table->nents in turn holds the result of the dma_map_sg call as stated
> in include/linux/scatterlist.h. A common mistake was to ignore a result
> of the dma_map_sg function and don't use the sg_table->orig_nents at all.
>
> To avoid such issues, lets use common dma-mapping wrappers operating
> directly on the struct sg_table objects and adjust references to the
> nents and orig_nents respectively.
>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
> For more information, see '[PATCH v3 00/25] DRM: fix struct sg_table nents
> vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/5/187

For the modern lore-users:
https://lore.kernel.org/r/20200505083926.28503-1-m.szyprowski@samsung.com/

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
