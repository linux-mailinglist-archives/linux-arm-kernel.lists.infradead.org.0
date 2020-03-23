Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD3618F707
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 15:36:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tiWTUWrr0AxwxD6hFdAqPQoCBdxRZ68DcaD05Od/Qk0=; b=lKRVkiaxZhFfbXFl51jXe/tyI
	ZPS/EGCcJuL8gVubURDNaycDk5LTAPPsvrGHX6ySINVA1ExkxRIZPiFcBGavmazSjKSzHOwjVnSws
	yF/V9KYfDC08Zg/pmZD6l7AXiqgee04Dso3HpXFJ5Kifz7BC8QnlZ3tlg2wDNyBeWm7yYt4Z/NtAt
	T3ktvSh/pEWSdXw5VNdDxhGceGS3GeI+5S8e/EpAEummvLRvrTn8v+H8zani9+WlZFQJ/paknpNb3
	8hAJQS/dR7bPsOgNQSF1mnsypPfQnqxXKSC3DjIQz1P8ql/brD4jSegAzmwkikTcMwerY2/EnQ9VN
	R+aUJIsLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOBl-0004Yd-Dz; Mon, 23 Mar 2020 14:36:25 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOBc-0004Wo-Vw
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 14:36:19 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 32EFE2304C;
 Mon, 23 Mar 2020 15:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1584974169;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=y3Afpl4Mo1o7I+chKBRp6t8NkD5Siw70y/D3EPvLGIM=;
 b=vmgF7nxi+pO6yK1h3/26DXcOEi4iESyqI+a3nBGAvWRMRSNVQh3lLVinlp2R6POQ4UGrIx
 K7kvRdOLxhwnSAJWl3LyXXv6P93URCZhct5XuGyUqM6DbnJ5oJPHOL8Qg+NKTAt5/JRTtn
 MOkOxyyGzoSZtzKNApo82QycuJqvLyE=
MIME-Version: 1.0
Date: Mon, 23 Mar 2020 15:36:06 +0100
From: Michael Walle <michael@walle.cc>
To: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: ls1028a: add "fsl,vf610-edma" compatible
In-Reply-To: <20200306205403.29881-2-michael@walle.cc>
References: <20200306205403.29881-1-michael@walle.cc>
 <20200306205403.29881-2-michael@walle.cc>
Message-ID: <bd67afcd5720265109520d2ed5403b9f@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 32EFE2304C
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_SEVEN(0.00)[10];
 NEURAL_HAM(-0.00)[-0.528]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_073617_183071_D2EB181E 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peng Ma <peng.ma@nxp.com>,
 Li Yang <leoyang.li@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Am 2020-03-06 21:54, schrieb Michael Walle:
> The bootloader does the IOMMU fixup and dynamically adds the "iommus"
> property to devices according to its compatible string. In case of the
> eDMA controller this property is missing. Add it. After that the IOMMU
> will work with the eDMA core.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>

Is it possible to have this merged, so it gets into the merge window
for 5.7? As I explained in this thread [1], without this compatible
all boards with enabled IOMMU (and who have either sound, lpuart or
i2c enabled), doesn't work.

-michael

[1] 
https://lore.kernel.org/linux-devicetree/433418e889347784bc74f3c22c23e644@walle.cc/

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index b152fa90cf5c..aa467bff2209 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -447,7 +447,7 @@
> 
>  		edma0: dma-controller@22c0000 {
>  			#dma-cells = <2>;
> -			compatible = "fsl,ls1028a-edma";
> +			compatible = "fsl,ls1028a-edma", "fsl,vf610-edma";
>  			reg = <0x0 0x22c0000 0x0 0x10000>,
>  			      <0x0 0x22d0000 0x0 0x10000>,
>  			      <0x0 0x22e0000 0x0 0x10000>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
