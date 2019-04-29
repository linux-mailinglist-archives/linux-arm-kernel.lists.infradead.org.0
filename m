Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70F7ECBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 00:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlUmvmuwA0Np6zCVj+p/wV9NzfuU1LGVsuEyeKu3npk=; b=U2elW6hsl3nx1k
	WSo2POU5MTnsKMxYepq5C7moeuRkET0zjhUrdWhOmQ4FI4gPAkB81dpCuq1GbDH8ooY7PKtwcqn6P
	uxkI/UwnFX5u5WPP3Oo9PkXP6QBdDjNxhUjUCd8busDYdNUtW+LUWzFaYWUiGr+2u/xNI7KFPmfBe
	C9rQzMniuWtO61F/iay4nGDBibYhyrzLu42aWy8OxBdcQixE7e/9yG7DFnh70wHc1EZo3DJr9zq0l
	AivJ+I1RrFobdOLvOKyOAI5CEvql79tmWEeHZ6NjATaqq5HTuAo0PpTX9a7rEiR4mGSNvn4BJOJ8S
	OSvULYnLVq77SwScejxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLEjg-0004oN-Ik; Mon, 29 Apr 2019 22:26:56 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLEjZ-0004nh-3z; Mon, 29 Apr 2019 22:26:50 +0000
Received: by mail-ot1-f65.google.com with SMTP id r20so9038619otg.4;
 Mon, 29 Apr 2019 15:26:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oRenui5Af25LDBg0th7gwZb/BUZtc0JZI0y66saQTqM=;
 b=En7q1Wi1EBcHlN4f5C2wTB8NcbuMdNLKfZDf8OFG5Ownowz9ijAV5ptWscVDVudoGi
 LijBJKMXpk/B7xyM60bKkhy5G1bgpI6Ur9o0ufagGd9xTATw3PJl9wKO4Y9Oq2FtJS6w
 WvDuq0gaixw0kLiURng3r+4vH/IDjbJqoogL1EfQbraLdGdkwL1+TntLNkaTnvuO7ah3
 TFT0bP3Rargcqi8kcEatdUlD3EWkyzGh3vtq4e0R/xAgvqhVirK8X6SdaqHIC/MBqtJT
 uH9dzCq5jBPea16sexUqhF4tUx0XwfdUUGBwYVIz1wozyi4457tqzA0gPUYSkmF7UmJz
 wf9A==
X-Gm-Message-State: APjAAAVMm0xefDAtE4BTIBMORlaV2TObQh0lI7mNvc3C2AMaaoZgQKEW
 uCDC4EfkZxuKrGFKd9KQcg==
X-Google-Smtp-Source: APXvYqwld5ffy3XYYJumXMPmkKQz5Gc5XST2UIO1EEhtfK4zl1hJZzjNCevWVUbeRLAFuTl7ew5iqw==
X-Received: by 2002:a9d:6397:: with SMTP id w23mr274180otk.332.1556576807861; 
 Mon, 29 Apr 2019 15:26:47 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j82sm14504482oih.31.2019.04.29.15.26.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 15:26:46 -0700 (PDT)
Date: Mon, 29 Apr 2019 17:26:46 -0500
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [v2 1/3] dt-bindings: display: mediatek: update dsi supported
 chips
Message-ID: <20190429222646.GA20752@bogus>
References: <20190416054217.75387-1-jitao.shi@mediatek.com>
 <20190416054217.75387-2-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190416054217.75387-2-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_152649_162345_05FE519C 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com,
 Ajay Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki Dae <inki.dae@samsung.com>,
 linux-mediatek@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Kumar Gala <galak@codeaurora.org>,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 16, 2019 at 01:42:15PM +0800, Jitao Shi wrote:
> Update device tree binding documentation for the dsi for
> Mediatek MT8183 SoCs.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dsi.txt       | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> index fadf327c7cdf..bd68195458b9 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> @@ -26,7 +26,7 @@ The MIPI TX configuration module controls the MIPI D-PHY.
>  
>  Required properties:
>  - compatible: "mediatek,<chip>-mipi-tx"
> -  the supported chips are mt2701 and mt8173.
> +  the supported chips are mt2701 , mt8173 and mt8183.

drop the space                     ^

With that,

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
