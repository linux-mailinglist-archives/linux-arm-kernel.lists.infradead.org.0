Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CA6CF65C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 11:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNQ7eZZ5vU2vJ1jSKrq3SeTP39FjQy7gezKFtUbWfv4=; b=co3eRpaUBtcCCA
	KyDPDSmFoLILLKkR+nw0auIhgcoPC5WfbefFoC1zt8CStKpaWoQdhAuMrwirmOKTsiG/jynqb65Ro
	ogT4lvS4ICoW1uMyPMjItG7vsX/tDzTMvXr8PYtG2V8c/tvpYIrWlxBn18PocoeYVzq6YnOx47T1h
	k2nQWmXH4LcxF23jtWOx/vd52m/pk8TQWIxIg32WDHACXl+jtFZZ4JVViO8STYDAX+7R9U3XGXA25
	oyO9wp1p806ddgugR3OfEQ7Fqi7Ot23du9K8YE5nNS8dLJQ+SsX0G1jGamOddzvM49/w96UGH3b6k
	qFXBGxqBR6KBN2WG6XvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHm3V-00011y-RF; Tue, 08 Oct 2019 09:45:21 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHm3L-0000QJ-5r
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 09:45:12 +0000
X-Originating-IP: 2.139.156.91
Received: from localhost (91.red-2-139-156.staticip.rima-tde.net
 [2.139.156.91]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 0001520011;
 Tue,  8 Oct 2019 09:44:59 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, =?utf-8?Q?Beno=C3=AEt?= Cousson
 <bcousson@baylibre.com>, Tony Lindgren <tony@atomide.com>, Jason Cooper
 <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Santosh Shilimkar
 <ssantosh@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, Jonathan
 Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3 05/10] ARM: dts: dove: Rename "sa-sram" node to "sram"
In-Reply-To: <20191002164316.14905-5-krzk@kernel.org>
References: <20191002164316.14905-1-krzk@kernel.org>
 <20191002164316.14905-5-krzk@kernel.org>
Date: Tue, 08 Oct 2019 11:44:58 +0200
Message-ID: <87imoztvtx.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_024511_354691_CEB4E19A 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof Kozlowski,

> The device node name should reflect generic class of a device so rename
> the "sa-sram" node to "sram".  This will be also in sync with upcoming DT
> schema.  No functional change.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied on mvebu/dt

Thanks,

Gregory

> ---
>  arch/arm/boot/dts/dove.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/dove.dtsi b/arch/arm/boot/dts/dove.dtsi
> index 2e8a3977219f..3081b04e8c08 100644
> --- a/arch/arm/boot/dts/dove.dtsi
> +++ b/arch/arm/boot/dts/dove.dtsi
> @@ -784,7 +784,7 @@
>  				status = "disabled";
>  			};
>  
> -			crypto_sram: sa-sram@ffffe000 {
> +			crypto_sram: sram@ffffe000 {
>  				compatible = "mmio-sram";
>  				reg = <0xffffe000 0x800>;
>  				clocks = <&gate_clk 15>;
> -- 
> 2.17.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
