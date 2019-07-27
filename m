Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20E177832
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 12:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUNhttH57RzltWc9wj86uaNCVWrqLKc5GaO3xMW5xuQ=; b=gDSwLV4slK5VeC
	c6aWOkJ0zmpwUqvb7Fxqcak/Ko/cLOVlZ1OOPdbKLnSd4jPMQfh6zXvMWx0DK9zZKWmSCaH9ys4WZ
	gQpw3BCvfnQwQf1bIx14xiByDWQS/lmcMcAXVElzkjHjrEdC2DgPioo80vCyNAxVeMnD7cuhtfoRF
	Z2XgqP/N7RvPV0LrdaHP5/yvbfUtxoe4P/PbqBMOsD3kbFv7JYtuLwEAUDo2ULbxsPGyU/u0Fb6oO
	G0WwDobkcdCUGFPaSevAA6NLC1gctiMcwM5MOJqyJ/zB5/iA9zJlv85AVzPkrN4UcUS8bDnEIBV4m
	yZoYtKOa1YXq82ewvkFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrK9b-0003xP-LX; Sat, 27 Jul 2019 10:42:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrK9U-0003wo-OG
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 10:42:14 +0000
Received: from localhost (lfbn-1-17239-195.w86-248.abo.wanadoo.fr
 [86.248.61.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A75412081B;
 Sat, 27 Jul 2019 10:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564224132;
 bh=UybUBfvBzantNilF1ZV5JV3PyFP6cC+3I7g4mp/0Vs4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=00/f/PUT34J5BgZ+rLwXSfqsj5XcE78vGy7ynsIP/f4bC0MHNKmzwuEF0Y8p3N9J3
 nBtBbQUYEp76+3k7yx5HnGEOF+2ZE3kryIwYjPEYrOlqXXs+YiygKeXy9/THIpEfuq
 KiCEJ8Lst82KuOp9FenkqubRmon4DGdyT/0NS180=
Date: Sat, 27 Jul 2019 12:42:08 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/6] dt-bindings: pwm: allwinner: Add H6 PWM description
Message-ID: <20190727104208.my62iypgwjy5pkxz@flea.home>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-2-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726184045.14669-2-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_034212_808989_70340441 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 wens@csie.org, thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Jul 26, 2019 at 08:40:40PM +0200, Jernej Skrabec wrote:
> H6 PWM block is basically the same as A20 PWM, except that it also has
> bus clock and reset line which needs to be handled accordingly.
>
> Expand Allwinner PWM binding with H6 PWM specifics.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 36 ++++++++++++++++++-
>  1 file changed, 35 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> index 0ac52f83a58c..deca5d81802f 100644
> --- a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> +++ b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> @@ -30,13 +30,47 @@ properties:
>        - items:
>            - const: allwinner,sun50i-h5-pwm
>            - const: allwinner,sun5i-a13-pwm
> +      - const: allwinner,sun50i-h6-pwm
>
>    reg:
>      maxItems: 1
>
> -  clocks:
> +  # Even though it only applies to subschemas under the conditionals,
> +  # not listing them here will trigger a warning because of the
> +  # additionalsProperties set to false.
> +  clocks: true
> +  clock-names: true
> +  resets:
>      maxItems: 1
>
> +allOf:
> +  - if:

There's only one condition, so you don't really need the allOf.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
