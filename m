Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9547CFD27
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+pp0LglQEorWWAOuhvk8YYEBW3XSULaWjJwS3+JHDE=; b=PXIvujiwZgWK7n
	6Vu/4qJ7bW19KiJBCJBbow+HDI+V7h0ysOPhvCe8KzECoHe7IdyP1t7u6PWysiEUHXjvgZKY4yryz
	cnWdqO69pFDFfKvtuJfyr9motiKhEZJXwvXam3mD576/NW28sfr5XxH7gTe9i8J0Wno6NFVGzcgSf
	wOtUGOQkjJh1S/Cc3iy2LfxG2yIliRVTmwM8OFG6Vz5qyNNfQHI00+uq2PaU2wmSMOubGjpySxMMS
	B9JVpIbuka0Y0tu+IvGI6PEFrHXtk+3Y+i0UZXXIwFxqlNH9NCQmTmTyKu9LvagDv6CRWWlOHmRRE
	msmsdjK9U4XzQQibBXcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHr3z-0001i1-O2; Tue, 08 Oct 2019 15:06:11 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHr3o-0001gP-Ti
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:06:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id q5so10895410pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=tzsRg9pgEa9ifvg41ObkDkwx5TvwMyRk1wxFJpblvlg=;
 b=G8uczl3RULQcRPZNuuCGSUomb/snylYiJ6arGsUloQ3Wa2+dSUqI/YENI2cilQPHq+
 eA3+zmXi0bCaRtlqrEy+DS9RnTMUiUNxO7mtjIW0Oiv+ayXsEwyO1XyYkZs+MHOgW5wu
 oo7eY39CvJcRKrVWmog/2bO2uGO+77/Ey6dQDwRu2cePnp97SenCamFTlNwEhPwdn30b
 eKObB9wkms+pp9bQfr6USpdBqSs/idPOEUXkd5ziVWpP5BZomIUV9TSOmhWqXpWjNkHv
 7mqwMZ5Q2KRhss4E0XnwCxFBcGdvFhuBOHQT+4vIwhLu6XPGYqhiiyZVyUyltufgpUw1
 LQNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=tzsRg9pgEa9ifvg41ObkDkwx5TvwMyRk1wxFJpblvlg=;
 b=Q6dbV37ibH2w4Y7EmINiOmuhmv+o/aVLVjhCmE71AyobaVRPSeO6QvfhcpumVi8THG
 x2U5xQffQ6V+rNGBulXQOz2D8xQ35Z5VFkWQLD9rPDoTTFQsFz8WCa3MzuUTlLos2Jtd
 q0evPKGmsOoCwpzGOGO4V/y9yhQQiuMoDFs2BUTQ35Q8+MCXXtumpgSde7u8TIRuMiRV
 0f6I6LgMEj1isfCINReQsHQ2C/5aqLuplAmlMexz1jeS77K/LyH4qPuLtyW6P7z/evp+
 SI+X59HFdU39hnT1gpv9pe3bLC/bP3l43OZgiz6EPEhQcxwg1T/cEQ0kMIwgZowuPCaG
 wCOg==
X-Gm-Message-State: APjAAAUAcfLHfufUU6Y8jXHFjUrMxUuB5rFSBgJrbrGYsGrZCvzZgc+t
 d5Wrk0qyRjOn+OyF9oc3l7LP9g==
X-Google-Smtp-Source: APXvYqxhixa3F/cEc785OVOZs0F2stbVxXL2Q91Zz8G3dA0FQLAg7s6F+eNuzgo0xQ6EBlfs3p8Uew==
X-Received: by 2002:a65:48ca:: with SMTP id o10mr7551202pgs.116.1570547160188; 
 Tue, 08 Oct 2019 08:06:00 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:8d4b:adae:e1eb:fe8e])
 by smtp.gmail.com with ESMTPSA id u3sm17330522pfn.134.2019.10.08.08.05.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 08 Oct 2019 08:05:59 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Saurav Girepunje <saurav.girepunje@gmail.com>, balbi@kernel.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] usb: dwc3: dwc3-meson-g12a.c: use
 devm_platform_ioremap_resource()
In-Reply-To: <20191008102751.GA10401@saurav>
References: <20191008102751.GA10401@saurav>
Date: Tue, 08 Oct 2019 08:05:58 -0700
Message-ID: <7h7e5f5lbd.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_080600_955914_DF832C51 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Saurav Girepunje <saurav.girepunje@gmail.com> writes:

> Use the new helper that wraps the calls to platform_get_resource()
> and devm_ioremap_resource() together in dwc3_meson_g12a_probe().
>
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

> ---
>  drivers/usb/dwc3/dwc3-meson-g12a.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
> index bca7e92a10e9..d73ccd9e1366 100644
> --- a/drivers/usb/dwc3/dwc3-meson-g12a.c
> +++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
> @@ -386,7 +386,6 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>  	struct device		*dev = &pdev->dev;
>  	struct device_node	*np = dev->of_node;
>  	void __iomem *base;
> -	struct resource *res;
>  	enum phy_mode otg_id;
>  	int ret, i, irq;
>  
> @@ -394,8 +393,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>  	if (!priv)
>  		return -ENOMEM;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	base = devm_ioremap_resource(dev, res);
> +	base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(base))
>  		return PTR_ERR(base);
>  
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
