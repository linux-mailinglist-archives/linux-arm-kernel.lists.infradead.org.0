Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8F115D803
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 14:11:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yDf/SgzxSH+VqnS6SnKe+IQSu62E4yJxdFFSpywLl4s=; b=TXUpEwCkCDD5m4
	gJfgjNdf4fLQS7NJrcmyRZIJo+8FwsUw9UyH9RotIrbTisMlAtR2uYNHIJlLc+IuTrels1MkqOHeA
	yEuVAwbD9uPi1PkZyaBRvxHwBECGYFdpV82yvSsp7+S1DKkTq9AuzJ2osgB2tnGJX3iJjGWJiRkor
	b5VMBx7V9tQzBd+d/IVMklE/Nq7swCM8mMVYYMzBWJZ+/f2Bd5jlOTY3uNPlVDoSFcHh8HxkYvSt+
	fXhdUOR8FgA9eXiaj6lntq52VOWxgac1xU4aEPsslHutSHdgbGfF8G1/XeUUl2ff5dojUrdP0GpqO
	c9RFkNtoJL4MCFCMGWVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2akP-0005gU-L9; Fri, 14 Feb 2020 13:11:09 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2akG-0005fS-SP
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 13:11:02 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 14E04504;
 Fri, 14 Feb 2020 14:10:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1581685843;
 bh=VBpnQBYrhS7rjLikkevn4VY+OoeRpTZ17mrFu2uIFkI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eSnObmA8eOFh0K2ebyyFg+LI6qet1ihcffdb8byKZ4v3oU0wkEJkF1+nyihZHhzPF
 2aQO2wtxyIkrz7RpgrddgUxhajY3HmSd7DzXCCmtAi+tsXM7UNLi8Ua4qHCz5/QJL7
 WikTXkvV1tNladGZ7HpnTfDjaHvHH23z/gPwEcRQ=
Date: Fri, 14 Feb 2020 15:10:25 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/2] dt-bindings: display: sun4i-tcon: Add LVDS Dual Link
 property
Message-ID: <20200214131025.GI4831@pendragon.ideasonboard.com>
References: <20200214123244.109300-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214123244.109300-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_051101_066638_C7D5EEAF 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

Thank you for the patch.

On Fri, Feb 14, 2020 at 01:32:43PM +0100, Maxime Ripard wrote:
> SoCs that have multiple TCONs can use the two set of pins on the first TCON
> to drive a dual-link display. Add a property to enable the dual link.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/display/allwinner,sun4i-a10-tcon.yaml         | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> index 86ad617d2327..aa6dd8409dbc 100644
> --- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> +++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> @@ -105,6 +105,13 @@ properties:
>          - const: edp
>          - const: lvds
>  
> +  allwinner,lvds-dual-link:
> +    type: boolean
> +    description: |
> +      On a SoC with two TCON with LVDS support, the first TCON can
> +      operate over both pins sets to output in a dual-link setup. This
> +      will be triggered by setting this property.

Could you maybe provide an example of how this property is supposed to
be used ? I'm especially wondering what ports are used in that case and
how they're connected.

> +
>    ports:
>      type: object
>      description: |

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
