Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3834A365
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBrR0eFVX9Q+ExGcNWmWnqHXnXTYXknAICN9r9YtPnI=; b=LJt1Q3E52CIubW
	JptSvayolFpWDsK8K2tBCdgB0cGpLOv9oVicktzk6kuma/4JsPaGoBm3c7R2wrDFji19/xwe5Xv/R
	RgtiHYKEDxJ6n4wCv/LDQhcZo8uPpGXAnhS/0UZxdWBExjfzgFboXrTZAhp5ux7hBRuw8sxSyrJMw
	jac3zRBa4zHRi1DzmpkPvw5LkLyTxYziXcxUX6AqfohsABV1QFORxhmaHxl1yFull0j7lnz/qgIN3
	TAHa/5n43m74NThwdUS2oNF8UPVaPtwMm/niLK+9R5DFhxqoC4UXAjTQHlsps5Zx+ZSnQvadj5FTq
	Oha8iXxHCIWSKD8E2/Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEkY-0000nv-3V; Tue, 18 Jun 2019 14:06:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEkD-0000mz-TX
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:05:55 +0000
Received: by mail-wr1-x442.google.com with SMTP id v14so14144709wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 07:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8qHqhUTLPLAeUp/D+WrLyXnpz1H1Jll7QCXTM4rdBnU=;
 b=djkt6tnmuZedsgQ4v+Rua7yfQcRyCI0RbFda0KhvSR/oADzdiA/209ohNfhcVRf8d6
 lBE9K/fJZ8A/ZxP0jl48u8DqygtjLk6pPcX8AUimocdYXLXQw2RJnr38R2XKwe/o6X9N
 ZOamdY9l71DGHUPX8V3uIZCrEbLY+wqRqK7B1FvRUTZM/MkMpzxXqA7hgrkn5Vv+p3o/
 2i+Q5LM8XfqFHVaM1HEQ/GwNCw/9/FMpfSh9bxU2w3XRUBG016B+1xnhdb43B8UsSRqy
 +fvmLZDCETQ8DJLKlkJh49O4rQZNrKvjfVhSeSVPO8KLHJgxbRRnFB65V8aEhN9ws1tS
 SjiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8qHqhUTLPLAeUp/D+WrLyXnpz1H1Jll7QCXTM4rdBnU=;
 b=kjlRMai1nEAW/r7XSc3yCsyfHkmmObQs41kVVbiNRAouT0ar5t4qckCqIh17hl2Uwi
 d0h8b04UrLGJ4/TVD9WcB05rEZ6VyWRtwU+qH6IL6erMZv/1Fa+55RGBzNoLsF4ZgIPX
 R2SCeFHA7IqTJGrCIdsyHZFidsTxcm735jFkSphbLD63+5rCY1rTocFY1W7M8V8gurJq
 dG3mv7knj2TCUE330ZEvFOMvqIJDpM1nXWo7Op2l1WFMByPV3bRvA2u5ps57m6ViZzz1
 U6LNqQ3FbmN/YzU9c2R8SPrrKsnmSYFecUwiDvPBjdp/5ouqEoV8LkB+LQPZLJh0Naim
 CFTg==
X-Gm-Message-State: APjAAAVk2bxup9+7vXs6GWB9OtKdu/ldRf9Vc4xZBM98+OrX++lwF9SB
 ulEj4sZ1dpGM8/qxYW909rn/moa47dF5XwQneih9JQ==
X-Google-Smtp-Source: APXvYqweODXawSwtgymTZRrJNdMT45q8SqezxZPypJ8zBOLy843m58QTD1p0JxHjbascNuxyphfbzEeuTcKrS6urlOY=
X-Received: by 2002:adf:90c3:: with SMTP id i61mr63288158wri.48.1560866751639; 
 Tue, 18 Jun 2019 07:05:51 -0700 (PDT)
MIME-Version: 1.0
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
 <1560169080-27134-15-git-send-email-yong.wu@mediatek.com>
 <CAAFQd5A5GUn1Zq1xF2_2V0MReNPd5bra2F=nquvodSAZUua5AQ@mail.gmail.com>
 <1560859743.8082.23.camel@mhfsdcap03>
In-Reply-To: <1560859743.8082.23.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@google.com>
Date: Tue, 18 Jun 2019 23:05:39 +0900
Message-ID: <CAAFQd5B8MiMA_OCUJ5HRmC5SA2772HF-rBGK0aZcKoWscOzOog@mail.gmail.com>
Subject: Re: [PATCH v7 14/21] iommu/mediatek: Add mmu1 support
To: Yong Wu <yong.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_070553_989409_C2B5D3B3 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?B?WWluZ2pvZSBDaGVuICjpmbPoi7HmtLIp?= <yingjoe.chen@mediatek.com>,
 anan.sun@mediatek.com, Robin Murphy <robin.murphy@arm.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 9:09 PM Yong Wu <yong.wu@mediatek.com> wrote:
>
> On Tue, 2019-06-18 at 15:19 +0900, Tomasz Figa wrote:
> > On Mon, Jun 10, 2019 at 9:21 PM Yong Wu <yong.wu@mediatek.com> wrote:
> > >
> > > Normally the M4U HW connect EMI with smi. the diagram is like below:
> > >               EMI
> > >                |
> > >               M4U
> > >                |
> > >             smi-common
> > >                |
> > >        -----------------
> > >        |    |    |     |    ...
> > >     larb0 larb1  larb2 larb3
> > >
> > > Actually there are 2 mmu cells in the M4U HW, like this diagram:
> > >
> > >               EMI
> > >            ---------
> > >             |     |
> > >            mmu0  mmu1     <- M4U
> > >             |     |
> > >            ---------
> > >                |
> > >             smi-common
> > >                |
> > >        -----------------
> > >        |    |    |     |    ...
> > >     larb0 larb1  larb2 larb3
> > >
> > > This patch add support for mmu1. In order to get better performance,
> > > we could adjust some larbs go to mmu1 while the others still go to
> > > mmu0. This is controlled by a SMI COMMON register SMI_BUS_SEL(0x220).
> > >
> > > mt2712, mt8173 and mt8183 M4U HW all have 2 mmu cells. the default
> > > value of that register is 0 which means all the larbs go to mmu0
> > > defaultly.
> > >
> > > This is a preparing patch for adjusting SMI_BUS_SEL for mt8183.
> > >
> > > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > > Reviewed-by: Evan Green <evgreen@chromium.org>
> > > ---
> > >  drivers/iommu/mtk_iommu.c | 46 +++++++++++++++++++++++++++++-----------------
> > >  1 file changed, 29 insertions(+), 17 deletions(-)
> > >
> > > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > > index 3a14301..ec4ce74 100644
> > > --- a/drivers/iommu/mtk_iommu.c
> > > +++ b/drivers/iommu/mtk_iommu.c
> > > @@ -72,26 +72,32 @@
> > >  #define F_INT_CLR_BIT                          BIT(12)
> > >
> > >  #define REG_MMU_INT_MAIN_CONTROL               0x124
> > > -#define F_INT_TRANSLATION_FAULT                        BIT(0)
> > > -#define F_INT_MAIN_MULTI_HIT_FAULT             BIT(1)
> > > -#define F_INT_INVALID_PA_FAULT                 BIT(2)
> > > -#define F_INT_ENTRY_REPLACEMENT_FAULT          BIT(3)
> > > -#define F_INT_TLB_MISS_FAULT                   BIT(4)
> > > -#define F_INT_MISS_TRANSACTION_FIFO_FAULT      BIT(5)
> > > -#define F_INT_PRETETCH_TRANSATION_FIFO_FAULT   BIT(6)
> > > +                                               /* mmu0 | mmu1 */
> > > +#define F_INT_TRANSLATION_FAULT                        (BIT(0) | BIT(7))
> > > +#define F_INT_MAIN_MULTI_HIT_FAULT             (BIT(1) | BIT(8))
> > > +#define F_INT_INVALID_PA_FAULT                 (BIT(2) | BIT(9))
> > > +#define F_INT_ENTRY_REPLACEMENT_FAULT          (BIT(3) | BIT(10))
> > > +#define F_INT_TLB_MISS_FAULT                   (BIT(4) | BIT(11))
> > > +#define F_INT_MISS_TRANSACTION_FIFO_FAULT      (BIT(5) | BIT(12))
> > > +#define F_INT_PRETETCH_TRANSATION_FIFO_FAULT   (BIT(6) | BIT(13))
> >
> > If there are two IOMMUs, shouldn't we have two driver instances handle
> > them, instead of making the driver combine them two internally?
>
> Actually it means only one IOMMU(M4U) HW here. Each a M4U HW has two
> small iommu cells which have independent MTLB. As the diagram above, M4U
> contain mmu0 and mmu1.
>
> MT8173 and MT8183 have only one M4U HW while MT2712 have 2 M4U HWs(two
> driver instances).
>
> >
> > And, what is even more important from security point of view actually,
> > have two separate page tables (aka IOMMU groups) for them?
>
> Each a IOMMU(M4U) have its own pagetable, thus, mt8183 have only one
> pagetable while mt2712 have two.

I see, thanks for clarifying.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
