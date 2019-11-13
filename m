Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B021CFBCAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 00:41:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwklKh1riYx47el+NXn9jBk72w2RXIo9yYYU9ARN6/w=; b=QYJwD2TNYxGUY0
	5nH91dwW5/ptsrGspCtnNhrm+SUC2UdvY7H1k1306kJkhGmTrSLqELr/o4hnAZOpfYLP6DbHFhvQJ
	Ritgjrag4JGF5xbvp4A/amBs35jqIaBjvPv5qslQA8sdPj+h3XQGt6bmhDAGp+E0GmLQR747oojUW
	SdOkDBUwYg2bZUtFIc0TXoqwhCuMbhAFXli2FrPZDZ5c7sfSpMKD57Q+kad0ePYUR5RY/gzTk+3BJ
	vqz3xfVVy9ICyM+gbcBijh3vMwIFeSuk/DWXe5rbSiV01JK6rEQIohJdNwYOChwbsf7ErSiS1Uaom
	+xJS3VJf74LLHVcl5aIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV2GW-0007Sq-RP; Wed, 13 Nov 2019 23:41:36 +0000
Received: from 10.mo173.mail-out.ovh.net ([46.105.74.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV2GM-0007RV-Ol
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 23:41:28 +0000
Received: from player758.ha.ovh.net (unknown [10.108.54.217])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id A9DCB11D6C6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 00:41:14 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player758.ha.ovh.net (Postfix) with ESMTPSA id 17468C1C43CF;
 Wed, 13 Nov 2019 23:40:50 +0000 (UTC)
Date: Thu, 14 Nov 2019 01:40:49 +0200
From: Andi Shyti <andi@etezian.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH 7/9] spi: s3c64xx: Use dma_request_chan() directly for
 channel request
Message-ID: <20191113234049.GA1249@jack.zhora.eu>
References: <20191113094256.1108-1-peter.ujfalusi@ti.com>
 <20191113094256.1108-8-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113094256.1108-8-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 10707589591967711931
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudefvddgudefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejheekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_154126_950549_AC09A574 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.74.148 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linus.walleij@linaro.org, kgene@kernel.org, alexandre.belloni@bootlin.com,
 linux-arm-msm@vger.kernel.org, radu_nicolae.pirea@upb.ro,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 bjorn.andersson@linaro.org, vkoul@kernel.org, agross@kernel.org,
 ldewangan@nvidia.com, broonie@kernel.org, andi@etezian.org,
 linux-tegra@vger.kernel.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

>  	if (!is_polling(sdd)) {
>  		/* Acquire DMA channels */
> -		sdd->rx_dma.ch = dma_request_slave_channel_reason(&pdev->dev,
> -								  "rx");
> +		sdd->rx_dma.ch = dma_request_chan(&pdev->dev, "rx");

I have a little concern here. We have two funcions
'dma_request_chan' and  'dma_request_channel' don't we end up
making some confusion here?

Wouldn't it make more sense renaming 'dma_request_chan' to
'dma_request_slave_channel_reason'?

Thanks,
Andi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
