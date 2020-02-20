Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CA8165F4B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:56:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Br55E2+E15hbREoz+/oL25ainqdGq22l0nN36Jo19Kk=; b=FS70FINogcCNvJ
	6nGs3b05D11XgTS8MUDbAvQ2dz98GSMJnPY7xksRaFedubZqF7rdi7VmxaEna8zFOgKqqApDqYDQm
	9c02960GFDkubv63fvGea2p8MFYakac48m8i+NWNXjXeVY4g92FR+dgGu3e9dnd6mMrJi8qBjTdiB
	mw8Dt7SznOGebLYbeNPpi33UStdAy2DxDsSvsRWGG3nre7w+4PbO4zsPfaU8uaMDBdQpF/M8+BKXj
	nXr8Q9fGjfZFfWFSWeDJwBAogpv6A3vwwuDBhTIeAS+J263pwxHMEjOWPA2/DYAUhosdNRmbCw9Kv
	TNbjW9A9WVkNAyw1zoGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4mJg-0002xA-U6; Thu, 20 Feb 2020 13:56:36 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4mJY-0002wi-QC
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 13:56:30 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 00863563;
 Thu, 20 Feb 2020 14:56:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1582206987;
 bh=fS/fytwG43CdjsxlrKwyLy72e8UkFB5BR+sLI3UWwXU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W5FNfu7l+ymTMPY17vWHzDhXfLLoXinAjW4PJ2IrNywZ5n+Hx5CM8TpQUVhCP/8GT
 WbrB4Ka0Ckk2wbkDD1nrDUGNAnhPwZKb1+GG5DqK2PTR6cYVKx3B4kUBWaQWJMPAZK
 g9+T5ty5KwOxJnwD+nIUgmQgZtBQSdr1O0gHq2bM=
Date: Thu, 20 Feb 2020 15:56:08 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH 3/6] dt-bindings: Add Guangdong Neweast Optoelectronics
 CO. LTD vendor prefix
Message-ID: <20200220135608.GE4998@pendragon.ideasonboard.com>
References: <20200220083508.792071-1-anarsoul@gmail.com>
 <20200220083508.792071-4-anarsoul@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220083508.792071-4-anarsoul@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_055628_995564_B7CD9DDD 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Chen-Yu Tsai <wens@csie.org>, Icenowy Zheng <icenowy@aosc.io>,
 Stephan Gerhold <stephan@gerhold.net>, Jonas Karlman <jonas@kwiboo.se>,
 Torsten Duwe <duwe@suse.de>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vasily,

Thank you for the patch.

On Thu, Feb 20, 2020 at 12:35:05AM -0800, Vasily Khoruzhick wrote:
> Add vendor prefix for Guangdong Neweast Optoelectronics CO. LTD
> 
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 6456a6dfd83d..a390a793422b 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -665,6 +665,8 @@ patternProperties:
>      description: Nexbox
>    "^nextthing,.*":
>      description: Next Thing Co.
> +  "^neweast,.*":
> +    description: Guangdong Neweast Optoelectronics CO., LT

Google only returns two hits for this name, beside the ones related to
this patch series. Are you sure this is the correct company name ?

>    "^newhaven,.*":
>      description: Newhaven Display International
>    "^ni,.*":

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
