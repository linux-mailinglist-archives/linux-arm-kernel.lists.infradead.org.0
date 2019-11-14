Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1548AFC25F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 10:13:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKi7Y44PjLEE3VvCjDOLiJwQyK/iCvYlGBzGSdUMmqo=; b=hY8pa2sTcqzq5A
	MuIa0FgN4TIItGHnltf83bFU5ah07WoDss5wjSJf0N69ndbXXkhTSAocRCPlzlvYWK+/QeW1waKPh
	773HrA7x2RB7GknfYOjNkMq5SocyuEG3IVlHx7/qB3g7fZWz3fxUmqjeIZYcrLJBtR6Qh4Bf8YYT0
	Mi/n6ErhIL2/rxUa8hzDoCzU/90ZcXNSpscZc5p/hQwLKJjk84XYn798JwL5dWD5H8NKi7lgot0uF
	ZCavodya8BKOlJ+d8QFneiiPx1vqVyj1VIa6E1EP4usAoVDzQTy5HDnAa4rm7hmBNoebATGuymJWk
	+Amv8VUVtiK2N7juc5Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBBc-0006mN-6z; Thu, 14 Nov 2019 09:13:08 +0000
Received: from 1.mo7.mail-out.ovh.net ([178.33.45.51])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBBU-0006kG-Ak
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 09:13:01 +0000
Received: from player773.ha.ovh.net (unknown [10.108.57.38])
 by mo7.mail-out.ovh.net (Postfix) with ESMTP id 4820113E5D6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 10:12:55 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player773.ha.ovh.net (Postfix) with ESMTPSA id 9889BC17ABBB;
 Thu, 14 Nov 2019 09:12:31 +0000 (UTC)
Date: Thu, 14 Nov 2019 11:12:30 +0200
From: Andi Shyti <andi@etezian.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH 7/9] spi: s3c64xx: Use dma_request_chan() directly for
 channel request
Message-ID: <20191114091230.GB1249@jack.zhora.eu>
References: <20191113094256.1108-1-peter.ujfalusi@ti.com>
 <20191113094256.1108-8-peter.ujfalusi@ti.com>
 <20191113234049.GA1249@jack.zhora.eu>
 <e453c716-7658-a9fd-324d-4d95ff1aa29c@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e453c716-7658-a9fd-324d-4d95ff1aa29c@ti.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 1915718693274174139
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudeffedgtddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejjeefrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_011300_517028_9725DDFA 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.33.45.51 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: jonathanh@nvidia.com, alexandre.belloni@bootlin.com, s.hauer@pengutronix.de,
 linux-arm-msm@vger.kernel.org, radu_nicolae.pirea@upb.ro, broonie@kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, linux-spi@vger.kernel.org,
 vkoul@kernel.org, kgene@kernel.org, ldewangan@nvidia.com, agross@kernel.org,
 Andi Shyti <andi@etezian.org>, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, bjorn.andersson@linaro.org, shawnguo@kernel.org,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

> >>  	if (!is_polling(sdd)) {
> >>  		/* Acquire DMA channels */
> >> -		sdd->rx_dma.ch = dma_request_slave_channel_reason(&pdev->dev,
> >> -								  "rx");
> >> +		sdd->rx_dma.ch = dma_request_chan(&pdev->dev, "rx");
> > 
> > I have a little concern here. We have two funcions
> > 'dma_request_chan' and  'dma_request_channel' don't we end up
> > making some confusion here?
> > 
> > Wouldn't it make more sense renaming 'dma_request_chan' to
> > 'dma_request_slave_channel_reason'?
> 
> The dma_request_channel() should go away. It was the old API before we
> got the dma_slave_map for non DT (and non ACPI) platforms so we can get
> rid of the filter function exports from DMA drivers to clients all over
> the place.

Yes, I agree... thanks!

Acked-by: Andi Shyti <andi@etezian.org>

Thanks,
Andi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
