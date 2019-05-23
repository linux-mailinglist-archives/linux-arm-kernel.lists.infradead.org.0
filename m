Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2542E274F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 06:09:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ell/JpUkjKQ4biNd9UWhGBj6Bb58vDcjRGd08XjJuws=; b=gjlvWsmKTgbXNR
	fN3nbuLNSjA2EhXUfF12ON7k1Z5L2XsUjPr8QHU7ZAEizZXqsUEj/wvydn5YCey0uwrXtS/jd1WHA
	8giIJzZeZKDyVzFwU/uBA+2Y3DlnFXyfMFgRNh+d7BLftbZsK9BHYsy0DLz8eWmMNOsaTIRWSc60Y
	jJnGa7tv4UPaC/bHjulvs0BNB0s4OrcG2usajMQcHW8C3DLsYxC5TLljR7/RcSzpQ8mYtOCnqlzxI
	jVosjNwLYAD90jR1ScPh+v2Z5Luiqhg3oryiE6f4YX05TUo99WhV5ZJpsYaD+OqsnwQgYBR5rBtKT
	CFh63qe/dE5OaGwnS6Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTf2I-0007u8-4e; Thu, 23 May 2019 04:08:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTf2B-0007tN-Er
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 04:08:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id 198so4221883wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 21:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/LhxOT+3mKOp8646fhyFd7RQKcrwy2o1g/++7VEPXKE=;
 b=CE1qn8SRdHON7QPLKdG5+1RWXAiSr9wqRIbZ1INqj7qD4bhX7+eB3oMQPMhbfC2UMf
 ACSczZ4AlW7JVW90IF971RTgWMGh0LU7VxzYqb3K8zz2ixGpep0P3sdWaMTjofryAEff
 GS6Y6CFo4xnFARu1+Kz1tv6T2rRgFKj96WMbZGlffYmKI8mOyh/IhzZbabHQLMvVqwze
 BDLvu4lRQnRcqOZHUd/C1PXEDDrCcQerwHhkRwhDgdRB7HzQAHi4P92K3bTN1w+tP/Hp
 +7/tix7UArGW2eoDRc11idcf1QtwA3Dz6VGWbF+R++vMswxqVTinD3KAk/o1bDXfzMbm
 q9uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/LhxOT+3mKOp8646fhyFd7RQKcrwy2o1g/++7VEPXKE=;
 b=JLcirwHdd3mDL3lC1M1eLmIqcFky+U9GBipqzSsh3+qXfVl8MM25/w6p0XrRWQXpXZ
 OrNIRNdvabOFyQ32E3AB1S5AxFwaIWzf/RoXMLEhV86JLa2rlLSEXzUNrzsfUMq1WqqK
 Mr8hwRM9ezsWMqO8mmciu1gaO0p1dZOU+G2KwD96ZRkLu3frJ4KqYJKkZdiCKcJpYff7
 QcN8cNKC1Aj7M8pFGJLJYJmF/EkraSS/K55mKQAg1MFvT/0cXf14fo/SEZpolQMRmDIc
 vQJKtaxCMg+BPyBQPcriq+4G7BYmh7HrzNq++kC0tw7oEulg2/QogaAea+CNOa4Cr4qC
 lOUg==
X-Gm-Message-State: APjAAAVg1u0KdZsKUOubnwzc+qN+nVjsWiJP2KhMgHHGAh3S9qXTpnaE
 xSqhjo4waNv7jLYoXUk5C8M=
X-Google-Smtp-Source: APXvYqzWaIe7PQakTCW3+fi9El0aDhj4hoknFNBnZkDaPkn73UP52tqIRMVI/Ba0VNKZ1d7l/QwKaQ==
X-Received: by 2002:a7b:c7d6:: with SMTP id z22mr9494486wmk.54.1558584528762; 
 Wed, 22 May 2019 21:08:48 -0700 (PDT)
Received: from ?IPv6:2003:ea:8bd4:5700:58fa:1813:196c:76bb?
 (p200300EA8BD4570058FA1813196C76BB.dip0.t-ipconnect.de.
 [2003:ea:8bd4:5700:58fa:1813:196c:76bb])
 by smtp.googlemail.com with ESMTPSA id 19sm4874003wmi.10.2019.05.22.21.08.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 21:08:48 -0700 (PDT)
Subject: Re: [PATCH net-next 2/2] net: phy: aquantia: add USXGMII support
To: Andrew Lunn <andrew@lunn.ch>
References: <110a1e45-56a7-a646-7b63-f39fe3083c28@gmail.com>
 <2c68bdb1-9b53-ce0b-74d3-c7ea2d9e7ac0@gmail.com>
 <20190522205851.GA15257@lunn.ch>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <8e34e321-fe1d-0dea-0d85-246876c43e14@gmail.com>
Date: Thu, 23 May 2019 06:08:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522205851.GA15257@lunn.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_210851_526931_C7DEFD81 
X-CRM114-Status: GOOD (  24.48  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hkallweit1[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hkallweit1[at]gmail.com)
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

On 22.05.2019 22:58, Andrew Lunn wrote:
> On Wed, May 22, 2019 at 09:58:32PM +0200, Heiner Kallweit wrote:
>> So far we didn't support mode USXGMII, and in order to not break the
>> two Freescale boards mode XGMII was accepted for the AQR107 family
>> even though it doesn't support XGMII. Add USXGMII support to the
>> Aquantia PHY driver and change the phy connection type for the two
>> boards.
>>
>> As an additional note: Even though the handle is named aqr106
>> there seem to be LS1046A boards with an AQR107.
>>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>> ---
>>  arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts | 2 +-
>>  arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 2 +-
>>  drivers/net/phy/aquantia_main.c                   | 6 +++++-
>>  3 files changed, 7 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts
>> index 4223a2352..c2ce1a611 100644
>> --- a/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts
>> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts
>> @@ -139,7 +139,7 @@
>>  
>>  	ethernet@f0000 { /* 10GEC1 */
>>  		phy-handle = <&aqr105_phy>;
>> -		phy-connection-type = "xgmii";
>> +		phy-connection-type = "usxgmii";
>>  	};
>>  
>>  	mdio@fc000 {
>> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
>> index 6a6514d0e..f927a8a25 100644
>> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
>> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
>> @@ -147,7 +147,7 @@
>>  
>>  	ethernet@f0000 { /* 10GEC1 */
>>  		phy-handle = <&aqr106_phy>;
>> -		phy-connection-type = "xgmii";
>> +		phy-connection-type = "usxgmii";
>>  	};
>>  
>>  	ethernet@f2000 { /* 10GEC2 */
>> diff --git a/drivers/net/phy/aquantia_main.c b/drivers/net/phy/aquantia_main.c
>> index 0fedd28fd..3f24c42a8 100644
>> @@ -487,7 +491,7 @@ static int aqr107_config_init(struct phy_device *phydev)
>>  	/* Check that the PHY interface type is compatible */
>>  	if (phydev->interface != PHY_INTERFACE_MODE_SGMII &&
>>  	    phydev->interface != PHY_INTERFACE_MODE_2500BASEX &&
>> -	    phydev->interface != PHY_INTERFACE_MODE_XGMII &&
>> +	    phydev->interface != PHY_INTERFACE_MODE_USXGMII &&
>>  	    phydev->interface != PHY_INTERFACE_MODE_10GKR)
>>  		return -ENODEV;
> 
> Hi Heiner
> 
> Just to reiterate Florian's point. We need to be careful with device
> tree blobs. We should try not to break them, at least not for a few
> cycles.
> 
> I would much prefer to see a
> 
> WARN_ON(phydev->interface == PHY_INTERFACE_MODE_XGMII,
>         "Your devicetree is out of date, please update it");
> 
> and accept XGMII for this cycle. These are development boards, so in
> theory users are developers, so should know how to update the DT.
> 
I see your point. Then I'll just change phylib and will let the NXP
guys change the board DTS.

>     Andrew
> 
Heiner

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
