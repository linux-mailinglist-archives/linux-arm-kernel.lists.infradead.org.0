Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2979770F77
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 05:00:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v45P3y4ojdHoPMR6sIw29gepqbH1BIJKWiKexB04lUs=; b=CU0Gw7YIn0jjAd
	fi4s7EMOLNqwGHIA1AMLUcilmZun2UqV6RpSRNnQNzxs9nvw0KuFGX9yHfRBTT7zlJgkqFT+qMZc+
	AXA+6mw2f8D7DFH+X6HCqsVcgxCdKw+vS7kzftT3u0Cv/aY4QGDKhkPv/KogXwEsNSjKzFyD5oJyl
	470hBEj5ewaLbtXr6M31PVlDt8h0oS3WuPe9jMtY5ktdmzFv/Be6Koik5pLEkFnvAdrIL4im1gzm2
	mF6BcEweIZj83TQZj2W91gUCrv6CrkQ3Xlnms6Y7V+TybCuP2j3iAcg4uZv15g7beYkyuMVKwQoGJ
	mzS4D2IEbJ7bMnDOmwmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpl2C-0007zk-Sp; Tue, 23 Jul 2019 03:00:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpl1n-0007zG-Kt
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 02:59:49 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 404C320840;
 Tue, 23 Jul 2019 02:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563850787;
 bh=PJiN02ZaWspoUTjLls5lAtxfgWphvYqbJjQlh5XlcHw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ekX8CnU6zapYYvnuUZQglOYWEjDnb0Z33UZj+V8z3FqIpiedzymGLNV7yOQA5gBCS
 82jTTq18J7YH9gEscNYcBWx3ZZk1Gsq4X/6rNI/DFCQyKAn1pVjj0QCPkNNsy5ILrW
 EPRaVfMdj2cCzVq1Nt8OV9yxTC9f9iKoA+etvGw0=
Date: Tue, 23 Jul 2019 10:59:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com, p.zabel@pengutronix.de
Subject: Re: [PATCH V4 1/2] dt-bindings: reset: imx7: Add support for i.MX8MM
Message-ID: <20190723025916.GL3738@dragon>
References: <20190705085406.22483-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705085406.22483-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_195947_715421_35B20A6F 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ping.bai@nxp.com,
 viresh.kumar@linaro.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 daniel.baluta@nxp.com, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 05, 2019 at 04:54:05PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> i.MX8MM can reuse i.MX8MQ's reset driver, update the compatible
> property and related info to support i.MX8MM.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Hi Philipp,

Let me know if you want me to pick this up.

Shawn

> ---
> Changes since V3:
> 	- Add comments to those reset indices to indicate which are NOT supported on i.MX8MM.
> ---
>  .../devicetree/bindings/reset/fsl,imx7-src.txt     |  6 +++--
>  include/dt-bindings/reset/imx8mq-reset.h           | 28 +++++++++++-----------
>  2 files changed, 18 insertions(+), 16 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> index 13e0951..c2489e4 100644
> --- a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> +++ b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> @@ -8,6 +8,7 @@ Required properties:
>  - compatible:
>  	- For i.MX7 SoCs should be "fsl,imx7d-src", "syscon"
>  	- For i.MX8MQ SoCs should be "fsl,imx8mq-src", "syscon"
> +	- For i.MX8MM SoCs should be "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon"
>  - reg: should be register base and length as documented in the
>    datasheet
>  - interrupts: Should contain SRC interrupt
> @@ -46,5 +47,6 @@ Example:
>  
>  
>  For list of all valid reset indices see
> -<dt-bindings/reset/imx7-reset.h> for i.MX7 and
> -<dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ
> +<dt-bindings/reset/imx7-reset.h> for i.MX7,
> +<dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ and
> +<dt-bindings/reset/imx8mq-reset.h> for i.MX8MM
> diff --git a/include/dt-bindings/reset/imx8mq-reset.h b/include/dt-bindings/reset/imx8mq-reset.h
> index 57c5924..f17ef2a 100644
> --- a/include/dt-bindings/reset/imx8mq-reset.h
> +++ b/include/dt-bindings/reset/imx8mq-reset.h
> @@ -38,26 +38,26 @@
>  #define IMX8MQ_RESET_PCIEPHY_PERST		27
>  #define IMX8MQ_RESET_PCIE_CTRL_APPS_EN		28
>  #define IMX8MQ_RESET_PCIE_CTRL_APPS_TURNOFF	29
> -#define IMX8MQ_RESET_HDMI_PHY_APB_RESET		30
> +#define IMX8MQ_RESET_HDMI_PHY_APB_RESET		30	/* i.MX8MM does NOT support */
>  #define IMX8MQ_RESET_DISP_RESET			31
>  #define IMX8MQ_RESET_GPU_RESET			32
>  #define IMX8MQ_RESET_VPU_RESET			33
> -#define IMX8MQ_RESET_PCIEPHY2			34
> -#define IMX8MQ_RESET_PCIEPHY2_PERST		35
> -#define IMX8MQ_RESET_PCIE2_CTRL_APPS_EN		36
> -#define IMX8MQ_RESET_PCIE2_CTRL_APPS_TURNOFF	37
> -#define IMX8MQ_RESET_MIPI_CSI1_CORE_RESET	38
> -#define IMX8MQ_RESET_MIPI_CSI1_PHY_REF_RESET	39
> -#define IMX8MQ_RESET_MIPI_CSI1_ESC_RESET	40
> -#define IMX8MQ_RESET_MIPI_CSI2_CORE_RESET	41
> -#define IMX8MQ_RESET_MIPI_CSI2_PHY_REF_RESET	42
> -#define IMX8MQ_RESET_MIPI_CSI2_ESC_RESET	43
> +#define IMX8MQ_RESET_PCIEPHY2			34	/* i.MX8MM does NOT support */
> +#define IMX8MQ_RESET_PCIEPHY2_PERST		35	/* i.MX8MM does NOT support */
> +#define IMX8MQ_RESET_PCIE2_CTRL_APPS_EN		36	/* i.MX8MM does NOT support */
> +#define IMX8MQ_RESET_PCIE2_CTRL_APPS_TURNOFF	37	/* i.MX8MM does NOT support */
> +#define IMX8MQ_RESET_MIPI_CSI1_CORE_RESET	38	/* i.MX8MM does NOT support */
> +#define IMX8MQ_RESET_MIPI_CSI1_PHY_REF_RESET	39	/* i.MX8MM does NOT support */
> +#define IMX8MQ_RESET_MIPI_CSI1_ESC_RESET	40	/* i.MX8MM does NOT support */
> +#define IMX8MQ_RESET_MIPI_CSI2_CORE_RESET	41	/* i.MX8MM does NOT support */
> +#define IMX8MQ_RESET_MIPI_CSI2_PHY_REF_RESET	42	/* i.MX8MM does NOT support */
> +#define IMX8MQ_RESET_MIPI_CSI2_ESC_RESET	43	/* i.MX8MM does NOT support */
>  #define IMX8MQ_RESET_DDRC1_PRST			44
>  #define IMX8MQ_RESET_DDRC1_CORE_RESET		45
>  #define IMX8MQ_RESET_DDRC1_PHY_RESET		46
> -#define IMX8MQ_RESET_DDRC2_PRST			47
> -#define IMX8MQ_RESET_DDRC2_CORE_RESET		48
> -#define IMX8MQ_RESET_DDRC2_PHY_RESET		49
> +#define IMX8MQ_RESET_DDRC2_PRST			47	/* i.MX8MM does NOT support */
> +#define IMX8MQ_RESET_DDRC2_CORE_RESET		48	/* i.MX8MM does NOT support */
> +#define IMX8MQ_RESET_DDRC2_PHY_RESET		49	/* i.MX8MM does NOT support */
>  
>  #define IMX8MQ_RESET_NUM			50
>  
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
