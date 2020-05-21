Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0081DDAAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 01:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdKQY5hqoc8X52yvNolausGp0qOOmUZYd2jWR6e8/UQ=; b=beK6ljbIlxT4lx
	wceJCVw+obBCeeTR5MHL3aqffl9Oi6aRKyCjj7zjlxtn2lBhAuGheyKYVaTdCJ5Rg6pTr9PI4wD08
	nHkuRUjm1Q19bPR8Hx8Xan65rry+zGFEJ1IgGFqEP2OpbHQVAwxMAhGUWpjNP4v/Ibdo2k8sdn/8b
	j3FFG2qfbhbBDGQ/kC8xVUO72UDbBtOn31I6C+JIss1ZWzK2QR1DkymVkX0YHZokAH/JrxlhPQVDS
	/6+rTSYwCFKEpnvh7pGY8mRD0fIrnWofdtzB9kHgvzxBI/i8MQ2kuDSWqXBMpyFW8IiDVYFUh57DC
	2eNa901ZA643Di/10wng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbuD3-0008Mu-8A; Thu, 21 May 2020 23:02:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbuCu-0008MK-Oo
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 23:02:34 +0000
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
 [209.85.167.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C5CB20825
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 23:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590102152;
 bh=u4I01Bd2QyL8HPxDkUrMsX0HSNDq0LynubrHvmfSbXA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RiYUJx3r0NSHRBi8CE9gwpJPXRgz5WqYyZuoDvG/k/mV29oeCTMPA50Plh9HX9ac9
 ymVWclaGK1LCxKJKteoWzNj5exfqEiApBISSekxqsOLadecgNFhpB0S6E23smC/RO1
 UqBvA944tDh1FRa8/kjEC+nhcFSqtsgenhggmGKc=
Received: by mail-oi1-f173.google.com with SMTP id l6so7691510oic.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 16:02:32 -0700 (PDT)
X-Gm-Message-State: AOAM533Tn2U2K6tOwsmKo7TO/teucDFiSjOcBSUDWDtS7XD/93eOJY2v
 jOhny8/XRMsNdgH4Nlu+3BStDCUAndXpJXMC3Q==
X-Google-Smtp-Source: ABdhPJyTEOAtWUCXqQRm64QnwpCZ0isYcN6LyugKOxRT91W8qbotthhsTXaUlNcGWLVO8KSMeec5LvCcv0JMwyl2JAA=
X-Received: by 2002:a05:6808:7cb:: with SMTP id
 f11mr710834oij.152.1590102151546; 
 Thu, 21 May 2020 16:02:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200521130008.8266-8-lorenzo.pieralisi@arm.com>
In-Reply-To: <20200521130008.8266-8-lorenzo.pieralisi@arm.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 21 May 2020 17:02:20 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJw3wyiUrbd1AekwDc5+uqhHi9BwoB-rYpypUEGNgzCtw@mail.gmail.com>
Message-ID: <CAL_JsqJw3wyiUrbd1AekwDc5+uqhHi9BwoB-rYpypUEGNgzCtw@mail.gmail.com>
Subject: Re: [PATCH 07/12] of/device: Add input id to of_dma_configure()
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_160232_844358_A5D110E5 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Diana Craciun <diana.craciun@oss.nxp.com>,
 PCI <linux-pci@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, linux-acpi@vger.kernel.org,
 Linux IOMMU <iommu@lists.linux-foundation.org>, Marc Zyngier <maz@kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 7:00 AM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> Devices sitting on proprietary busses have a device ID space that
> is owned by the respective bus and related firmware bindings. In order
> to let the generic OF layer handle the input translations to
> an IOMMU id, for such busses the current of_dma_configure() interface
> should be extended in order to allow the bus layer to provide the
> device input id parameter - that is retrieved/assigned in bus
> specific code and firmware.
>
> Augment of_dma_configure() to add an optional input_id parameter,
> leaving current functionality unchanged.
>
> Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Joerg Roedel <joro@8bytes.org>
> Cc: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> ---
>  drivers/bus/fsl-mc/fsl-mc-bus.c |  4 ++-
>  drivers/iommu/of_iommu.c        | 53 +++++++++++++++++++++------------
>  drivers/of/device.c             |  8 +++--
>  include/linux/of_device.h       | 16 ++++++++--
>  include/linux/of_iommu.h        |  6 ++--
>  5 files changed, 60 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
> index 40526da5c6a6..8ead3f0238f2 100644
> --- a/drivers/bus/fsl-mc/fsl-mc-bus.c
> +++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
> @@ -118,11 +118,13 @@ static int fsl_mc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
>  static int fsl_mc_dma_configure(struct device *dev)
>  {
>         struct device *dma_dev = dev;
> +       struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
> +       u32 input_id = mc_dev->icid;
>
>         while (dev_is_fsl_mc(dma_dev))
>                 dma_dev = dma_dev->parent;
>
> -       return of_dma_configure(dev, dma_dev->of_node, 0);
> +       return of_dma_configure_id(dev, dma_dev->of_node, 0, &input_id);
>  }
>
>  static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
> diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
> index ad96b87137d6..4516d5bf6cc9 100644
> --- a/drivers/iommu/of_iommu.c
> +++ b/drivers/iommu/of_iommu.c
> @@ -139,25 +139,53 @@ static int of_pci_iommu_init(struct pci_dev *pdev, u16 alias, void *data)
>         return err;
>  }
>
> -static int of_fsl_mc_iommu_init(struct fsl_mc_device *mc_dev,
> -                               struct device_node *master_np)
> +static int of_iommu_configure_dev_id(struct device_node *master_np,
> +                                    struct device *dev,
> +                                    const u32 *id)

Should have read this patch before #6. I guess you could still make
of_pci_iommu_init() call
of_iommu_configure_dev_id.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
