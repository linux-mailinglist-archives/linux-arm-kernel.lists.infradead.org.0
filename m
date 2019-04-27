Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C3EB3F2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 18:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51Iq1aG7MPz/Eo6C+JYsZhn+4pu2AJEKArCYP76E7ws=; b=AR4bwSF5xv8fMa
	MP1QRpjFS+3tyG2ybB/hQgsjG9bsGUR8jAb/Z7daEf1Me9Q4LD+xJj2aTivf14FwIJrFf/MKhMnNS
	7ZiTbr9QHHF65JP060LhkZhcFOdSr1FKhHYCcjqe8BIV1z/3BKhW99IAMr3BPlD8Y+gNg+kMnwYWG
	TXFZXnbCmEInr2nwTbU/ekxRDrklXg47M++uS1bAja2a5FmseoO65FT4/FfVEAhKK9HwqIxbUrsvO
	GjuppzKEAzfGdOoAwscRBSagoCdAFwONWtyScHo/6uTBr9FoiIa4XP2H2Db+8xxIxzvLqJdDS1swP
	dH+rHBEgK5/nCpWaLTsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKQMi-0001Wp-BQ; Sat, 27 Apr 2019 16:39:52 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKQMb-0001Vm-0p; Sat, 27 Apr 2019 16:39:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3x96KLf+7WG5HZo66dPuyudWlNtB7m+kcjzsKB7rZzg=; b=NP4Xq1USCnJhhYgYDDYXEAfO7F
 FGgqIcxVfyzF/TNICY/nGs8WP7a4PxioELoSKoCFgpAu3TA2hS6u0jXIgcnYNXUS0c/DcMANKnWb3
 WaCK+nEJcGW7H4R96huF6cNNCPFWroHi82Or7gh9W1yQdJIRu+R0A5bwWFXhP1+YNzSU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hKQMF-0002l5-3c; Sat, 27 Apr 2019 18:39:23 +0200
Date: Sat, 27 Apr 2019 18:39:23 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH 2/4] dt-bindings: doc: Reflect new NVMEM
 of_get_mac_address behaviour
Message-ID: <20190427163923.GC9816@lunn.ch>
References: <1556320002-26213-1-git-send-email-ynezz@true.cz>
 <1556320002-26213-3-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556320002-26213-3-git-send-email-ynezz@true.cz>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_093945_225230_85A35011 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Li Yang <leoyang.li@nxp.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Salil Mehta <salil.mehta@huawei.com>,
 Fugang Duan <fugang.duan@nxp.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alban Bedel <albeu@free.fr>,
 linux-oxnas@groups.io, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> diff --git a/Documentation/devicetree/bindings/net/macb.txt b/Documentation/devicetree/bindings/net/macb.txt
> index 8b80515..92c5642 100644
> --- a/Documentation/devicetree/bindings/net/macb.txt
> +++ b/Documentation/devicetree/bindings/net/macb.txt
> @@ -26,15 +26,15 @@ Required properties:
>  	Optional elements: 'tsu_clk'
>  - clocks: Phandles to input clocks.
>  
> -Optional properties:
> -- nvmem-cells: phandle, reference to an nvmem node for the MAC address
> -- nvmem-cell-names: string, should be "mac-address" if nvmem is to be used
> -
>  Optional properties for PHY child node:
>  - reset-gpios : Should specify the gpio for phy reset
>  - magic-packet : If present, indicates that the hardware supports waking
>    up via magic packet.
>  - phy-handle : see ethernet.txt file in the same directory
> +- mac-address: See ethernet.txt in the same directory.
> +- local-mac-address: See ethernet.txt in the same directory.
> +- nvmem-cells: See ethernet.txt in the same directory.
> +- nvmem-cell-names: See ethernet.txt in the same directory.

This looks wrong. The MAC address is not a PHY property, so should not
be inside the PHY child node.

phy-handle is in the wrong place, but that is a separate problem.

	   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
