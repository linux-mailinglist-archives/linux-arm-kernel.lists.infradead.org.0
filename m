Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6D6143EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 06:24:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y19klfodCd63S+G9OtdWRp85ssKT8cTmvKmlgkCl3yk=; b=LRitxmI8+jrc+3
	vxBBFD7Ympjh0Rp21GYrba7opy4pIKpxTk1ia3Q/oomDxOObDWLHzhp3HlZ9pEiYCaLx98aWNsJZK
	jNOxbK4qRNEWSet0dBkAzfObWFNGlXWu6DTkyzxam5MbAJxYiy0qMtZyL6vSePmOaEwuTUJil6vyN
	V+HDdc16Zqi75m7etKO/35djsqELhDKKTxWnKPTJz3k+ewGwGAQIz5VDAV2gdN4Hl8A0DJ/Hcwzme
	tpkDLgtUBXjT7NP03fHpg1daBBgSTaz+WhZEfmQiQ5cXKPjDXyyjbtVPymuPVTrB4oCj+3NIobaqR
	099L7cxtOz0gGLA6pWOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNVB5-0003o6-OH; Mon, 06 May 2019 04:24:35 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNVAz-0003ne-A9
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 04:24:31 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id EBAE720F51;
 Mon,  6 May 2019 00:24:23 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 06 May 2019 00:24:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=vvpSEtd/71ILYVnxht0QzJ3t9KHpGOA
 BdcYTEMQnFnY=; b=BvJ/3C+IsTJlE3JZt+akWqhUuurfqr85XWkuxTk6XWvc6Hv
 I8HzRy+inMg56yezGMfICg/mgb3mqTkwZLPVony1rsYhtnP7FsMCYEJj/rQIOIxz
 OT2H4eZY7JPqWWeUPGdjdscfM+rFkg0IXkPF8V5MAXpGWVzM9RW27pEE4BgOjPHN
 E8VxiveMfbOiA8NdCMGfKpLddsSZQ3/Y1YfUQ61Zras2yLtv1BTs09Fq9PLs6lEb
 VMmqnmisGj9al8vfqEM07fJkqzxx8VrATkxhXL69FVLU2Xla1Pmwak6li+seetqD
 yx+efktSd04jw5c9MY9VS3JXIc70cQ0zmsizP+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=vvpSEt
 d/71ILYVnxht0QzJ3t9KHpGOABdcYTEMQnFnY=; b=d8zTvlnKIZ99YD0EcU/6CB
 1YKJz0mMB4fMvN7y5nBCWVhKz6Ralyn8SlVkVmqZhbJZw0fiUXMxISgRHjkduc4a
 8Y+7zl5c3MV8nQar/k/Mq0omEGBnpx7DioVlNLd/G25cV4EjT3r4R4Nwaan6FCbd
 y69UD4gwAstyKz0nLp/K5OxO/qSfF7IQnBWmCLUIWJR48rERnCnTAP3tZky+EweK
 c/B9sCW1PuHXZ9CJ92E9UpWsGWy5uSmjKIfDAtnyt67r7zm1DssWos9WW+8r3E7E
 3uaK345q2GAUq+hBLsJIUL/tEoRg5aCH+tBeDeqv6YRl6jTM0QhIMIZ9ImCpOoug
 ==
X-ME-Sender: <xms:9bbPXDTXQERiByBN7ueIdBBWGKvLLTvpXXdEP1Cnvg_5Mg4PkSlylw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrjeeigdekhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:9bbPXJowtklksSLCrnL19NWbqRExZANDMYdik5fxSZLkpyT_n-xOUQ>
 <xmx:9bbPXBZWgZ_X03aerpo-O4DjS7RPwOeK7H_13mUcLdE11qyCFmEEkQ>
 <xmx:9bbPXES6tGlFSKWnBE2VVcXNh8oo8zCxVotneQCYb4EwQ3L3nXTdTg>
 <xmx:97bPXBrQC5vH8uH97yfNiXOmXjuTHF4XBvRWl6di87l-C-HnXC3_Lw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 66C437C6D9; Mon,  6 May 2019 00:24:21 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-449-gfb3fc5a-fmstable-20190430v1
Mime-Version: 1.0
Message-Id: <76491a70-01ca-4308-a09e-4f223ac49ebd@www.fastmail.com>
In-Reply-To: <20190503181336.579877-1-vijaykhemka@fb.com>
References: <20190503181336.579877-1-vijaykhemka@fb.com>
Date: Mon, 06 May 2019 00:24:13 -0400
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Vijay Khemka" <vijaykhemka@fb.com>, "Arnd Bergmann" <arnd@arndb.de>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 "Joel Stanley" <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] misc: aspeed-lpc-ctrl: Correct return values
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_212429_585532_4A428E55 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: sdasari@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Sat, 4 May 2019, at 03:43, Vijay Khemka wrote:
> Corrected some of return values with appropriate meanings and reported
> relevant messages as debug information.
> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>

Thanks for the fixes, this looks okay now. However, was there a reason for
not squashing change into your previous patch that introduced the issues
this fixes? That hasn't been applied yet either as far as I'm aware. I'd prefer
we do that and submit a single, good patch if we can.

Andrew

> ---
>  drivers/misc/aspeed-lpc-ctrl.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/misc/aspeed-lpc-ctrl.c 
> b/drivers/misc/aspeed-lpc-ctrl.c
> index 332210e06e98..aca13779764a 100644
> --- a/drivers/misc/aspeed-lpc-ctrl.c
> +++ b/drivers/misc/aspeed-lpc-ctrl.c
> @@ -93,8 +93,8 @@ static long aspeed_lpc_ctrl_ioctl(struct file *file, 
> unsigned int cmd,
>  
>  		/* If memory-region is not described in device tree */
>  		if (!lpc_ctrl->mem_size) {
> -			dev_err(dev, "Didn't find reserved memory\n");
> -			return -EINVAL;
> +			dev_dbg(dev, "Didn't find reserved memory\n");
> +			return -ENXIO;
>  		}
>  
>  		map.size = lpc_ctrl->mem_size;
> @@ -134,16 +134,16 @@ static long aspeed_lpc_ctrl_ioctl(struct file 
> *file, unsigned int cmd,
>  
>  		if (map.window_type == ASPEED_LPC_CTRL_WINDOW_FLASH) {
>  			if (!lpc_ctrl->pnor_size) {
> -				dev_err(dev, "Didn't find host pnor flash\n");
> -				return -EINVAL;
> +				dev_dbg(dev, "Didn't find host pnor flash\n");
> +				return -ENXIO;
>  			}
>  			addr = lpc_ctrl->pnor_base;
>  			size = lpc_ctrl->pnor_size;
>  		} else if (map.window_type == ASPEED_LPC_CTRL_WINDOW_MEMORY) {
>  			/* If memory-region is not described in device tree */
>  			if (!lpc_ctrl->mem_size) {
> -				dev_err(dev, "Didn't find reserved memory\n");
> -				return -EINVAL;
> +				dev_dbg(dev, "Didn't find reserved memory\n");
> +				return -ENXIO;
>  			}
>  			addr = lpc_ctrl->mem_base;
>  			size = lpc_ctrl->mem_size;
> @@ -239,7 +239,7 @@ static int aspeed_lpc_ctrl_probe(struct 
> platform_device *pdev)
>  		of_node_put(node);
>  		if (rc) {
>  			dev_err(dev, "Couldn't address to resource for reserved memory\n");
> -			return -ENOMEM;
> +			return -ENXIO;
>  		}
>  
>  		lpc_ctrl->mem_size = resource_size(&resm);
> -- 
> 2.17.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
