Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDF621EE2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 22:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Py0zLZoryDL2qqkG1m/ToCymsSqFK0aRmCyGICsyko=; b=CbwS09BrIyDASb
	C/Z2hMQFnUjV6On5q4acOsLbVtHrZEmN0VxFv2YL+xRLg+F1XPhqcwDroK6YNzOyzzCC0fuYJ38d3
	Ajf9WULTv3O4q0+yP16FYs93DWoU099XS7ySlh+AtD/MHP492EDVDoeWMlTtxWR84eQrj1OklLhy5
	3a5Na5LBEprvWt1gCSi5cUWwNNeo6N2hjwGx9y6eT0YiAuGXDQLAz8dNmINNMDhWfUVvwCEa1FmcC
	aRyPZTLpUzcz6dLpbBhqEU+L9cbrqc0vtCCkPdBc4QJzYHOOobidG2XPv2NRelw1+qGG87FbwPOXv
	7QmbJJZIuHLsW/C0bE+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRj9W-0002xN-OT; Fri, 17 May 2019 20:08:26 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRj9P-0002wq-79
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 20:08:21 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id B510940008;
 Fri, 17 May 2019 20:08:00 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH 1/1] arm64: dts: marvell: mcbin: enlarge PCI memory window
In-Reply-To: <20190517161123.9293-1-xypron.glpk@gmx.de>
References: <20190517161123.9293-1-xypron.glpk@gmx.de>
Date: Fri, 17 May 2019 22:08:00 +0200
Message-ID: <87k1eozvxb.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_130819_405594_7F6DFBC2 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heinrich Schuchardt,

> Running a graphics adapter on the MACCHIATObin fails due to an
> insufficently sized memory window.
I think "insufficient" is enough or I miss something.

>
> Enlarge the memory window for the PCIe slot to 512 MiB.
>
> With the patch I am able to use a GT710 graphics adapter with 1 GB onboard
> memory.
>
> These are the mapped memory areas that the graphics adapter is actually
> using:
>
> Region 0: Memory at cc000000 (32-bit, non-prefetchable) [size=16M]
> Region 1: Memory at c0000000 (64-bit, prefetchable) [size=128M]
> Region 3: Memory at c8000000 (64-bit, prefetchable) [size=32M]
> Region 5: I/O ports at 1000 [size=128]
> Expansion ROM at ca000000 [disabled] [size=512K]

From my point of view this patch is correct, I don't think it is a
problem to map more memory. So I applied on it mvebu/dt64.

But I add also Thomas in CC who know better the PCIe support on mvebu/

Thanks,

Gregory


>
> Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
> ---
>  arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
> index 329f8ceeebea..205071b45a32 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
> @@ -184,6 +184,8 @@
>  	num-lanes = <4>;
>  	num-viewport = <8>;
>  	reset-gpios = <&cp0_gpio2 20 GPIO_ACTIVE_LOW>;
> +	ranges = <0x81000000 0x0 0xf9010000 0x0 0xf9010000 0x0 0x10000
> +		  0x82000000 0x0 0xc0000000 0x0 0xc0000000 0x0 0x20000000>;
>  	status = "okay";
>  };
>
> --
> 2.20.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
