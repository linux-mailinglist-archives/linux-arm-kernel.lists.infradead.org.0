Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C0DF6023
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 16:52:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hLfYiD33ujvjI+GL/l+iVIifhpUAfDNvFcAO8WHAMKY=; b=BxG5KcU/GK344u
	663J8CNYqkplNT6B/Tr47dwvhlnuTPu1r1zUi/u9tTntJQAUuvta1yw6HZwmd6Ysl2sak3yxe0EVJ
	EthRkeHXhLsWkSi1zT3G7kqtbixTXCYHZd9lSkvwrsPMKfhKHSvvbe0FJsdZs7NSnIAP48uKs0+4W
	UThR5k7F3hceRTj6IbcQtoXw6xQekul+oKpuZN6BPqYLFqpkWTUPqkAu2TW4y/hHg2BSuwKTAd+wX
	uKJOV1E9zBZxgvl+2E+GHHn50sn4YSM725LgPCivoXRacE3BZdlnsA2qYY5ydMFV2QX3x/X9vhil5
	DvGEi+KW2IjY1iZ8+KhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTT1s-0000v9-4Q; Sat, 09 Nov 2019 15:52:00 +0000
Received: from mailoutvs7.siol.net ([185.57.226.198] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTT1j-0000uW-Fb
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 15:51:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 26EA4522776;
 Sat,  9 Nov 2019 16:51:43 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id sENraahnSVkF; Sat,  9 Nov 2019 16:51:42 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id D20A2522784;
 Sat,  9 Nov 2019 16:51:42 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 7E09B52272F;
 Sat,  9 Nov 2019 16:51:39 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Andre Heider <a.heider@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: orange-pi-3: Enable IR receiver
Date: Sat, 09 Nov 2019 16:51:39 +0100
Message-ID: <1875943.ZifhFTZG3p@jernej-laptop>
In-Reply-To: <20191109113436.17979-1-a.heider@gmail.com>
References: <20191109113436.17979-1-a.heider@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_075151_679950_B017C1C0 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.198 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mripard@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne sobota, 09. november 2019 ob 12:34:36 CET je Andre Heider napisal(a):
> Orange Pi 3 has an on-board IR receiver, enable it.
> 
> Signed-off-by: Andre Heider <a.heider@gmail.com>

Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>

Thanks!

Best regards,
Jernej

> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts index
> eb379cd402ac..d3e30a67587c 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> @@ -263,6 +263,10 @@
>  	};
>  };
> 
> +&r_ir {
> +	status = "okay";
> +};
> +
>  &uart0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart0_ph_pins>;





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
