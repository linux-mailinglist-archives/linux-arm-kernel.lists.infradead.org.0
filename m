Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32717AFD08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 14:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uquSQnbB+nby5zv9OVsbsLitETy74vhXJpP8AwafWc=; b=IzVSTLYlT36fHI
	vwNw8aOHUmn2JJjQKzQNnynXvk9PaBN46xr+dC4sRpca87bPOA0nWnasHWvg+4SClOK3f8D7EplkW
	umoQDS7Fxb3fU+4ZvU5bRV4YKjsUvTsrH8EjzEyZn5WECN40LbYQQZ1LY0MP9AemzANpMiSpR/uSk
	LBedqvi5suYTbMo77ITw09aJsZSHZwXGm2QncVcrdcRTMZTj+9gUJg2SlXAv+WocXaSYGKAN/MoEE
	WH1a2qm/tlJc7yw5zjFQTwiR0hS107kG3aIoT/9roayuTXY0nsjNueAh6ulbB7xyiRlNn74qK3OeI
	vBrEBRE7eAJFZGDGP1AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i820X-00010Y-12; Wed, 11 Sep 2019 12:46:01 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8200-0000xz-DF
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 12:45:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id p7so3320131wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 05:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=sYTCPQr58Ua4ctdJ+VnB47YHWrWIBH3iEJ3RS9pRSbc=;
 b=YxweOHwIShbCH6hPS6i6HV84ePL/8cEwnniaq115pVZCO5TbxKkSDODe32M1V4EEcp
 kkvAWuy94ZbnizIyYiG/68Etc5xCsb5L2K0F/wnD8Z0T1/zmZB3W8nlgiBl46+hLGb3l
 8cDyaEku+ZkPIVqy4WrasJR182doXyud39F8FnbqWQklXrJtbo9d37Gq53dDsgT38+68
 uhcm73eH6zYBPMflwvFivpuyPAl6hX5UqX5TwSE2UKSUBsQYngi1R7Kh4mJc1O1UD23t
 Hu6ED0MLURUNKVvtT0PlmP5K1sSv+umSwhZOo/WZQYp2pZeIvyRsrI5aJwJ0//huUHte
 VACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=sYTCPQr58Ua4ctdJ+VnB47YHWrWIBH3iEJ3RS9pRSbc=;
 b=I5dVUMmvgfRzrfuLEskYGXFgv/Ig+xzcbmwni5QBGKY3ixz4s0zj5Ph5XLalkP53BK
 KHAthI24LVcrykaOKKXbGZ7KOd4h2xGV316/okTiDVml3SgchlmLMEVzRs6fg2yZimM/
 VGXmfItrOfvjazubCqg9pHfw8V4G3PcWVOCUvhkVL/YGCpfQv7gdJy0tsmc0INSLXE9Y
 vGkoc2KLQM95nDhxkLd3BC4F1aBqHlwR7kmKkAzWpUTzHDzY8GM4mP+djBTozbZHcTrj
 6VO7moiozBgxB1SgRkH4Qen5Mrff5wTSd7oq7Q6TrHZS6mv2l2w6s7DEmFvbVhzFvI7/
 2JeQ==
X-Gm-Message-State: APjAAAXQu6YzBEfg+lfrz9ZQdPGY9KMQ5uUVfGjq5p3zWGNGTz495s34
 YvzNoRXL+fX2Uu2D99evDu2llg==
X-Google-Smtp-Source: APXvYqzuBGTWjnqVDdMs2zEFwas3SIFlbtItk3NMd8bprZpJajDKQbiu1luuEHm9SFCTUIv/iE7wrg==
X-Received: by 2002:a05:600c:24e:: with SMTP id
 14mr3921540wmj.140.1568205924684; 
 Wed, 11 Sep 2019 05:45:24 -0700 (PDT)
Received: from [192.168.1.62] (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id x5sm29802865wrg.69.2019.09.11.05.45.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 05:45:24 -0700 (PDT)
Subject: Re: [PATCH 4/6] phy: meson-g12a-usb3-pcie: Add support for PCIe mode
To: Andrew Murray <andrew.murray@arm.com>
References: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
 <1567950178-4466-5-git-send-email-narmstrong@baylibre.com>
 <20190911121954.GS9720@e119886-lin.cambridge.arm.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <e4249d3a-9a98-c596-01ae-2917ffd78f17@baylibre.com>
Date: Wed, 11 Sep 2019 14:45:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190911121954.GS9720@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_054528_606354_E6DB6F18 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lorenzo.pieralisi@arm.com, khilman@baylibre.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, repk@triplefau.lt, maz@kernel.org,
 bhelgaas@google.com, linux-amlogic@lists.infradead.org, yue.wang@Amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/09/2019 14:19, Andrew Murray wrote:
> On Sun, Sep 08, 2019 at 01:42:56PM +0000, Neil Armstrong wrote:
>> This adds extended PCIe PHY functions for the Amlogic G12A
>> USB3+PCIE Combo PHY to support reset, power_on and power_off for
>> PCIe exclusively.
>>
>> With these callbacks, we can handle all the needed operations of the
>> Amlogic PCIe controller driver.
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>  .../phy/amlogic/phy-meson-g12a-usb3-pcie.c    | 70 ++++++++++++++++---
>>  1 file changed, 61 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
>> index ac322d643c7a..08e322789e59 100644
>> --- a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
>> +++ b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
>> @@ -50,6 +50,8 @@
>>  	#define PHY_R5_PHY_CR_ACK				BIT(16)
>>  	#define PHY_R5_PHY_BS_OUT				BIT(17)
>>  
>> +#define PCIE_RESET_DELAY					500
>> +
>>  struct phy_g12a_usb3_pcie_priv {
>>  	struct regmap		*regmap;
>>  	struct regmap		*regmap_cr;
>> @@ -196,6 +198,10 @@ static int phy_g12a_usb3_init(struct phy *phy)
>>  	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
>>  	int data, ret;
>>  
>> +	ret = reset_control_reset(priv->reset);
>> +	if (ret)
>> +		return ret;
>> +
> 
> Right, so we've moved this to apply to USB only, thus assuming PCI will
> call .reset for its reset (why the asymmetry?).

Exact, there is no power_on/power_off when USB3 mode is used, and vendor
always reset the PHY before switching to USB3, but for PCIe, it seems the
reset and the power_on must be done separately with the PCIe controller init
and reset in the middle.

I would prefer symmetry aswell :-/

Neil

> 
> Thanks,
> 
> Andrew Murray
> 
>>  	/* Switch PHY to USB3 */
>>  	/* TODO figure out how to handle when PCIe was set in the bootloader */
>>  	regmap_update_bits(priv->regmap, PHY_R0,
>> @@ -272,24 +278,64 @@ static int phy_g12a_usb3_init(struct phy *phy)
>>  	return 0;
>>  }
>>  
>> -static int phy_g12a_usb3_pcie_init(struct phy *phy)
>> +static int phy_g12a_usb3_pcie_power_on(struct phy *phy)
>> +{
>> +	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
>> +
>> +	if (priv->mode == PHY_TYPE_USB3)
>> +		return 0;
>> +
>> +	regmap_update_bits(priv->regmap, PHY_R0,
>> +			   PHY_R0_PCIE_POWER_STATE,
>> +			   FIELD_PREP(PHY_R0_PCIE_POWER_STATE, 0x1c));
>> +
>> +	return 0;
>> +}
>> +
>> +static int phy_g12a_usb3_pcie_power_off(struct phy *phy)
>> +{
>> +	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
>> +
>> +	if (priv->mode == PHY_TYPE_USB3)
>> +		return 0;
>> +
>> +	regmap_update_bits(priv->regmap, PHY_R0,
>> +			   PHY_R0_PCIE_POWER_STATE,
>> +			   FIELD_PREP(PHY_R0_PCIE_POWER_STATE, 0x1d));
>> +
>> +	return 0;
>> +}
>> +
>> +static int phy_g12a_usb3_pcie_reset(struct phy *phy)
>>  {
>>  	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
>>  	int ret;
>>  
>> -	ret = reset_control_reset(priv->reset);
>> +	if (priv->mode == PHY_TYPE_USB3)
>> +		return 0;
>> +
>> +	ret = reset_control_assert(priv->reset);
>>  	if (ret)
>>  		return ret;
>>  
>> +	udelay(PCIE_RESET_DELAY);
>> +
>> +	ret = reset_control_deassert(priv->reset);
>> +	if (ret)
>> +		return ret;
>> +
>> +	udelay(PCIE_RESET_DELAY);
>> +
>> +	return 0;
>> +}
>> +
>> +static int phy_g12a_usb3_pcie_init(struct phy *phy)
>> +{
>> +	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
>> +
>>  	if (priv->mode == PHY_TYPE_USB3)
>>  		return phy_g12a_usb3_init(phy);
>>  
>> -	/* Power UP PCIE */
>> -	/* TODO figure out when the bootloader has set USB3 mode before */
>> -	regmap_update_bits(priv->regmap, PHY_R0,
>> -			   PHY_R0_PCIE_POWER_STATE,
>> -			   FIELD_PREP(PHY_R0_PCIE_POWER_STATE, 0x1c));
>> -
>>  	return 0;
>>  }
>>  
>> @@ -297,7 +343,10 @@ static int phy_g12a_usb3_pcie_exit(struct phy *phy)
>>  {
>>  	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
>>  
>> -	return reset_control_reset(priv->reset);
>> +	if (priv->mode == PHY_TYPE_USB3)
>> +		return reset_control_reset(priv->reset);
>> +
>> +	return 0;
>>  }
>>  
>>  static struct phy *phy_g12a_usb3_pcie_xlate(struct device *dev,
>> @@ -326,6 +375,9 @@ static struct phy *phy_g12a_usb3_pcie_xlate(struct device *dev,
>>  static const struct phy_ops phy_g12a_usb3_pcie_ops = {
>>  	.init		= phy_g12a_usb3_pcie_init,
>>  	.exit		= phy_g12a_usb3_pcie_exit,
>> +	.power_on	= phy_g12a_usb3_pcie_power_on,
>> +	.power_off	= phy_g12a_usb3_pcie_power_off,
>> +	.reset		= phy_g12a_usb3_pcie_reset,
>>  	.owner		= THIS_MODULE,
>>  };
>>  
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
