Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8310F23C9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ku+XQ+iz+QDnp5scc0vNQ2f35eyX7xMoGFyoBHHimIM=; b=p8k7ypP0LbhMbr
	w6ZobcbsiSx7BjFy8SqmtAqXm5Lv3LQQIqlJC268ZegEUrBcaoBUlC+Efe0Zu1c5GXpFK3hNM0XBq
	QdtnmuruANmL5RGXVtVmLvOK/NjdQr1o3B8uk3tlmoemZS9DTzjjkMiaN/jAk4RrE9eDSVG4rnZy7
	JCALq8qqKGRyjjRLZbCKwHqZvedU7ZSGZ+FTiueuJzlx4zzDRvFTFKnFLPZJGtG1V3kMM3RT0SjnZ
	zS+woym69I7mCZOWW5myIpuY68+3UlL2WTFGsOtkkNBNGPohryy9Pp7ysvjViQ6hd7GqsKnDe/A0r
	QS1oaLgI9hmeDTdwzpHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkcW-0002FR-NN; Mon, 20 May 2019 15:54:36 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkcP-0002Em-33
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:54:30 +0000
X-Originating-IP: 90.88.22.185
Received: from windsurf (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E5F2D20011;
 Mon, 20 May 2019 15:54:10 +0000 (UTC)
Date: Mon, 20 May 2019 17:54:10 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 1/1] arm64: dts: marvell: mcbin: enlarge PCI memory window
Message-ID: <20190520175410.4c941bfc@windsurf>
In-Reply-To: <20190517161123.9293-1-xypron.glpk@gmx.de>
References: <20190517161123.9293-1-xypron.glpk@gmx.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_085429_284697_B09DAD48 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Heinrich,

On Fri, 17 May 2019 18:11:23 +0200
Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:

> Running a graphics adapter on the MACCHIATObin fails due to an
> insufficently sized memory window.
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

While I understand the change, I find it is a bit of a "one-off"
solution, which will only work specifically for the MacchiatoBin. But
admittedly, there isn't really a good generic solution: depending on
the number of PCIe ports and what you connect to them, you will need
windows of different sizes.

On older Armada platforms, it works a bit better because we have a
single PCIe MEM aperture and a single PCIe I/O aperture, from which all
PCIe ports allocate: each PCIe interface is a child bus of an emulated
root port.

Unfortunately, on Armada 7K/8K, each PCIe interface is seen as an
independent root complex, so we have one PCIe I/O aperture and one PCIe
MEM aperture for each.

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
