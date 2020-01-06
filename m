Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 513D3131AD2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 22:57:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mVgEKWvtnHgzp8KjfPmiBXRimr9QgNtAYg8pjiSDkJM=; b=L4wKu903Z1aeZ8
	dLFtzOi5u34Dlhf2wYAIBXSunbfGKYPndvvIKpFXGeBM0lREhTk7VIpnWLBvf+WFi4jur8Uh8aiCS
	S5DEIgPMvt3cXnDtox6nnhQXh4V8BzyHUk8LE7Hkx3qAFseepxmPr/1KhloVZVIPbSeH/ArBgz+lA
	NY+bhCbvHhQ+AidIvkZCsxgi+fk0XtQgOJf5LEf9kY5o2VoRHOt2DFTylByj+4WTIpTOmY2yjtSa3
	50BVO/6VLxBx8jalU81RQV4t6g5ST15/Kua5vapUaUMyLVQmsdxO8HR9M6HLnpqgmhGHq9Ucc+oty
	XqX5Y4kOSW9CBH2UhMhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioaNQ-0007YD-Rp; Mon, 06 Jan 2020 21:57:32 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaNE-0007XX-M3
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 21:57:21 +0000
Received: by mail-oi1-f196.google.com with SMTP id l9so14243853oii.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 13:57:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CGQuR1M/qYi2xyMJHlEfzvhIn09Q2tETaZrs1ID5PBc=;
 b=o6Eue9QK8r+BYCkKITZgt+xDM9Y6I9xA9v2rCmHy6pAnhPAZdPh0wE1ifOEocAAOoK
 zn5ly/AcMEJwenAkBRekFCRyLySANFIer83JgtDp3zSNcD55qtzhc/OI3YcSNLGQ4vgQ
 BwWD5tljeSKqwipQw2xBiyRIcTx4PXLGpWGD1ifQLx+au18IYJ6nWHipp21zLYWwugaJ
 FbNQQczHrff4KHowx+dKINXmp0700YvvePXk3fpAAlOwsAeP7O9AZ4+xXOMLtLl3vqdY
 yLb1dH8ZK7l/lRfbE3ge4sq2zcza3IIaN39cNJpWQdCix3itXME3uJhBK/bSQp1V7e9A
 NRWw==
X-Gm-Message-State: APjAAAWzbXRSIKWQJ0Cofhn1P8u1o04/asQVDnvFdvGhOgbTH8gvLqYB
 iwAzXxVK4OXfLRRJvqkNJex9Sqs=
X-Google-Smtp-Source: APXvYqwTzt/XPrpt00mjeUtMidxs3GJrDf6vttWFilh8WpYenwML9P9t82+uMrVgphE+hrd+ArLLOw==
X-Received: by 2002:aca:d507:: with SMTP id m7mr6108802oig.48.1578347839603;
 Mon, 06 Jan 2020 13:57:19 -0800 (PST)
Received: from rob-hp-laptop (ip-70-5-121-225.ftwttx.spcsdns.net.
 [70.5.121.225])
 by smtp.gmail.com with ESMTPSA id k26sm16624024oiw.34.2020.01.06.13.57.18
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 13:57:19 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220d32
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 06 Jan 2020 15:57:16 -0600
Date: Mon, 6 Jan 2020 15:57:16 -0600
From: Rob Herring <robh@kernel.org>
To: Chao Hao <chao.hao@mediatek.com>
Subject: Re: [PATCH v2 01/19] dt-bindings: mediatek: Add bindings for MT6779
Message-ID: <20200106215716.GA31059@bogus>
References: <20200105104523.31006-1-chao.hao@mediatek.com>
 <20200105104523.31006-2-chao.hao@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200105104523.31006-2-chao.hao@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_135720_722841_86106CB7 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Anan Sun <anan.sun@mediatek.com>, devicetree@vger.kernel.org,
 Jun Yan <jun.yan@mediatek.com>, wsd_upstream@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Chao Hao <chao.hao@mediatek.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cui Zhang <zhang.cui@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 5 Jan 2020 18:45:05 +0800, Chao Hao wrote:
> This patch adds description for MT6779 IOMMU.
> 
> MT6779 has two iommus, they are MM_IOMMU and APU_IOMMU which
> use ARM Short-Descriptor translation format.
> 
> The MT6779 IOMMU hardware diagram is as below, it is only a brief
> diagram about iommu, it don't focus on the part of smi_larb, so
> I don't describe the smi_larb detailedly.
> 
> 			     EMI
> 			      |
> 	   --------------------------------------
> 	   |					|
>         MM_IOMMU                            APU_IOMMU
> 	   |					|
>        SMI_COMMOM-----------		     APU_BUS
>           |		   |			|
>     SMI_LARB(0~11)  SMI_LARB12(FAKE)	    SMI_LARB13(FAKE)
> 	  |		   |			|
> 	  |		   |		   --------------
> 	  |		   |		   |	 |	|
>    Multimedia engine	  CCU		  VPU   MDLA   EMDA
> 
> All the connections are hardware fixed, software can not adjust it.
> 
> >From the diagram above, MM_IOMMU provides mapping for multimedia engine,
> but CCU is connected with smi_common directly, we can take them as larb12.
> APU_IOMMU provides mapping for APU engine, we can take them larb13.
> Larb12 and Larb13 are fake larbs.
> 
> Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> ---
>  .../bindings/iommu/mediatek,iommu.txt         |   2 +
>  include/dt-bindings/memory/mt6779-larb-port.h | 215 ++++++++++++++++++
>  2 files changed, 217 insertions(+)
>  create mode 100644 include/dt-bindings/memory/mt6779-larb-port.h
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
