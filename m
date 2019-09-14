Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B4BB2965
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 04:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMyyQDpWN+olcxf7SqOB8P1IGoswldKit4xw+pDI8Tk=; b=cb8QRuqtE8jSmh
	iBKv7bmE8d2b8PGQJM3ZGNZOCVMg0QzViYgSQ5A//tAPhIf7Dl7W+Tmma+T7GWCo6jZ8fPUgtc4cW
	ZcAyA3QhmdFrEjcQ+bHn/2WZT7jqrTDl+J/rcikLBNyQolZpqm498aImUkSFScToUnN76QL1X2m6u
	PU26v21LI3Sf5SAyM56+R+jIiSMklfCryNnpdfsUj1UR+1bc2xk4/YFMm4IOmTeR1FgIqk068QllO
	xpUihDaDywTknZKcik3lN2uWi1UUpdTe61wOgRzsTRUNwyR7minX038PmmgY06f506QzSnrF1098j
	+bZmm5OPMXLojeQ83Cww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8y1R-0001Lq-7v; Sat, 14 Sep 2019 02:42:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8y1G-0001LQ-Ll
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Sep 2019 02:42:40 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C425520866;
 Sat, 14 Sep 2019 02:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568428958;
 bh=u+OoaYDVu8n91ZtMX/DLeBe/J9Gl3SnEOSQ8P8tZZFA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VhNxGps99qmf6pdOYjQ66fbo80M4G/RFFUXTN5iSJPpLbDaIkYI0w5cHn508OS5ch
 DXf/H7BM3JS+G++fycDqeoBbdVsJoPCqqToyZI69vsv5TtxOLmz4UI+CwT+Z1icPGT
 71+fh86z0dfpNdMtRopip3sqBgGZA+74ummv1BUg=
Date: Sat, 14 Sep 2019 10:42:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yuantian Tang <andy.tang@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1028a: fix a compatible issue
Message-ID: <20190914024231.GB3425@dragon>
References: <20190829073439.13069-1-andy.tang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829073439.13069-1-andy.tang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_194238_884686_411008CF 
X-CRM114-Status: GOOD (  13.12  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, leoyang.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 03:34:39PM +0800, Yuantian Tang wrote:
> The I2C multiplexer used on ls1028aqds is PCA9547, not PCA9847.
> So correct it.

Can elaborate the fix a little bit, saying what's the issue exactly 
with using that incorrect compatible?

> 
> Signed-off-by: Yuantian Tang <andy.tang@nxp.com>

Do we need a fix tag?

Shawn

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> index 5e14e5a19744..f5da9e8b0d9d 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> @@ -107,7 +107,7 @@
>  	status = "okay";
>  
>  	i2c-mux@77 {
> -		compatible = "nxp,pca9847";
> +		compatible = "nxp,pca9547";
>  		reg = <0x77>;
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
