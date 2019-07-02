Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA0F5CE4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 13:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Im/Y93bmV7Ejgue85+I4U2SHJ2zYomKwH+/lOxPB4WM=; b=pHFxIZ6sgC9X+H
	QWWKr2FfP9ri2OzhSw6tQ/bG1OePIYcmdW87+ik14StwMiU9YF29eg1muWtMEa74HWJ3jAE3APPXZ
	jvV4kA2O49Rfzgq/gqTg4t+pOAEiDBoZ3BJROPleRpg7HbTPLma6ZkXLLmlEpa/DXK+KOraurp6ej
	MnA+QDl4G7f7eLir7aKNVKe8uCp9ghU89n+9dr+OeIIM/CnPtNw2UvZwOGYmUp7BffI5qwjTMSy5x
	2M5ONrg6fo0Q+Kj6xh9578zPejIf258wWMnGAiRWknE9uGdaEZO4ZkW/t9jywyczoZ8AH/OyKlWJs
	GvMZIkkGjxggUhRJW53Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGsI-0005pp-Es; Tue, 02 Jul 2019 11:23:02 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGs7-0005pV-0a
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 11:22:52 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id D331625AEC8;
 Tue,  2 Jul 2019 21:22:49 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id DBE95940476; Tue,  2 Jul 2019 13:22:47 +0200 (CEST)
Date: Tue, 2 Jul 2019 13:22:47 +0200
From: Simon Horman <horms@verge.net.au>
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
Subject: Re: [PATCH/RFT] arm64: dts: renesas: r8a77995: Fix register range of
 display node
Message-ID: <20190702112246.a5wbikkoccocpzs7@verge.net.au>
References: <1560802696-19042-1-git-send-email-ykaneko0929@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560802696-19042-1-git-send-email-ykaneko0929@gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_042251_199304_EEF70BD7 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 05:18:16AM +0900, Yoshihiro Kaneko wrote:
> Since the R8A77995 SoC uses DU{0,1}, the range from the base address to
> the 0x4000 address is used.
> This patch fixed it.
> 
> Fixes: 18f1a773e3f9 ("arm64: dts: renesas: r8a77995: add DU support")
> 
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> ---
> 
> This patch is based on the devel branch of Simon Horman's renesas tree.
> 
>  arch/arm64/boot/dts/renesas/r8a77995.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

> 
> diff --git a/arch/arm64/boot/dts/renesas/r8a77995.dtsi b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> index 0a344eb..0567b36 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> @@ -995,7 +995,7 @@
>  
>  		du: display@feb00000 {
>  			compatible = "renesas,du-r8a77995";
> -			reg = <0 0xfeb00000 0 0x80000>;
> +			reg = <0 0xfeb00000 0 0x40000>;
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&cpg CPG_MOD 724>,
> -- 
> 1.9.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
