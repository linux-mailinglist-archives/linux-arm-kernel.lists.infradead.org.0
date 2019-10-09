Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73DCD08B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXd9girBxi4JoDTepomh1w5rK9u71JDU+iymCY18OSI=; b=GFfXqfyMaswJpi
	yIQwSaPvfkZBieGiknnXxadRgSB3F6aJTFqtyK3UqRdKd4oGCAvqrIRvB3+D94Gd3SpgFgH8BCBe7
	DWIejRbqK/jqgYI/1yZQa6sifRKyHYahX89Rpny2JTSw0YJfL9uvY/gIyuVM3IdPP9O83IBiv9HFP
	6LTURLnzB23qMM2/4BLc0MgQRfXzHv3QpWqX/TGCVAiUpBZgfs/fZaU7qEhNO2fuTYiZYAHa/UlOM
	zNCdsFNajwxgwcquEDsNXsbkV28P9csY7HljPq4U5f0uKV9/W6RFzkr0peeIjbADU8TQH0eDJHRlV
	uSZ73zWKuJFzFF3VAXHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6gN-0003FF-SP; Wed, 09 Oct 2019 07:46:51 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6gA-0003Dd-S9
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 07:46:41 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 8v0tdMs3LlvQuSHU7rzAWhRtWIVlotOUQ8ditN56wCSdkOVwSWrpH6xpRpB5o4IFGvwz2oQWnn
 IIj3G65C0gTbgnRV+douGVZvsSs5albruElzTe2OAUWUZNsguLdlc6PBeICA8q2ZCy5PBDKLNx
 3yOjtw6tAsg6bPGLyfJ2eavi13JhfaL84i8Mm82sgjZXzkv5jwHGouLGCzuHKtkV4ax2cf8mWS
 RojiYrUy9JaS7J+XD+q6QhVZetGADXwhPxHErHQ8eotSGUrP2WfzIOigipksHTLSF+468tjMif
 Xxk=
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="52257068"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Oct 2019 00:46:36 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 9 Oct 2019 00:46:33 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 9 Oct 2019 00:46:33 -0700
Date: Wed, 9 Oct 2019 09:46:42 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] dmaengine: at_xdmac: Use
 devm_platform_ioremap_resource() in at_xdmac_probe()
Message-ID: <20191009074641.taocxbrs2vodvsgm@M43218.corp.atmel.com>
Mail-Followup-To: Markus Elfring <Markus.Elfring@web.de>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dan Williams <dan.j.williams@intel.com>,
 Vinod Koul <vkoul@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 kernel-janitors@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@atmel.com>
References: <377247f3-b53a-a9d9-66c7-4b8515de3809@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <377247f3-b53a-a9d9-66c7-4b8515de3809@web.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_004638_915350_339553AC 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, Dan
 Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 22, 2019 at 10:48:20AM +0200, Markus Elfring wrote:
> 
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Sun, 22 Sep 2019 10:37:31 +0200
> 
> Simplify this function implementation by using a known wrapper function.
> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com> 

Thanks

> ---
>  drivers/dma/at_xdmac.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/dma/at_xdmac.c b/drivers/dma/at_xdmac.c
> index b58ac720d9a1..f71c9f77d405 100644
> --- a/drivers/dma/at_xdmac.c
> +++ b/drivers/dma/at_xdmac.c
> @@ -1957,21 +1957,16 @@ static int atmel_xdmac_resume(struct device *dev)
> 
>  static int at_xdmac_probe(struct platform_device *pdev)
>  {
> -	struct resource	*res;
>  	struct at_xdmac	*atxdmac;
>  	int		irq, size, nr_channels, i, ret;
>  	void __iomem	*base;
>  	u32		reg;
> 
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	if (!res)
> -		return -EINVAL;
> -
>  	irq = platform_get_irq(pdev, 0);
>  	if (irq < 0)
>  		return irq;
> 
> -	base = devm_ioremap_resource(&pdev->dev, res);
> +	base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(base))
>  		return PTR_ERR(base);
> 
> --
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
