Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1791BC3C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 17:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5sF2bk4yFgT8IfPtWZ2KobvRqLNOhMDv8ZFJ2ij1+mI=; b=inWCP8X4L6cpnT
	4ckDEUzvwri9cK9w0TmdJnK9MJYmpolDoV98xBCUjAHD8pcDC9cDyeFBbB0ZpPsln+XeypRM+SwKF
	NXaEWaWD3V7G4BYTZFFIwIiqnaAgypf/GQ809m1JF+8MjTNR9ogr75sMgXKfExSOhx5bjLvKce5S0
	tLyFcxPpMvY2EtomNcceCDi3zaNkJ9LLqh5eGpROamC6QxfKzeMs9pquWXm2F9AVHgGbeIGG8rJwq
	hbwmvSkDKIe+EsXs+JuO0Q7UJc4Qt0xICBVCT2vai1vpO0VrdhiGY9EBHG9BbjMuGxfyFbcJo6594
	ih6/b83UyQ3dxDqgtowA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSDe-0003kS-6p; Tue, 28 Apr 2020 15:32:22 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTSDP-0003fM-4m
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 15:32:09 +0000
Received: by mail-wm1-x332.google.com with SMTP id x25so3289554wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 08:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=fyTgxWA2/HoMwR8ETQ07Hg4eZzNMuWdW9xEgr0yJj2c=;
 b=JnahAMhEEz80r2yHKCjybbTF6t6+SIYUFMUPAtQp+GL3mUUzkfUaqp5KTHLcTJv+bq
 P81fy3Eh2D06/VO0ChUgMzUqlCQznBNcz0ezSC/Grx8Mg9Ct3d9vHUd1Fi4rVLtYvIEe
 M0+tdFHnDzbT2poSNgYQX/Eonc2j0jEST5fYI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=fyTgxWA2/HoMwR8ETQ07Hg4eZzNMuWdW9xEgr0yJj2c=;
 b=hyaQb4BFUCVd7vuhXINGhtKfzw3xVb1CmsZky9seni+CqOlYOrqA8itOIN/A/+3Pj9
 psX0GugWQtoVG40qPh1ScIEWJMa6OK1LoFO0jljnPqO6/0bM1/bVG5T2VWNwjnJ/xEm4
 i3BOFNdNNAO1tY7m1SMMAAuKMPrarYSle6vlJG6IlYcv4RMUaG+Dc76rF8HO0kuPQ0rV
 hZ5lAWna8ZBiIL2210nLhfGxbhfSCOpw4CrNO6RPCZ5JBrdT7RIiLkR0llqoaKpCFOTZ
 GAdWfdpFcPX7lwG1IbC2lom8vbrZZJ8kIUjoZsMkZRUdybwU8MCabi5vdBAXxNOSt87P
 /LBg==
X-Gm-Message-State: AGi0PuaJOyKGU/kGsFVTznrkT+8kAjpYrhGnoUkqs+clQ2RxtFXjGTjG
 OpsRc9ExWepr2FJvS9tNIlsczQ==
X-Google-Smtp-Source: APiQypK6liIbViG0xJy6SG6E2JLUCRqc/Rd4DEdt0buwtJigcJZRTqgPIaD55s8f3mCsTYZkcr3q5w==
X-Received: by 2002:a1c:4b0a:: with SMTP id y10mr5073523wma.24.1588087925505; 
 Tue, 28 Apr 2020 08:32:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p7sm27283944wrf.31.2020.04.28.08.32.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 08:32:04 -0700 (PDT)
Date: Tue, 28 Apr 2020 17:32:02 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [RFC 00/17] DRM: fix struct sg_table nents vs. orig_nents misuse
Message-ID: <20200428153202.GY3456981@phenom.ffwll.local>
Mail-Followup-To: Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 intel-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>
References: <CGME20200428132022eucas1p2aa4716cbaca61c432ee8028be15fef7a@eucas1p2.samsung.com>
 <20200428132005.21424-1-m.szyprowski@samsung.com>
 <20200428140257.GA3433@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428140257.GA3433@lst.de>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_083207_202227_7748995C 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 amd-gfx@lists.freedesktop.org,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 04:02:57PM +0200, Christoph Hellwig wrote:
> On Tue, Apr 28, 2020 at 03:19:48PM +0200, Marek Szyprowski wrote:
> > 1. introduce a dma_{map,sync,unmap}_sgtable() wrappers, which will use
> >    a proper sg_table entries and call respective DMA-mapping functions
> >    and adapt current code to it
> 
> That sounds reasonable to me.  Those could be pretty trivial wrappers.
> 
> >
> > 
> > 2. rename nents and orig_nents to nr_pages, nr_dmas to clearly state
> >    which one refers to which part of the scatterlist; I'm open for
> >    other names for those entries
> 
> nr_cpu_ents and nr_dma_ents might be better names, but it still would be
> a whole lot of churn for little gain.  I think just good wrappers like
> suggested above might be more helpful.

I guess long-term we could aim for both? I.e. roll out better wrappers
first, once that's soaked through the tree, rename the last offenders.

Personally I like nr_cpu_ents and nr_dma_ents, that's about as clear as it
gets.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
