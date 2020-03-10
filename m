Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DDC180783
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:56:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9oJsYKAbYuzZyss84vbCpEFmqnTXjTwfxeJMRFVXUs=; b=i43iyAG+fypX1h
	Xb477471YEmkLuP1U/VZxEKyfHuNqhCprB/xowPkB5NEDoj7l/34vaNuIbKgYogRiNY1Pn71YSh0v
	AE0nD0y1BhehQJcB3XnuZs/OZZAe7BilC8abZnXMAw0WW53YloKOTtMRkQJARLQNp18RDEDSsy7u6
	ligk4ajLlnfrcs3ZoXaZ/U8YZI7xSp9E5YWvxxLawWjEw3igirKL3kVlMC9/j3c75D+wC1j8kDINC
	cgsJyB+H3UoBqWZyQYHTgpjfU33Mr/VojyBiw/E+RkXhhPBd0W85imgzFo7i3GRjRAWnU93u3NZRm
	XFRtX+4ORZ8PtrgQBRyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBk3W-0003sL-Tk; Tue, 10 Mar 2020 18:56:42 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBk3N-0002Wb-Pc
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 18:56:35 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 9B0DF804FE;
 Tue, 10 Mar 2020 19:54:24 +0100 (CET)
Date: Tue, 10 Mar 2020 19:54:23 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Pascal Roeleven <dev@pascalroeleven.nl>
Subject: Re: [PATCH 1/2] drm/panel: Add Starry KR070PE2T
Message-ID: <20200310185422.GA22095@ravnborg.org>
References: <20200310102725.14591-1-dev@pascalroeleven.nl>
 <20200310102725.14591-2-dev@pascalroeleven.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310102725.14591-2-dev@pascalroeleven.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=SYmV4DkvhPPEfb4SR88A:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_115634_192472_583AEEB9 
X-CRM114-Status: GOOD (  23.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pascal.

Thanks for submitting.

On Tue, Mar 10, 2020 at 11:27:23AM +0100, Pascal Roeleven wrote:
> The KR070PE2T is a 7" panel with a resolution of 800x480.
> 
> KR070PE2T is the marking present on the ribbon cable. As this panel is
> probably available under different brands, this marking will catch
> most devices.
> 
> Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>

A few things to improve.

The binding should be a separate patch.
subject - shall start with dt-bindings:
Shall be sent to deveicetree mailing list.

For panel we no longer accept .txt bindings.
But the good news is that since the panel is simple,
you only need to list your compatible in the file
bindings/display/panel/panel-simple.yaml
- must be en alphabetical order
- vendor prefix must be present in vendor-prefixes



> ---
>  .../display/panel/starry,kr070pe2t.txt        |  7 +++++
>  drivers/gpu/drm/panel/panel-simple.c          | 26 +++++++++++++++++++
>  2 files changed, 33 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/starry,kr070pe2t.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/starry,kr070pe2t.txt b/Documentation/devicetree/bindings/display/panel/starry,kr070pe2t.txt
> new file mode 100644
> index 000000000..699ad5eb2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/starry,kr070pe2t.txt
> @@ -0,0 +1,7 @@
> +Starry 7" (800x480 pixels) LCD panel
> +
> +Required properties:
> +- compatible: should be "starry,kr070pe2t"
> +
> +This binding is compatible with the simple-panel binding, which is specified
> +in simple-panel.txt in this directory.
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index e14c14ac6..027a2612b 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2842,6 +2842,29 @@ static const struct panel_desc shelly_sca07010_bfn_lnn = {
>  	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
>  };
>  
> +static const struct drm_display_mode starry_kr070pe2t_mode = {
> +	.clock = 33000,
> +	.hdisplay = 800,
> +	.hsync_start = 800 + 209,
> +	.hsync_end = 800 + 209 + 1,
> +	.htotal = 800 + 209 + 1 + 45,
> +	.vdisplay = 480,
> +	.vsync_start = 480 + 22,
> +	.vsync_end = 480 + 22 + 1,
> +	.vtotal = 480 + 22 + 1 + 22,
> +	.vrefresh = 60,
> +};

Please adjust so:
vrefresh * htotal * vtotal == clock.
I cannot say what needs to be adjusted.
But we are moving away from specifying vrefresh and want the
data to be OK.

> +
> +static const struct panel_desc starry_kr070pe2t = {
> +	.modes = &starry_kr070pe2t_mode,
> +	.num_modes = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 152,
> +		.height = 86,
> +	},
> +};

For this part specifying the connector type is today mandatory.
And please investigate if you can be more precise concerning
bus_format, flags, etc.
See also what other panels do in the same file.

	Sam


> +
>  static const struct drm_display_mode starry_kr122ea0sra_mode = {
>  	.clock = 147000,
>  	.hdisplay = 1920,
> @@ -3474,6 +3497,9 @@ static const struct of_device_id platform_of_match[] = {
>  	}, {
>  		.compatible = "shelly,sca07010-bfn-lnn",
>  		.data = &shelly_sca07010_bfn_lnn,
> +	}, {
> +		.compatible = "starry,kr070pe2t",
> +		.data = &starry_kr070pe2t,
>  	}, {
>  		.compatible = "starry,kr122ea0sra",
>  		.data = &starry_kr122ea0sra,
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
