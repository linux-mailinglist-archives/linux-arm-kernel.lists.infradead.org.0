Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6821C860B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 11:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKU2ls4Oios3D4czhdPHz7i5oPTGnDAvV4Gp8M3NSN0=; b=X5gJEdoO0ZX5ui
	+/EgTcCBpBzBokEVDr5E5No7blnPMooSDkqgBW0SpbZZKTSVCbUvgjk4sG7SKslExylfxHIzAIydE
	pwhyDxFf7Q08uFaWAeAPrgUumpy5q07iJAAhooctxHWOPpqXRzEN2WDWnYTubyyVwym8Vq9btmra2
	zdRgGeppBhFsAleJXtXyAhuPKJTuQ/qvxTNAo6fwwoBN8XxtNFrOT2PCXRUJyMoqw0RffnQuC1kP7
	PYqDTA52WPwMCr0PCEAERWMjGIi0mNErqpUkwfZ5Z11BhWCVOLeJpSjSlR/OCx7aqtBFvIc/g2NQ5
	EvH2cr9QsnLFSeEKzqCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWd76-0005CU-TO; Thu, 07 May 2020 09:46:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWd6y-00057T-GL; Thu, 07 May 2020 09:46:38 +0000
X-UUID: f8e9161d124f4067a4c28ed893f921af-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=e6D3t8ns2OxS2Hrj/apZ7zCNfjedd09SDWEHt2azXbE=; 
 b=bmEMJmFpr2muEY2l2mGadZ/sE7Pxvzv/EmmmR3SVaiycjXy6OZepWSXA2WM4q4VJmiwR34+6zLyfPLqCBG4foKLcrRX9Ma06s8B9FlZSbMu9VwUIiOQzoyNVhP+BvJ4zG1334uCJjLnzaO/Hd/LR0Lc43t5IktjTYqPauQA1Z10=;
X-UUID: f8e9161d124f4067a4c28ed893f921af-20200507
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2016373190; Thu, 07 May 2020 01:46:29 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 02:46:25 -0700
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 7 May 2020 17:46:10 +0800
Message-ID: <1588844771.5921.27.camel@mtksdccf07>
Subject: Re: [PATCH 06/11] net: ethernet: mtk-eth-mac: new driver
From: Mark-MC.Lee <Mark-MC.Lee@mediatek.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 7 May 2020 17:46:11 +0800
In-Reply-To: <20200505140231.16600-7-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-7-brgl@bgdev.pl>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_024636_551975_104CCA13 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Felix
 Fietkau <nbd@openwrt.org>, Arnd Bergmann <arnd@arndb.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bartosz:
 I think the naming of this driver and its Kconfig option is too generic
that will confuse with current mediatek SoCs eth driver architecture(for
all mt7xxx SoCs). 
  Since mtk_eth_mac.c is not a common MAC part for all mediatek SoC but
only a specific eth driver for mt85xx, it will be more reasonable to
name it as mt85xx_eth.c and change NET_MEDIATEK_MAC to
NET_MEDIATEK_MT85XX. How do you think?


On Tue, 2020-05-05 at 16:02 +0200, Bartosz Golaszewski wrote:
> 
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> This adds the driver for the MediaTek Ethernet MAC used on the MT8*
> SoC
> family. For now we only support full-duplex.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
>  drivers/net/ethernet/mediatek/Kconfig       |    6 +
>  drivers/net/ethernet/mediatek/Makefile      |    1 +
>  drivers/net/ethernet/mediatek/mtk_eth_mac.c | 1476
> +++++++++++++++++++
>  3 files changed, 1483 insertions(+)
>  create mode 100644 drivers/net/ethernet/mediatek/mtk_eth_mac.c
> 
> diff --git a/drivers/net/ethernet/mediatek/Kconfig
> b/drivers/net/ethernet/mediatek/Kconfig
> index 5079b8090f16..5c3793076765 100644
> --- a/drivers/net/ethernet/mediatek/Kconfig
> +++ b/drivers/net/ethernet/mediatek/Kconfig
> @@ -14,4 +14,10 @@ config NET_MEDIATEK_SOC
>           This driver supports the gigabit ethernet MACs in the
>           MediaTek SoC family.
>  
> +config NET_MEDIATEK_MAC
How about rename to NET_MEDIATEK_MT85XX ?

> +       tristate "MediaTek Ethernet MAC support"
> +       select PHYLIB
> +       help
> +         This driver supports the ethernet IP on MediaTek MT85**
> SoCs.
> +
>  endif #NET_VENDOR_MEDIATEK
> diff --git a/drivers/net/ethernet/mediatek/Makefile
> b/drivers/net/ethernet/mediatek/Makefile
> index 3362fb7ef859..f7f5638943a0 100644
> --- a/drivers/net/ethernet/mediatek/Makefile
> +++ b/drivers/net/ethernet/mediatek/Makefile
> @@ -5,3 +5,4 @@
>  
>  obj-$(CONFIG_NET_MEDIATEK_SOC) += mtk_eth.o
>  mtk_eth-y := mtk_eth_soc.o mtk_sgmii.o mtk_eth_path.o
> +obj-$(CONFIG_NET_MEDIATEK_MAC) += mtk_eth_mac.o 
How about rename to mt85xx_eth.c?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
