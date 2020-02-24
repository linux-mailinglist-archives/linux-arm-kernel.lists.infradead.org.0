Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A054C169BF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 02:48:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pg0N1WBzu7RWd4hS5hepqeVHCzLjj8+EeX+Oz9JEpPg=; b=PQ3NZgB2MSwB3/
	3TKHqE409p/GFU8QXi8aUC5KsuRmFqLulfYEvENXKeLOERTEMMxlsKjQ2d11Mgh0bpg6MMxyEuycF
	dSqRK0oNQPMm0a46y/JVMw5ccKtVdhpddTO1SwlzTloEMTecDCI6639pVl8axMHYBqwMEWkqEMvyM
	u18NFLweU4pOCdetKV5CoLxbQaoIPRDNLa7enBEWeKPSHbhKniHbEVcDcwGcAbxyYes/Ld45U10N/
	FCqTc/9aeFghemKRLYB4wW5a5TUpvMImJtl8l1GkIoqEmZps+omvDiMikFbWNCh1UIwWG1uxfBBt7
	qlzriYue4Ponw2TKbWyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j62r3-000695-Af; Mon, 24 Feb 2020 01:48:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j62qs-00068c-EH
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 01:48:07 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7EBD20675;
 Mon, 24 Feb 2020 01:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582508886;
 bh=UUE5dvuQrZiK4JgjRWz7QqXRcMX4gRQ9G5eXNzAVSZA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i8eV/LC5db5ok5trjevxGgW9fsAQ6MdilxGUXgilibCAvZKfWAPu+nfgFjQrH0unc
 kemV9osveGer6tKgit0qHGpKz8W2nkWbytYkYOumh7TU9ButNNJpEDSzET+8F0etNv
 fGuW3tKudH6dqLyU0XBu+y/STcRWBvsvTpKlrce8=
Date: Mon, 24 Feb 2020 09:48:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mn-ddr4-evk: Adjust 1.2GHz OPP voltage
 to OD mode
Message-ID: <20200224014759.GB27688@dragon>
References: <1581990752-10219-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581990752-10219-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_174806_502263_DCE0BE5D 
X-CRM114-Status: GOOD (  15.77  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, abel.vesa@nxp.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 09:52:32AM +0800, Anson Huang wrote:
> According to latest datasheet Rev.0, 10/2019, there is restriction
> as below:
> 
> "If VDD_SOC/GPU/DDR = 0.95V, then VDD_ARM must be >= 0.95V."
> 
> As by default SoC is running at OD mode(VDD_SOC = 0.95V), so
> VDD_ARM 1.2GHz OPP's voltage should be increased to 0.95V.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> index 2497eeb..7a61a1a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> @@ -13,6 +13,12 @@
>  	compatible = "fsl,imx8mn-ddr4-evk", "fsl,imx8mn";
>  };
>  
> +&a53_opp_table {
> +	opp-1200000000 {
> +		opp-microvolt = <950000>;
> +	};
> +};
> +

The restriction applies to SoC rather than a particular board, right?
If so, the change should be made in imx8mn.dtsi?

Shawn

>  &A53_0 {
>  	cpu-supply = <&buck2_reg>;
>  };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
