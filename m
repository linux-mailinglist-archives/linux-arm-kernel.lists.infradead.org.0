Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D8FEB29C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:28:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5augZHyEjr0tvYYvzAJtiR+766hH/GJzoVkA+WDFkM=; b=lAyOHJ/lsznTFt
	+vQV8nJ8a/PThn1W3oyoHjgycZ6r4cjUX7pleVck80H+uEavpkvBk7dYl3ZZ3IHYzC+wMCFzXgH/G
	pxsWFQ/1/mKjY0Rhlj8D+pf5YGeDWkqDT5yQK02NXKBZOhfCiyIPRtedQMIVZyBq/j4Qa9WBlMjcB
	n9jHsCd3FV/Udqw6/ANlDYtxI2NKNs5CqfJ/dn3UoaH//EvmmUivsvyBpjWtueDHEpl2Sh4kk98Mw
	RhFKgfAnoetE+wd5KTn2KNeS9Pswzs5UyDkqVzr9BaX6/5U63XQFkTnzMqnNLySqWbNWi7YycoWjX
	mtZlbMxmp2yUTXZbGyjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBQo-0006hI-CO; Thu, 31 Oct 2019 14:28:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBNq-0003Iq-80; Thu, 31 Oct 2019 14:25:08 +0000
Received: from dhcp-64-28.ens-lyon.fr ([140.77.64.28] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iQBNk-0005pO-8a; Thu, 31 Oct 2019 15:25:00 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Rework voltage supplies for
 regulators on rk3399-roc-pc
Date: Thu, 31 Oct 2019 15:24:59 +0100
Message-ID: <2490751.hSll4LLrj9@phil>
In-Reply-To: <22b56700-3c9e-0f60-cd74-7ff24d4f1a23@fivetechno.de>
References: <22b56700-3c9e-0f60-cd74-7ff24d4f1a23@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_072506_732690_5CE04E5E 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 31. Oktober 2019, 14:30:06 CET schrieb Markus Reichl:
> Correct the voltage supplies according to the board schematics
> ROC-3399-PC-V10-A-20180804.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 30 ++++++++++---------
>  1 file changed, 16 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> index e06e4163605b..def8bca7d158 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> @@ -142,7 +142,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <3300000>;
>  		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&vcc_sys>;
> +		vin-supply = <&dc_12v>;
>  	};
>  
>  	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
> @@ -190,7 +190,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> -		vin-supply = <&vcc_sys>;
> +		vin-supply = <&vcc3v3_sys>;
>  	};
>  
>  	/* on roc-rk3399-mezzanine board */

This seems to be some change from somewhere else.
In any case I adapted that to the current dts and applied
the patch for 5.5. Please double-check though.

Thanks
Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
