Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 277D44DEDE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 03:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ainZZkdTZtlc4noB8RPSiPCyxuk+Ti2ojSjcY5ljzUo=; b=bZKhKQsXeOzlEI
	Qr+H91q4tadrLmSE78onLI1oUkE9uYMFmSz9rJgD6ESva8Jr25tvfpnHnZ1iKU2oT2X4FwTfYlYBN
	+c9BdhRySe5/WBCGD4NmSvjnKCZkN7fVuzrMKjbNnrRJs8aIFf0SYlXLXdcMFC1LGbJI1Wq29y3IK
	+4mfQIAF4mF4m4TTXvj5wP+3HXeS2l/fMKnBo1GR5lGK7VUDsGD40RHkJAWkEtPHwL0CGSildj9BS
	l4PQk2KnReCXKA0c4/kR4DSrXtGayxvKAGqrefOlr5XdqPyD0bSSAtnInyWCyOIML7QhDFcnDyaZR
	IQXq+rwlO6O4FlRxWBSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he8np-00006R-Dm; Fri, 21 Jun 2019 01:57:21 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he8nT-0008SF-9E
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 01:57:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id B623021D51;
 Thu, 20 Jun 2019 21:56:54 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 20 Jun 2019 21:56:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=tLnRWlmzorgr7oKoK51UGqpEXN0boNS
 Id1GRxNsS9NQ=; b=fkcN1lTYXoeI9cd1gv23+GmPU7rKDAEo5/cI5mfSNr40Q7n
 gIfBDgarfShvxosHbI0W3rcClWGnRrPfdAUwhwY2R3l9H09hj0ZHICKn9oreGeK/
 2a+a1T7VEfwWxmSDbEf1Yv8SATvOzETurjMP3K2pXUy4LHbjh4hXJf9Fa1zcF7o5
 gXV62LwFZqvBIYQzWaukLiYahO0j3/r6QJY+MG87w/mUaxBelxaQRkzxTnKAuH+h
 DyIs7HK5md5iidQ8Ua8Or3anzFgPu5lW11rHntro4DZaMUrKfoCmwCqaDrT/YvxN
 D+mnUptyWTXfuY3zsmGWBjSU5WL90wKMCyvSrUA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=tLnRWl
 mzorgr7oKoK51UGqpEXN0boNSId1GRxNsS9NQ=; b=OU/hxIS7HchVNs+fLkNXjr
 6kIkNsjLC8r66mB71V3KWKMeiPcuTvOGvIiMOVUnPAFCA4tyinQELMwqtAKkwSAv
 suHFuInCTfunqg+dsPFuxS56Qm9iMx//c/HUeAYeH0ksPyRCsYa33ztaYyHMK26N
 rSL8RCryB3Jb0Aq3lNqjXcDvgxV71C5OWN3QpvZI5Y/gLMnupJ5h8UV44ptilABe
 t60qa0rJiPGQsraVcXVu5R12//8oFRiU1pqDOP1ikvSnrOj0CYQsJ7BazwpqSDxa
 67q6rZAFjxzUlwogZdCp6oyImyLQIc8b2KKlJVL7WcwrYI5Q10/IQClAPPDrJf+Q
 ==
X-ME-Sender: <xms:ZTkMXQJULOYGGAlG-9bxfc6vOkU6HmFXRkcsZ7hs665fWX4Ztg6Oug>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrtdehgdehvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:ZTkMXY-e64CPx0slVhQw1CIgHJ60s0RwilgiiX10KkqhVXpqU_au1w>
 <xmx:ZTkMXSCubGC1MkugeHViY-Otddbgb_XyTR4CCDiFhYRN2IgMmSrx4g>
 <xmx:ZTkMXSroZZNWI3TBnO4rVikVkz4it3z9E2KMIjWp6U9EVkwy5GQZWw>
 <xmx:ZjkMXaLYIooj5bFey-EiXfXDvK0kiLOnI3jQCL00bttaaXKyLGJE5Q>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 4DC85E00A1; Thu, 20 Jun 2019 21:56:53 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-728-g133121a-fmstable-20190620v1
Mime-Version: 1.0
Message-Id: <e321507a-13d1-4eb8-ac7a-53c75a9d9842@www.fastmail.com>
In-Reply-To: <20190620091738.14683-1-joel@jms.id.au>
References: <20190620091738.14683-1-joel@jms.id.au>
Date: Fri, 21 Jun 2019 11:26:52 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Vijay Khemka" <vijaykhemka@fb.com>
Subject: Re: [PATCH] soc: aspeed: lpc-ctrl: Fix probe error handling
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_185659_586648_3E3EB160 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 20 Jun 2019, at 18:47, Joel Stanley wrote:
> gcc warns that a mising "flash" phandle node leads to undefined
> behavior later:
> 
> drivers/soc/aspeed/aspeed-lpc-ctrl.c: In function 
> 'aspeed_lpc_ctrl_probe':
> drivers/soc/aspeed/aspeed-lpc-ctrl.c:201:18: error: '*((void 
> *)&resm+8)' may be used uninitialized in this function 
> [-Werror=maybe-uninitialized]
> 
> Only set the flash base and size if we find a phandle in the device
> tree.

Ugh, yeah. Not sure how I missed that. Thanks for fixing it.

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> 
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  drivers/soc/aspeed/aspeed-lpc-ctrl.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/aspeed/aspeed-lpc-ctrl.c 
> b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
> index aca13779764a..eee26c2d8b52 100644
> --- a/drivers/soc/aspeed/aspeed-lpc-ctrl.c
> +++ b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
> @@ -223,10 +223,11 @@ static int aspeed_lpc_ctrl_probe(struct 
> platform_device *pdev)
>  			dev_err(dev, "Couldn't address to resource for flash\n");
>  			return rc;
>  		}
> +
> +		lpc_ctrl->pnor_size = resource_size(&resm);
> +		lpc_ctrl->pnor_base = resm.start;
>  	}
>  
> -	lpc_ctrl->pnor_size = resource_size(&resm);
> -	lpc_ctrl->pnor_base = resm.start;
>  
>  	dev_set_drvdata(&pdev->dev, lpc_ctrl);
>  
> -- 
> 2.20.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
