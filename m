Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 278886BCF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 15:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JaHA+HlyR/9G4GClduxq1LgLsEy6bGpfMkOlkV6Cz5Q=; b=uQx7xnnqnIRxFg
	CgpB+wVwV3YSkxs6UskOwpC+szOahIpp/2jMhRE5sUzcQwElRB4xVqTG+Q9qfslEXf1WUkH3FmTcn
	a5FyMPLqyXG50UTLtmQaYritHpQYDaNpaYrLAeFSYh+MeaA0r6URxJF9e+zS46g0KYKi/s2LFM5D+
	ZNj6ebfIrUzSrNbB/qi2XeaFpglK6lirMa0UM4Zoto/stwqs2Gu5hyak3LeRe76v0R+XSDfa90CNO
	VHO3Ho6SYhgNdfnAZ4pNU7WoK1PaNTPbFf0wUuO1Sbo/wKblwX40G7/40P6W676Umq+rK6guhl38K
	P9cbBgKMrtPY1c40bJSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnjw0-0007K2-KX; Wed, 17 Jul 2019 13:25:28 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnjvr-00074i-0G
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 13:25:21 +0000
Received: from [192.168.0.20]
 (cpc89242-aztw30-2-0-cust488.18-1.cable.virginm.net [86.31.129.233])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C955533C;
 Wed, 17 Jul 2019 15:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1563369895;
 bh=DdgjDJoPwjp9kpyXsHGQjTFqs6XaGIWGUgdg5XcEieQ=;
 h=Subject:To:Cc:References:Reply-To:From:Date:In-Reply-To:From;
 b=jAedL8l6jBq3cTHxzsgbAS2UNhXSAo+hwnvzoQ9W0uCjkXvlNZiSfVV09uHiR2XBS
 AWoq+xAPt9o0XQj8albr71kkevByHUjwJAV/+NY2WIYFHYfu0R6vcLaphRTELlt23p
 e+wuw/lUtSuYLRb2MUepLjfx0keJpY0HianbTSdA=
Subject: Re: [PATCH/RFC repost] arm64: dts: renesas: ebisu, draak: Limit
 EtherAVB to 100Mbps
To: Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org
References: <20190717125739.21450-1-horms+renesas@verge.net.au>
From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Organization: Ideas on Board
Message-ID: <e9a5dbab-16cf-5927-6959-fbe2f3a952f2@ideasonboard.com>
Date: Wed, 17 Jul 2019 14:24:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190717125739.21450-1-horms+renesas@verge.net.au>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_062520_619139_CED99356 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: kieran.bingham+renesas@ideasonboard.com
Cc: Andrew Lunn <andrew@lunn.ch>, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Simon,

On 17/07/2019 13:57, Simon Horman wrote:
> * According to the R-Car Gen3 Hardware Manual Errata for Rev 1.00 of
>   August 24, 2018, the TX clock internal delay mode isn't supported
>   on R-Car E3 (r8a77990) and D3 (r8a77995).
> 
> * TX clock internal delay mode is required for reliable 1Gbps communication
>   using the KSZ9031RNX phy present on the Ebisu and Draak boards.
> 
> Thus, the E3 based Ebisu and D3 based Draak boards reliably use 1Gbps and
> the speed should be limited to 100Mbps.

I believe you might mean 'can not' reliable use 1Gbps here :-)

Regards

Kieran


> 
> Based on work by Kazuya Mizuguchi.
> 
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
> 
> ---
> 
> This is a repost of this change.
> 
> In earlier review Andrew Lunn suggested that we may be able to take a
> different approach to this problem by using delays provided by the
> KSZ9031RNX PHY. In particular MMD address 2h, Register 8h -
> RGMII Clock Pad Skew.
> 
> I have consulted with Renesas regarding this suggestion, however,
> unfortunately it appears that the delays provided by this solution
> would be insufficient to allow for reliable 1Gbps communication.
> 
> At this point I believe the safest option is to apply this patch.
> ---
>  arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts | 1 +
>  arch/arm64/boot/dts/renesas/r8a77995-draak.dts | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
> index 83fc13ac3fa1..3d3d6d438a05 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
> +++ b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
> @@ -271,6 +271,7 @@
>  		interrupt-parent = <&gpio2>;
>  		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
>  		reset-gpios = <&gpio1 20 GPIO_ACTIVE_LOW>;
> +		max-speed = <100>;
>  	};
>  };
>  
> diff --git a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
> index 0711170b26b1..eb153323ed13 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
> +++ b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
> @@ -175,6 +175,7 @@
>  		reg = <0>;
>  		interrupt-parent = <&gpio5>;
>  		interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
> +		max-speed = <100>;
>  	};
>  };
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
