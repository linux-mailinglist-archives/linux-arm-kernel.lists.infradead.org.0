Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0421415BC96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:18:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xM1AUA6xH/tRYngAGa92Z3hIxZYywo/K3LhP2knB9BE=; b=HJgbbp5EfoltFY
	/hZNTFhnFVlry+11Fma425HJopErJjJ2jULg/Vv1y+TjaGb2RNV497LM5Okxj1vdzlTvzie7XFeW6
	2tn/spcyeqUvQwWWtjShMNIi1Pd51dmu7pScEHPXXXiBLeFOQhzTjwC6XKs/nUKVWruBy+W3VT5Uv
	17LNumeoTg3evsoRAzEZBZmkKp87k6aa5TbpQGBiy0xGhAAKnprdsudrBySmKqTPEKjWzw2LJHoP1
	r67fLydIZ68Pyw4gE1ocmZ35JESrpt+qIGKCXpdYxvRVkFSLACEx2y+tiY07OI8zgsoht4AlfblNT
	K165Y/7egyK+REpm3jcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BZH-0005eq-Su; Thu, 13 Feb 2020 10:17:59 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2BZ9-0005e6-PX
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:17:53 +0000
Received: by mail-ed1-f67.google.com with SMTP id r21so6181343edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 02:17:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RRIEPdo2GBfjmyVoBn6+vY/7+N02sDl5h1yeWIDZHL4=;
 b=K0YO4iK18DZOZrUt3N3+ANrBdM4z5BsMFXOQmqaFeWYdA8DugmICdZ+dah4Ncv45QO
 oQTke0C9jlDavvuKIo6tB6bmDEt2k+Ky6J+FB5H2hj4vN4givrLHBi68fB+sZLlXwJGW
 zd51GoUBitA5lGtFyzMN9ryKv38dEnrAd4ty81ibbNVRExjwTr/CP8UzAwqH/YUKidA+
 tiWa9MSUk+XF5JNyN6PcDI6qwatveOmzBHrKyDzcZOUUYZtZz8eR+4VhZxtwqGOsYttr
 t4h1+MYFtEuDcaQkp5F/KmtLlpJwHuXeFYW/Ysip/55hIjY7oD3wp8fKiCPLw7pt2Rpz
 GPXw==
X-Gm-Message-State: APjAAAVI9PKmoyiSRzMFhUDhwXDN25p/iJKvsLCPjE1InI1C5zVyFWff
 yNyQUy0PRvh9+aSd60BpEcU=
X-Google-Smtp-Source: APXvYqzJPEBHGEKtNpeIz/sbcpHCr12wSxQrNRMVB1G8sc2hvXl2J7zmFFF7vRMRvXQXSbI6JC33dg==
X-Received: by 2002:a05:6402:1426:: with SMTP id
 c6mr7748047edx.49.1581589068803; 
 Thu, 13 Feb 2020 02:17:48 -0800 (PST)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id k11sm158564edr.38.2020.02.13.02.17.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Feb 2020 02:17:48 -0800 (PST)
Date: Thu, 13 Feb 2020 11:17:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv1 0/2] Add FSYS2 power domain for MMC driver
Message-ID: <20200213101744.GA11087@kozik-lap>
References: <20200212120237.1332-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212120237.1332-1-linux.amoon@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_021751_829669_311E7050 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 12:02:35PM +0000, Anand Moon wrote:
> This patches add the power domain for MMC driver,
> but somehow the suspend/resume feature is broken
> so any input on how to fix this.

I think S2R was working on XU3-family after Marek's fixes, so you mean
that these patches break it?

Best regards,
Krzysztof


> 
> Also on similar lines I tried to add power domain
> FSYS for usb3 and usb2 nodes but this time
> it failed to load the kernel, so how can I reslove
> this issue.
> 
> -Anand
> 
> Anand Moon (2):
>   ARM: dts: exynos: Add FSYS2 power domain to Exynos542x
>   clk: samsung: exynos542x: Move FSYS2 subsystem clocks to its sub-CMU
> 
>  arch/arm/boot/dts/exynos5420.dtsi    | 10 ++++++++++
>  drivers/clk/samsung/clk-exynos5420.c | 24 +++++++++++++++++++++---
>  2 files changed, 31 insertions(+), 3 deletions(-)
> 
> -- 
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
