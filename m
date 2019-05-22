Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDED27141
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 22:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=At5aaAj0Km3a3ffJKBPULDy5t3etqBeqCB1saSZt3Cs=; b=LMh7fAxpqQumdK
	vLoqzSE63/kwa0d9gCVky8NTqFRupD/d3yx+Ml72yh2zri3bQfFjeZbaX3OHQjJLicghoya773k54
	otGhzZD17dyJbfC3ZqRTkLXMDAcgzINGSGN9PZae2zJUMq4Bslvd/PGqsYwhKRnpZFNIkmELfe/ra
	YiB9gpYdiATVO1/ybPX1A6xSmb2uVvR5B2CSP/kNtk/qSlWM2KPUDcT6K2FU3GaA7YNWZAhANDqg8
	uBR/5PBDxumOmaXGKSMJdG2IpFpHuPX6284V4cmyE48VvpWwyBblBi9Ef5Jvk3TodcwmyQG21XGcV
	cOl2EWd9SKyleMu0GYnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTYKI-0005yu-70; Wed, 22 May 2019 20:59:06 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTYKB-0005yQ-Ci
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 20:59:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RK7BKuNuoUu12dYwR+LCR1MVVz/2S9o4Rt7rUWybqf8=; b=yx5WWbMsXgABiQ93gNWHSUnLT7
 DyKeIngnIYN1A1UQCQRvV99PIAYpsQjpYvdyC3/6sWA3gOZ/XkdomnvRqplictFyt3AZor1bsYhoc
 Andgst9OS8008DdYaQwb30b/5CmsatFz4IjJfXVWUaeEBmWKrquP645Z+LfdEy7Y2kUY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hTYK3-0004ZD-5G; Wed, 22 May 2019 22:58:51 +0200
Date: Wed, 22 May 2019 22:58:51 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [PATCH net-next 2/2] net: phy: aquantia: add USXGMII support
Message-ID: <20190522205851.GA15257@lunn.ch>
References: <110a1e45-56a7-a646-7b63-f39fe3083c28@gmail.com>
 <2c68bdb1-9b53-ce0b-74d3-c7ea2d9e7ac0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2c68bdb1-9b53-ce0b-74d3-c7ea2d9e7ac0@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_135859_581576_344A5101 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, David Miller <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 09:58:32PM +0200, Heiner Kallweit wrote:
> So far we didn't support mode USXGMII, and in order to not break the
> two Freescale boards mode XGMII was accepted for the AQR107 family
> even though it doesn't support XGMII. Add USXGMII support to the
> Aquantia PHY driver and change the phy connection type for the two
> boards.
> 
> As an additional note: Even though the handle is named aqr106
> there seem to be LS1046A boards with an AQR107.
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts | 2 +-
>  arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 2 +-
>  drivers/net/phy/aquantia_main.c                   | 6 +++++-
>  3 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts
> index 4223a2352..c2ce1a611 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts
> @@ -139,7 +139,7 @@
>  
>  	ethernet@f0000 { /* 10GEC1 */
>  		phy-handle = <&aqr105_phy>;
> -		phy-connection-type = "xgmii";
> +		phy-connection-type = "usxgmii";
>  	};
>  
>  	mdio@fc000 {
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> index 6a6514d0e..f927a8a25 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> @@ -147,7 +147,7 @@
>  
>  	ethernet@f0000 { /* 10GEC1 */
>  		phy-handle = <&aqr106_phy>;
> -		phy-connection-type = "xgmii";
> +		phy-connection-type = "usxgmii";
>  	};
>  
>  	ethernet@f2000 { /* 10GEC2 */
> diff --git a/drivers/net/phy/aquantia_main.c b/drivers/net/phy/aquantia_main.c
> index 0fedd28fd..3f24c42a8 100644
> @@ -487,7 +491,7 @@ static int aqr107_config_init(struct phy_device *phydev)
>  	/* Check that the PHY interface type is compatible */
>  	if (phydev->interface != PHY_INTERFACE_MODE_SGMII &&
>  	    phydev->interface != PHY_INTERFACE_MODE_2500BASEX &&
> -	    phydev->interface != PHY_INTERFACE_MODE_XGMII &&
> +	    phydev->interface != PHY_INTERFACE_MODE_USXGMII &&
>  	    phydev->interface != PHY_INTERFACE_MODE_10GKR)
>  		return -ENODEV;

Hi Heiner

Just to reiterate Florian's point. We need to be careful with device
tree blobs. We should try not to break them, at least not for a few
cycles.

I would much prefer to see a

WARN_ON(phydev->interface == PHY_INTERFACE_MODE_XGMII,
        "Your devicetree is out of date, please update it");

and accept XGMII for this cycle. These are development boards, so in
theory users are developers, so should know how to update the DT.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
