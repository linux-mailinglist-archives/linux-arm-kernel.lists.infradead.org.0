Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2F91D217C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 23:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gsZM3/RiZWpd1tabm3cKDIYdcCKw2ADozhWNB/7hwI=; b=NS5CKsG4fsBuCw
	v5y7mvPVwPi8VifQELBg5bSx8xrF6/VOYQLkkzLN3GEpjfWWQjoULD/Myip/w3ceMneSAukEWeSc9
	aK2hoar5XqAq5QItPYfBz+8SBrJH4dR2bRr6rifNAHuZlVYiRifWhGM3Znpk0yOpbEfMiVkDyQSoQ
	C4pNLpQnpGCORgLgO9tLFdIty9T7tt1wmZKOPMCPaMoakcUksg7Z5WZLQyD8tOFSdWofKkHufx3DW
	xZyvzX65MAz9b5PVtDt3YmZ2TDC89+Aoo7ualGbv0O2+Cz+f9/O+hi3xJiuGDAiITyJJ+6+WR2DNK
	mr4NPwzTjn8E/tMb2KrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYzHf-0000av-HM; Wed, 13 May 2020 21:51:23 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYzHW-0000aA-OK
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 21:51:16 +0000
Received: by mail-lj1-x242.google.com with SMTP id l19so1234420lje.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 14:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c4GzEKN4UHscMkRfgK/KmlmDtv9fIM50sPFyVikryKQ=;
 b=O8JCadTsQl0Tyvlb72GDnj5fWwBBQal84Q4eYowAUSAU0My9xiciKbQ5opOHnfwl9N
 Qb5nQGHUjnL79yJetrBRfHA673D+DtgS7C/OXM/Jj+mCy4cl51SspGMJvwVFVu8mQw/d
 E0lrDdlhkaMITXDJ0+azix8pePd4EjeDt5g7yhokYKopEAlRvUP/8w/RAInfA6caXo+K
 ruac9LVx6zmyBPRvtCJoQCkeekvevefrJdyMNUMDpe0/sCo9HnlDe3w74ikeYyTigQIj
 aG+tjvBV7Sqetjfnq4VJ/fo8MRHFgz35H6NVpzXrbNEzRfRmIydljGEGOXoJVfCSbwOl
 4D5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c4GzEKN4UHscMkRfgK/KmlmDtv9fIM50sPFyVikryKQ=;
 b=RLf2DyJKkSdKWiKvy1MNA36jZEP2POatHAWcnpiWSQcTwjQUKeDhd30HK70UE2pF8v
 IQnOhvtTKjqtD7cCVW7CEeaL1J/tqLGx0jZT704qGRtv86/Zwf9tfslrvr6pr00+sQpO
 qniJTAPkReV7kWOo0KwOWe8S6jblP2nnfV096NvDXNNUNHQCNVYwi+jWpKFkWA8fZw6b
 m0YqQltuqT7+lBszcXKF8PDmt8wpEuFlhIBm1KUfseq4UivQwbsGq8G6kkE3jOnZs9c3
 hd28R8V2NUr5Jp22XL6cajp+SwCNImMV/XlW7vosze9VBCxltdmPz1q+OEfyAKGcy6pS
 nn/Q==
X-Gm-Message-State: AOAM530uOsqLmeXBEeWYxepN3sTDgRkGP3mOmfRsl3DS5hg8wmtjmFVC
 4rSupdDNy6bRgOPbuVQwNfCWsADfHEw4glqMehnfTH/1
X-Google-Smtp-Source: ABdhPJxvVYUU3pLt0Fm0zZnTD0agcvWiYXLQjHfcp4jZKWPnJaLBh2OjEP0dKl4uakuItjfjxNR6jFpY0iO1wNvpqZc=
X-Received: by 2002:a2e:8047:: with SMTP id p7mr641481ljg.206.1589406671985;
 Wed, 13 May 2020 14:51:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <CGME20200513133314eucas1p1a607b556e32887e7f5ca60eb09a476c6@eucas1p1.samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <20200513133245.6408-24-m.szyprowski@samsung.com>
In-Reply-To: <20200513133245.6408-24-m.szyprowski@samsung.com>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 13 May 2020 14:51:00 -0700
Message-ID: <CADaigPV7sO1pKrspDya+3OLeX0b0mzkZdjb4ox+gQddsmfw0-w@mail.gmail.com>
Subject: Re: [PATCH v5 24/38] drm: v3d: fix common struct sg_table related
 issues
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_145114_852190_3507865B 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 6:33 AM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> The Documentation/DMA-API-HOWTO.txt states that the dma_map_sg() function
> returns the number of the created entries in the DMA address space.
> However the subsequent calls to the dma_sync_sg_for_{device,cpu}() and
> dma_unmap_sg must be called with the original number of the entries
> passed to the dma_map_sg().
>
> struct sg_table is a common structure used for describing a non-contiguous
> memory buffer, used commonly in the DRM and graphics subsystems. It
> consists of a scatterlist with memory pages and DMA addresses (sgl entry),
> as well as the number of scatterlist entries: CPU pages (orig_nents entry)
> and DMA mapped pages (nents entry).
>
> It turned out that it was a common mistake to misuse nents and orig_nents
> entries, calling DMA-mapping functions with a wrong number of entries or
> ignoring the number of mapped entries returned by the dma_map_sg()
> function.
>
> To avoid such issues, lets use a common dma-mapping wrappers operating
> directly on the struct sg_table objects and use scatterlist page
> iterators where possible. This, almost always, hides references to the
> nents and orig_nents entries, making the code robust, easier to follow
> and copy/paste safe.
>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>

Reviewed-by: Eric Anholt <eric@anholt.net>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
