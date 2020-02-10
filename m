Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD775157CDE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 14:56:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+AJds9ug3S30C6Sv+JfdwmwO33WU7u6CG26U9Bqib0=; b=iUlORFkNcZOQf1
	YlxN6+fdT3F4GESTpVGNV06vCc98u6SlkLN/XxBPExUmJq5zXRtbwDz4uAFEoWhLKt8uzH9+ZfN3l
	yEA/v9EUNSx525c05KyVukmlLoJOKLm6+/ps9dlNYYZC1glTqJOIyyedD/pV4bMYvcSM0QZwLpwPX
	S1P0F2VX8pdx/jVHe54dfTeNo+PZhx/s+F4qAERvml01hr+vuSiZG/bp83MrknBjlcT8Jf4ZusYDw
	EwHNbK0KPPgzOgW1YajLSIxLWsCHZiZJ5w1K8OYmEB5KT414OO/+WVaSIX8KkHwAkj5UjoxBWjoUo
	qjtjBTsaMeAP637w0Lhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j19Xz-0005BT-Ks; Mon, 10 Feb 2020 13:56:23 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j19Xt-0005B0-E5
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 13:56:18 +0000
Received: by mail-ed1-f65.google.com with SMTP id j17so372210edp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 05:56:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ah2IHfUBmafMw70N3+IktB33GuN7dPw7FzMzjp9sBCQ=;
 b=QTWarFZPEK8+oF1f0nYjIgjIlPrVGKfan6poONTQE9xfH10SSzxI63qQFkEDqmO0iM
 SqSVEY2CrifOb2HuPEOCDnw5v4ZVnLiZhbLJo1vvcEIbShMC0S49kk+gO4gZ/hyN0V5F
 4w0cdQZ1TA4wJcBrJurIoRVYi5RQbNOY6dzQ/2eZX4sO8aVnA38s3rWTKWQ+20f/xzo6
 aPiLJ/wnbp3mIDK0cPao+mLjmdaoXxTZ/jx7KGIdKdAS6u8eDzPd7SWbzZLbNvf8XslR
 iljUnmmXId16C75kQb1qt7LZncLPrPUpKlc1E0N1mTJ8Af5OacjgRRZ9DiCwhxruDtOz
 xSAw==
X-Gm-Message-State: APjAAAXXcQq8cJnDdRr/ujNsQzP6TLqWKY9eK/tU6RbXzhInPQA7SFyR
 z2Ikcg+BvW29uwyJc1q7Qjs=
X-Google-Smtp-Source: APXvYqzd+w8QkYqy6i06rRdpA9+1r7X8JZKvCvW+NyGbGNcASqySdPBvud3O+GXM8YuMo4yZDIE1og==
X-Received: by 2002:a05:6402:1659:: with SMTP id
 s25mr1254917edx.219.1581342975193; 
 Mon, 10 Feb 2020 05:56:15 -0800 (PST)
Received: from pi3 ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id f25sm45102ejx.33.2020.02.10.05.56.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 05:56:14 -0800 (PST)
Date: Mon, 10 Feb 2020 14:56:12 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv3 0/3] Add support for suspend clk for Exynos5422 SoC
Message-ID: <20200210135612.GB2163@pi3>
References: <20200210105108.1128-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210105108.1128-1-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_055617_475826_C05AAC79 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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

On Mon, Feb 10, 2020 at 10:51:05AM +0000, Anand Moon wrote:
> Long time ago I tried to add suspend clk for dwc3 phy
> which was wrong appoch, see below.
> 
> [0] https://lore.kernel.org/patchwork/patch/837635/
> [1] https://lore.kernel.org/patchwork/patch/837636/
> 

You ignored parts of my review from these previous patches. I asked for
describing WHY are you doing this and WHAT problem are you trying to
solve. I asked for this multiple times. Unfortunately I cannot find the
answers to my questions in this patchset...

Best regards,
Krzysztof


> This patch series tries to enable suspend clk using 
> exynos dwc3 driver, for this I have added new 
> compatible string "samsung,exynos5420-dwusb3"
> so that we could add new suspend clk in addition
> to the core clk. exynos dwc3 driver will help
> enable/disable these clk.
> 
> -Anand
> 
> Anand Moon (3):
>   devicetree: bindings: exynos: Add new compatible for Exynos5420 dwc3
>     clocks support
>   ARM: dts: exynos: Add missing usbdrd3 suspend clk
>   usb: dwc3: exynos: Add support for Exynos5422 suspend clk
> 
>  Documentation/devicetree/bindings/usb/exynos-usb.txt | 4 +++-
>  arch/arm/boot/dts/exynos5420.dtsi                    | 8 ++++----
>  arch/arm/boot/dts/exynos54xx.dtsi                    | 4 ++--
>  drivers/usb/dwc3/dwc3-exynos.c                       | 9 +++++++++
>  4 files changed, 18 insertions(+), 7 deletions(-)
> 
> -- 
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
