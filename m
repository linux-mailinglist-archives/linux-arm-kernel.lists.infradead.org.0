Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0C978767
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 10:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95qLYE9+bJfQhW8pUhqA8W0rd/wQdwKLxkHxiTdq5uE=; b=gvoNNpuLykWwKk
	SBaaSBFJ69qLQp6HZ7V2/JnvkcHXKvmoidr7WdsOse+IjDJ/f2euYJnOXLExGjYgrTydZ1smat36w
	pMzyywD0pAnPjZ0wdlFZRptodlfP75I5BFHqdBIHKFSB3UX1SYA8ZHjruNql4+7GMhOX5M+LUaHX4
	4oHOlVyWDq50iL4ZLE0BsJEMiIinRpgDchp52hmhZbvPqs6tQdCdU91FEkWd6pSNnC95EgxxgpK13
	kCX8J0GXlF1G1yxzKrBly9gJOpWhJwnsIiuM8MpRZ1/EqQeRC2ykrkcdrONB5yiDQgiGo8TYLCc8O
	QAepU/aDqjSgf5dhVvxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs14O-0003Ph-K5; Mon, 29 Jul 2019 08:31:48 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs14B-0003Dy-3E
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 08:31:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 9B614FB03;
 Mon, 29 Jul 2019 10:31:32 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3gdsxkg-VJ_P; Mon, 29 Jul 2019 10:31:31 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 1B86846BAF; Mon, 29 Jul 2019 10:31:31 +0200 (CEST)
Date: Mon, 29 Jul 2019 10:31:31 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH v3] arm64: dts: imx8mq: Init rates and parents configs
 for clocks
Message-ID: <20190729083130.GA3904@bogon.m.sigxcpu.org>
References: <20190728141218.12702-1-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728141218.12702-1-daniel.baluta@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_013135_302252_9B0E61F2 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, baruch@tkos.co.il, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, angus@akkea.ca,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, festevam@gmail.com,
 shengjiu.wang@nxp.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Sun, Jul 28, 2019 at 05:12:18PM +0300, Daniel Baluta wrote:
> From: Abel Vesa <abel.vesa@nxp.com>
> =

> Add the initial configuration for clocks that need default parent and rate
> setting. This is based on the vendor tree clock provider parents and rates
> configuration except this is doing the setup in dts rather then using clo=
ck
> consumer API in a clock provider driver.
> =

> Note that by adding the initial rate setting for audio_pll1/audio_pll
> setting we need to remove it from imx8mq-librem5-devkit.dts
> imx8mq-librem5-devkit.dts
> =

> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
> Changes since v2:
> 	- set rate for audio_pll1/audio_pll2  in the dtsi file and
> 	remove the setting from imx8mq-librem5-devkit.dts
> =

>  .../dts/freescale/imx8mq-librem5-devkit.dts   |  5 -----
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 21 +++++++++++++++++++
>  2 files changed, 21 insertions(+), 5 deletions(-)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/ar=
ch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index 683a11035643..c702ccc82867 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -169,11 +169,6 @@
>  	};
>  };
>  =

> -&clk {
> -	assigned-clocks =3D <&clk IMX8MQ_AUDIO_PLL1>, <&clk IMX8MQ_AUDIO_PLL2>;
> -	assigned-clock-rates =3D <786432000>, <722534400>;
> -};
> -
>  &dphy {
>  	status =3D "okay";
>  };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/=
dts/freescale/imx8mq.dtsi
> index 02fbd0625318..c67625a881a4 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -494,6 +494,27 @@
>  				clock-names =3D "ckil", "osc_25m", "osc_27m",
>  				              "clk_ext1", "clk_ext2",
>  				              "clk_ext3", "clk_ext4";
> +				assigned-clocks =3D <&clk IMX8MQ_VIDEO_PLL1>,
> +					<&clk IMX8MQ_AUDIO_PLL1>,
> +					<&clk IMX8MQ_AUDIO_PLL2>,
> +					<&clk IMX8MQ_CLK_AHB>,
> +					<&clk IMX8MQ_CLK_NAND_USDHC_BUS>,
> +					<&clk IMX8MQ_CLK_AUDIO_AHB>,
> +					<&clk IMX8MQ_VIDEO_PLL1_REF_SEL>,
> +					<&clk IMX8MQ_CLK_NOC>;
> +				assigned-clock-parents =3D <0>,
> +						<0>,
> +						<0>,
> +						<&clk IMX8MQ_SYS1_PLL_133M>,
> +						<&clk IMX8MQ_SYS1_PLL_266M>,
> +						<&clk IMX8MQ_SYS2_PLL_500M>,
> +						<&clk IMX8MQ_CLK_27M>,
> +						<&clk IMX8MQ_SYS1_PLL_800M>;
> +				assigned-clock-rates =3D <593999999>,
> +						<786432000>,
> +						<722534400>;
> +
> +
>  			};
>  =

>  			src: reset-controller@30390000 {

togethe with http://code.bulix.org/pd88jp-812381?raw tested on
linux-20190725 (plus mipi dsi):

Tested-by: Guido G=FCnther <agx@sigxcpu.org>

Cheers,
 -- Guido

> -- =

> 2.17.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
