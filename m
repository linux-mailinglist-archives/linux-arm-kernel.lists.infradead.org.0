Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EF3736ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 20:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/KKjLkGJ6rnk2qZHdpTP7c/lQR2f9Q/W5h2ofb2b6E=; b=Ja33eVsY8qRY9f
	f5UL60WHmKXuRBsWANm1tKinugInVc4aJh3nB2PUnZwNYyVqFPiQfc1louP7aJrC/rHiHFx29PoB3
	A8PXkMMzEQj3AlfG/3Ip0mEuPqMIse1H+GJBuq5CFzJfh9b/6/c9jZ/QcLjUeSYweV5LA9VZJ+HDD
	KKaOPV5NKvoxqab5SbZlFPJg5ZcdPZWGfdGPpn7XOPkR0r0i5iWBiOAlPZnlqAbrtT2w26WCQVI7N
	szuMcGhVoi7hLqLyEcFLyuCVPpbsE1g7iqZt9qx1LjJ66BOtXaUSgJi+gtyJRskwIflvL4FIhdd3q
	o7LzOsLrKjKbQjbUonxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMMz-0005si-EQ; Wed, 24 Jul 2019 18:52:09 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMMn-0004XR-Er
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 18:51:59 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id AA94E80622;
 Wed, 24 Jul 2019 20:49:44 +0200 (CEST)
Date: Wed, 24 Jul 2019 20:49:43 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/2] drm/pl111: Deprecate the pads from the DT binding
Message-ID: <20190724184943.GA22640@ravnborg.org>
References: <20190724134959.2365-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724134959.2365-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=ynT33n6li-2ytY4JJ7wA:9
 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22 a=a-qgeE7W1pNrGK8U0ZQC:22
 a=AjGcO6oz07-iQ99wixmX:22 a=cvBusfyB2V15izCimMoJ:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_115157_683488_34617C3C 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Pawel Moll <pawel.moll@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus.

On Wed, Jul 24, 2019 at 03:49:58PM +0200, Linus Walleij wrote:
> The pads were an earlier workaround for the internal image
> pipeline in the Linux fbdev subsystem. As we move to generic
> definition of display properties and drivers that no longer
> need this to work, deprecate this property.
> 
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Pawel Moll <pawel.moll@arm.com>
> Cc: Liviu Dudau <Liviu.Dudau@arm.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Acked-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  Documentation/devicetree/bindings/display/arm,pl11x.txt | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/arm,pl11x.txt b/Documentation/devicetree/bindings/display/arm,pl11x.txt
> index 572fa2773ec4..3f977e72a200 100644
> --- a/Documentation/devicetree/bindings/display/arm,pl11x.txt
> +++ b/Documentation/devicetree/bindings/display/arm,pl11x.txt
> @@ -39,9 +39,11 @@ Required sub-nodes:
>  
>  - port: describes LCD panel signals, following the common binding
>  	for video transmitter interfaces; see
> -	Documentation/devicetree/bindings/media/video-interfaces.txt;
> -	when it is a TFT panel, the port's endpoint must define the
> -	following property:
> +	Documentation/devicetree/bindings/media/video-interfaces.txt
> +
> +Deprecated properties:
> +	The port's endbpoint subnode had this, now deprecated property
> +	in the past. Drivers should be able to survive without it:
>  
>  	- arm,pl11x,tft-r0g0b0-pads: an array of three 32-bit values,
>  		defining the way CLD pads are wired up; first value
> @@ -80,7 +82,6 @@ Example:
>  		port {
>  			clcd_pads: endpoint {
>  				remote-endpoint = <&clcd_panel>;
> -				arm,pl11x,tft-r0g0b0-pads = <0 8 16>;
>  			};
>  		};
>  
> -- 
> 2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
