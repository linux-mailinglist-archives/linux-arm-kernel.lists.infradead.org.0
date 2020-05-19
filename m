Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 125301D940C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 12:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCF24QVWpjvmmgPa2vPhGn3fRfwZWNsC6KRiAfJo60M=; b=pDD/URf2Rnm+lu
	I+jb+Bg5fL9f+G55PbjW9kmb9qntuNML0Dws9lwk9tnPi+sPmil3iA8mifN+X8+eEbhgHpXef5SSd
	7qO9y/v45EvVEOpy2lc81Bl0fuvbn3orU/N8lRwFx2hvVyU535WTJgybb9c8ZlSnaTEnT+2lZDJ+k
	kJ9/aRIw+MXv7jG/bgMpoPYtkiuyqTDw6F+mdVYG1+qUPS5mlL3575P9E0CsSbSm7k3AdUORV3GCh
	UVWTkxdHmLwUVikn27nGQdI7P+sdqGPLxEQsK4EX8m3XnnmIPzcKmOpRcEd71T9lcI0UBnRI1Qpcy
	B2GuhA1qmTKjCvSpZjqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaz9b-00029F-Fq; Tue, 19 May 2020 10:07:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaz8I-00019N-NZ
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 10:06:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 233C5101E;
 Tue, 19 May 2020 03:05:58 -0700 (PDT)
Received: from [192.168.2.22] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C375C3F305;
 Tue, 19 May 2020 03:05:56 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: r9a06g032: Correct GIC compatible value order
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
References: <20200519095431.5650-1-geert+renesas@glider.be>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Organization: ARM Ltd.
Message-ID: <4e85d185-c982-1520-82f5-684ee66d7af3@arm.com>
Date: Tue, 19 May 2020 11:05:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200519095431.5650-1-geert+renesas@glider.be>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_030558_825334_4343D09C 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/05/2020 10:54, Geert Uytterhoeven wrote:
> According to commit 61efb56e30f1c54e ("dt-bindings: arm: gic: Allow
> combining arm,gic-400 compatible strings"), "arm,gic-400" should be
> listed first.

Thanks for taking care!

> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
> Aforementioned commit is in robh/for-next.
> ---
>  arch/arm/boot/dts/r9a06g032.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/r9a06g032.dtsi b/arch/arm/boot/dts/r9a06g032.dtsi
> index 4c1ab49c7d39aeed..ee59cc84f2121488 100644
> --- a/arch/arm/boot/dts/r9a06g032.dtsi
> +++ b/arch/arm/boot/dts/r9a06g032.dtsi
> @@ -174,7 +174,7 @@
>  		};
>  
>  		gic: interrupt-controller@44101000 {
> -			compatible = "arm,cortex-a7-gic", "arm,gic-400";
> +			compatible = "arm,gic-400", "arm,cortex-a7-gic";
>  			interrupt-controller;
>  			#interrupt-cells = <3>;
>  			reg = <0x44101000 0x1000>, /* Distributer */
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
