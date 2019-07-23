Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B71F712DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47mFew1zaoNPbDJg5Tkv9UbwpCZrzG+/cg2lg0v/o/Y=; b=iy3G2cmmPHyLKb
	Rl5p1/u8DTsB+oh4UHfc4YPAp7JYAkOFNV6SToM2KPszc9Ro6REJZH3i/WnehIkDkrAnauHisSZyp
	6+mqRNiF6KGVST4XFwy7aUc88mQXOCaygGEtnf9F3ul6F7Z97ARLhvdvSOVF78cSZ+a/xNOlCkIIz
	p8JfSBGH6R+8guiEpEdyLMwZwQ1P/BL3uKpL6rA9PhBpNWaADu/xFic+j4AF5c3QINJeiyP13XLIy
	TMQHagcdK046Gbms4jHmidQJMejEVx3NEeli5qZ455H+Q4smYCsOvLGX7m+UT7Xb7u9Y6nBxr+oed
	X7wOmJrvNtHy5qgHdI4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppDu-0002zx-5g; Tue, 23 Jul 2019 07:28:34 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppDU-0002zX-9P
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:28:09 +0000
Received: by mail-ed1-x544.google.com with SMTP id p15so42831391eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 00:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1QlHARNuAEM55ng9LI2PK094YJbPBsPKwUhBWwwJxAE=;
 b=GNlo2z9/gRyz2tn6m0dlRs6mqPEnRbD/asUCRnl1aF44DAofjVcSqECn/MAtb7YBsK
 3kkr5Z7cG4HEpFGvQteQf8ss4x44lWI+LqVF6bIvIwIzNXpvPNckKyaTqNU1yNm8B3G4
 68CHD0Jycaot+EixnKORpvZMw2xDl8mRupMfA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1QlHARNuAEM55ng9LI2PK094YJbPBsPKwUhBWwwJxAE=;
 b=cH/sW5byJ2eQ5AFbQv4ujjsUeqyU7b8T54JCIqFmgfnHZdnbhx2TqJMaK8w5vhZNrX
 Cs1l7sFn+7F5dDmG4397nTjCMq7atedSpM0q1omJtlxpxM4uxmiOx2i7OZ7XXoLfzBtV
 zEdfdKvjVMbXIYJ6dixgCLVuBQ1rQePfpXBpnxSd8XvinAKi8CYt/KaOHaDaqTmVxsRl
 cghU/DK77482+iO3JoeGGwetV1qtq0w/b0++2yQUap1pt7J1OoEIuHj24GrX0fL2zSy9
 6o6WB61RxJvADDn8YLtqhAntGG9WlOEaoDLXldlyYBL75LKDmcCO9+HXjUXxFcnzQZzL
 aKwQ==
X-Gm-Message-State: APjAAAWC1DRPvu7p4/jbePXmsorgLjeJvWfGMBY0pqwqiEoMrHMu6Fwz
 jXjELkFZB9V+s3YBMsWMtWouVgb5dVKAAA==
X-Google-Smtp-Source: APXvYqzS0pTwyOjw+Jjxoc8+3G3sUiHngC8PtYSXZ5gtPRi4RNNbGsvadfP7xJjUIbecjOYRJpsSYA==
X-Received: by 2002:a17:906:604c:: with SMTP id
 p12mr56182206ejj.26.1563866886018; 
 Tue, 23 Jul 2019 00:28:06 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com.
 [209.85.128.41])
 by smtp.gmail.com with ESMTPSA id a1sm11317058edq.29.2019.07.23.00.28.05
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 00:28:05 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id a15so37418737wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 00:28:05 -0700 (PDT)
X-Received: by 2002:a7b:c7d8:: with SMTP id z24mr67945684wmk.10.1563866435393; 
 Tue, 23 Jul 2019 00:20:35 -0700 (PDT)
MIME-Version: 1.0
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-10-jungo.lin@mediatek.com>
 <20190701072532.GB137710@chromium.org>
 <1562297618.1212.46.camel@mtksdccf07>
 <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
 <1562313579.1212.73.camel@mtksdccf07>
In-Reply-To: <1562313579.1212.73.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 23 Jul 2019 16:20:23 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AaNFpMGCVJREY85n8UetEwd99TOka8-ECoLzMbMkos_g@mail.gmail.com>
Message-ID: <CAAFQd5AaNFpMGCVJREY85n8UetEwd99TOka8-ECoLzMbMkos_g@mail.gmail.com>
Subject: Re: [RFC,
 v3 9/9] media: platform: Add Mediatek ISP P1 shared memory device
To: Jungo Lin <jungo.lin@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_002808_329365_086C6B97 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <sean.cheng@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <rynn.wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 =?UTF-8?B?UnlhbiBZdSAo5L2Z5a2f5L+uKQ==?= <ryan.yu@mediatek.com>,
 =?UTF-8?B?RnJhbmtpZSBDaGl1ICjpgrHmloflh7Ep?= <frankie.chiu@mediatek.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, ddavenport@chromium.org,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jungo,

On Fri, Jul 5, 2019 at 4:59 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
>
> Hi Tomasz:
>
> On Fri, 2019-07-05 at 13:22 +0900, Tomasz Figa wrote:
> > Hi Jungo,
> >
> > On Fri, Jul 5, 2019 at 12:33 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
>
> [snip]
>
> > > After applying your suggestion in SCP device driver, we could remove
> > > mtk_cam-smem.h/c. Currently, we use dma_alloc_coherent with SCP device
> > > to get SCP address. We could touch the buffer with this SCP address in
> > > SCP processor.
> > >
> > > After that, we use dma_map_page_attrs with P1 device which supports
> > > IOMMU domain to get IOVA address. For this address, we will assign
> > > it to our ISP HW device to proceed.
> > >
> > > Below is the snippet for ISP P1 compose buffer initialization.
> > >
> > >         ptr = dma_alloc_coherent(p1_dev->cam_dev.smem_dev,
> > >                                  MAX_COMPOSER_SIZE, &addr, GFP_KERNEL);
> > >         if (!ptr) {
> > >                 dev_err(dev, "failed to allocate compose memory\n");
> > >                 return -ENOMEM;
> > >         }
> > >         isp_ctx->scp_mem_pa = addr;
> >
> > addr contains a DMA address, not a physical address. Could we call it
> > scp_mem_dma instead?
> >
> > >         dev_dbg(dev, "scp addr:%pad\n", &addr);
> > >
> > >         /* get iova address */
> > >         addr = dma_map_page_attrs(dev, phys_to_page(addr), 0,
> >
> > addr is a DMA address, so phys_to_page() can't be called on it. The
> > simplest thing here would be to use dma_map_single() with ptr as the
> > CPU address expected.
> >
>
> We have changed to use ma_map_single() with ptr, but encounter IOMMU
> error. From the debug log of iommu_dma_map_page[3], we got
> 0x0000000054800000 instead of expected address: 0x0000000050800000[2].
> There is a address offset(0x4000000). If we change to use
> dma_map_page_attrs with phys_to_page(addr), the address is correct as we
> expected[2]. Do you have any suggestion on this issue? Do we miss
> something?

Sorry for the late reply. Could you show me the code changes you made
to use dma_map_single()? It would sound like the virtual address
passed to dma_map_single() isn't correct.

Best regards,
Tomasz

>
> [1]
> [    1.344786] __dma_alloc_from_coherent: 0x800000 PAGE_SHIFT:12
> device_base:0x0000000050000000 dma:0x0000000050800000
> virt_base:ffffff8014000000 va:ffffff8014800000
>
> [    1.346890] mtk-cam 1a000000.camisp: scp addr:0x0000000050800000
> va:ffffff8014800000
>
> [    1.347864] iommu_dma_map_page:0x0000000054800000 offset:0
> [    1.348562] mtk-cam 1a000000.camisp: iova addr:0x00000000fde00000
>
> [2]
> [    1.346738] __dma_alloc_from_coherent: 0x800000 PAGE_SHIFT:12
> device_base:0x0000000050000000 dma:0x0000000050800000
> virt_base:ffffff8014000000 va:ffffff8014800000
> [    1.348841] mtk-cam 1a000000.camisp: scp addr:0x0000000050800000
> va:ffffff8014800000
> [    1.349816] iommu_dma_map_page:0x0000000050800000 offset:0
> [    1.350514] mtk-cam 1a000000.camisp: iova addr:0x00000000fde00000
>
>
> [3]
> dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
>                 unsigned long offset, size_t size, int prot)
> {
>         phys_addr_t phys = page_to_phys(page);
>         pr_err("iommu_dma_map_page:%pa offset:%lu\n", &phys, offset);
>
>         return __iommu_dma_map(dev, page_to_phys(page) + offset, size, prot,
>                         iommu_get_dma_domain(dev));
> }
>
> [snip]
>
> Best regards,
>
> Jungo
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
