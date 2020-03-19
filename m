Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F87218BD8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 18:07:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Hz9FIbWHLl6UmPTUl1mtdAkKOcaEg3etmqaCKzTShRg=; b=HKToJlsrMScnoi
	oNAtz5ughBRF8OS7UjJfC3DTFbyoJq2mUs9JapD9aYGjhBwipYGb7wBxP23rij/tJOppQTptkDRg7
	BHj9IkW92pC6Ndy+6zwyHLmKQiVgjuRhRQwt9aRLFt+adNkepypxNw6gZmtp+O6d0SuDphBnFQ11e
	foXxtmkZh7ksck4B2kOMegjeoRrEzEiyJ09us+TnhXYgHQxeWW3Gbh4stE5155Cm3/I2lDHsoKJpe
	Y/IzNtkIAdaCsR7mSIITyx8/4eix+g4ph0VLKJ92cZ+4bDW5eL1ufIRXuai/bJ3PjwYFOaOea9D1P
	mxs6L6PRu2px/sqPnyfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEydU-00020H-Ge; Thu, 19 Mar 2020 17:07:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEydK-0001zc-79
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 17:07:04 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71D4C2072D;
 Thu, 19 Mar 2020 17:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584637621;
 bh=NdR6LVZ2cIsGAen/1ujzdrUs8tOtmmAvYQrgY/mLbXM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=fAsoMHdZ+CYuM4c3hgzSAXhoiZ3xbVbN8s2cz7P9jqZcY1HB2yJCvRtzAv8IouYHO
 LC3dp3VGJ75UAMS0WzOgKBLBc3qum4Xg8DyXU67qvbSw9FVQNq+jdccLoJUC4cY0Oe
 POScnOpP9mVL6PMYpSsyL0K3elHJk1q6Tes9R0s8=
Date: Thu, 19 Mar 2020 12:06:59 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v2 2/2] PCI: uniphier: Add UniPhier PCIe endpoint
 controller support
Message-ID: <20200319170659.GA158868@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584604449-13461-3-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_100702_844833_BD25BA27 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FAKE_REPLY_C           No description available.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 04:54:09PM +0900, Kunihiko Hayashi wrote:
> This introduces specific glue layer for UniPhier platform to support
> PCIe controller that is based on the DesignWare PCIe core, and
> this driver supports endpoint mode. This supports for Pro5 SoC only.

Possible alternate text: ("specific glue layer" isn't the usual way to
describe a driver)

  PCI: uniphier: Add Socionext UniPhier Pro5 SoC endpoint controller driver

  Add driver for the Socionext UniPhier Pro5 SoC endpoint controller.
  This controller is based on the DesignWare PCIe core.

> +/* assertion time of intx in usec */

s/intx/INTx/ to match usage in spec (and in comments below :))

> +#define PCL_INTX_WIDTH_USEC		30

> +struct uniphier_pcie_ep_soc_data {
> +	bool is_legacy;

I'd prefer "unsigned int is_legacy:1".  See [1].

But AFAICT you actually don't need this at all (yet), since you only
have a single of_device_id, and it sets "is_legacy = true".  That
means the *not* legacy code is effectively dead and hasn't been
tested.

My preference would be to add "is_legacy" and the associated tests
when you actually *need* them, i.e., when you add support for a
non-legacy device.

> +static int uniphier_pcie_ep_raise_legacy_irq(struct dw_pcie_ep *ep)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
> +	u32 val;
> +
> +	/* assert INTx */
> +	val = readl(priv->base + PCL_APP_INTX);
> +	val |= PCL_APP_INTX_SYS_INT;
> +	writel(val, priv->base + PCL_APP_INTX);
> +
> +	udelay(PCL_INTX_WIDTH_USEC);
> +
> +	/* deassert INTx */
> +	val = readl(priv->base + PCL_APP_INTX);

Why do you need to read PCL_APP_INTX again here?

> +	val &= ~PCL_APP_INTX_SYS_INT;
> +	writel(val, priv->base + PCL_APP_INTX);
> +
> +	return 0;
> +}

> +	ret = dw_pcie_ep_init(ep);
> +	if (ret) {
> +		dev_err(dev, "Failed to initialize endpoint (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	return 0;

This is equivalent to:

  ret = dw_pcie_ep_init(ep);
  if (ret)
    dev_err(dev, "Failed to initialize endpoint (%d)\n", ret);

  return ret;

> +}

[1] https://lore.kernel.org/linux-fsdevel/CA+55aFzKQ6Pj18TB8p4Yr0M4t+S+BsiHH=BJNmn=76-NcjTj-g@mail.gmail.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
