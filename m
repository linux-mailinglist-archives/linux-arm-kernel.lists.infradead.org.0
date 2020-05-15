Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0979A1D527F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ODyTGyYUM9u6tJPy29IbhEMmXNoyhxQcCHWZZOa6aU=; b=c6NXfbOx95e2qM
	OznoBA6hNmUbjPt3duwvPa4+WD47J19G5PxdNFLnjJKuaQ6+rHGXVRiVR9hX69s+MuQ2LP9u55lg8
	nkOksCYdGCMkwlcW29zFB/cpAAW8h75wQ4Y+5Ep6PUW8eHjNlN5o5G7xqqZTs5HPVrbUmNXE1n/08
	rqTVOQlDz01CNtgDBIrfWkM9mcUJukMWIK9cUPe68HAQrhCyDZyQkszKkyFz0tpeAdxmA1I+mLdZb
	fS0hOh7h862lCYuc8aV/1nbh+IiliQ1cC7T4ilcr2v7u6kbZq6hvKpDe9qnwrsmNNWwWdgKxrWZwi
	unc2udkUmmfwosY6mJvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbh6-0008TR-8N; Fri, 15 May 2020 14:52:12 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbgp-0008RX-7p
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:52:03 +0000
X-Originating-IP: 90.65.91.255
Received: from localhost (lfbn-lyo-1-1912-bdcst.w90-65.abo.wanadoo.fr
 [90.65.91.255]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id D2319240032;
 Fri, 15 May 2020 14:51:49 +0000 (UTC)
Date: Fri, 15 May 2020 16:51:49 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH 00/16] ARM: dts: at91: sama5d2: Rework Flexcom definitions
Message-ID: <20200515145149.GU34497@piout.net>
References: <20200514050301.147442-1-tudor.ambarus@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514050301.147442-1-tudor.ambarus@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075155_412266_1E4856B0 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/05/2020 05:03:06+0000, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Rework the sama5d2 SoC flexcom definitions. The Flexcom IPs are
> in the SoC. Move all the flexcom nodes together with their function
> definitions in the SoC dtsi. Boards will just fill the pins and enable
> the desired functions. With this we remove the duplication of the
> flexcom definitions across the sama5d2 boards.
> 
> Round the flexcom support and add the missing flexcom definitions.
> All the flexcom functions are now defined.
> 
> Apart of the aliases and the new flx0 i2c function on sama5d2_xplained,
> the only functional change that this patch set adds, is that it uart5,
> uart6 and uart7 inherit the atmel,fifo-size = <32>; optional property.
> These nodes have both the FIFO size described and the DMA enabled.
> uart5 was tested on sama5d27-wlsom1-ek. On uart6 and uart7 a
> Bluetooth module can be connected. Tested BT uart7 on sama5d2-icp.
> 
> Tudor Ambarus (16):
>   ARM: dts: at91: sama5d2: Fix the label numbering for flexcom functions
>   ARM: dts: at91: sama5d2: Move flx4 definitions in the SoC dtsi
>   ARM: dts: at91: sama5d2: Move flx3 definitions in the SoC dtsi
>   ARM: dts: at91: sama5d2: Move flx2 definitions in the SoC dtsi
>   ARM: dts: at91: sama5d2: Move flx1 definitions in the SoC dtsi
>   ARM: dts: at91: sama5d2: Move flx0 definitions in the SoC dtsi
>   ARM: dts: at91: sama5d2: Specify the FIFO size for the Flexcom UART
>   ARM: dts: at91: sama5d2: Add DMA bindings for the SPI and UART flx4
>     functions
>   ARM: dts: at91: sama5d2: Add DMA bindings for the flx3 SPI function
>   ARM: dts: at91: sama5d2: Add DMA bindings for the flx1 I2C function
>   ARM: dts: at91: sama5d2: Add DMA bindings for the SPI and I2C flx0
>     functions
>   ARM: dts: at91: sama5d2: Add missing flexcom definitions
>   ARM: dts: at91: sama5d2: Remove i2s and tcb aliases from SoC dtsi
>   ARM: dts: at91: sama5d2_xplained: Add alias for DBGU
>   ARM: dts: at91: sama5d2_xplained: Describe the flx0 I2C function
>   ARM: dts: at91: sama5d2_ptc_ek: Add comments to describe the aliases
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
