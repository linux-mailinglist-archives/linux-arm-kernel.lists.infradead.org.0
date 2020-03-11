Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C693181193
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:16:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5pR2PuwtMUr8EBKMbygI1WIVqMpHhbx3chCPOupxaw=; b=bTC30B8vHEnYZs
	sU31BU6iABNiCr9gQtz4WF1ol29Zg0UBNn8NV9caN7IFTD6D372hZIE8UOyJ/D2mU64UOJCaxJgN6
	wa2KjZSg5z5KHllb2ZN68Reih4Hvy8BuaXXZgPw5dIZcColstEdig8/uK25QdB7iFDOMinWbI+3nq
	d7Cd2Ygj8X/+vkD3JMFGcvBuBYlwWDhKP6rEl+B2rytU1KXOxh7kY94yU2OGTn0UyYsKkpIeZ9Fc8
	yVwmjvGJil8H0ZSh5/2k/lTc0PBOEzIZXnDNV+g5fgMwrnnDB1LNV/cjqHqpKTsbQIzkU9k1iRedc
	Bpd83lYmjiM9rcsJkHwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvbS-0005p9-SE; Wed, 11 Mar 2020 07:16:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvbJ-0005om-Qa
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:16:23 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAF5A208C3;
 Wed, 11 Mar 2020 07:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583910981;
 bh=OQIeb4oj8r6aT9zrf+ckOYy531/qz6nDOVCUb0TQuxU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PEWHmPatR+Metyz2pN2PIn+lc0oPlTzr34YQam5O/lpbq0OXTuRat4ADPVIE6H+p7
 WEy6/dZbEiUkSX2sud5UK18LvNfmefUqhP97G9i/8xWe79LAHG+uahsKto1NyWUx/c
 8jVaoqxKmfsFh3F+CZptkLDyC6ncQrvsuEdm2c5w=
Date: Wed, 11 Mar 2020 15:16:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH 1/3] arm64: dts: ls1028a: sl28: fix on-board EEPROMS
Message-ID: <20200311071613.GL29269@dragon>
References: <20200225175756.29508-1-michael@walle.cc>
 <20200225175756.29508-2-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225175756.29508-2-michael@walle.cc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_001621_882862_4C8D7063 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 06:57:54PM +0100, Michael Walle wrote:
> The module itself has another EEPROM at 50h on I2C4. The EEPROM on the
> carriers is located at 57h on I2C3. Fix that in the device trees.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>

Doesn't apply to my branch.

Shawn

> ---
>  .../fsl-ls1028a-kontron-kbox-a-230-ls.dts          |  6 +++---
>  .../fsl-ls1028a-kontron-sl28-var3-ads2.dts         | 14 ++++++++------
>  .../dts/freescale/fsl-ls1028a-kontron-sl28.dts     |  6 ++++++
>  3 files changed, 17 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
> index aaf3c04771c3..32f6c80414bc 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
> @@ -18,10 +18,10 @@
>  		     "kontron,sl28", "fsl,ls1028a";
>  };
>  
> -&i2c4 {
> -	eeprom@50 {
> +&i2c3 {
> +	eeprom@57 {
>  		compatible = "atmel,24c32";
> -		reg = <0x50>;
> +		reg = <0x57>;
>  		pagesize = <32>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
> index 20fd86746f94..ff4a43986290 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
> @@ -80,6 +80,14 @@
>  	};
>  };
>  
> +&i2c3 {
> +	eeprom@57 {
> +		compatible = "atmel,24c64";
> +		reg = <0x57>;
> +		pagesize = <32>;
> +	};
> +};
> +
>  &i2c4 {
>  	status = "okay";
>  
> @@ -92,12 +100,6 @@
>  		assigned-clocks = <&mclk>;
>  		assigned-clock-rates = <1250000>;
>  	};
> -
> -	eeprom@50 {
> -		compatible = "atmel,24c32";
> -		reg = <0x50>;
> -		pagesize = <32>;
> -	};
>  };
>  
>  &sai5 {
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
> index c60a444ad09d..4ba6aae45ef1 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
> @@ -181,6 +181,12 @@
>  
>  &i2c4 {
>  	status = "okay";
> +
> +	eeprom@50 {
> +		compatible = "atmel,24c32";
> +		reg = <0x50>;
> +		pagesize = <32>;
> +	};
>  };
>  
>  &lpuart1 {
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
