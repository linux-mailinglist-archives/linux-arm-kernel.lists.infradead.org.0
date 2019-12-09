Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234A9117B9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 00:43:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9M5LFNVh+ipViL46z6GMHT01/aVll6IxPAZ6RCIekzw=; b=CAYZDbkxGQjaUq
	TWKael3StX9a5aTtZy+sxydS2o2gxoyQIjKnbsM0KBBhtT4YRZFNXvjq7X9vamkVg75bcNh1KQWCl
	Smk92pKxI2fn3AcuoCVS9UG4bUAJ7ayPyU3JVaoeORY4nFfA5irZXb2dw31+PzXCRqs031nRmCIrL
	26EbGHUTJmCSoA9Wws9R1GBG8R74brgitASwW2m/7zx9D+OxGm4AapuLWPYm/RZCOuoo6X5O7nFDL
	VbeIyLbtHUQHCxrnNFejVzu2OWtfyTQMaOgFvetNRPaTasYzSzpJc8zCBZ0ty1lFYK9k0x5JcZW/Z
	2200O5j5Xoh2V/X1UFlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieSgU-0007Ti-4b; Mon, 09 Dec 2019 23:43:22 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieSgM-0007Sm-7Y
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 23:43:16 +0000
X-Originating-IP: 195.39.63.77
Received: from localhost (unknown [195.39.63.77])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id A3F3EE0003;
 Mon,  9 Dec 2019 23:43:04 +0000 (UTC)
Date: Tue, 10 Dec 2019 00:43:02 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: Re: [PATCH v4 3/3] ARM: dts: at91: sama5d2: set the sdmmc gclk
 frequency
Message-ID: <20191209234302.GC1463890@piout.net>
References: <20191128074522.69706-1-ludovic.desroches@microchip.com>
 <20191128074522.69706-3-ludovic.desroches@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128074522.69706-3-ludovic.desroches@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_154314_408631_48E9C060 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 adrian.hunter@intel.com, robh+dt@kernel.org, Eugen.Hristev@microchip.com,
 claudiu.beznea@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/11/2019 08:45:22+0100, Ludovic Desroches wrote:
> Set the frequency of the generated clock used by sdmmc devices in order
> to not rely on the configuration done by previous components.
> 
> Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> ---
> 
> Changes:
> - v4: none
> - v3: none
> - v2: none
> 
>  arch/arm/boot/dts/sama5d2.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
