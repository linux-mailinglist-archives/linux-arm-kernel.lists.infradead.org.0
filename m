Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E8C15E4DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:38:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y56xdG/s60NsPw7upncIpBUqsc9qU7azjLhVn2/l2eU=; b=TaOEGjFV+s7IvF
	NXm7Wvi2U/vF9RDTuS3zwuqFg4Q73D/QylenHOgDDvAkyDa/pw/YtpDIPMa0CIp92YQzxW/jGPUVG
	7yIAXJ/Pf8DNAoyz/VHyHiN2pANyPCe4yw5n1zhnSkIObNTexq13yyLGO4kOSQ1HUvmzJiIKjXZMP
	Jre9UGsteTNonZi5aP8BglmWd1g16saLymiAfIGy7k69F9KfLyQTjdRfEElr9nlBeHvD1JSGe8cxE
	9g4b9csPgI/FxR1GnHzhxsBFmgSvG3qjsZ3XiaI5SyzIaK2q+fN1v3ilRaPg6tC7lEdc1vF//vGKV
	pwy2IqtmTIF9biFh1ooQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dzB-0007al-Ob; Fri, 14 Feb 2020 16:38:37 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dZc-0004Es-CN
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:12:15 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 34CB980477;
 Fri, 14 Feb 2020 17:11:58 +0100 (CET)
Date: Fri, 14 Feb 2020 17:11:56 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 2/4] dt-bindings: panel: lvds: Add properties for clock
 and data polarities
Message-ID: <20200214161156.GA18287@ravnborg.org>
References: <cover.b12a054012ce067fa2094894147f953ab816d8d0.1581682983.git-series.maxime@cerno.tech>
 <620a740cec4186177ce346b092d4ba451e1420dc.1581682983.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <620a740cec4186177ce346b092d4ba451e1420dc.1581682983.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=Tpc6Fu3lJ6wmHEW927AA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_081213_622214_EEA2402A 
X-CRM114-Status: GOOD (  21.61  )
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
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime.

On Fri, Feb 14, 2020 at 01:24:39PM +0100, Maxime Ripard wrote:
> Some LVDS encoders can support multiple polarities on the data and
> clock lanes, and similarly some panels require a given polarity on
> their inputs. Add a property on the panel to configure the encoder
> properly.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Not a fan of this binding...
In display-timing.txt we have a specification/description of
the panel-timing node.

The panel-timing node already include information such as:
- hsync-active:
- vsync-active:
- de-active:
- pixelclk-active:
- syncclk-active:

But clock-active-low and data-active-low refer to the bus
more than an individual timing.
So maybe OK not to have it in a panel-timing node.
But then it would IMO be better to include
this in the display-timing node - so we make
this available and standard for all users of the
display-timing node.

I will dig up my patchset to make proper bindings for panel-timing and
display-timing this weeked and resend them.
Then we can discuss if this goes on top or this is specific for the
lvds binding.


> ---
>  Documentation/devicetree/bindings/display/panel/lvds.yaml | 10 ++++++++-
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/lvds.yaml b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> index d0083301acbe..4a1111a1ab38 100644
> --- a/Documentation/devicetree/bindings/display/panel/lvds.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> @@ -90,6 +90,16 @@ properties:
>        CTL2: Data Enable
>        CTL3: 0
>  
> +  clock-active-low:
> +    type: boolean
> +    description: >

Should this be "|" and not ">"?
Did this pass dt_binding_check?

> +      If set, reverse the clock polarity on the clock lane.
This text could be a bit more specific. If this is set then
what?
And it seems strange that a clock is active low.
For a clock we often talk about raising or falling edge.

> +
> +  data-active-low:
> +    type: boolean
> +    description: >
Same comment with ">"

> +      If set, reverse the bit polarity on all data lanes.
Same comment about a more explicit description.


	Sam


>    data-mirror:
>      type: boolean
>      description:
> -- 
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
