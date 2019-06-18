Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1B5498F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 08:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+qieSb3Txa/fQxh4qczUUUKKkzTV7kVzMEBnQ1G/iM=; b=bSOLA1Xl9fwc5A
	0KjJtvPZ2xoyFNm/e814rOCvHSPapzFPT/RJRgI6l7xiP24smS5CYjdewGkvneb3KDzme+GlG/uUo
	w42WgrK/nWU7i3hQqa3O+MY9An9LafASk7O6TJATSzR1aWwv2DbfuZ2oY6t+UdTrQHkviVZTrWu8t
	iXEsf4ixt44fNNIzFaoUJO7o5x81xOvA0NOc2aR+JPtQ451YqYRmxR9O1xE+yLwKWVSG/wPw2Zl0w
	ni2QyAzTsjS2Pnqaqk94riPGaFZ/IYAxRuXlh1uKEa+NRK848tl3YedS6XY7e1DAfqtf+Dtl6JkJN
	uiA2Lh4YFm/agLCL1h7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd7lA-0003Ak-Tg; Tue, 18 Jun 2019 06:38:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd7l2-0003AR-0L
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 06:38:17 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5771217D4;
 Tue, 18 Jun 2019 06:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560839895;
 bh=oLT6VuKCCoaxaxIsbpmOjPErgpekiwn2N5t01iZKuEI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wcJdNmUGOOCM2wM2BEXDvs/a7RbUX+/xwRPkWzayl5lvhFCwJ25yLR+YPTJY0Yzw0
 A4c0cncgVU9drXtum+7BbUtq60m80oGAWq3EgcwESVRadLCYShalhjQBj567MyZ0mO
 2/NPgiMNw38EZVte3kLthywilHiFpJR7i9g5C+8g=
Date: Tue, 18 Jun 2019 14:37:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Frank Li <frank.li@nxp.com>
Subject: Re: [PATCH V12 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Message-ID: <20190618063626.GB29468@dragon>
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
 <1556736193-29411-3-git-send-email-Frank.Li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556736193-29411-3-git-send-email-Frank.Li@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_233816_066598_11427CE8 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 06:43:32PM +0000, Frank Li wrote:
> Add ddr performance monitor
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Please resend without using 'Content-Transfer-Encoding: base64'.

Shawn

> ---
> 
> Notes:
>     No change from v9 to v12
> 
>     Change from v8 to v9
>     * put ddr-pmu under ddr_subsystem bus
> 
>     Change from v3 to v8
>     * none
> 
>     Change from v2 to v3
>     * ddr_pmu0 -> ddr-pmu
> 
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index 0683ee2..a33e08c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -378,6 +378,20 @@
>  		};
>  	};
>  
> +	ddr_subsyss: bus@5c000000 {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x5c000000 0x0 0x5c000000 0x1000000>;
> +
> +		ddr-pmu@5c020000 {
> +			compatible = "fsl,imx8-ddr-pmu";
> +			reg = <0x5c020000 0x10000>;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +	};
> +
>  	lsio_subsys: bus@5d000000 {
>  		compatible = "simple-bus";
>  		#address-cells = <1>;
> -- 
> 2.5.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
