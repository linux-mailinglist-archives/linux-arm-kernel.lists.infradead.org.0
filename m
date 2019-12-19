Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67192126E9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:19:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIPaNpP96R/HPxJ7VEIeRzWRaOz1UA0btIGsoLpQklQ=; b=KksvnFLyMC79wG
	kEJh/vnub8WBmxBKObiiNi2Y1O6yOLBMsKnIuC2iwfHQF2E9GQ2nb5j0AvI1Ms2PfNVCoZ8PVpZtL
	KAcRai5TYxgsa2+KNZW4/E2WzL3VMd3o7Sbs5gdYha3TOMJAK8QDWm4PDifY5spxLDTsfXKuryjcl
	7g7J6RnTCOlY6BFjuZppOVVf6gNlqjfQ11djT24OGCqQC3QITPi3DHap8IXMt5f6JCQznpatvlDx+
	YiPObpblYL1WI19W3MC/zU69ynrD+CpBMWo3ADKmjL3ptAGr6J/Fj3R6MophaU4qiEBxeZ1Je7Ftc
	Ndo6/SKU7SBkmpjz0JIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2Gj-00060V-RA; Thu, 19 Dec 2019 20:19:33 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2GZ-0005zi-Qo; Thu, 19 Dec 2019 20:19:25 +0000
Received: by mail-ed1-f67.google.com with SMTP id j17so6150521edp.3;
 Thu, 19 Dec 2019 12:19:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1z6z1Ui8LL1nkwwIvcM2qSFeAknNPztf5Dw5KcO2dK8=;
 b=hWSm16Dfjp9rzpPZ9Gl1+pffSeWis4vvNVLytCCBBYfena5kMNmHy+WuxgD9DzKDhE
 Sd1dmqQ94gzEh6IwBE3s9jIiTzdy7codpGdYHvCnGxzyDn75ima6R+ndIM4sZg18wDUM
 7BgpAoUGlkkwn6vdDBef/+fERqSwtP02UyzxFuaSsN0g28S68Maa6or+FC/IHvyW3fr6
 AYtiOa06L3Vhn8MEFiaVkGGrLJ/X65yMPGg+h/qPXzgNIWJXRu5FmlXVBLgBgYD4VRGw
 hUwV5gwXLdEq6mC45sBeTI9mrlybNN/F8PRkAsN6ddHMaQkM7ygv6mJxBipFXMEO+I/4
 t7cg==
X-Gm-Message-State: APjAAAU+lTmXstJ35722+54mC/eKYRfYuWRl6fbwvCcGr5Od8XILaW5k
 AqRxK1BdCKq+qDbQAfokZsw=
X-Google-Smtp-Source: APXvYqwwejroRBv27RRKI+KjHOuS4q02b2b9jWEyzsgC2C9l3pOef3KwtMfRZqXDwDfmgHuveS0ogQ==
X-Received: by 2002:a17:906:5606:: with SMTP id
 f6mr11822819ejq.179.1576786761612; 
 Thu, 19 Dec 2019 12:19:21 -0800 (PST)
Received: from kozik-lap ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id m2sm626166edp.85.2019.12.19.12.19.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 19 Dec 2019 12:19:20 -0800 (PST)
Date: Thu, 19 Dec 2019 21:19:17 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH 7/9] memory: samsung: exynos5422-dmc: Replace deprecated
 'devfreq-events' property
Message-ID: <20191219201917.GA21576@kozik-lap>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p2c43a45e34983c1b3e60cc6fd842dd33e@epcas1p2.samsung.com>
 <20191217055738.28445-8-cw00.choi@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217055738.28445-8-cw00.choi@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_121923_868854_1BF0A705 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, myungjoo.ham@samsung.com,
 robh+dt@kernel.org, kgene@kernel.org, kyungmin.park@samsung.com,
 leonard.crestez@nxp.com, lukasz.luba@arm.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 02:57:36PM +0900, Chanwoo Choi wrote:
> In order to remove the deprecated 'devfreq-events' property, replace with
> new 'exynos,ppmu-device' property in order to get the devfreq-event device
> in devicetree file instead of 'devfreq-events' property. But, to guarantee
> the backward-compatibility, keep the support 'devfreq-events' property.
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  .../memory-controllers/exynos5422-dmc.txt     |  6 ++--
>  drivers/memory/samsung/exynos5422-dmc.c       | 29 +++++++++++++++----
>  2 files changed, 26 insertions(+), 9 deletions(-)

In general looks good for me but I need an ack from Rob.  Patch should
be also split and sent as one of first in the series (before code).

> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> index 02e4a1f862f1..1e1b3702f045 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> +++ b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> @@ -17,14 +17,14 @@ Required properties for DMC device for Exynos5422:
>  - clock-names : should include "fout_spll", "mout_sclk_spll", "ff_dout_spll2",
>    "fout_bpll", "mout_bpll", "sclk_bpll", "mout_mx_mspll_ccore",
>    "mout_mclk_cdrex"  entries
> -- devfreq-events : phandles for PPMU devices connected to this DMC.
> +- exynos,ppmu-device : phandles for PPMU devices connected to this DMC.
>  - vdd-supply : phandle for voltage regulator which is connected.
>  - reg : registers of two CDREX controllers.
>  - operating-points-v2 : phandle for OPPs described in v2 definition.
>  - device-handle : phandle of the connected DRAM memory device. For more
>  	information please refer to documentation file:
>  	Documentation/devicetree/bindings/ddr/lpddr3.txt
> -- devfreq-events : phandles of the PPMU events used by the controller.
> +- exynos,ppmu-device : phandles of the PPMU events used by the controller.
>  - samsung,syscon-clk : phandle of the clock register set used by the controller,
>  	these registers are used for enabling a 'pause' feature and are not
>  	exposed by clock framework but they must be used in a safe way.
> @@ -73,7 +73,7 @@ Example:
>  			      "mout_mx_mspll_ccore",
>  			      "mout_mclk_cdrex";
>  		operating-points-v2 = <&dmc_opp_table>;
> -		devfreq-events = <&ppmu_event3_dmc0_0>,	<&ppmu_event3_dmc0_1>,
> +		exynos,ppmu-device = <&ppmu_event3_dmc0_0>, <&ppmu_event3_dmc0_1>,
>  				 <&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;

Indentation is broken here.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
