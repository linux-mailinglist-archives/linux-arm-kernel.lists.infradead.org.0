Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B83169C1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 03:03:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzQZMijrnOwLrkZeCtvvwBT8pGEtVMTzgat4vqnl5ss=; b=WwN/fRw3brelkf
	ktWsNTDMB+rnmm/57KGK/ZiA/SzCs9W9+xrfQwObyB3hpy7bFgXKIyt2+Cx7xycOTzqScjdd5LSSn
	VY5AMgU3oQmUHcjDQBlStqw795LOLAL+Dn5QZosRCAoJpvpDsSLzjdrYsWfmdSLh8l7axaP7qOBjt
	kWMSyZPj2gFQ7bvrQ5uDjhz1Y5Jmu+H7U1swk0JZ706Ib3xwBDevyCEHCokTKsVO0fSRH7Oq+TNcQ
	qqX70jMKPg2w6E/qCn7tb2EC55ZyX7C8azbTg61K9HjfK9WAcyy5fSHuBCdtp0Cjkabexb62e00AM
	/YrYKQnntDRN6HMVFhFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j635P-0003sG-0H; Mon, 24 Feb 2020 02:03:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j635G-0003rv-3u
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 02:02:59 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C8D82051A;
 Mon, 24 Feb 2020 02:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582509777;
 bh=cHdXWjpBFusazvMN9LdKno9+AYhTzTc6BdgJplICU2g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tsznOYtCHh2XnqXgIpKmtke23itFEAACrRE3GJiz6WIYoGItnDbBIu3DMTSQtZ9R4
 kBmDpblUpygrz979M3SO6qGIspeWwJF31KLot86qxH5FCUJlWSgubL70CosOXXfP/V
 HKSE7N22nGHlH8PYegB3WYfXDm8KymJHCI5bOJoA=
Date: Mon, 24 Feb 2020 10:02:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v2 4/9] arm64: dts: librem5-devkit: allow modem to wake
 the system from suspend
Message-ID: <20200224020251.GF27688@dragon>
References: <20200218084942.4884-1-martin.kepplinger@puri.sm>
 <20200218084942.4884-5-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218084942.4884-5-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_180258_174705_27F5FCEE 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, robh@kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 09:49:37AM +0100, Martin Kepplinger wrote:
> From: "Angus Ainslie (Purism)" <angus@akkea.ca>
> 
> Connect the WoWWAN signal to a gpio key to wake up the system from suspend.
> 
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> ---
>  .../arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index ec12477d925d..9c81b07f43f3 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -55,6 +55,15 @@
>  			wakeup-source;
>  			linux,code = <KEY_HP>;
>  		};
> +
> +		wwan_wake {

We prefer to use hyphen over underscore in node name.

Shawn

> +			label = "WWAN_WAKE";
> +			gpios = <&gpio3 8 GPIO_ACTIVE_LOW>;
> +			interrupt-parent = <&gpio3>;
> +			interrupts = <8 GPIO_ACTIVE_LOW>;
> +			wakeup-source;
> +			linux,code = <KEY_PHONE>;
> +		};
>  	};
>  
>  	leds {
> @@ -574,6 +583,7 @@
>  			MX8MQ_IOMUXC_SAI2_RXFS_GPIO4_IO21	0x16
>  			MX8MQ_IOMUXC_SAI2_RXC_GPIO4_IO22	0x16
>  			MX8MQ_IOMUXC_SAI5_RXC_GPIO3_IO20	0x180  /* HP_DET */
> +			MX8MQ_IOMUXC_NAND_DATA02_GPIO3_IO8	0x80   /* nWoWWAN */
>  		>;
>  	};
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
