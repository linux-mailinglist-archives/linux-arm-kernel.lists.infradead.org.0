Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B74781DDADB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 01:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgYR4h81Yp9NpqPG5ZUe/2Sc8EzEjG5NnecMBlsM8cc=; b=gJPpwvAp5GRpFM
	Aw4hVr9G34P5a+myqHlM+mqyVhcta8di7JiXklV87hkEjcHxXp9fyTn0v04RkSLsSTfyiT7zgJUTS
	n0/yWt5h6KZrWd9k5Nno88VM+b/pL+EuGgU2++e7VBNyR9zqIV5fFpPQJx48Hon1/kzMHQLVkJlza
	gpdE70ylmtGf+GuB41VxJa6ut+MMgwjmLm/4p25IEXX6dZTUk3w1WrIH2UxhkfU63p/ViWTytfc1E
	xIuEd1JEskWKowR04bEQp2mECA/ThA4W9hc5t4oMD0J0FWK8Yddaz3XNTt01QcxY5JlpTGl9lUQOT
	NEFL33pkj0xWsqFkNsvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbuRq-0000O4-8w; Thu, 21 May 2020 23:17:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbuRh-0000NG-7m
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 23:17:50 +0000
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 711E32151B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 23:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590103068;
 bh=EyK2DMGY1yaM+F8516LQrBIpk2NNn0s0Z37DLtuZPEA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CLhLY45tfjDzW/4QzoCLzjzXDitprZjeX6jCl/TTiDNf1smTgNixutkYBE1Ltk7N+
 bGuj4VCEQRCeGfsupUKY8MgwYvf2v3r3ry5ehzBBz2Vd9XnvyT50v3+/1fYDziASsk
 an0rGuPaYsEVmZTE5CauU7LzvZWPFnLZ8bU6LsLs=
Received: by mail-ot1-f48.google.com with SMTP id v17so6943657ote.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 16:17:48 -0700 (PDT)
X-Gm-Message-State: AOAM531dcBcIlNg8J7uujzHrl0Fo3+rT2jvQnjBty4V2e8G1AJwqD+Y0
 BndsggQlxQsfBEbInlmIKRqmNsNRKvWXgzwPZg==
X-Google-Smtp-Source: ABdhPJxVgcCXhuH2DfTXSUau1TIQTXIwHoWhmRU4UZnxmjy/ftT6A+o4gIk78ZAgFUEU2gCUM+w/Etpe/R6HZFsyFVk=
X-Received: by 2002:a05:6830:18d9:: with SMTP id
 v25mr8467347ote.107.1590103067633; 
 Thu, 21 May 2020 16:17:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200521130008.8266-11-lorenzo.pieralisi@arm.com>
In-Reply-To: <20200521130008.8266-11-lorenzo.pieralisi@arm.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 21 May 2020 17:17:27 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLTBxX_3KjiEqMfw0qMaTmj_DdPD3j-yMUvrvONPBSvjg@mail.gmail.com>
Message-ID: <CAL_JsqLTBxX_3KjiEqMfw0qMaTmj_DdPD3j-yMUvrvONPBSvjg@mail.gmail.com>
Subject: Re: [PATCH 10/12] of/irq: Make of_msi_map_rid() PCI bus agnostic
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_161749_321955_3C622B49 
X-CRM114-Status: GOOD (  21.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Diana Craciun <diana.craciun@oss.nxp.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, linux-acpi@vger.kernel.org,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 PCI <linux-pci@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
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
> There is nothing PCI bus specific in the of_msi_map_rid()
> implementation other than the requester ID tag for the input
> ID space. Rename requester ID to a more generic ID so that
> the translation code can be used by all busses that require
> input/output ID translations.
>
> Leave a wrapper function of_msi_map_rid() in place to keep
> existing PCI code mapping requester ID syntactically unchanged.
>
> No functional change intended.
>
> Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/of/irq.c       | 28 ++++++++++++++--------------
>  include/linux/of_irq.h | 14 ++++++++++++--
>  2 files changed, 26 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/of/irq.c b/drivers/of/irq.c
> index 48a40326984f..25d17b8a1a1a 100644
> --- a/drivers/of/irq.c
> +++ b/drivers/of/irq.c
> @@ -576,43 +576,43 @@ void __init of_irq_init(const struct of_device_id *matches)
>         }
>  }
>
> -static u32 __of_msi_map_rid(struct device *dev, struct device_node **np,
> -                           u32 rid_in)
> +static u32 __of_msi_map_id(struct device *dev, struct device_node **np,
> +                           u32 id_in)
>  {
>         struct device *parent_dev;
> -       u32 rid_out = rid_in;
> +       u32 id_out = id_in;
>
>         /*
>          * Walk up the device parent links looking for one with a
>          * "msi-map" property.
>          */
>         for (parent_dev = dev; parent_dev; parent_dev = parent_dev->parent)
> -               if (!of_map_rid(parent_dev->of_node, rid_in, "msi-map",
> -                               "msi-map-mask", np, &rid_out))
> +               if (!of_map_id(parent_dev->of_node, id_in, "msi-map",
> +                               "msi-map-mask", np, &id_out))
>                         break;
> -       return rid_out;
> +       return id_out;
>  }
>
>  /**
> - * of_msi_map_rid - Map a MSI requester ID for a device.
> + * of_msi_map_id - Map a MSI ID for a device.
>   * @dev: device for which the mapping is to be done.
>   * @msi_np: device node of the expected msi controller.
> - * @rid_in: unmapped MSI requester ID for the device.
> + * @id_in: unmapped MSI ID for the device.
>   *
>   * Walk up the device hierarchy looking for devices with a "msi-map"
> - * property.  If found, apply the mapping to @rid_in.
> + * property.  If found, apply the mapping to @id_in.
>   *
> - * Returns the mapped MSI requester ID.
> + * Returns the mapped MSI ID.
>   */
> -u32 of_msi_map_rid(struct device *dev, struct device_node *msi_np, u32 rid_in)
> +u32 of_msi_map_id(struct device *dev, struct device_node *msi_np, u32 id_in)
>  {
> -       return __of_msi_map_rid(dev, &msi_np, rid_in);
> +       return __of_msi_map_id(dev, &msi_np, id_in);
>  }
>
>  /**
>   * of_msi_map_get_device_domain - Use msi-map to find the relevant MSI domain
>   * @dev: device for which the mapping is to be done.
> - * @rid: Requester ID for the device.
> + * @id: Device ID.
>   * @bus_token: Bus token
>   *
>   * Walk up the device hierarchy looking for devices with a "msi-map"
> @@ -625,7 +625,7 @@ struct irq_domain *of_msi_map_get_device_domain(struct device *dev, u32 id,
>  {
>         struct device_node *np = NULL;
>
> -       __of_msi_map_rid(dev, &np, id);
> +       __of_msi_map_id(dev, &np, id);
>         return irq_find_matching_host(np, bus_token);
>  }
>
> diff --git a/include/linux/of_irq.h b/include/linux/of_irq.h
> index 7142a3722758..cf9cb1e545ce 100644
> --- a/include/linux/of_irq.h
> +++ b/include/linux/of_irq.h
> @@ -55,7 +55,12 @@ extern struct irq_domain *of_msi_map_get_device_domain(struct device *dev,
>                                                         u32 id,
>                                                         u32 bus_token);
>  extern void of_msi_configure(struct device *dev, struct device_node *np);
> -u32 of_msi_map_rid(struct device *dev, struct device_node *msi_np, u32 rid_in);
> +u32 of_msi_map_id(struct device *dev, struct device_node *msi_np, u32 id_in);
> +static inline u32 of_msi_map_rid(struct device *dev,
> +                                struct device_node *msi_np, u32 rid_in)
> +{
> +       return of_msi_map_id(dev, msi_np, rid_in);
> +}
>  #else
>  static inline int of_irq_count(struct device_node *dev)
>  {
> @@ -93,10 +98,15 @@ static inline struct irq_domain *of_msi_map_get_device_domain(struct device *dev
>  static inline void of_msi_configure(struct device *dev, struct device_node *np)
>  {
>  }
> +static inline u32 of_msi_map_id(struct device *dev,
> +                                struct device_node *msi_np, u32 id_in)
> +{
> +       return id_in;
> +}
>  static inline u32 of_msi_map_rid(struct device *dev,
>                                  struct device_node *msi_np, u32 rid_in)

Move this out of the ifdef and you only need it declared once.

But again, I think I'd just kill of_msi_map_rid.

>  {
> -       return rid_in;
> +       return of_msi_map_id(dev, msi_np, rid_in);
>  }
>  #endif
>
> --
> 2.26.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
