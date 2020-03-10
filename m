Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AC9180806
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7JW/UGQ2QB42EpY2TcwHLVZIMQ/TW/FDabBgFdlrhg=; b=Ii3trFBXNkCozj
	isBtqHeXQTH3RwZ9cA9SNWHhye8C+tnyAbYYICcKaWX/Ai5DZbnoL8lz+z20HU4ewOO1CJyj/e6aD
	yJwq3PptuCwusXC2m5ZqEF3f/Itw31p5d4++AbrJgnax4/1AS9tNRWhkoIxGluOB3GjTqznAoLMfg
	CqYD42QR6bIZOQV5RaAqVUXP1tf59+FQHCUbw9GCrn1vHMRN0WnaYeBltsTvnHDoPxgJ0+J8IYKof
	34Kf/DW61WqEIxXKuUklCqY947BRboS38jZa25CxjJNeyPvkcuHTK+dbgd8qmJ7XyrHYXBc5IQHSF
	3fWpcI+Bar9AAGIyfJVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkZW-0000Xs-II; Tue, 10 Mar 2020 19:29:46 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBkZL-0000XH-Cr; Tue, 10 Mar 2020 19:29:36 +0000
Received: by mail-oi1-f194.google.com with SMTP id k21so8219712oij.5;
 Tue, 10 Mar 2020 12:29:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ti2DUsUootG5Bb/9jhB9jDTpr9Lf8fcuPShhiLFGbzM=;
 b=qLKyCqnSl3ad6T0dtsTDiSuKJy7sigIh8pIvEK+ZTjZOV/tnXVwRuIdyoKKKOTvh/B
 mzDaT1ucHsbIIG9832bdDgG+P6BaJALT0X6LErRfPzUGt7xQE9d1o8aRuKAfKNle6sF3
 UbxxYDK7WdlAuHBjM6XdGCD6kGPlkEeY6FdSS0zg9RGZIhV9SGBfb97cwR2f5lBlUAlD
 9UGm2ucKlGLGcpCKmbHraCZtkCzZy2FnE7whsLoQTc7SBTbCc2FvF+zAibk4ZrUu2hbs
 ocYZeJTyZBZbNPb7Cm/o00Co44VVW5zHhNCLzZecYRtT3XSohQ0R/ep5HLcby1PYDOci
 Ftuw==
X-Gm-Message-State: ANhLgQ19gB5PvZWWOs3C+JhWclSsitcOOcrvaeB0PWYN18f2pmnRdwB+
 CoJMK0YILbU/LVDntaJdNQ==
X-Google-Smtp-Source: ADFU+vsY5QkUJk3nxoCTdVDguFzMCTpu2klhELBPLKSw5lX4mSJAHDv7frNw6F1f7dVSVtDFZ845tw==
X-Received: by 2002:aca:e106:: with SMTP id y6mr2370120oig.131.1583868574471; 
 Tue, 10 Mar 2020 12:29:34 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 3sm16382764otd.15.2020.03.10.12.29.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:29:33 -0700 (PDT)
Received: (nullmailer pid 17778 invoked by uid 1000);
 Tue, 10 Mar 2020 19:29:33 -0000
Date: Tue, 10 Mar 2020 14:29:33 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: usb: dwc2: add compatible property for
 rk3328 usb
Message-ID: <20200310192933.GA15236@bogus>
References: <20200302115812.7207-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302115812.7207-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_122935_433967_538E13B5 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 12:58:11PM +0100, Johan Jonker wrote:
> A test with the command below gives these errors:
> 
> arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> 
> The compatible property for rk3328 dwc2 usb was somehow never added to
> the documention. Fix this error by adding
> 'rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2'
> to dwc2.yaml.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/dwc2.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
> index e95ba9373..e9f4cea21 100644
> --- a/Documentation/devicetree/bindings/usb/dwc2.yaml
> +++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
> @@ -41,6 +41,10 @@ properties:
>            - const: rockchip,rk3288-usb

Convert this entry to an 'enum' and add 'rockchip,rk3328-usb' here.

>            - const: rockchip,rk3066-usb
>            - const: snps,dwc2
> +      - items:
> +          - const: rockchip,rk3328-usb
> +          - const: rockchip,rk3066-usb
> +          - const: snps,dwc2
>        - const: lantiq,arx100-usb
>        - const: lantiq,xrx200-usb
>        - items:
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
