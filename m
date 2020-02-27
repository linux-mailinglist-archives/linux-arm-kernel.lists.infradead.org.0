Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC84170F6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 05:10:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPzthIbAJmRtQbYgx+NJxwDz4oH1GbJalUHtPMANRE0=; b=u/VV16jkqlBavC
	Og3NIQaX4xwD4AAYWcz7nebww7N1vdvMHNfwOlWKG9NFoPZHkucfCjc1y1jlZAiOA/hKLhGsCEZDU
	y0mfl012NPWICi8RYgDyicxQucBykyRrgN3bFthGT+CZipbk9JfIGrUvyUfFFbeX3gtJM6Tpw8LLc
	Q25Wo7B4g4K+Kx/5FAydVGtyUmbCeqA3w6wX9qZYVd4D4iyHuVlaDWdUE85OPopTmX6sjh9wyTdml
	WlVDwB0KBL4CYejPrn7QoLwxpiL654/8fbkmAm87RZOkhxg7GUXtX0Sp6szzoebqRAR2kZh/lGvMB
	AJbm82Owrb90URA6lVHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7AVR-0005AM-2P; Thu, 27 Feb 2020 04:10:37 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7AVE-00059u-H7
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 04:10:25 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01R49rsH022471
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Feb 2020 22:09:56 -0600
Message-ID: <2f424decb5fc2e4bc945682e0839aa2f2d2e14ee.camel@kernel.crashing.org>
Subject: Re: [PATCH v4 3/7] usb: gadget: aspeed: add ast2600 vhub support
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: rentao.bupt@gmail.com, Felipe Balbi <balbi@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>, Stephen Boyd
 <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Date: Thu, 27 Feb 2020 15:09:52 +1100
In-Reply-To: <20200226230346.672-4-rentao.bupt@gmail.com>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-4-rentao.bupt@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_201024_757451_F3F2FAC1 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-02-26 at 15:03 -0800, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> Add AST2600 support in aspeed-vhub driver. There are 3 major
> differences
> between AST2500 and AST2600 vhub:
>   - AST2600 supports 7 downstream ports while AST2500 supports 5.
>   - AST2600 supports 21 generic endpoints while AST2500 supports 15.
>   - EP0 data buffer's 8-byte DMA alignment restriction is removed
> from
>     AST2600.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>

> ---
>  No Change in v3/v4.
>  Changes in v2:
>    - removed "ast_vhub_config" related logic.
> 
>  drivers/usb/gadget/udc/aspeed-vhub/Kconfig | 4 ++--
>  drivers/usb/gadget/udc/aspeed-vhub/core.c  | 3 +++
>  2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
> b/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
> index 83ba8a2eb6af..605500b19cf3 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
> @@ -4,5 +4,5 @@ config USB_ASPEED_VHUB
>  	depends on ARCH_ASPEED || COMPILE_TEST
>  	depends on USB_LIBCOMPOSITE
>  	help
> -	  USB peripheral controller for the Aspeed AST2500 family
> -	  SoCs supporting the "vHub" functionality and USB2.0
> +	  USB peripheral controller for the Aspeed AST2400, AST2500 and
> +	  AST2600 family SoCs supporting the "vHub" functionality and
> USB2.0
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> index f8ab8e012f34..f8d35dd60c34 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> @@ -423,6 +423,9 @@ static const struct of_device_id
> ast_vhub_dt_ids[] = {
>  	{
>  		.compatible = "aspeed,ast2500-usb-vhub",
>  	},
> +	{
> +		.compatible = "aspeed,ast2600-usb-vhub",
> +	},
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, ast_vhub_dt_ids);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
