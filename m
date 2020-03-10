Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539131805F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8OxoLNzfd47pInqyQuHYLJtID9VWe9sy//na5dEQ9Ec=; b=L7KHbjpGzyfPwD
	8CZYoofUgK3ly0RhSj3RQ9ZMCxlXG1XYTF4Mncvg8dJN+W9DENlh6CLNrQoodpQjIYGmZ3eD7x8PL
	A6zGv5Yc9BwzFSN+xXiLfc+VkfH0SDr6136eRtEv5JKbcNuKynGDQ/iZAl3YU0IJQpLqg+SmXTP3C
	EI1tuKcYMLKdeTPsmlI2kuLLk8SyFn2JGMVZyxeYFk3MYU+BN5MyPb91x+P4JWtRgR8ZOdTrMmgKd
	KQo3s0rfL6iSFiBfNMFab4Hgc6trB1H1IIcxgqlbfydJQOUcoxfLFd00UuLkmPBfS3//tABphiyXc
	6vWLW/i9+Ym/upAWsAbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjLD-0003VO-FM; Tue, 10 Mar 2020 18:10:55 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjKX-0002HY-DU
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 18:10:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 328B021B6A;
 Tue, 10 Mar 2020 14:10:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 10 Mar 2020 14:10:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=SRt+6h/WZcgD+dTltRfTPOTYiLo
 w8DtLgwozFTB/+oc=; b=vX+vq8QtTgWR3mMawoHQd6j2nLo7dUfFVqhyUVUG+rX
 M/1LbMAR7c/l1V2e4EXXH/JOeQ9XG+vZh1rTpakd07ChzI60sbXGzqHb8jJFT0Qa
 eI8WqWApgYjISQJ2EqfqELSa4SBhMQaMR0exYMNYk8E1s5Jm5mgjYzGmTqgUiI6M
 l5v5Pzw7jHa3NNMJ/TgkzGJeIk+Pm/5Q2DGSwwlvnU/o+6MY242jgI3eMiGgk5Um
 8JCidPckRX+I3fMBDor54sWUivAlMqDBMjeVr5FnLP7IQ/Luj+p+xTDTk9Re4tbh
 IlWVFToLBGdSaVXtC5c8cu2y6PNyjN1gpatNoyrdunQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=SRt+6h
 /WZcgD+dTltRfTPOTYiLow8DtLgwozFTB/+oc=; b=0LGbYfQ14FzuF/Rv8VEMhm
 iGvLR+5HQ7402JxSGmQVDpLHd9ObHUQZyd5XI4niHMeP8IdnCZ5YOsDEJkXbNe98
 h8l1+axoA4OCe2Ngy9XqpVjUbBA7YpBmwIqryGRw0SZ79fJJwLvsgunrLjSAXGG0
 QsKOq8JvZRX1KNtaiQToUU+Z/MV2naiCRgQCR26dyeYc0yr4qmPGS4xpgH7C29yz
 znxJQv2lJzvaA3Fuho89JB85PwNp+aNovL2z/QnKDLcARdFu7NJ8IWhRbmI3tJsk
 3+MkUCR2qeiDf/wLDYNydqoAnTbjriBP9ILl+Giks9CEk1Fpd5uac5Ar1YonUF8w
 ==
X-ME-Sender: <xms:_tdnXsOsQ2mA9hmgDFPqCuYs25fk-JMG8pBjm8paz4oTGA5yw-5qeA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedruddvtddguddtvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegt
 vghrnhhordhtvggthheqnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrh
 fuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhho
 rdhtvggthh
X-ME-Proxy: <xmx:_tdnXvo7v2kSvu7oGDiu8kaCvbytm33atHG-UxrEmKyeMxWhM329lw>
 <xmx:_tdnXjuYIexMDgz57AjlVoFjPRhSgBjqAh2Fc9iksBckbx5bQIWwCA>
 <xmx:_tdnXrTusp0U3H24pWAZfbWvkLlnN1fOFcvUySRDB7QG0K4NJR6H0w>
 <xmx:_9dnXms0pgFeSe9rLJJnPv8rnkshn5jct2UsywzduMVS5MBN8pYYeA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 504353280065;
 Tue, 10 Mar 2020 14:10:06 -0400 (EDT)
Date: Tue, 10 Mar 2020 19:10:03 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 0/3] ARM: dts: sun8i: r40: fix SPI address and reorder
 nodes
Message-ID: <20200310181003.wgryf373em5zwlvb@gilmour.lan>
References: <20200310174709.24174-1-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310174709.24174-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_111013_588291_33F825F2 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 01:47:06AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> Hi,
>
> Here are some fixes for the R40 device tree for v5.6. The base addresses
> for SPI2 and SPI3 were incorrect and are fixed. I also found some nodes
> were not added in the proper order, possibly because git matched the
> incorrect place when applying the patch. These are fixed as well.
>
> ChenYu

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
