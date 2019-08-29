Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D51B1A2743
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 21:26:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1YvpL7eHnbKa0sKjkiYbeEmIy/Tpcm+ofgDa6Mj1Ugg=; b=GeULTjUUtqz1M9
	9JQHAq8Ar1eXa1olaRnHQIPiMmnLd8Y05BJy6GguZW0w5ymoISLaIIV9B01iPJ+q4O2TwL2e1TYOT
	2Y8xVRSUmZQ0X5WJ0NaQuf7O87gTe9CyFU1BIMIhdMxzysvDxY4d7HKrHwXYRbsm2D5w293tuCJhi
	+wLNfNh3iXuPGk6YAt65xG2RWZP9OJsdkGWO4NR2Gahs7mc3u3mmDc1omgfTBflmBpbdq7cMViD9c
	TJ0F0CkdrZE5XKyybKbwG0Vy13COrQfSP25sQLtrb5xCWpuKE/z+/Bw9bW1hv6FzSCViRC67/7hk3
	VcSFmEU2oAZacGaOlWfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Q3W-0001Hh-Rd; Thu, 29 Aug 2019 19:26:02 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Q3M-0001HD-9K; Thu, 29 Aug 2019 19:25:53 +0000
Received: by mail-oi1-f195.google.com with SMTP id a127so3490128oii.2;
 Thu, 29 Aug 2019 12:25:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lZ2BYe42I9MJ0wayu5k+436nxyRI7BnkkEeIXJqYPPY=;
 b=pUVZ4mmObUUVEGu9cJ9TaAOStLSdmLZgMs2dqHWQIkrgx3Z4eRnwWmyYZX/M1IrrYV
 QeelKj6aV2KE7VzOf4SWGN5tDcOoTFNwIXfC6ZGJ+3aa+TDpuIh4JSE/UTo5aBDnKdUh
 O5/x1ttdF3BNUeK6ysoxm3JsKSI7jJK1KbWeOE8UxEZX+ctHQVUQ1DQO0NvJfPvZhrMJ
 xKc/M8/uf2yQ5OAfhiwfltJD+Y8lxw+9TLwAaOB5CencO3C3a9+2u4CZkKK5ZoeslcGf
 vLj2BxFGJjV7/LDHLtZX0HW7IPrnUlm5zSdjEbHwtOqH9hF8vDnD0khm65uRCyeDng/+
 rk0w==
X-Gm-Message-State: APjAAAVm20AGgg9cvXsUg8Vqz9iqQ+e9Vsvh8O57rF9tbOH/6OXPc5Mh
 83GxOiGYJ/TIaIj38Se2Ww==
X-Google-Smtp-Source: APXvYqxg9o4u0friAhLIFb1wO376me4+33exQL8RzM7lAtGBzLxeG67AR60+ryEQemuydVobqBKytA==
X-Received: by 2002:a54:4893:: with SMTP id r19mr7711912oic.91.1567106751513; 
 Thu, 29 Aug 2019 12:25:51 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z26sm839164oih.16.2019.08.29.12.25.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 12:25:51 -0700 (PDT)
Date: Thu, 29 Aug 2019 14:25:50 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 02/11] dt-bindings: phy-mtk-tphy: make the ref clock
 optional
Message-ID: <20190829192550.GA29881@bogus>
References: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
 <a31d78484b64f853a16e7dcb16fae9fc0de45ebb.1566542696.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a31d78484b64f853a16e7dcb16fae9fc0de45ebb.1566542696.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_122552_328143_84E8B353 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 03:00:09PM +0800, Chunfeng Yun wrote:
> Make the ref clock optional, then we no need refer to a fixed-clock
> in DTS anymore when the clock of USB3 PHY comes from oscillator
> directly
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  .../devicetree/bindings/phy/phy-mtk-tphy.txt        | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> index d5b327f85fa2..1c18bf10b2fe 100644
> --- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> +++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> @@ -34,12 +34,6 @@ Optional properties (controller (parent) node):
>  
>  Required properties (port (child) node):
>  - reg		: address and length of the register set for the port.
> -- clocks	: a list of phandle + clock-specifier pairs, one for each
> -		  entry in clock-names
> -- clock-names	: must contain
> -		  "ref": 48M reference clock for HighSpeed analog phy; and 26M
> -			reference clock for SuperSpeed analog phy, sometimes is
> -			24M, 25M or 27M, depended on platform.
>  - #phy-cells	: should be 1 (See second example)
>  		  cell after port phandle is phy type from:
>  			- PHY_TYPE_USB2
> @@ -48,6 +42,13 @@ Required properties (port (child) node):
>  			- PHY_TYPE_SATA
>  
>  Optional properties (PHY_TYPE_USB2 port (child) node):
> +- clocks	: a list of phandle + clock-specifier pairs, one for each
> +		  entry in clock-names
> +- clock-names	: may contain
> +		  "ref": 48M reference clock for HighSpeed anolog phy; and 26M
> +			reference clock for SuperSpeed anolog phy, sometimes is
> +			24M, 25M or 27M, depended on platform.

How do you know the frequency when it is not present?

> +
>  - mediatek,eye-src	: u32, the value of slew rate calibrate
>  - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
>  - mediatek,eye-term	: u32, the selection of HS_TX TERM reference voltage
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
