Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74818ED75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K62V/kgaf7CjPspMMi1aGZlrytGjZ+zKhniKuer1xMg=; b=fMPahOhOp/1SSi
	FeKdZCa7ztIianTX9ip0TFFw4wqBsyFSCfDigNFQdvsYtx5FbIZCuGM6Y9WIB9UholikbeXBfTxyU
	rgbOpis4iZdp5R8Qq9DNvEhYopShklwwzuz5qWwBgZBaN6314LzmEUs3uq44aLbImmP2Cp7Zh4IoU
	J36Ofthy5HJFTTKutuxEb1jvIIwPQcNQQiTcZfNtVCowYrV5qNfCgByDC9pxuQLaXy4YWNGzEwzOj
	ECv5sdr4zdEgTKSl7GauR1/vGxmrPLMbESRJlUOLjFdFgwKMD110iB0cdNuMhQDC4Mo8/nTmrif65
	Om/Z1kbcgb9HlGu3+bsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyGDl-00071l-9i; Thu, 15 Aug 2019 13:55:17 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyGDQ-00071K-Af
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 13:54:59 +0000
Received: by mail-oi1-x241.google.com with SMTP id 16so2027001oiq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 06:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X5MHSVxjVbFw14gqG5FUXdzsIwvacO5ycoZ+KZncf0s=;
 b=LL9gmWZ1h+OhDYg38xhyOFgY6h1JTL7+BEI+M4/66SAuy+YS17/1GNt2LFCYlFwHgS
 I2ORea3QECg5t802K1/kXe+MYRWXHFLGsmZw9w0b0C4PQffYsKhMpRJ5RWFKi2c56Q5H
 lbZZv26jqw/MHeMc//ARtg43BTEsBpT31y1nQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X5MHSVxjVbFw14gqG5FUXdzsIwvacO5ycoZ+KZncf0s=;
 b=Mm80VoiuXSnIDGm6xHIKF9SZ1D+3S7F2IIKUmsjpfCdPEhDeQQaQdxcpYCjk8ez4Uf
 ryaSDrf9qwQ1ILkgBxJzdRvZM0KQLxidoqHx6s5U06Wfog5kVuP7lZxaIygBvssYp9Ow
 fQQMNwC1S0ebI01Jo8dqCL8tEpJMopQr8oMF4ZxkB26OYaGTCpdBugIJAWasA5jbopjr
 ZfWTPMDhkz3UrBcF/m4kFgl3x7mAOPpqGn7xjU4N25Ztwu52oo6xBlVOQylE5zGQ1DDF
 y2mGun8y02kgcTA0pF4AL05Aw6FiIU5/8ktUv8O2ncvxyftzxGkLYLvEcuP3aB64rRJP
 f9Ew==
X-Gm-Message-State: APjAAAVOGq1fPaUsXu2ZNC52wWelIS1bpySO1Oam92wnjOlZc2wyw1wz
 vmUh2Cdm37i7EgYw2BytHTh2mpKWDDnZWZhh61b8Ow==
X-Google-Smtp-Source: APXvYqzxa6k1RXxyRnJ7m1wF7wJgwzc+l90Oa2P6408VZnjT7yIceyBMmq0y0ocLrushHIzYfzfGRi1TZ2X58HUfSGc=
X-Received: by 2002:a02:770a:: with SMTP id g10mr4932288jac.15.1565877291690; 
 Thu, 15 Aug 2019 06:54:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190814220011.26934-1-robdclark@gmail.com>
 <20190815065117.GA23761@lst.de>
In-Reply-To: <20190815065117.GA23761@lst.de>
From: Rob Clark <robdclark@chromium.org>
Date: Thu, 15 Aug 2019 06:54:39 -0700
Message-ID: <CAJs_Fx4bS64s7+xQqsead3N80ZQpofqegFQu+tT=b3wcGd_2pA@mail.gmail.com>
Subject: Re: [PATCH 0/6] drm+dma: cache support for arm, etc
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_065456_402514_76E6EF16 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Imre Deak <imre.deak@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Will Deacon <will@kernel.org>, Emil Velikov <emil.velikov@collabora.com>,
 Deepak Sharma <deepak.sharma@amd.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "moderated list:ARM64 PORT \(AARCH64 ARCHITECTURE\)"
 <linux-arm-kernel@lists.infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Robin Murphy <robin.murphy@arm.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <jroedel@suse.de>, Arnd Bergmann <arnd@arndb.de>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Jesper Dangaard Brouer <brouer@redhat.com>,
 "Wolfram Sang \(Renesas\)" <wsa+renesas@sang-engineering.com>,
 "open list:LINUX FOR POWERPC \(32-BIT AND 64-BIT\)"
 <linuxppc-dev@lists.ozlabs.org>, Alexios Zavras <alexios.zavras@intel.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Doug Anderson <armlinux@m.disordat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Sean Paul <sean@poorly.run>, Allison Randal <allison@lohutok.net>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Enrico Weigelt <info@metux.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 11:51 PM Christoph Hellwig <hch@lst.de> wrote:
>
> As said before I don't think these low-level helpers are the
> right API to export, but even if they did you'd just cover a tiny
> subset of the architectures.

Are you thinking instead something like:

void dma_sync_sg_for_{cpu,device}(struct device *dev, struct scatterlist *sgl,
                                  int nents, enum dma_data_direction dir)
{
    for_each_sg(sgl, sg, nents, i) {
        arch_sync_dma_for_..(dev, sg_phys(sg), sg->length, dir);
    }
}
EXPORT_SYMBOL_GPL(dma_sync_sg_for_..)

or did you have something else in mind?

I guess something like this would avoid figuring out *which* archs
actually build drm..


> Also to distil the previous thread - if you remap memory to uncached
> the helper to use is arch_dma_prep_coherent, which does a writeback+
> invalidate everywhere, and there is no need to clean up after a
> long-term uncached mapping.  We might still get speculations into
> that area, if we don't remap the direct mapping, but it isn't like
> invalidting that just before freeing the memory is going to help
> anyone.

hmm, IIUC the aarch64 cache instructions, what I'm doing now is equiv
to what I would get with dma_map_sg(DMA_BIDIRECTIONAL) and
arch_dma_prep_coherent() is equiv to what I'd get w/ DMA_FROM_DEVICE
(but a single pass instead of separate inv+clean passes)..

but I can respin this with a single dma_prep_coherent_sg() which uses
arch_dma_prep_coherent()..

> Also it seems like patches 5 and 6 are missing in my inbox.

Hmm, not entirely sure why.. you should be on the cc list for each
individual patch.

But here is the patchwork link if you want to see them:

https://patchwork.freedesktop.org/series/65211/

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
