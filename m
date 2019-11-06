Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E0AF1B02
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 17:18:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tynx8lztrxPFFJ9djaMbbalzPTGHO9uBp4gQMAbB4Bc=; b=L6t9larNRp3UbD
	XzbZ6/btBtSPLWXrmU/zT9GF/3VgZCDqnGaDY6jNb9Fl8V0Ix534LjAXUAjSYFYBBsl6u/aBzuaHO
	FXXmaS5McH6/NvTccsrSP6J6z6YLXy+O3pjae5vi3/FvyvcgpBUo+Ma3GgoITS7Z13iGNAJj3Dfk+
	GZ0Nsff5tDO3/lcTQnoXffRAanAJdAXFalFHHkrDq8uLRUvns19svUTCQnoEQpJ402v2rj8ZNYy4V
	4lCAAIzRXKuJ7HIiC5FOnnCEpFCmtP8fz5dg8FaCmp6n5iolWBiOb5dpGnH10OQOU/C11GOicQoLE
	Mvf+HibE+RVvyT8T2U1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSO0r-0008Lu-2q; Wed, 06 Nov 2019 16:18:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSO0i-0008L0-W8
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 16:18:22 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iSO0f-0000VI-4J; Wed, 06 Nov 2019 17:18:17 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iSO0d-0003OC-GA; Wed, 06 Nov 2019 17:18:15 +0100
Date: Wed, 6 Nov 2019 17:18:15 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH V2] ARM: dts: imx6q-logicpd: Enable ili2117a Touchscreen
Message-ID: <20191106161815.uwcoe7spn3seupaq@pengutronix.de>
References: <20191106142308.10511-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106142308.10511-1-aford173@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:17:26 up 172 days, 22:35, 120 users,  load average: 0.16, 0.11,
 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_081821_033538_0F99728D 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adam,

On 19-11-06 08:23, Adam Ford wrote:
> The LCD used with the imx6q-logicpd board has an integrated
> ili2117a touch controller connected to i2c1.
> 
> This patch adds the node to enable this feature.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
> ili2117 support is scheduled to be introduced for Kernel v5.5.
> 
> V2:  Change node to touchscreen@26 and move comment about 5.5 to under the dashes
> 
> diff --git a/arch/arm/boot/dts/imx6q-logicpd.dts b/arch/arm/boot/dts/imx6q-logicpd.dts
> index d96ae54be338..7a3d1d3e54a9 100644
> --- a/arch/arm/boot/dts/imx6q-logicpd.dts
> +++ b/arch/arm/boot/dts/imx6q-logicpd.dts
> @@ -73,6 +73,16 @@
>  	status = "okay";
>  };
>  
> +&i2c1 {
> +	touchscreen@26 {
> +		compatible = "ilitek,ili2117";
> +		reg = <0x26>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_touchscreen>;

This phandle already exists?

Regards,
  Marco

> +		interrupts-extended = <&gpio1 6 IRQ_TYPE_EDGE_RISING>;
> +	};
> +};
> +
>  &ldb {
>  	status = "okay";
>  
> -- 
> 2.20.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
