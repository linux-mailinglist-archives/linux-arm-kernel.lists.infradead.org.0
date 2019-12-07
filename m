Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F74B115DB1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 18:14:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5YxaKfsQK9tplZ0+Xh7mVG88FHuNnA3WjFKHPuaq+I=; b=tVae9mMRmH/qzO
	2s621+qB9X1+EoxcX+J+/m/2e5+YEdU/UAF163WMPhniUbOBP4+JuuYUtIeXPIbNJ8nqMGsolerqG
	j6e0zzM8i2jHKJqoZqtSqh1h0HvtuDC6PCW6WiM0n4EYHA5Ey2FrBAfQqy6TAWL6aiT5rUsl72TWX
	hWOdE5DBWZpTCYzXKsv3A6pYg/1D+4lDIAZJdoxqsVszxVLJl1yJCEFFdFBJs8vKuzfXeAg7H7SIm
	+z3MwLISloQpBFYWQcSWaE7E0HULbzAUMfIi+jbxbVxN2fM7ccx/A3jMuIMwiFcuq6ZMwpwLWsAV0
	9YUkVVTKDBZknTaayxQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iddeT-0004I6-9d; Sat, 07 Dec 2019 17:13:53 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iddeG-0004HM-UW
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Dec 2019 17:13:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so11314901wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Dec 2019 09:13:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jR3SyHBUEWSPjBlDW1LeGn/KYMF0y8nruNnoz/13mkQ=;
 b=AFL2+H+B1H0cUjM21DoS+EbPmSeWc+tVjHWCByl0XnHympdA1FNb5GilbogW6Vp6k8
 /0v51aHKBg9h7alJHCY9O0Pyv8JakfMZMXWW+ay7kMm8HztvZcuwFHeYDwih1eOF0MXe
 LUmrdjAIh3/bCLzXYh+/IISmwzaajZ0NH9T1nrmHIkS94ijrr/ua1fh0HO0tepKh4kWz
 Ox0GKA4bkAHKiUulETJQrkXORtnNCIqUj+Y3CgDM11nemud34mfxSKzApX6atyLiVkm4
 Zn3qp9eqjSvlcSFc8xZe8GDFW9fFR/8h5iMxkOawmFJfO92rH1hoIFbXuyB8seCGv41z
 MgnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jR3SyHBUEWSPjBlDW1LeGn/KYMF0y8nruNnoz/13mkQ=;
 b=T3GUejzd/W1bdVQHK8jfzkdrWfgMLmiDsdJa3RXUWPO8qjcCR52YIz2JsTVBAif06X
 2Y+qH8hsvk5cch1giUCcNpxPt2twgjxIwSpBSwMVte67GMLWkut+/8qX+HdFjH8bHhA1
 OhyKPyW4n/ULwpND2ogHas+u0grz7+z+LuvF9cwreQkrJB9F/IGKhZl1QjgLF2QyKvMI
 QqLLoPHYZ7MYMqcFMRYfYd7yvA0jrCK8eIlfNwb6xTDutalE7Xs1ilrT0GJLMIYjkGjx
 JtAGh7YiXiTX2cCwRNnxEWbzP+95HaNUYf8S52J3GT0xsp6Y3u2u7mteSkNd6RJ5M4MM
 TkKw==
X-Gm-Message-State: APjAAAVOfZpdFJoAKa8VvMywzk1mxhZ8NIFggkJdUul+PgY9FpqPUSTm
 1aAutrXr4hJvWhq2TGvw5mfyNQ==
X-Google-Smtp-Source: APXvYqzzT6cpEXbdQzFCSXPWWrCMrulA7XTI6/VFmEaL73RKZUx/P2+UHqPR7ey6iRNw14U/hJqzAA==
X-Received: by 2002:a5d:6350:: with SMTP id b16mr22200705wrw.132.1575738816490; 
 Sat, 07 Dec 2019 09:13:36 -0800 (PST)
Received: from netronome.com (fred-musen.rivierenbuurt.horms.nl.
 [2001:470:7eb3:404:a2a4:c5ff:fe4c:9ce9])
 by smtp.gmail.com with ESMTPSA id 2sm21102237wrq.31.2019.12.07.09.13.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 09:13:35 -0800 (PST)
Date: Sat, 7 Dec 2019 18:13:34 +0100
From: Simon Horman <simon.horman@netronome.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] ARM: dts: Cygnus: Fix MDIO node address/size cells
Message-ID: <20191207171333.GD26173@netronome.com>
References: <20191206181909.10962-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206181909.10962-1-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_091340_985728_5A5B8D08 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, grygorii.strashko@ti.com,
 Scott Branden <sbranden@broadcom.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Eric Anholt <eric@anholt.net>, robh+dt@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 rafal@milecki.pl, davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 10:19:09AM -0800, Florian Fainelli wrote:
> The MDIO node on Cygnus had an reversed #address-cells and
>  #size-cells properties, correct those.
> 
> Fixes: 40c26d3af60a ("ARM: dts: Cygnus: Add the ethernet switch and ethernet PHY")
> Reported-by: Simon Horman <simon.horman@netronome.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Thanks Florian,

this looks good to me.

Reviewed-by: Simon Horman <simon.horman@netronome.com>

> ---
>  arch/arm/boot/dts/bcm-cygnus.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/bcm-cygnus.dtsi b/arch/arm/boot/dts/bcm-cygnus.dtsi
> index 2dac3efc7640..1bc45cfd5453 100644
> --- a/arch/arm/boot/dts/bcm-cygnus.dtsi
> +++ b/arch/arm/boot/dts/bcm-cygnus.dtsi
> @@ -174,8 +174,8 @@
>  		mdio: mdio@18002000 {
>  			compatible = "brcm,iproc-mdio";
>  			reg = <0x18002000 0x8>;
> -			#size-cells = <1>;
> -			#address-cells = <0>;
> +			#size-cells = <0>;
> +			#address-cells = <1>;
>  			status = "disabled";
>  
>  			gphy0: ethernet-phy@0 {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
