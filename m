Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C74E318
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 14:53:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EM5/gfCZVg8s8oURS66P2TEed8aPoj62uKsHmLK/tLc=; b=YckKXLoSEb4eIr
	5geFoKJx3NnH+Fl2QOE2qqxxKYVDliBU+o8ZS7ZXjs/tNFu4CAoPyev5Nsvco+H9VSjvfR40SNv3c
	encwg7OI59whSj/bPP3lmGiXUWhDquASRxTk0hXbQX9d1SEXdo5k4CU1KoYiwxYcCewQQl0/K1yEF
	f47Ac/26aVrP969jOxFlQgUOOhoAqi2hAYZswy0I687KPzjqUMFqmrpruDa5OThiTVqhLUY6Hmp/V
	99Ae7O3l7/jHwOggBjwf3XuTx0BM378fH3uxVfp/Ha3WoQC7gWrJl5D3CuJfakMl88UtxJuLddICE
	sCgABTCGcqfB2pgXLhNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL5mG-0005EB-8k; Mon, 29 Apr 2019 12:53:00 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL5m9-0005Dg-Bp
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 12:52:54 +0000
Received: by mail-oi1-f195.google.com with SMTP id t189so5128979oih.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 05:52:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L9gQvZ8PDconijULodU/VsDyvFooGr/uOkw0zHpyhD4=;
 b=ROvgFSEurXsj4hVfuNF3OFEjVEGGRuVRIOxFMg/u/RgnqTYb7XwbrTiZFLgP9LGHtR
 vEGrqYIPvYhOaY4fzuzz1fY+FzU2IneVNFHZAIDSBQ3hKXRpKZ9N8Isfdwmpz4zdR3nP
 sMwxYtsjb7Y4Fx3Q4U1YqmiHPL2ez7VurA4U9DpGftuF1VoVw0yc/KoMbfUz/JDM0ciK
 UoN1cag5DcQvLt1k+Rw4oEdWZ3pdnsxDS1IkoWGyO2K5qhTTHl8pVVF99wWW1n5sNOqu
 jfMmmmeLgg4kc+KuFhP3pD2tr2GAXfI9CaFH7LNQyZ/24th0TJ9dW7VyoXg7Oj3+ZQKZ
 td9Q==
X-Gm-Message-State: APjAAAUL6oCHvRueMYfq5bF4x35X8ArCotigb6R2pqiOWhhtM+IXzpwd
 PN3n/M6JxMOKsQLt+HoPzTDbQE4=
X-Google-Smtp-Source: APXvYqydxoK0ZWQqQb6pLbJXiOIFY9FTTBBrSwscONAjRKuuFmgRBnDzkS5OjJzE/9hj/1p7P67eXQ==
X-Received: by 2002:aca:df55:: with SMTP id w82mr16023454oig.113.1556542371816; 
 Mon, 29 Apr 2019 05:52:51 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x202sm14118222oix.54.2019.04.29.05.52.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 05:52:51 -0700 (PDT)
Date: Mon, 29 Apr 2019 07:52:50 -0500
From: Rob Herring <robh@kernel.org>
To: Frank Li <frank.li@nxp.com>
Subject: Re: [PATCH V8 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Message-ID: <20190429125250.GA21014@bogus>
References: <1556311794-14708-1-git-send-email-Frank.Li@nxp.com>
 <1556311794-14708-3-git-send-email-Frank.Li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556311794-14708-3-git-send-email-Frank.Li@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_055253_414369_8CF6ED93 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 08:50:15PM +0000, Frank Li wrote:
> Add ddr performance monitor
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> ---
> Change from v3 to v8
> * none
> 
> Change from v2 to v3
> * ddr_pmu0 -> ddr-pmu
> 
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index 0683ee2..16f2588 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -110,6 +110,13 @@
>  		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
>  	};
>  
> +	ddr-pmu@5c020000 {

This should be under a bus node.

> +		compatible = "fsl,imx8-ddr-pmu";
> +		reg = <0x0 0x5c020000 0x0 0x10000>;
> +		interrupt-parent = <&gic>;
> +		interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
>  	psci {
>  		compatible = "arm,psci-1.0";
>  		method = "smc";
> -- 
> 2.5.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
