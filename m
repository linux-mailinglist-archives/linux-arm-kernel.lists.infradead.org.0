Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66B322A18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 04:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQdQsgzJdK7hF8AK0EryxSl8qekKr7bXtLH2o9mt7ck=; b=YBfbejj1wu49dm
	Exh7dDyez7Fx2wNhJWPesJ+GRbpPyW0yE6XNULw0kTLkMiu6CLMznM3+bi3uHbS84htyDTymoChlo
	t00VVayImDPLG7CZRVfRMvfNf0x5BvMdf0ShSszh67D3Dt/074HhN3h3tlPe89G3TP3kpK+FqlPe7
	t4//fHXyfxjgIJ55734IVq4oIONaVzrA/WvPrpB8kjtO8vuL+T5kgO7GyecwuL3e3dlz4v7zcAaow
	L2QzX+Hzmfh1MuONwlkwH+xgEkdfFgQ1kZilnazDnSqF6c+ajlw5W/vfy6dWIZhTa0QM5DEiCZ8W4
	+QK2XjjaOamFPlBsr8Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSYT3-0005Yh-SO; Mon, 20 May 2019 02:56:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSYSw-0005Y0-FK
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 02:55:55 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70C5B20644;
 Mon, 20 May 2019 02:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558320954;
 bh=8BpeCF0fdOm1m1OcdQX6KdbUacYxfjUW3ylkXKDorQc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WPWGhUPy/QNIJfz+MQNLhTPf2Xi6QEnDYnO1LG5uDwtCI6eJlayPJHKHCqZRqCX83
 1dM/GYtVl1kpyAym/jCfwPUQ9YVe1qVyQ4jbc7w+UHqEjbcf87QN/rKapRwHAuv93z
 AdUJ8zheqpZLoVxWKilv03EMhnsvTzph71EcyuVs=
Date: Mon, 20 May 2019 10:55:03 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Pramod Kumar <pramod.kumar_1@nxp.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: nxp: frwy-ls1046a: add support for
 micron nor flash
Message-ID: <20190520025502.GK15856@dragon>
References: <20190510130207.14330-1-pramod.kumar_1@nxp.com>
 <20190510130207.14330-4-pramod.kumar_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510130207.14330-4-pramod.kumar_1@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_195554_529212_729A2CF8 
X-CRM114-Status: GOOD (  13.67  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "Michal.Vokac@ysoft.com" <Michal.Vokac@ysoft.com>,
 Ashish Kumar <ashish.kumar@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 01:00:24PM +0000, Pramod Kumar wrote:
> add micron nor flash support for ls1046a frwy board.
> 
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> Signed-off-by: Pramod Kumar <pramod.kumar_1@nxp.com>

Prefix 'arm64: dts: frwy-ls1046a: ...' would be good enough.

> ---
>  .../boot/dts/freescale/fsl-ls1046a-frwy.dts     | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
> index de0d19c02944..890f07122dd0 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
> @@ -113,6 +113,23 @@
>  
>  };
>  
> +

Unnecessary newline.

Shawn

> +&qspi {
> +	num-cs = <1>;
> +	bus-num = <0>;
> +	status = "okay";
> +
> +	qflash0: flash@0 {
> +		compatible = "jedec,spi-nor";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		spi-max-frequency = <50000000>;
> +		reg = <0>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +	};
> +};
> +
>  #include "fsl-ls1046-post.dtsi"
>  
>  &fman0 {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
