Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F7F18EEC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 05:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQnqmKHyeIcG3TEZWlJS5ddF+as2y5pgvDTLETqv2Rg=; b=FoO1tP5p48MU0f
	h/7zkyp62R+RJqiU9X8G+zfgYoe4evbDFAC1IGLde+kVZIV3LGBCkXEENDPI2PAnM0pNZweNnH99c
	4D4ADW8c2GNJARTi9q0A0wPr4FaI9fpXzC00tX9xX/4B3YrW7Pqs8990b/04qNL1sIHpFDcqJTFT3
	2W1yfzyLtCli+gLXe5twcib/hH9/zQrv+JBoYem1LBWmis/IqBc14jrGLzSsE3B4oiXc83chr8hj7
	Fh10VkOYx16QgfOhOqD1NVcv23wyQMdF/3QklfXgKia7l+h8tkGg9yxYDrs7uo1XSLsRAw1H6ntQg
	CyDyndlBxcisoBBt1NlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGEJM-0001yH-7L; Mon, 23 Mar 2020 04:03:36 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGEJD-0001wl-I6
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 04:03:29 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 23 Mar 2020 13:03:23 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 5182C60057;
 Mon, 23 Mar 2020 13:03:23 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 23 Mar 2020 13:03:23 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id B034D1A12AD;
 Mon, 23 Mar 2020 13:03:22 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 7646812013D;
 Mon, 23 Mar 2020 13:03:22 +0900 (JST)
Date: Mon, 23 Mar 2020 13:03:22 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v2 2/2] PCI: uniphier: Add UniPhier PCIe endpoint
 controller support
In-Reply-To: <20200319170659.GA158868@google.com>
References: <1584604449-13461-3-git-send-email-hayashi.kunihiko@socionext.com>
 <20200319170659.GA158868@google.com>
Message-Id: <20200323130322.E519.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_210327_818815_6ACF4A8D 
X-CRM114-Status: GOOD (  23.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hi Bjorn,

Thank you for your comment.

On Thu, 19 Mar 2020 12:06:59 -0500 <helgaas@kernel.org> wrote:

> On Thu, Mar 19, 2020 at 04:54:09PM +0900, Kunihiko Hayashi wrote:
> > This introduces specific glue layer for UniPhier platform to support
> > PCIe controller that is based on the DesignWare PCIe core, and
> > this driver supports endpoint mode. This supports for Pro5 SoC only.
> 
> Possible alternate text: ("specific glue layer" isn't the usual way to
> describe a driver)
> 
>   PCI: uniphier: Add Socionext UniPhier Pro5 SoC endpoint controller driver
> 
>   Add driver for the Socionext UniPhier Pro5 SoC endpoint controller.
>   This controller is based on the DesignWare PCIe core.

I see. I'll accept your suggestion for the commit log.

> > +/* assertion time of intx in usec */
> 
> s/intx/INTx/ to match usage in spec (and in comments below :))

Certainly this isn't unified. I'll fix it.

> > +#define PCL_INTX_WIDTH_USEC		30
> 
> > +struct uniphier_pcie_ep_soc_data {
> > +	bool is_legacy;
> 
> I'd prefer "unsigned int is_legacy:1".  See [1].
> 
> But AFAICT you actually don't need this at all (yet), since you only
> have a single of_device_id, and it sets "is_legacy = true".  That
> means the *not* legacy code is effectively dead and hasn't been
> tested.

Yes.
Now I know the difference about between legacy and non-legacy SoC,
however, currently the driver doesn't have any non-legacy SoC support.

> My preference would be to add "is_legacy" and the associated tests
> when you actually *need* them, i.e., when you add support for a
> non-legacy device.

Agreed. The test for non-legacy SoC is necessary.
So I'll remove 'is_legacy' and related coded, and rewrite this driver
to support only legacy device.

And I'll remember [1] when adding non-legacy support.

> > +static int uniphier_pcie_ep_raise_legacy_irq(struct dw_pcie_ep *ep)
> > +{
> > +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> > +	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
> > +	u32 val;
> > +
> > +	/* assert INTx */
> > +	val = readl(priv->base + PCL_APP_INTX);
> > +	val |= PCL_APP_INTX_SYS_INT;
> > +	writel(val, priv->base + PCL_APP_INTX);
> > +
> > +	udelay(PCL_INTX_WIDTH_USEC);
> > +
> > +	/* deassert INTx */
> > +	val = readl(priv->base + PCL_APP_INTX);
> 
> Why do you need to read PCL_APP_INTX again here?

Indeed. This 'readl' isn't unnecessary.

> > +	val &= ~PCL_APP_INTX_SYS_INT;
> > +	writel(val, priv->base + PCL_APP_INTX);
> > +
> > +	return 0;
> > +}
> 
> > +	ret = dw_pcie_ep_init(ep);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to initialize endpoint (%d)\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	return 0;
> 
> This is equivalent to:
> 
>   ret = dw_pcie_ep_init(ep);
>   if (ret)
>     dev_err(dev, "Failed to initialize endpoint (%d)\n", ret);
> 
>   return ret;

Agreed. I'll rewrite it next.

> 
> > +}
> 
> [1] https://lore.kernel.org/linux-fsdevel/CA+55aFzKQ6Pj18TB8p4Yr0M4t+S+BsiHH=BJNmn=76-NcjTj-g@mail.gmail.com/

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
