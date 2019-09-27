Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FF4C018B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 10:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A44v+5bROdnZUAN6R1PJJxnyCclRl5aoIxVPskQVQA0=; b=MPvMXQR9jBH6q9
	JKPXB7Do7HFnAntELT22QzN2QpqhVV7e5TCb1T+pDNF2RbBMfcUaJQA6J4INk8CZkVhADbwztGhyE
	0RXSHnwtQdQJ6CdDLaxr1UVMcZ1I8TsoFuC/mamVtBimu18cweD3e/5//iIWoSIRJ5cLL5xTBXluu
	XhXt8t+g5I1VUbhwKhBYBNMVFSQOtXWNjgk7jRlKxI3gbYlkXeviWqZtg2+YkNwzmibKtTkOf6Y7Q
	iJOCrhKlPAaLrBtBa7X8U74A3dqslNzFn0U7BjWKZoC7EruhK02VE9CzPrsDeYnSH81rF75p40oEL
	yzrrhtikMY1VSungYR2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDm1B-0001f8-SY; Fri, 27 Sep 2019 08:54:25 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDm11-0001ed-0v
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 08:54:16 +0000
Received: by mail-wr1-f65.google.com with SMTP id l3so1767543wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 01:54:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YW69Gs/nZumApetQocA64F9f6OkcL5o8Z3LcVdigjvc=;
 b=PZkxF4v++IQbUCKkHO3T4425xnJjYg/EgrbihT1Ea9oe+ayzimeVmFboCdZImN3KhB
 Wc/nRhCOgqOo4g4yxPdBXGMGIb1GBNLvCdTaWwFlaQNqER7bPw/eH5FZ7HCYeKSIuI3V
 4WWQR7CMAUEfDNwzTB5nVFSxqYp4GIrX0C9/85TKXogswEzx93EO6KhWEssrI2g2e+Hm
 6rQoUQG8HvxFCwvz1lIHHa9NPBpj82nUkr9Y/ef8H8pyVQzJwZ6ggAhETuUQove1KEyH
 Otg2tPx4FQXBGGiXn7n+SzlssPboXz368JQJG2NbORvFhL8HxGuQP3IXzhuebEQpVjCZ
 FdZQ==
X-Gm-Message-State: APjAAAVFZcP9lhwUZpLNIU8lM9sg/nQs4s9xnAbfqEuv2cH++2wFYD8Y
 /yyV9//hTkBtACroFewyWfY=
X-Google-Smtp-Source: APXvYqw32zeeQTuvXuVsep+HUirogNC0QVZEqwyQa06udnJ+HOwPMSz7jgPC+e9bId+phk4DAB4dwg==
X-Received: by 2002:adf:f2cd:: with SMTP id d13mr2169788wrp.143.1569574452936; 
 Fri, 27 Sep 2019 01:54:12 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id l6sm4346315wmg.2.2019.09.27.01.54.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 01:54:12 -0700 (PDT)
Date: Fri, 27 Sep 2019 10:53:59 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH 1/3] ARM: dts: exynos: Add interrupt to DMC controller in
 Exynos5422
Message-ID: <20190927085359.GA19131@pi3>
References: <20190925161813.21117-1-l.luba@partner.samsung.com>
 <CGME20190925161842eucas1p271a9cf4f62b3d7af02c0a5d0d1eb9c4f@eucas1p2.samsung.com>
 <20190925161813.21117-2-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925161813.21117-2-l.luba@partner.samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_015415_064253_931FCFEF 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 06:18:11PM +0200, Lukasz Luba wrote:
> Add interrupt to Dynamic Memory Controller in Exynos5422 and Odroid
> XU3-family boards. It will be used instead of devfreq polling mode
> governor. The interrupt is connected to performance counters private
> for DMC, which might track utilisation of the memory channels.
> 
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  arch/arm/boot/dts/exynos5420.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
> index ac49373baae7..72738e620d11 100644
> --- a/arch/arm/boot/dts/exynos5420.dtsi
> +++ b/arch/arm/boot/dts/exynos5420.dtsi
> @@ -240,6 +240,8 @@
>  		dmc: memory-controller@10c20000 {
>  			compatible = "samsung,exynos5422-dmc";
>  			reg = <0x10c20000 0x100>, <0x10c30000 0x100>;
> +			interrupt-parent = <&combiner>;
> +			interrupts = <16 0>;

You register DMC for DREX0 and DREX1 but take only DREX0 interrupt. Why
skipping second?

Best regards,
Krzysztof


>  			clocks = <&clock CLK_FOUT_SPLL>,
>  				 <&clock CLK_MOUT_SCLK_SPLL>,
>  				 <&clock CLK_FF_DOUT_SPLL2>,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
