Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BD89BF4E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 20:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJV4TSybtqfBH1kPTSbT1AhEQGKmnqBgfRAwnHECJd4=; b=eaS0JrD970bPsJ
	dJsTPSX+8D7+CwDz9l2eY7srDDWAU4UbrQM3pERsv1f+63IGeaAmqZ3NvBgVZPivXRdSlZFnYhHj8
	PjcRFHa8/WbYC8VcIS7rNKRPLWyFErWCPA1lVLWutApUFHY33dEBhA7cXNt/pDb5nYRP0Wn3l6nXb
	jRYVdMIq5oro/kjJ6JtA8WWPID+LZeUBQLSk5juFthGd7MbyOiOv9u5ZU0RdBhlpKVNObTuyTLhrK
	BbI7RblRgrpRm7oQXYnxeHVN+ne4bhzwVUlRYYAj0S9CDLzDga7P5YE0e23QPN0ZBKWFfzBiXOgzF
	ks7gBkTSPtoa4FjrJhnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1auZ-0001PU-2W; Sat, 24 Aug 2019 18:37:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1auK-0001P1-HA
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 18:37:02 +0000
Received: from X250 (cm-84.211.118.175.getinternet.no [84.211.118.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6CDA21897;
 Sat, 24 Aug 2019 18:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566671820;
 bh=bLkoRt7V89o7Y8hLjEcVFDgB9HJCyvuoCmSBCtHCiZ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O/+6hlkQsxLxo1bC5JbDLWChN6zVVaUVuQh4NYCkjq548G6w75qBXCP+mURI6l1PW
 70cYDFfFMrbF3gO8n1ambm1lSjNh25A0ThGMSB7MH1Vy2Es+w/08HH+hstc8hgDfrP
 P69sYlzls8gzc8W9xXKJPKZJHs819q6qjPlCkB9k=
Date: Sat, 24 Aug 2019 20:36:48 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Chuanhua Han <chuanhua.han@nxp.com>
Subject: Re: [PATCH 2/3] arm64: dts: ls1088a: Add the DSPI controller node
Message-ID: <20190824183647.GC14936@X250>
References: <20190801083105.30102-1-chuanhua.han@nxp.com>
 <20190801083105.30102-2-chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801083105.30102-2-chuanhua.han@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_113700_599468_93B44A3B 
X-CRM114-Status: GOOD (  14.36  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 broonie@kernel.org, leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 04:31:04PM +0800, Chuanhua Han wrote:
> This patch adds the DSPI controller node for ls1088a boards.
> 
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> index dacd8cf..fe8f1bd 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -252,6 +252,19 @@
>  			#thermal-sensor-cells = <1>;
>  		};
>  
> +		dspi: spi@2100000 {
> +			compatible = "fsl,ls1088a-dspi",
> +						"fsl,ls1021a-v1.0-dspi";

I fixed the indent to have two compatible strings aligned on same
column when applying.

Shawn

> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x0 0x2100000 0x0 0x10000>;
> +			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
> +			clock-names = "dspi";
> +			clocks = <&clockgen 4 1>;
> +			spi-num-chipselects = <6>;
> +			status = "disabled";
> +		};
> +
>  		duart0: serial@21c0500 {
>  			compatible = "fsl,ns16550", "ns16550a";
>  			reg = <0x0 0x21c0500 0x0 0x100>;
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
