Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B5A14F78E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Feb 2020 11:51:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dniAPM3e/DjS9DUjrnaiUiw4J96b8R3oq45rbuuVaB0=; b=fe3j+f3jfVwowaVEEtHp65Y2e
	IUyhoFDiUBbw9DdDqXBQd2yG6kz6HFMW6BdZoAt3FpBI0LkbONWRx+zJ5HiDhJR+Z+moCqbcuxnzF
	QpDZQWha6W4g1vyQg9lvCddLtGM1Irt2aSOEjjL1k/AiSDiCVM8vpZb67eVGcP6K+lc+TmdeoydL6
	Svp7wTn+CK8HJVUxbOFodiLTMr2CuVZkFHmAby9IUc0UP/eEkN1MUb/MSNthzW6qpwYfevhKUAiEN
	C4NBFKXNoSMygGhn2ceVQu+jcs+ZiYs3ftNinSOMyJC5lbip2psucKtGXW/nheYt2R2+uuSLaYty0
	PMcSOp4IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixqMz-0007V3-1A; Sat, 01 Feb 2020 10:51:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixqMs-0007UU-QF; Sat, 01 Feb 2020 10:51:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A54EFEC;
 Sat,  1 Feb 2020 02:51:11 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9893C3F68E;
 Sat,  1 Feb 2020 02:51:10 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Adam Van Ymeren <adam@vany.ca>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <87imkryz5t.fsf@vany.ca>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
Date: Sat, 1 Feb 2020 10:51:12 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <87imkryz5t.fsf@vany.ca>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_025114_895415_5A4238DB 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adam,

On 2020-01-31 11:38 pm, Adam Van Ymeren wrote:
> With this change the kernel successfully finds the SD Card and can load
> a rootfs from it.  Tested on hardware.
> 
> Signed-off-by: Adam Van Ymeren <adam@vany.ca>
> 
> diff -uprN -X linux-5.5/Documentation/dontdiff linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> --- linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts	2020-01-26 19:23:03.000000000 -0500
> +++ linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts	2020-01-31 16:26:35.377075419 -0500
> @@ -44,7 +44,7 @@
>   
>   	vcc_sdio: sdmmcio-regulator {
>   		compatible = "regulator-gpio";
> -		gpios = <&grf_gpio 0 GPIO_ACTIVE_HIGH>;
> +		gpios = <&gpio0 RK_PD1 GPIO_ACTIVE_HIGH>;

Given that the RK3328 datasheet has no mention of GPIO0_D1 existing at 
all, how sure are you that this is correct - have you tested cards in 
both 3.3V and 1.8V (UHS-1) signalling modes?

The ROC-RK3328-CC schematics show GPIO_MUTE being used to bias the 
feedback pin of an adjustable regulator supplying the SDMMC0 I/O domain, 
so it seems more likely that the pin is correct but the states (or the 
polarity) are backwards.

Robin.

>   		states = <1800000 0x1
>   			  3300000 0x0>;
>   		regulator-name = "vcc_sdio";
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
