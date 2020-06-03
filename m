Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1061ED4FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 19:28:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXvoH6pe79wsiPVTDaGtaRLTu1yqA77mMPy8OtKk58E=; b=hF8MDThxTzJhek
	4yRLAycyPpeBK1mAAB8btp+571ZlSt+Yz1pDEdQ/Ws4Muq/3+MXDSIVMaqi+s/M1dRg9b91+peUla
	l3/LxYv8L2OanNGaAE0XHeEB9or4qM1Cr8gQUhcPtF18YoR/C+4hWL5yP+/O9cRCLM9H0TScT20On
	dMvHVhj0JruYe0MGMhMoXzxplUyIEAY9AO6HkOVb2fY0LcdRUpP4xxLDEy9AcKppQyC9ZIstu4i1H
	JtgvSFrWlrIEihz4dDtscUYwVRvNXSYgKMUXxsJ2WHm6XiLn1JVvxeMQhgrrKuU4MxlP7z1DdP+ch
	+ZF/HO54uoLdsNHS7t3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgXC6-00022F-WA; Wed, 03 Jun 2020 17:28:51 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgXC0-00020u-Ma; Wed, 03 Jun 2020 17:28:46 +0000
Received: by mail-ed1-x541.google.com with SMTP id x93so2418935ede.9;
 Wed, 03 Jun 2020 10:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WVI6luCOohmM6qtuTKw9WrRMCZTsi+C83iXVnslX7rA=;
 b=GJEAx+43WdEYHTT43ATJjegpGSMYXCQIeBqog4TyBcmkCi3byjhhsFZEyyCkr7UFRE
 6PeB2iNz86LyDeFJjUNQ3lpoWcW0xuuvi4X7v1rdyT7qTteOfOfp0JGiTuT0gyBws/iX
 gxLVfJpFcOIMjD8+OWiGSZvrc6cTwF/WzkkW+b3YFYLgb2PBltRDN4N30gb/EZdElnWR
 lWYsC+Q2H+YAvDXN52wiN4R1/WxoYu8k0/Su1nubUzZlnwcRJadcbuJ20ZYC90aN130b
 RqppjXZPdST0NQplnNaGbL/Rs8x2iyn+LQKAK9uuiODxHoSOtEUrvx+xmUgtdCZqcnbS
 aT4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WVI6luCOohmM6qtuTKw9WrRMCZTsi+C83iXVnslX7rA=;
 b=CDtNO7uETVe+ZMSckdnKRuZPM164Nuqgm54jX8bXsERBfgZctpM5PzwDpQ6vpvUqIy
 5s381YWRt6NDycfkAvtdUWxuZQsNb1Y2Hgy9mZZqWZ8sd52wXF33Ug87MnUpco+jh3Yp
 8GJsNdfLj9uCcZcJF4KeGjAzFby8ORxcqzj16Nm1jkv2/N1y8bvGuuUIQJlqHH7hA6S/
 LsAirxLEJFrs/x4lI+f2T32Enlf6KFvGeGVqz7IOfKvZhfWI1aIkuVvtwxwtjCKJ+84T
 arej7wFdbyWW4fcECk9aYWKls69qUgKpGaw84Y4Km/kF9TSmBywlG/6IjrGJG5X2jLBn
 k6WQ==
X-Gm-Message-State: AOAM530Jgx3xnuhJ24xjy4dfoNe7N8zxoQ/ej47WWvwOe/5BQpR7U6p9
 2DN9T2XISzPQu+TV98ruK7ccKTbx/E6nlTQVkYc=
X-Google-Smtp-Source: ABdhPJxOeyPwfHr68BPk1LyMY14u7d6PVWFDNWe+GFxbBEkzVXCYLZG+MS363P7oNsScacZSmnMly8Af3Rtiz2JqdQ4=
X-Received: by 2002:a50:fe94:: with SMTP id d20mr488426edt.254.1591205319745; 
 Wed, 03 Jun 2020 10:28:39 -0700 (PDT)
MIME-Version: 1.0
References: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
 <1591119192-18538-2-git-send-email-amittomer25@gmail.com>
 <3D3E2940-11E3-4093-8F60-82EB2C11B617@linaro.org>
In-Reply-To: <3D3E2940-11E3-4093-8F60-82EB2C11B617@linaro.org>
From: Amit Tomer <amittomer25@gmail.com>
Date: Wed, 3 Jun 2020 22:58:02 +0530
Message-ID: <CABHD4K-jee4GM1WybAoqaCJTkVO7FC7fJC3U_zZwP_XbH4kpOA@mail.gmail.com>
Subject: Re: [PATCH v3 01/10] dmaengine: Actions: get rid of bit fields from
 dma descriptor
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_102844_737664_A1B7D0A3 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andre Przywara <andre.przywara@arm.com>, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, cristian.ciocaltea@gmail.com,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thanks for having a look.

On Wed, Jun 3, 2020 at 12:52 PM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
> Individual comments for these enums?

I was expecting this comment , and thought these fields are self explanatory
But if you prefer to have description about it, I would have it in next version.

> >+enum owl_dmadesc_offsets {
> >+      OWL_DMADESC_NEXT_LLI = 0,
> >+      OWL_DMADESC_SADDR,
> >+      OWL_DMADESC_DADDR,
> >+      OWL_DMADESC_FLEN,
> >+      OWL_DMADESC_SRC_STRIDE,
> >+      OWL_DMADESC_DST_STRIDE,
> >+      OWL_DMADESC_CTRLA,
> >+      OWL_DMADESC_CTRLB,
> >+      OWL_DMADESC_CONST_NUM,
> >+      OWL_DMADESC_SIZE
> > };
> >
> > /**
> >@@ -153,7 +144,7 @@ struct owl_dma_lli_hw {
> >  * @node: node for txd's lli_list
> >  */
> > struct owl_dma_lli {
> >-      struct  owl_dma_lli_hw  hw;
> >+      u32                     hw[OWL_DMADESC_SIZE];
> >       dma_addr_t              phys;
> >       struct list_head        node;
> > };
> >@@ -320,6 +311,11 @@ static inline u32 llc_hw_ctrlb(u32 int_ctl)
> >       return ctl;
> > }
> >
> >+static u32 llc_hw_flen(struct owl_dma_lli *lli)
> >+{
> >+      return lli->hw[OWL_DMADESC_FLEN] & GENMASK(19, 0);
> >+}
> >+
> > static void owl_dma_free_lli(struct owl_dma *od,
> >                            struct owl_dma_lli *lli)
> > {
> >@@ -351,8 +347,9 @@ static struct owl_dma_lli *owl_dma_add_lli(struct
> >owl_dma_txd *txd,
> >               list_add_tail(&next->node, &txd->lli_list);
> >
> >       if (prev) {
> >-              prev->hw.next_lli = next->phys;
> >-              prev->hw.ctrla |= llc_hw_ctrla(OWL_DMA_MODE_LME, 0);
> >+              prev->hw[OWL_DMADESC_NEXT_LLI] = next->phys;
> >+              prev->hw[OWL_DMADESC_CTRLA] |=
> >+                                      llc_hw_ctrla(OWL_DMA_MODE_LME, 0);
> >       }
> >
> >       return next;
> >@@ -365,8 +362,7 @@ static inline int owl_dma_cfg_lli(struct
> >owl_dma_vchan *vchan,
> >                                 struct dma_slave_config *sconfig,
> >                                 bool is_cyclic)
> > {
> >-      struct owl_dma_lli_hw *hw = &lli->hw;
> >-      u32 mode;
> >+      u32 mode, ctrlb;
> >
> >       mode = OWL_DMA_MODE_PW(0);
> >
> >@@ -407,22 +403,22 @@ static inline int owl_dma_cfg_lli(struct
> >owl_dma_vchan *vchan,
> >               return -EINVAL;
> >       }
> >
> >-      hw->next_lli = 0; /* One link list by default */
> >-      hw->saddr = src;
> >-      hw->daddr = dst;
> >-
> >-      hw->fcnt = 1; /* Frame count fixed as 1 */
> >-      hw->flen = len; /* Max frame length is 1MB */
> >-      hw->src_stride = 0;
> >-      hw->dst_stride = 0;
> >-      hw->ctrla = llc_hw_ctrla(mode,
> >-                               OWL_DMA_LLC_SAV_LOAD_NEXT |
> >-                               OWL_DMA_LLC_DAV_LOAD_NEXT);
> >+      lli->hw[OWL_DMADESC_CTRLA] = llc_hw_ctrla(mode,
> >+                                                OWL_DMA_LLC_SAV_LOAD_NEXT |
> >+                                                OWL_DMA_LLC_DAV_LOAD_NEXT);
> >
> >       if (is_cyclic)
> >-              hw->ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_BLOCK);
> >+              ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_BLOCK);
> >       else
> >-              hw->ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_SUPER_BLOCK);
> >+              ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_SUPER_BLOCK);
> >+
> >+      lli->hw[OWL_DMADESC_NEXT_LLI] = 0;
>
> Again, please preserve the old comments.

Sure, would do it.
>
> >+      lli->hw[OWL_DMADESC_SADDR] = src;
> >+      lli->hw[OWL_DMADESC_DADDR] = dst;
> >+      lli->hw[OWL_DMADESC_SRC_STRIDE] = 0;
> >+      lli->hw[OWL_DMADESC_DST_STRIDE] = 0;
> >+      lli->hw[OWL_DMADESC_FLEN] = len | FCNT_VAL << 20;
>
> Please explain what you're doing here.

Actually , in next the patch 2/10 there is comment that explains a bit
about it.

        /*
         * S700 put flen and fcnt at offset 0x0c and 0x1c respectively,
         * whereas S900 put flen and fcnt at offset 0x0c.
         */

Shall I add more details to it in the next patch 02/10 ?

Thanks
-Amit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
