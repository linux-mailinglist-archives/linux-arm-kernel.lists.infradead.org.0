Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B9C27862
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 10:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxWGF24B3Ck6qdbSkBWZ3YhKC1R2jlxP/OPylYkD+Z4=; b=NcTzMVq0zVeaKM
	xOk2u2DO9w/VVEr6sp/PHQDO/Qf2BufRruggpA5oie6lYDCYg3acY2fnR/4v4KMB3B4LGAI9EMhMM
	0+obfeeb3kubmfBVktPawIqsIMcAEbne6R3izU1XOMuIEJB1u17R/PcmWaqIcOICRmiyJzbI/PIwu
	+CWCJm8id4fqBtfriDOvy4pAhnoIa7yEDp5e06+tpOzqNlDt/hBi4hUTBVbqSRWrsjcCrYl8txzNj
	vjTH+Y4RfIuQBDcbT94C01OhLsWLKbRFiD6WVvyX26Z1uwAXx4oOMvVDZpvcPQVSkAhyF6bVN+MYK
	yenJ44LkxV0oVNrHYb+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjOY-0001lu-6K; Thu, 23 May 2019 08:48:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjOR-0001ff-OT; Thu, 23 May 2019 08:48:09 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0CFD20881;
 Thu, 23 May 2019 08:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558601287;
 bh=ZpO820+HRCThlTiYwTEWDIq9N5/gK8HjH0ZTj3YuZcU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pCrNfEmobtn2AALu+kG8hm28tzxm2DL3MrfxfS5hkbJK7MM2I3DIO8Oz+BObtk8M5
 AJzK7vWJ/rwPgjdH0P3GniVtNsVIZR3DCOohHQjEvqx+n15ryS7UDXBvFiMBMscpSH
 GXTbFZ/pBI7X3TE14i1bs6gvmx6A1VXnNjkXBk2s=
Date: Thu, 23 May 2019 16:47:07 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Kuldeep Singh <kuldeep.singh@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1046a: Fast read m25p60
Message-ID: <20190523084707.GN9261@dragon>
References: <20190516114807.30817-1-kuldeep.singh@nxp.com>
 <20190516114807.30817-2-kuldeep.singh@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516114807.30817-2-kuldeep.singh@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_014807_814545_EF1FD6A4 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 Ashish Kumar <ashish.kumar@nxp.com>, "broonie@kernel.org" <broonie@kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 11:47:06AM +0000, Kuldeep Singh wrote:
> QSPI support is added for kernel version greater than 5.0 and supports
> quad mode defined by
> TX-WIDTH = <4>, RX-WIDTH = <4>
> 
> RDB/QDS has two 64MB flash from SPANSION(s25fs512s)
> 
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>

Please do not send patch in message encoding with base64.  I do not
apply it.

Shawn

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts | 3 ++-
>  arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 6 ++++--
>  2 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> index eec62c63dafe..43a5ef6357d5 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> @@ -166,9 +166,10 @@
>  	status = "okay";
>  
>  	qflash0: flash@0 {
> -		compatible = "spansion,m25p80";
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> +		m25p,fast-read;
>  		spi-max-frequency = <20000000>;
>  		spi-rx-bus-width = <4>;
>  		spi-tx-bus-width = <4>;
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> index 6a6514d0e5a9..85105a20fc04 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> @@ -102,9 +102,10 @@
>  	status = "okay";
>  
>  	qflash0: flash@0 {
> -		compatible = "spansion,m25p80";
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> +		m25p,fast-read;
>  		spi-max-frequency = <20000000>;
>  		spi-rx-bus-width = <4>;
>  		spi-tx-bus-width = <4>;
> @@ -112,9 +113,10 @@
>  	};
>  
>  	qflash1: flash@1 {
> -		compatible = "spansion,m25p80";
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> +		m25p,fast-read;
>  		spi-max-frequency = <20000000>;
>  		spi-rx-bus-width = <4>;
>  		spi-tx-bus-width = <4>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
