Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FD51C3321
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 08:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UEpAVBUcNXuvMqR5eRLmPtx8JetJvoGS5I7+UYH3QL0=; b=btDPICcOCTKM7y
	s6zyY6ofKa+1nLyTzoGNH7SZB3sJKdh2NVwDl5PgA2FGuWQTY5trnPMinnOpWW9NaFn8YXTd7+MHK
	wiPpm29LbUFJ+ATZNRYd3eomHBW3QyG3dIYNJ1ZvUb1Mg5smS0yWxuKW0g5LdAQ0YQh9bdxkzpcUC
	yADkaLLDux6Kz+ZriO5XksVYCeWO9u8sdss5WtiZMA8H3/Zbjwv3qcKbPi33gnb7fgii73a+ux9T+
	jJwbdv/C+fUep3DtoLDYGLRpDv0J4or4kyVikpNLud/TSHXr+DpLvbKzT1pa6GDvUJh6MQkujeBFR
	80lJ0vocNDgeZfV3ObNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVUr8-0000vp-Bf; Mon, 04 May 2020 06:45:34 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVUqs-0000ud-AU
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 06:45:19 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F1FB21A0276;
 Mon,  4 May 2020 08:45:16 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E5E9A1A0272;
 Mon,  4 May 2020 08:45:16 +0200 (CEST)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D1B64205A5;
 Mon,  4 May 2020 08:45:16 +0200 (CEST)
Date: Mon, 4 May 2020 09:45:16 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8qxp-mek: Do not use underscore in node
 name
Message-ID: <20200504064516.aeh5vg2v42dbq3zg@fsr-ub1664-175>
References: <20200501203436.14076-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501203436.14076-1-festevam@gmail.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_234518_507443_2C4EA613 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: robh+dt@kernel.org, shawnguo@kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-05-01 17:34:36, Fabio Estevam wrote:
> Underscores are not recommended to be used in node names, so change
> the pinctrl IO expander node name.
> 
> This change also makes the pinctrl node names to follow the convention
> used by other pinctrl group names.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> index 9b105aec8773..46437d3c7a04 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> @@ -216,7 +216,7 @@
>  		>;
>  	};
>  
> -	pinctrl_ioexp_rst: ioexp_rst_grp {
> +	pinctrl_ioexp_rst: ioexprstgrp {
>  		fsl,pins = <
>  			IMX8QXP_SPI2_SDO_LSIO_GPIO1_IO01			0x06000021
>  		>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
