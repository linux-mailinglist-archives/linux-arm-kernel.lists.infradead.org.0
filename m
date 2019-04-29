Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C92E8BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGEsPtiSnVyVfxsgrhY63s9lPJeFMkQGntWP7J58364=; b=VUTO/50/A8kr4v
	o9zDJsUACCZkjSCZZIHoHCiwpQYRpdUPPK1DGygJFqHNhE1Cdt/5kUVSC/kyMoLn/rF6o8OvyGL7g
	Kn9Ygg8mBYQpVh8BH1M6guPBkpU/x5t+nfkVde6tNzBLIgH5+QgPV9HwNh/Zv1QLWAZtllt9nTe/z
	GJQxEIzKYEnnAF7bR+vhthRcBNyXYNBYrglweR1xIA47HOwozBigEAivQuJOH+1Rk5CMQbVhLYXqY
	+elzc8HF5Z7f5zBbM+3KiU9ZZXz6k/WR5q8n14g1Gv1gGC+mtOkQmDbnUYXyLqYcbW3XaITUTu1vV
	ORFbErz6fAXDTz/FTfPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLA0K-0005UO-0r; Mon, 29 Apr 2019 17:23:48 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLA0C-0005Tu-4A
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:23:41 +0000
Received: by mail-oi1-f195.google.com with SMTP id n187so8947756oih.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:23:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=A0I+WeeWwMxjNXSYH+7ynj45eY9o+5Gg1/EFwuWtM7U=;
 b=s1RUi+a5OuTMt1RTakk4MUOImIPW3vasQADVLEFejClDkhHfo61DTyng5wJ0XrKw0h
 bL4Icnb/ZU5GXpeR7BMS3TWx8+lnxSre4Ey8csQgME2yyHl71uKVDsaJBJa4C8Jki1cb
 DcacToJIENDqERiec85mddWM2gUdHNJBSYS4m4EiJ2H0j29VuV/ZI+MMWvuexU4QkXid
 f3/MiSlQw58vmSMFI2MyE9gte4SnNQTMYZ+DsA+Wq2ey3+Efu5CgGvvNS42erhbMpdg1
 zM3q23FUkR2GRUvh+s7p+rSneheeGyTjWil3irnXpGTWhk87goiiK+Zcf1HudEDltwzo
 sYfg==
X-Gm-Message-State: APjAAAUpUTY10oqvwtkzfdGNFFw3kdu0XCuuXzQrqP/xLm3JC0neNyrp
 BuKO9J3EkkOKuD+Bo6SDow==
X-Google-Smtp-Source: APXvYqwJbkFnAP9SY9gK21fN7QNbYRGokvHTqwXkjjG2EwAueI58HKRICiwEd5IDm2D8dlODxUiijw==
X-Received: by 2002:aca:cdc9:: with SMTP id d192mr124199oig.134.1556558619041; 
 Mon, 29 Apr 2019 10:23:39 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q26sm672522ota.35.2019.04.29.10.23.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:23:38 -0700 (PDT)
Date: Mon, 29 Apr 2019 12:23:37 -0500
From: Rob Herring <robh@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH RFC 3/8] dt-bindings: exynos: Add ASV tables binding
 documentation
Message-ID: <20190429172337.GA30032@bogus>
References: <20190404171735.12815-1-s.nawrocki@samsung.com>
 <CGME20190404172234epcas1p37667ec0996000aff9297f13639908dfc@epcas1p3.samsung.com>
 <20190404171735.12815-4-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190404171735.12815-4-s.nawrocki@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_102340_160614_6C8BDEB6 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 pankaj.dubey@samsung.com, linux-kernel@vger.kernel.org, krzk@kernel.org,
 cw00.choi@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 04, 2019 at 07:17:30PM +0200, Sylwester Nawrocki wrote:
> This patch adds documentation of the Exynos ASV (Adaptive Voltage Supply)
> tables DT binding.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  .../devicetree/bindings/arm/samsung/asv.txt   | 76 +++++++++++++++++++
>  1 file changed, 76 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/samsung/asv.txt
> 
> diff --git a/Documentation/devicetree/bindings/arm/samsung/asv.txt b/Documentation/devicetree/bindings/arm/samsung/asv.txt
> new file mode 100644
> index 000000000000..0db907263a91
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/samsung/asv.txt
> @@ -0,0 +1,76 @@
> +Exynos Adaptive Supply Voltage (ASV) tables
> +-------------------------------------------
> +
> +The Adaptive Supply Voltage (ASV) on Exynos SoCs is a technique of adjusting
> +operating points, i.e. the power supply voltage for given clock frequency,
> +in order to better match actual capabilities of the hardware and optimize power
> +consumption.  This applies to subsystem of the SoC like: CPU clusters, GPU,
> +the memory controller or camera ISP.  During production process the SoC chip
> +is assigned to one of several bins (ASV groups) and the group information
> +is encoded in the SoC CHIPID block registers and/or OTP memory. This information
> +is then used by the OS to select more finely matching operating points for
> +devices.

We already have OPP tables defined for QCom CPUs to do speed bining, and 
I just reviewed something from Allwinner for similar purposes. We can't 
have each vendor doing their own thing here.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
