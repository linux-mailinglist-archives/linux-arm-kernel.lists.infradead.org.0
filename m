Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F61A707D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGWWsERVx4VgcR8nIVodfx0d+JNFV+mrdx8S1VE4jJQ=; b=qzc4ilPHMWxHzJ
	8jJVtNVUfRqLElzzAjgMmRSE1dQT23cPUPTlGD9go9XTnLNaqKBEkxPiRU3j9Q5qqxtZSJ0zW1892
	TYVGAHx70XRQZtD/qCPAV4QzHhZR0xskjL5hng9xi+MjGSGMn5fmk/VGBTeZJZQO0qa/yW/LUqWTI
	b9Ybhwe55shYYyzjC91svbq2MZKk6Q4ysnDzZ0WxCjZnd5YZYWkbpBaCeIZ5ftGAQ0rhAYPXt0G0p
	1rcVkwK8vkKoi2ulKT2ayQwCnekOc9MtuXklOgXKm3kZZiuYxCTV8jXYom28HnWTehnABNzn1VPJA
	aDTinmi3VPlOBW/jcDIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpcRO-0003UY-Id; Mon, 22 Jul 2019 17:49:38 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpcQh-0003U3-JN
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 17:48:57 +0000
Received: by mail-io1-f67.google.com with SMTP id k20so75811180ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 10:48:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CxrJ1h1Gj9qffdtw6gn6IuFX9kNT09jtgH+ckcJPTWk=;
 b=PMZETR8ktltwkExySofX0Yp9v0C+ZjizxNGwp+CB9x0ABbd118iTYZAcs91OqEZDVy
 QKoDu+J+EZYuULBiar1QfalMUG1ZXpoLakkY7SfzEvcpTQhWzhwM9UNDKLsYWzXdSF9V
 cGjWq77b2mPS09nafcotMlLB2eiDtRa8WyjQqeKAoqXSBRiLcafZzBxzFHUeEAAVRcoW
 xtowUO2pLCIVUXMUOoe6iNHNj1FNUOOpOyg1tuLluJ2Y43MWipV0E51gsrUyjOJDvRuJ
 QknezbJ/aSuh+ma7Gq6TBjBO1EK+NcmrOfmY0GOKusmuglAp4tkpvoEeOTXRzY2naHrK
 Aptg==
X-Gm-Message-State: APjAAAXriQEiUcZ48t2oUlFmvh3O49gE6ulOFOguXjj2RxGI980Epku/
 YZ6XoA9R/vxvTH308aL3jw==
X-Google-Smtp-Source: APXvYqw0FDve9Mw/vkxriVI+KvJ+PlrXuiZ8o2qd7ioxmjQY7NUFYzDL8hVPS4tO0BHR0p8241W5WA==
X-Received: by 2002:a02:90c8:: with SMTP id c8mr75947688jag.22.1563817734501; 
 Mon, 22 Jul 2019 10:48:54 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id c81sm62071726iof.28.2019.07.22.10.48.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 10:48:54 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:48:53 -0600
From: Rob Herring <robh@kernel.org>
To: Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [PATCH 05/10] dt-bindings: display: Add max-res property for mxsfb
Message-ID: <20190722174853.GA31795@bogus>
References: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
 <1561555938-21595-6-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561555938-21595-6-git-send-email-robert.chiras@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_104855_888997_48433399 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Marek Vasut <marex@denx.de>, Mark Rutland <mark.rutland@arm.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 04:32:13PM +0300, Robert Chiras wrote:
> Add new optional property 'max-res', to limit the maximum supported
> resolution by the MXSFB_DRM driver.

Bindings are for h/w description, not driver config.

> 
> Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
> ---
>  Documentation/devicetree/bindings/display/mxsfb.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mxsfb.txt b/Documentation/devicetree/bindings/display/mxsfb.txt
> index 472e1ea..55e22ed 100644
> --- a/Documentation/devicetree/bindings/display/mxsfb.txt
> +++ b/Documentation/devicetree/bindings/display/mxsfb.txt
> @@ -17,6 +17,12 @@ Required properties:
>  Required sub-nodes:
>    - port: The connection to an encoder chip.
>  
> +Optional properties:
> +- max-res:	an array with a maximum of two integers, representing the
> +		maximum supported resolution, in the form of
> +		<maxX>, <maxY>; if one of the item is <0>, the default
> +		driver-defined maximum resolution for that axis is used

I suppose what you are after is bandwidth limits? IIRC, there's already 
some bindings expressing such limits. Also, wouldn't you need to account 
for bpp and using the 2nd plane (IIRC that there is one).

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
