Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC871C331E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 08:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFP2x4jxUbUmb7rQ8keWgyhJDObOTh0WE1YkuxCs/TM=; b=HGgZ4QNrT7B9mO
	iDP6yzrEEG28+4Pbdh0xSLfG40nIcMOB/h+rHHUjO8+AbmUuI8JlcNwAF4ODvFUkUbg+Q5dxHqI5A
	fOUBl3yhWyhIHrFlTmy3P/ZqtlparALZZeXvNnwNGuBJkc7Ltk7hIbG8VicKNG5Mxqv1CqWcvNyc2
	3OZMDr9Z3Pyu6ZFqhWckS9xidNiud2ej/yo7pUPbFyDQYRL7fwYhbVvgWfqGV4ZfLR6VIY4acxyZT
	O9SYnJZVNKuPkRSzBsY06H+Jv+oks3I2XF7u2w7Jz7rTC6klic941HlJ1CQZPqgGko+aNGizeZhnH
	xuqu8ZxP7ry9IXfxFQjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVUpw-0006Vc-SA; Mon, 04 May 2020 06:44:20 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVUpo-0006UY-MX
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 06:44:14 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4ADBC1A016D;
 Mon,  4 May 2020 08:44:09 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3BDCE1A0275;
 Mon,  4 May 2020 08:44:09 +0200 (CEST)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2766F205C7;
 Mon,  4 May 2020 08:44:09 +0200 (CEST)
Date: Mon, 4 May 2020 09:44:08 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx50: Remove unused iomuxc-gpr node
Message-ID: <20200504064408.tco77in2ro4f3n3h@fsr-ub1664-175>
References: <20200501203747.14196-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501203747.14196-1-festevam@gmail.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_234412_876199_87128C4B 
X-CRM114-Status: GOOD (  11.78  )
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

On 20-05-01 17:37:47, Fabio Estevam wrote:
> The iomuxc-gpr node is not used and causes the following dtc
> warning with W=1:
> 
> arch/arm/boot/dts/imx50.dtsi:286.28-289.6: Warning (unique_unit_address): /soc/bus@50000000/iomuxc@53fa8000: duplicate unit-address (also used in node /soc/bus@50000000/iomuxc-gpr@53fa8000)
> 
> Remove the node to fix the warning.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  arch/arm/boot/dts/imx50.dtsi | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx50.dtsi b/arch/arm/boot/dts/imx50.dtsi
> index d325658901c5..339294df0399 100644
> --- a/arch/arm/boot/dts/imx50.dtsi
> +++ b/arch/arm/boot/dts/imx50.dtsi
> @@ -288,11 +288,6 @@
>  				reg = <0x53fa8000 0x4000>;
>  			};
>  
> -			gpr: iomuxc-gpr@53fa8000 {
> -				compatible = "fsl,imx50-iomuxc-gpr", "syscon";
> -				reg = <0x53fa8000 0xc>;
> -			};
> -
>  			pwm1: pwm@53fb4000 {
>  				#pwm-cells = <2>;
>  				compatible = "fsl,imx50-pwm", "fsl,imx27-pwm";
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
