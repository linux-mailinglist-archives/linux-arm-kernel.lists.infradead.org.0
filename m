Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A27701BD309
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 05:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j/aCUpd9AemM5pzZkVkcSOJZ/pCwWgdFDKfVs4JqQog=; b=Mxyaw2QYDRvZgP
	4iYMObLYg/mTDZQOpPXv/W5JG0mIhnX+qrp7MajlOXZtb/s5dznjNoFg47eJ7/1/Bst0XraDdepdL
	mHjpnY8sHSi2ujEyWRCp9hKddOJqys/F/8T9JRFPlBVxDERaWBBrb382E/CRNQtbyW70JQVwhez3P
	t35eneTlU//yIGmnl2k5n3/mdD5N/sR/+3mbL9WUtATT/XbmQB/jGvySJUluF/1EwJ/XycnnG4uSO
	kWToBvv2tTlN5/2Oo7HCx1x4zDWDCK7i9pfB6BBe0VbiVIg41hcBGDimUXZJAPK90WYuWshPFnA9e
	O+OX3jsRTQ0Ma1sd96ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTdcg-0004PF-MQ; Wed, 29 Apr 2020 03:42:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTdcT-0004OU-Tz
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 03:42:47 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D8EF206D8;
 Wed, 29 Apr 2020 03:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588131765;
 bh=bojJWi5XJi3ClxQXdVn2A9s6TfcUQxHlWdtAUv5I/gU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pSszIX2Uee13BiiD799bAITkerLbcJvPluBlKNurlmTAiUIMxUhow2p+NqX36zOsv
 3dFAW5g/eIFAb0ylOIjedjbN9DYxOpGpCsj9ebhjdXkp++3shfLtDL0i2LA+oRqeUQ
 gQt/afvMMwL1P624kQ8cTi5nTRiw5NE1T7Db5MD0=
Date: Wed, 29 Apr 2020 11:42:39 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH] ARM64: dts: freescale: imx8mm: correct VDDARM@1.6GHz
Message-ID: <20200429034239.GR32592@dragon>
References: <1587852408-6483-1-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587852408-6483-1-git-send-email-yibin.gong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_204245_990089_CBD0C544 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Anson.Huang@nxp.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 06:06:48AM +0800, Robin Gong wrote:
> Correct VDDARM to 0.95V@1.6Ghz with datasheet.

Please add more details about the data sheet like version, download
address, etc.

> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>

I know it might be hard to follow, but for historic reason, we use
subject prefix 'ARM: dts: ...' for arm32 and 'arm64: dts: ...' for arm64
dts patches on IMX platform.

Shawn

> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index cc7152e..a226030 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -129,7 +129,7 @@
>  
>  		opp-1600000000 {
>  			opp-hz = /bits/ 64 <1600000000>;
> -			opp-microvolt = <900000>;
> +			opp-microvolt = <950000>;
>  			opp-supported-hw = <0xc>, <0x7>;
>  			clock-latency-ns = <150000>;
>  			opp-suspend;
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
