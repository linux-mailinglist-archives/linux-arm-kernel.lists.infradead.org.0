Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B44160736
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QI6To8A1eGouxIqCDqehN01dLyZjUngFVVy1K6xyVZU=; b=G5YPlD9I+2QDNB
	vJbhWcEbWYJQQ09q3YHSndMG3KnQ/hPANBAcYfI7FVtsifDH8EfTnm+/UJRgD4eefM+x1bxTIVPGE
	be6zBmq+9RFqv8gR00oxXYS6SWPr9w8erXgD9fz3X4duULn8lUdgf6FCOsnZef2UJdUK7oRIGRhFz
	7yfEZ05/wn2Hu5ymVDw9QtMDNjewdVXSCLUGbZWKPzqwuzdjLDU231fQ+r8hpep1ZjdGF19vprCo8
	JiO0R0Nvv7kJhP7wbX4Tpwf9vDh0DllBk60JC877DdmcP3k3eu15sbP3ThHhm1HJb0A/OucGa/G/K
	MP8BHdSc7+1RA6OHWkMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjFnA-00059j-1r; Fri, 05 Jul 2019 04:25:48 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjFmo-0003uh-3i
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 04:25:41 +0000
Received: by mail-ed1-x543.google.com with SMTP id r12so7017338edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 21:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b/iqhNLUC3DokEFuYS2ehal98gCGJpPh7k8hIbKXDDw=;
 b=eCBMkAPmVvNgy27u3o0KG3Uz3saN3rLfU/FKAqFJuiENWX8JF+Ftvzo2EXlRRTm4PQ
 huvKuCGH85aUzOIG6N4hBoNZ71qFSrlQyPNxk4yolwmuEt5uj0c6mDyu/e5l8qQUAY90
 BGLyW2N0gslxTr6Z9EBgQ5Sf0vCO6CNU7c/BQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b/iqhNLUC3DokEFuYS2ehal98gCGJpPh7k8hIbKXDDw=;
 b=jU/fFNNAhi2WSLSGJ/jS7TsDUO70nDC4U4eD7NbzkJWOOLNjEvuQlLiD6oDMMd8WE0
 qzqaUYCoG3l5tFhmYN8OL44MFbka4WQmPDy7QuUQDjlIHoJ9GQJxtnyCey2HXXHUqhpK
 eg40AddATUg79HFVxCnVIrMXYvkBjuaVMVPXTxpor+kwFcYGbhdM3H321YiSq09teTeD
 kQrjFqekNig491RdIBDU3QPHb1vIkA63qqqyv8PkEJGs5hg+N1gpG7qdZ34NYVFe5WeF
 z17D0/TIZXpZ78MUGJUYc51nj3RUlsypHjJNh0g+y0i+Stts9IsiWhoTt5D6u/6gmWxT
 pa3Q==
X-Gm-Message-State: APjAAAUP/dWNP0r/5XzZSd2dUFDtvgg+vtbuVntfQqM38GpBpVE9w2ns
 IO2iwK8FPLVp8RV+1gjlkgiPrLxSVxg=
X-Google-Smtp-Source: APXvYqw62XtSTNTaQa5AxBVFw8NDL1tSRCD3yDmLV7ZXz1wc8HaoOZszcRlLWFdYiJoS6MuJy2P6WA==
X-Received: by 2002:a17:906:310c:: with SMTP id
 12mr1390379ejx.259.1562300564056; 
 Thu, 04 Jul 2019 21:22:44 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com.
 [209.85.128.48])
 by smtp.gmail.com with ESMTPSA id z40sm2296532edb.61.2019.07.04.21.22.42
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 21:22:42 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id 207so7402710wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 21:22:42 -0700 (PDT)
X-Received: by 2002:a7b:c8d4:: with SMTP id f20mr1236044wml.90.1562300561991; 
 Thu, 04 Jul 2019 21:22:41 -0700 (PDT)
MIME-Version: 1.0
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-10-jungo.lin@mediatek.com>
 <20190701072532.GB137710@chromium.org>
 <1562297618.1212.46.camel@mtksdccf07>
In-Reply-To: <1562297618.1212.46.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 5 Jul 2019 13:22:28 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
Message-ID: <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
Subject: Re: [RFC,
 v3 9/9] media: platform: Add Mediatek ISP P1 shared memory device
To: Jungo Lin <jungo.lin@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_212529_386453_56F75CE2 
X-CRM114-Status: GOOD (  31.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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

On Fri, Jul 5, 2019 at 12:33 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Mon, 2019-07-01 at 16:25 +0900, Tomasz Figa wrote:
> > Hi Jungo,
> >
> > On Tue, Jun 11, 2019 at 11:53:44AM +0800, Jungo Lin wrote:
> > > The purpose of this child device is to provide shared
> > > memory management for exchanging tuning data between co-processor
> > > and the Pass 1 unit of the camera ISP system, including cache
> > > buffer handling.
> > >
> >
> > Looks like we haven't really progressed on getting this replaced with
> > something that doesn't require so much custom code. Let me propose something
> > better then.
> >
> > We already have a reserved memory mode in DT. If it has a compatible string
> > of "shared-dma-pool", it would be registered in the coherent DMA framework
> > [1]. That would make it available for consumer devices to look-up.
> >
> > Now if we add a "memory-region" property to the SCP device node and point it
> > to our reserved memory node, the SCP driver could look it up and hook to the
> > DMA mapping API using of_reserved_mem_device_init_by_idx[2].
> >
> > That basically makes any dma_alloc_*(), dma_map_*(), etc. calls on the SCP
> > struct device use the coherent DMA ops, which operate on the assigned memory
> > pool. With that, the P1 driver could just directly use those calls to
> > manage the memory, without any custom code.
> >
> > There is an example how this setup works in the s5p-mfc driver[3], but it
> > needs to be noted that it creates child nodes, because it can have more than
> > 1 DMA port, which may need its own memory pool. In our case, we wouldn't
> > need child nodes and could just use the SCP device directly.
> >
> > [1] https://elixir.bootlin.com/linux/v5.2-rc7/source/kernel/dma/coherent.c#L345
> > [2] https://elixir.bootlin.com/linux/v5.2-rc7/source/drivers/of/of_reserved_mem.c#L312
> > [3] https://elixir.bootlin.com/linux/v5.2-rc7/source/drivers/media/platform/s5p-mfc/s5p_mfc.c#L1075
> >
> > Let me also post some specific comments below, in case we end up still
> > needing any of the code.
> >
>
> Thanks your suggestions.
>
> After applying your suggestion in SCP device driver, we could remove
> mtk_cam-smem.h/c. Currently, we use dma_alloc_coherent with SCP device
> to get SCP address. We could touch the buffer with this SCP address in
> SCP processor.
>
> After that, we use dma_map_page_attrs with P1 device which supports
> IOMMU domain to get IOVA address. For this address, we will assign
> it to our ISP HW device to proceed.
>
> Below is the snippet for ISP P1 compose buffer initialization.
>
>         ptr = dma_alloc_coherent(p1_dev->cam_dev.smem_dev,
>                                  MAX_COMPOSER_SIZE, &addr, GFP_KERNEL);
>         if (!ptr) {
>                 dev_err(dev, "failed to allocate compose memory\n");
>                 return -ENOMEM;
>         }
>         isp_ctx->scp_mem_pa = addr;

addr contains a DMA address, not a physical address. Could we call it
scp_mem_dma instead?

>         dev_dbg(dev, "scp addr:%pad\n", &addr);
>
>         /* get iova address */
>         addr = dma_map_page_attrs(dev, phys_to_page(addr), 0,

addr is a DMA address, so phys_to_page() can't be called on it. The
simplest thing here would be to use dma_map_single() with ptr as the
CPU address expected.

>                                   MAX_COMPOSER_SIZE, DMA_BIDIRECTIONAL,
>                                   DMA_ATTR_SKIP_CPU_SYNC);
>         if (dma_mapping_error(dev, addr)) {
>                 isp_ctx->scp_mem_pa = 0;

We also need to free the allocated memory.

>                 dev_err(dev, "Failed to map scp iova\n");
>                 return -ENOMEM;
>         }
>         isp_ctx->scp_mem_iova = addr;
>
> Moreover, we have another meta input buffer usage.
> For this kind of buffer, it will be allocated by V4L2 framework
> with dma_alloc_coherent with SCP device. In order to get IOVA,
> we will add dma_map_page_attrs in vb2_ops' buf_init function.
> In buf_cleanup function, we will call dma_unmap_page_attrs function.

As per above, we don't have access to the struct page we want to map.
We probably want to get the CPU VA using vb2_plane_vaddr() and call
dma_map_single() instead.

>
> Based on these current implementation, do you think it is correct?
> If we got any wrong, please let us know.
>
> Btw, we also DMA_ATTR_NO_KERNEL_MAPPING DMA attribte to
> avoid dma_sync_sg_for_device. Othewise, it will hit the KE.
> Maybe we could not get the correct sg_table.
> Do you think it is a bug and need to fix?

I think DMA_ATTR_NO_KERNEL_MAPPING is good to have for all the buffers
that don't need to be accessed from the kernel anyway, to avoid
unnecessary kernel mapping operations. However, for coherent memory
pool, it doesn't change anything, because the memory always has a
kernel mapping. We also need the kernel virtual address for
dma_map_single(). Also the flag doesn't eliminate the need to do the
sync, e.g. if the userspace accesses the buffer.

Could you give me more information about the failure you're seeing?
Where is the dma_sync_sg_for_device() called from? Where do you get
the sgtable from?

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
