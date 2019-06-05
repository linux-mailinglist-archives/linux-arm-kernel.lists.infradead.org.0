Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBD9359E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:51:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ur9gvr6Z4oh8E1gpJiVwlU3lN+H3++ghwaORfvlAuEA=; b=dri7maQ0OYQ8EX
	rO3Ll9xXMfnwQnAKIChv9I+CeSOs5zu5oCteLAUT8Ynag299Zi0UjJnpJ4mH0z2OP5V4lL9WvTLjo
	YtAUkn2lj3uw4+P+imS3qJAgha0E4balZkruLBKe1DpdiQykoBCcI18dw1WYJuBw13IFryPgLK7by
	70coBZCUZLjXcf8E3E8uw+Sy8qDP4luaaceTAQTApS+8HuA2v9FcW8vsXzcSqOfbbbqFxxO4mLa0D
	W5C0mrl3DO3q/TKA0zi3sAVRu8rJqgwecCNW8eQt5tQXj6h/GnejmJpmSlaCVVrQQocQCBlrGdNzS
	m6XrT0yZr9qHfNipPHFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYSaI-0001HF-Qc; Wed, 05 Jun 2019 09:51:54 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSaA-0001GS-7h
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:51:47 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 7EFCB2000A;
 Wed,  5 Jun 2019 09:51:42 +0000 (UTC)
Date: Wed, 5 Jun 2019 11:51:41 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v4 04/13] media: rc: sunxi: Add RXSTA bits definition
Message-ID: <20190605095141.psrq6mhk63zto77s@flea>
References: <20190604162959.29199-1-peron.clem@gmail.com>
 <20190604162959.29199-5-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604162959.29199-5-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_025146_435463_4B1F3226 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 06:29:50PM +0200, Cl=E9ment P=E9ron wrote:
> We are using RXINT bits definition when looking at RXSTA register.
>
> These bits are equal but it's not really proper.
>
> Introduce the RXSTA bits and use them to have coherency.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  drivers/media/rc/sunxi-cir.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/media/rc/sunxi-cir.c b/drivers/media/rc/sunxi-cir.c
> index 0504ebfc831f..572bd2257d35 100644
> --- a/drivers/media/rc/sunxi-cir.c
> +++ b/drivers/media/rc/sunxi-cir.c
> @@ -48,11 +48,11 @@
>
>  /* Rx Interrupt Enable */
>  #define SUNXI_IR_RXINT_REG    0x2C
> -/* Rx FIFO Overflow */
> +/* Rx FIFO Overflow Interrupt Enable */
>  #define REG_RXINT_ROI_EN		BIT(0)
> -/* Rx Packet End */
> +/* Rx Packet End Interrupt Enable */
>  #define REG_RXINT_RPEI_EN		BIT(1)
> -/* Rx FIFO Data Available */
> +/* Rx FIFO Data Available Interrupt Enable */
>  #define REG_RXINT_RAI_EN		BIT(4)
>
>  /* Rx FIFO available byte level */
> @@ -60,6 +60,12 @@
>
>  /* Rx Interrupt Status */
>  #define SUNXI_IR_RXSTA_REG    0x30
> +/* Rx FIFO Overflow */
> +#define REG_RXSTA_ROI			BIT(0)
> +/* Rx Packet End */
> +#define REG_RXSTA_RPE			BIT(1)
> +/* Rx FIFO Data Available */
> +#define REG_RXSTA_RA			BIT(4)

I'm fine with it on principle, but if the consistency needs to be
maintained then we could just reuse the above defines

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
