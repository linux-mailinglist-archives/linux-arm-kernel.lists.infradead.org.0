Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F9F1772DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 10:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+w0UOB3WvqvL12hYuqN+d4IHkqzvIdWm1GC9uAbJpk=; b=rGb+hC+E1VXCX6
	81rxfouISjthtDHmfP917CJTdd7SvE5phWK+50ZoPXc59PcmAxrI0mFDb7ihcL0T+ju8ykv/pAdQS
	0ch4EGIZccPHaDKU8xuqLAvBwxnDHrxCwgVpScxUk2ZId8FkECJ3dbxnCdZ+ncrj922LsintPVvzj
	/Uy49go+Bss60ibUceHNS2Wm8yYM5+0A6z2hGgXQQ6RnL1Mvwv7HVoShZ7ACUKuCkY7prpYY4WKe1
	khFGDbMzb6BjdlX2OcTRfFopyYkltIMr9/Wg6r7OhO9KR5MIzrbtGUGyMmSXi92K9afoO6yZmjX6j
	XS5JZNlUUukBDHeUtpAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j948J-0008Dc-B3; Tue, 03 Mar 2020 09:46:35 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9488-0008CK-Su
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 09:46:26 +0000
Received: by mail-ed1-f65.google.com with SMTP id dc19so3455102edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 01:46:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kH1X2D2b4dxEsrD1WLS0yi7/4Un3F5auBBafyxkyk3E=;
 b=jPYhT/UdKKWgkfoIxB5/nUaGB0rWRj4E+iazA7soYWGcZUJ0e/Fmkboxz3t4nAdYKb
 RG+urvzNA2Ryf60bNLQDY5ZgcXjKdil+7X7SSAvu+ENfamsx6Iv4Vb5g1uJD81YVZjEU
 k3px3dSPVa85D2k1xNrQClUZzLyU+3joeuC4GjuDJSAVqyeBflAH5J83kT1OXzx7Sc0f
 bYCUmUv98guvEZV4WyxfovWlVBxcoLGRU7kh+wEcWobFJqflkWgyuwROXU7G1RGHSb3t
 O83VM3hWYuyTXoCTHX8mO+iCVkGrCrT5DdG2Fry/2j4vl9jBRv1pKDv5oBxVcUxUkFUZ
 7JgQ==
X-Gm-Message-State: ANhLgQ0enTcmsLcrEitt+Sdt0OZxeESPukkg1AXrvIE01WSGHh4yh2NY
 qtHS/5UXm8fHfiKMECisLKE=
X-Google-Smtp-Source: ADFU+vtIFkJ0Ojpmt4sIzlMtbbpQ2p7WqilCvmNNEM5/2XzXv5agArQPt5qR3v51ebMmhc9eIYM6zw==
X-Received: by 2002:a17:906:c345:: with SMTP id
 ci5mr3170236ejb.132.1583228782674; 
 Tue, 03 Mar 2020 01:46:22 -0800 (PST)
Received: from pi3 ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id r26sm657866edw.46.2020.03.03.01.46.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 01:46:21 -0800 (PST)
Date: Tue, 3 Mar 2020 10:46:19 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv2 1/3] devicetree: bindings: exynos: Add new compatible
 for Exynos5420 dwc3 clocks support
Message-ID: <20200303094619.GA20181@pi3>
References: <20200301212019.2248-1-linux.amoon@gmail.com>
 <20200301212019.2248-2-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301212019.2248-2-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_014624_935097_BE0C76E8 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 01, 2020 at 09:20:16PM +0000, Anand Moon wrote:
> This patch adds the new compatible string for Exynos5422 DWC3
> to support enable/disable of core and suspend clk by DWC3 driver.
> Also updated the clock names for compatible samsung,exynos5420-dwusb3.

Some time ago I mentioned this... so once more:
Do not use "This patch adds" but simple "Add".
https://elixir.bootlin.com/linux/latest/source/Documentation/process/submitting-patches.rst#L151

Best regards,
Krzysztof

> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> Previous changes:
> 	Added the missing clock name for Exynos5420 complatible
> ---
>  Documentation/devicetree/bindings/usb/exynos-usb.txt | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/exynos-usb.txt b/Documentation/devicetree/bindings/usb/exynos-usb.txt
> index 6aae1544f240..220f729ac8eb 100644
> --- a/Documentation/devicetree/bindings/usb/exynos-usb.txt
> +++ b/Documentation/devicetree/bindings/usb/exynos-usb.txt
> @@ -69,7 +69,9 @@ DWC3
>  Required properties:
>   - compatible: should be one of the following -
>  	       "samsung,exynos5250-dwusb3": for USB 3.0 DWC3 controller on
> -					    Exynos5250/5420.
> +					    Exynos5250.
> +	       "samsung,exynos5420-dwusb3": for USB 3.0 DWC3 controller on
> +					    Exynos5420.
>  	       "samsung,exynos5433-dwusb3": for USB 3.0 DWC3 controller on
>  					    Exynos5433.
>  	       "samsung,exynos7-dwusb3": for USB 3.0 DWC3 controller on Exynos7.
> @@ -82,6 +84,7 @@ Required properties:
>                  Following clock names shall be provided for different
>                  compatibles:
>                   - samsung,exynos5250-dwusb3: "usbdrd30",
> +                 - samsung,exynos5420-dwusb3: "usbdrd30", "usbdrd30_susp_clk",
>                   - samsung,exynos5433-dwusb3: "aclk", "susp_clk", "pipe_pclk",
>                                                "phyclk",
>                   - samsung,exynos7-dwusb3: "usbdrd30", "usbdrd30_susp_clk",
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
