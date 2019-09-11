Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CAEAFD48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 15:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gbn8J8H5GJFhbNIpp0hVy5w2ylKC5jpU1pTYocgVlxg=; b=doFRPLT8mg+ACA
	g+QXRJYHjqFa9vIY5ecy7z2+N1+z909idsv9+HbIo8NfrxX79ISpDYK5tu+YI98ECG7CDUHOUuJCV
	5OnJhofWz9jQp9En0Z0eIgFWZKEpJFz7+/3H6XEFifrQ7yVnn+BriAMWAbCmq1O4CDkZtnQBk6tVR
	mpvKyC+2dV7m1e6A561CrJrkK9ExxR290i8saYFDhNm24Rps3McP32AmqDTWTbJW3l0B7mS+sHQlx
	JKquJl/DmR66iLwedpzEuMQzi6u0YCbdLdyOOZ7/d12cFTeWiyyjkryAAvRVfaHSBZeS2JHfi0TAX
	tDHOku6IYqEGO0LolkpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i82EN-0006on-K0; Wed, 11 Sep 2019 13:00:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i82E5-0005uF-GZ; Wed, 11 Sep 2019 13:00:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 169811000;
 Wed, 11 Sep 2019 06:00:01 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81A113F59C;
 Wed, 11 Sep 2019 06:00:00 -0700 (PDT)
Date: Wed, 11 Sep 2019 13:59:58 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 4/6] phy: meson-g12a-usb3-pcie: Add support for PCIe mode
Message-ID: <20190911125958.GW9720@e119886-lin.cambridge.arm.com>
References: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
 <1567950178-4466-5-git-send-email-narmstrong@baylibre.com>
 <20190911121954.GS9720@e119886-lin.cambridge.arm.com>
 <e4249d3a-9a98-c596-01ae-2917ffd78f17@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e4249d3a-9a98-c596-01ae-2917ffd78f17@baylibre.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_060001_636204_BB3DD941 
X-CRM114-Status: GOOD (  23.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: lorenzo.pieralisi@arm.com, khilman@baylibre.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, repk@triplefau.lt, maz@kernel.org,
 bhelgaas@google.com, linux-amlogic@lists.infradead.org, yue.wang@Amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 02:45:23PM +0200, Neil Armstrong wrote:
> On 11/09/2019 14:19, Andrew Murray wrote:
> > On Sun, Sep 08, 2019 at 01:42:56PM +0000, Neil Armstrong wrote:
> >> This adds extended PCIe PHY functions for the Amlogic G12A
> >> USB3+PCIE Combo PHY to support reset, power_on and power_off for
> >> PCIe exclusively.
> >>
> >> With these callbacks, we can handle all the needed operations of the
> >> Amlogic PCIe controller driver.
> >>
> >> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> >> ---
> >>  .../phy/amlogic/phy-meson-g12a-usb3-pcie.c    | 70 ++++++++++++++++---
> >>  1 file changed, 61 insertions(+), 9 deletions(-)
> >>
> >> diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
> >> index ac322d643c7a..08e322789e59 100644
> >> --- a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
> >> +++ b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
> >> @@ -50,6 +50,8 @@
> >>  	#define PHY_R5_PHY_CR_ACK				BIT(16)
> >>  	#define PHY_R5_PHY_BS_OUT				BIT(17)
> >>  
> >> +#define PCIE_RESET_DELAY					500
> >> +
> >>  struct phy_g12a_usb3_pcie_priv {
> >>  	struct regmap		*regmap;
> >>  	struct regmap		*regmap_cr;
> >> @@ -196,6 +198,10 @@ static int phy_g12a_usb3_init(struct phy *phy)
> >>  	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
> >>  	int data, ret;
> >>  
> >> +	ret = reset_control_reset(priv->reset);
> >> +	if (ret)
> >> +		return ret;
> >> +
> > 
> > Right, so we've moved this to apply to USB only, thus assuming PCI will
> > call .reset for its reset (why the asymmetry?).
> 
> Exact, there is no power_on/power_off when USB3 mode is used, and vendor
> always reset the PHY before switching to USB3, but for PCIe, it seems the
> reset and the power_on must be done separately with the PCIe controller init
> and reset in the middle.
> 
> I would prefer symmetry aswell :-/

OK.

Thanks,

Andrew Murray

> 
> Neil
> 
> > 
> > Thanks,
> > 
> > Andrew Murray
> > 
> >>  	/* Switch PHY to USB3 */
> >>  	/* TODO figure out how to handle when PCIe was set in the bootloader */
> >>  	regmap_update_bits(priv->regmap, PHY_R0,
> >> @@ -272,24 +278,64 @@ static int phy_g12a_usb3_init(struct phy *phy)
> >>  	return 0;
> >>  }
> >>  
> >> -static int phy_g12a_usb3_pcie_init(struct phy *phy)
> >> +static int phy_g12a_usb3_pcie_power_on(struct phy *phy)
> >> +{
> >> +	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
> >> +
> >> +	if (priv->mode == PHY_TYPE_USB3)
> >> +		return 0;
> >> +
> >> +	regmap_update_bits(priv->regmap, PHY_R0,
> >> +			   PHY_R0_PCIE_POWER_STATE,
> >> +			   FIELD_PREP(PHY_R0_PCIE_POWER_STATE, 0x1c));
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +static int phy_g12a_usb3_pcie_power_off(struct phy *phy)
> >> +{
> >> +	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
> >> +
> >> +	if (priv->mode == PHY_TYPE_USB3)
> >> +		return 0;
> >> +
> >> +	regmap_update_bits(priv->regmap, PHY_R0,
> >> +			   PHY_R0_PCIE_POWER_STATE,
> >> +			   FIELD_PREP(PHY_R0_PCIE_POWER_STATE, 0x1d));
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +static int phy_g12a_usb3_pcie_reset(struct phy *phy)
> >>  {
> >>  	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
> >>  	int ret;
> >>  
> >> -	ret = reset_control_reset(priv->reset);
> >> +	if (priv->mode == PHY_TYPE_USB3)
> >> +		return 0;
> >> +
> >> +	ret = reset_control_assert(priv->reset);
> >>  	if (ret)
> >>  		return ret;
> >>  
> >> +	udelay(PCIE_RESET_DELAY);
> >> +
> >> +	ret = reset_control_deassert(priv->reset);
> >> +	if (ret)
> >> +		return ret;
> >> +
> >> +	udelay(PCIE_RESET_DELAY);
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +static int phy_g12a_usb3_pcie_init(struct phy *phy)
> >> +{
> >> +	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
> >> +
> >>  	if (priv->mode == PHY_TYPE_USB3)
> >>  		return phy_g12a_usb3_init(phy);
> >>  
> >> -	/* Power UP PCIE */
> >> -	/* TODO figure out when the bootloader has set USB3 mode before */
> >> -	regmap_update_bits(priv->regmap, PHY_R0,
> >> -			   PHY_R0_PCIE_POWER_STATE,
> >> -			   FIELD_PREP(PHY_R0_PCIE_POWER_STATE, 0x1c));
> >> -
> >>  	return 0;
> >>  }
> >>  
> >> @@ -297,7 +343,10 @@ static int phy_g12a_usb3_pcie_exit(struct phy *phy)
> >>  {
> >>  	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
> >>  
> >> -	return reset_control_reset(priv->reset);
> >> +	if (priv->mode == PHY_TYPE_USB3)
> >> +		return reset_control_reset(priv->reset);
> >> +
> >> +	return 0;
> >>  }
> >>  
> >>  static struct phy *phy_g12a_usb3_pcie_xlate(struct device *dev,
> >> @@ -326,6 +375,9 @@ static struct phy *phy_g12a_usb3_pcie_xlate(struct device *dev,
> >>  static const struct phy_ops phy_g12a_usb3_pcie_ops = {
> >>  	.init		= phy_g12a_usb3_pcie_init,
> >>  	.exit		= phy_g12a_usb3_pcie_exit,
> >> +	.power_on	= phy_g12a_usb3_pcie_power_on,
> >> +	.power_off	= phy_g12a_usb3_pcie_power_off,
> >> +	.reset		= phy_g12a_usb3_pcie_reset,
> >>  	.owner		= THIS_MODULE,
> >>  };
> >>  
> >> -- 
> >> 2.17.1
> >>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
