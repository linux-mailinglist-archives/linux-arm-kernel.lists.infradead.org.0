Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 459CF49BDF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 10:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9TjhzIiEUl9DHHe2uGAxS5MSrDk9TpTi9AtzE5oxrc=; b=doFSdSt2SDlgar
	JnZ4L/i5JGTyDIw7hM0g9uBXp+HP2woE2eum6AKHuTJ8H8jnuhnt4PZmifWhFyplkkCna4jLP1eqB
	bqxbsE/jcJ7Ux9s83WOAohf7XKZpeVPJmufh4Hk0/KwBwrpOnxx1RlvQfylnW1e5bd2upuZq8y1S6
	0d+T4EOGMK7CBKhqQYkoGiSQyOwMDmnNHlaH4TgW5ia0UrzGZgmCwYydmpYiryOd3mSVNiSrnYXWE
	kqc/SwzQDW1IWwxL2p1NUX4X7URFMuj8zxGxSx1stekNosvvQ7uuKhiN440GeznC993Ubd+v2KvF7
	UDGlT56U6NpNDchnckXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd9J4-0005qa-UA; Tue, 18 Jun 2019 08:17:30 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd9Is-0005os-2f
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 08:17:20 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 8CF0360002;
 Tue, 18 Jun 2019 08:17:07 +0000 (UTC)
Date: Tue, 18 Jun 2019 10:17:07 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] arm64: dts: marvell: add missing #interrupt-cells property
Message-ID: <20190618081706.GD23549@piout.net>
References: <E1hcsxH-0007Vv-0l@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1hcsxH-0007Vv-0l@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_011718_277680_5E0048B2 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/06/2019 15:49:55+0100, Russell King wrote:
> The GPIO interrupt controllers are missing their required
> #interrupt-cells property, which prevents GPIO interrupts being
> specified in DT.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  arch/arm64/boot/dts/marvell/armada-cp110.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
> index 4d6e4a097f72..f71afb1de18f 100644
> --- a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
> @@ -238,6 +238,7 @@
>  					<85 IRQ_TYPE_LEVEL_HIGH>,
>  					<84 IRQ_TYPE_LEVEL_HIGH>,
>  					<83 IRQ_TYPE_LEVEL_HIGH>;
> +				#interrupt-cells = <2>;
>  				status = "disabled";
>  			};
>  
> @@ -253,6 +254,7 @@
>  					<81 IRQ_TYPE_LEVEL_HIGH>,
>  					<80 IRQ_TYPE_LEVEL_HIGH>,
>  					<79 IRQ_TYPE_LEVEL_HIGH>;
> +				#interrupt-cells = <2>;
>  				status = "disabled";
>  			};
>  		};
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
