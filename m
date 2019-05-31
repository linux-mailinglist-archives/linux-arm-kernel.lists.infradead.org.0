Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D5A3091C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 09:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vrF5DVg8Ga2ugplbtVYJA1F+oBk+JdX51TKqURvZCL8=; b=NCqMkq2WGaeAs9
	lWQF/knwZDQ9xHX/87A6g881McHxSzceRjXgGcTDL4iGPZl8GRdf2OcS7TnsCTGnlQVXoiFZYVoTC
	n8Moulb9Q9LFcYsIv8moJzG4Jfr7w7U78tbtiuYeTX6SjtpCvZsGGjS4z5eUVIByUyzaYUT+9VjlI
	8sa+ocuoHryTqZF1K823McoLfUn7a2YsDDOUzABer2g0bvVHr/E0VNo8XmA+bG9CkdIhZT+C0SYco
	eDn+KuIZRbdCwg8Cuz/DEnsSO4ua6kmB3Ovv1eGr5V/qYuncHMiIPXw15ckQ0AwQ+Zl4FKDZxCtx/
	j/K7QNgeg2vdpTU/bMRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWbXK-00058d-7m; Fri, 31 May 2019 07:01:10 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWbXD-00058R-D1
 for linux-arm-kernel@bombadil.infradead.org; Fri, 31 May 2019 07:01:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9A97hJUqWQzbw2/Tsh6aoUNyLzN8nFYjBn/i+RwpyeA=; b=XfReIPdWGB9ZkNVY50XiJjpai
 S1nfJfjQHb6nx7wvCM2/dAPpBaPuE49IKiC50iJBz1FsBeBA6qn9fk7M+CUejx7JQaVTLcbkEtWHW
 c/AH3VSoQL7rR28X6MobCaBIzCsHui8bT3zJDUXlG5jOmsnm9H68A3HdTuPxYDSY2us+/LGfOS3Jg
 u57DourvkyipUynPzSx6XXpj6Fu/RpS5EfPNoQd1e1B0SAS8VhFyda/ZEt4dmW3OEPje/f6q5wuwB
 diYheGZGhJeb4DhuPmyfq5QPMY2LWajT1n+1fvz02E5WXyFMQUaO5KoLYwGCsKJ2hT/5hbH95BOqf
 risoMsq6w==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWbXA-0000ZB-6R
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 07:01:02 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 8ECD020000D;
 Fri, 31 May 2019 07:00:24 +0000 (UTC)
Date: Fri, 31 May 2019 09:00:23 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v9 2/9] dt-bindings: sun6i-dsi: Add A64 DPHY compatible
 (w/ A31 fallback)
Message-ID: <20190531070023.2vj4sq4kk3aji25d@flea>
References: <20190529105615.14027-1-jagan@amarulasolutions.com>
 <20190529105615.14027-3-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529105615.14027-3-jagan@amarulasolutions.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_080100_279839_9E94B218 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Ryan Pannell <ryan@osukl.com>,
 bshah@mykolab.com, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Sergey Suloev <ssuloev@orpaltech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 04:26:08PM +0530, Jagan Teki wrote:
> The MIPI DSI PHY controller on Allwinner A64 is similar
> on the one on A31.
>
> Add A64 compatible and append A31 compatible as fallback.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
> index 9877398be69a..d0ce51fea103 100644
> --- a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
> +++ b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
> @@ -38,6 +38,7 @@ D-PHY
>  Required properties:
>    - compatible: value must be one of:
>      * allwinner,sun6i-a31-mipi-dphy
> +    * allwinner,sun50i-a64-mipi-dphy, allwinner,sun6i-a31-mipi-dphy
>    - reg: base address and size of memory-mapped region
>    - clocks: phandles to the clocks feeding the DSI encoder
>      * bus: the DSI interface clock

And this one should be:

compatible:
  oneOf:
    - const: allwinner,sun6i-a31-mipi-dphy
    - items:
      - const: allwinner,sun50i-a64-mipi-dphy
      - const: allwinner,sun6i-a31-mipi-dphy

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
