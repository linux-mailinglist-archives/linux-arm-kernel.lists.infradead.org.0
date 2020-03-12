Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 014C8183695
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 17:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oDRUuIOh5u/bSlTxOcgPjVXi7F4Svx1+WCNFuB7F4Ys=; b=bwF5TTo6I9AHoawBb/Z6HHPxD
	zDrk9uOmYkMGKvAgGLyQPKb8dyB9U1dRzOCgPGdCNc6VRJDHdT5KEW1uYn88hkPzpfYAv+fFjcNHl
	uPZlNAtA1Dhru1baiSYrbNX8Lpe3e7syrvGvuK2iWJ9vDFcmjQUsZEibGf8UPGjoq4Vj/qyFUtphy
	pgJvAsc4sB5CUzKtX9gCMZVH1uz81+WKvIsBgFU0c2T7D0Iz2BD2dVFmm1BhURa0Lmst801+t3MyD
	p5e9g9bqDIifIofMa10trvhQcAvvwayh2oN+e1mfqXeVN4mEm+lCTJRQkQ0zoKTBuqT7yHF6dNtVe
	Ll//ktbuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCR2s-000574-Oe; Thu, 12 Mar 2020 16:50:54 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCR2i-00056V-AX
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 16:50:45 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 1A69122FAC;
 Thu, 12 Mar 2020 17:50:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1584031841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kjJ10yaE4xOITwa0lcGngsQWRZEzeFLVFpTKECi5fjM=;
 b=O1IP2r4NgRR8jB5FfvAbMpoq+5dm1oyxRXXBswapjXuY8YadbpB9YjHm64TjJieI0e66TR
 QyczEjlcMl9E5JR1cfxQCLPfQ6bb4cjq4WB7y2/0sykEI5cAdeOQgqHiXSEnE1Rtx/TKFv
 Ew4c3ToeJGp+bFBbOTxgIAllCSdA4lA=
MIME-Version: 1.0
Date: Thu, 12 Mar 2020 17:50:40 +0100
From: Michael Walle <michael@walle.cc>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: ls1028a: disable the felix switch by
 default
In-Reply-To: <20200312164320.22349-2-michael@walle.cc>
References: <20200312164320.22349-1-michael@walle.cc>
 <20200312164320.22349-2-michael@walle.cc>
Message-ID: <5c06000e9ca893cdf431f29618428630@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 1A69122FAC
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.0.0.0:email]; RCPT_COUNT_TWELVE(0.00)[13];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[davemloft.net,gmail.com,lunn.ch,nxp.com,kernel.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_095044_515288_8FF85182 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-03-12 17:43, schrieb Michael Walle:
> Disable the felix switch by default and enable it per board which are
> actually using it.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>

I forgot to mention that this patch depends on the following series:
   
https://lore.kernel.org/linux-devicetree/20200311074929.19569-1-michael@walle.cc/

Sorry,
-michael

> ---
>  .../boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts  | 4 ++++
>  .../boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts      | 4 ++++
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts             | 4 ++++
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi                | 3 ++-
>  4 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git
> a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
> b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
> index a83a176cf18a..d4ca12b140b4 100644
> --- 
> a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
> +++ 
> b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
> @@ -63,6 +63,10 @@
>  	};
>  };
> 
> +&mscc_felix {
> +	status = "okay";
> +};
> +
>  &mscc_felix_port0 {
>  	label = "swp0";
>  	managed = "in-band-status";
> diff --git
> a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts
> b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts
> index 0a34ff682027..901b5b161def 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts
> @@ -48,6 +48,10 @@
>  	status = "okay";
>  };
> 
> +&mscc_felix {
> +	status = "okay";
> +};
> +
>  &mscc_felix_port0 {
>  	label = "gbe0";
>  	phy-handle = <&phy0>;
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> index 0d27b5667b8c..8294d364112e 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> @@ -228,6 +228,10 @@
>  	status = "okay";
>  };
> 
> +&mscc_felix {
> +	status = "okay";
> +};
> +
>  &mscc_felix_port0 {
>  	label = "swp0";
>  	managed = "in-band-status";
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index c09279379723..70a10268bb83 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -933,10 +933,11 @@
>  				fsl,extts-fifo;
>  			};
> 
> -			ethernet-switch@0,5 {
> +			mscc_felix: ethernet-switch@0,5 {
>  				reg = <0x000500 0 0 0 0>;
>  				/* IEP INT_B */
>  				interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
> +				status = "disabled";
> 
>  				ports {
>  					#address-cells = <1>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
