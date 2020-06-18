Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A38961FF4A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 16:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQkb5hyzm/+xgt5lUveZr46m+/1Ij59TSJx/qzrRDPg=; b=MplolQMBrDGWwB
	Cy9p3Nvw9rITTjOsfbqI4+H8kkwLn/HUmoRG6QwGxlY4EwsEQFSK/X9Jpw2z7u2AFd9IW3XGSVqfB
	p3ZaLZrPfPUyVj3tMAmx4N3E7C7NK7eLwliikLfjL3JcG6PYQWGVcoCSixm1rF1id22A+Wi4LKPdP
	2FvGBF5Cgl0/PwcYGzJkjHxOGgzyzRVxvcJd1lWNYB5N6wHz/qJVxM0+jUi9opv0apoVP1lo2vykn
	1hUz2HZgzMrWi/ihWYU0/QntLAp0sl2Rm1Nhf4lN1URisc7cxJ5NIgkg/6gCeFyaTk2kN1sqdlv7l
	IsRrrArtzm8czhGeWzEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvT8-0006Vh-I7; Thu, 18 Jun 2020 14:24:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvT0-0006VJ-4C
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 14:24:35 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7C862082F;
 Thu, 18 Jun 2020 14:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592490273;
 bh=vudr6oJRzoUwNx1PuJdEGZLBjHEzAYe0suL8lQzVm1Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Iy4P2NP+QIfVquNNJLRQ4Hrqll+YheeMWy9qqqECKLV5qnu9pdaRZ8rWRKFAldofC
 r11vp7twz6+piMBuDO2kkHboiA8qfVD/FQb8QxXhxaNWDg0XhlRgtStwedXBSFu0tY
 mq8ycgwCwCMlliZUr1uOwEgJV2cwRwtdjUY1uAC4=
Date: Thu, 18 Jun 2020 22:24:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v8 5/5] dt-bindings: arm: fsl: add different Protonic
 boards
Message-ID: <20200618142426.GA464@dragon>
References: <20200520154116.12909-1-o.rempel@pengutronix.de>
 <20200520154116.12909-6-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520154116.12909-6-o.rempel@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_072434_184381_C2DB7D40 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 05:41:16PM +0200, Oleksij Rempel wrote:
> Add Protonic PRTI6Q, WD2, RVT, VT7 boards.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Ah, okay.  The compatible is defined here.  This patch should really
go first.

Shawn

> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index cd3fbe7e39487..a1657505b3357 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -119,6 +119,8 @@ properties:
>                - fsl,imx6q-sabreauto
>                - fsl,imx6q-sabrelite
>                - fsl,imx6q-sabresd
> +              - prt,prti6q                # Protonic PRTI6Q board
> +              - prt,prtwd2                # Protonic WD2 board
>                - technexion,imx6q-pico-dwarf   # TechNexion i.MX6Q Pico-Dwarf
>                - technexion,imx6q-pico-hobbit  # TechNexion i.MX6Q Pico-Hobbit
>                - technexion,imx6q-pico-nymph   # TechNexion i.MX6Q Pico-Nymph
> @@ -170,6 +172,8 @@ properties:
>                - emtrion,emcon-mx6-avari   # emCON-MX6S or emCON-MX6DL SoM on Avari Base
>                - fsl,imx6dl-sabreauto      # i.MX6 DualLite/Solo SABRE Automotive Board
>                - fsl,imx6dl-sabresd        # i.MX6 DualLite SABRE Smart Device Board
> +              - prt,prtrvt                # Protonic RVT board
> +              - prt,prtvt7                # Protonic VT7 board
>                - technexion,imx6dl-pico-dwarf   # TechNexion i.MX6DL Pico-Dwarf
>                - technexion,imx6dl-pico-hobbit  # TechNexion i.MX6DL Pico-Hobbit
>                - technexion,imx6dl-pico-nymph   # TechNexion i.MX6DL Pico-Nymph
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
