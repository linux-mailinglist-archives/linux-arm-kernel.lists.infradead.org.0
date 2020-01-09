Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE73135412
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 09:06:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvQrvCW3xuQsCOUttEB2gBnxCxPTErM5iH8I8BdcWXc=; b=a43wo/qvClyh2W
	CcD0DHX92k10r2ZfKg2CbOAcdQdm90hv8xrKTYmnPnVwN/JgKRAnm3YPBjCEUevzAgRTkAsvyIbzI
	2Jgb0Ut24UKYlRsrePInGS+uodsGik0yKXG7mcf3vJd3LRopmPe0/ksHa55MszE0V7O7ZUO18AjMw
	AQ2kJKBBMbKWhK5CP0coG/LKIu4cR5XKq61LsQ9VApqbq9pMmAuVAqp8e4X4Nwq/+6+WEouILbZDq
	89UbfiMRR6a6TaCYAS4v4TmCfxX0zcffs+ZzA2wx1VKHpzAT/sXReTHtTcGY9Ei4/Tv4pZhrhmKWU
	/5XOlYMDjoIUvX4sh/Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSpl-0000Cm-L5; Thu, 09 Jan 2020 08:06:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSpY-00008D-QH
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 08:06:16 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2AD092072E;
 Thu,  9 Jan 2020 08:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578557171;
 bh=frNZUoA+Js9y3eU3kSR8bgFjwgkS8/kuonlvihAjvSc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xBzTtAbqVqwWdnLfufSeO/2oD0lXsmooGNSAkKrGGsuS9kgdh7wr5AtP4gvTt3wfS
 jHRPs2tIVoDk3dn73pXnetxFjVD+BZ+I4rkE/d7JRC/hJ3g6BXcNRB10m5Oyv97k2k
 An0CEXzsb6W8Xv02Uvn/qPtBhvTSFB1tKHzCaDBE=
Date: Thu, 9 Jan 2020 16:06:01 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect power
 supply assignment
Message-ID: <20200109080600.GH4456@T480>
References: <1577670071-1322-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577670071-1322-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_000612_885875_37D80AA8 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -2.9 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, andreas@kemnade.info,
 Linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 09:41:07AM +0800, Anson Huang wrote:
> The vdd3p0's input should be from external USB VBUS directly, NOT

Shouldn't USB VBUS usually be 5V?  It doesn't seem to match 3.0V which
is suggested by vdd3p0 name.

> PMIC's sw2, so remove the power supply assignment for vdd3p0.
> 
> Fixes: 93385546ba36 ("ARM: dts: imx6qdl-sabresd: Assign corresponding power supply for LDOs")

Is it only a description correcting or is it fixing a real problem?  I'm
trying to understand it is a 5.5-rc material or can be applied for 5.6.

Shawn

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  arch/arm/boot/dts/imx6qdl-sabresd.dtsi | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-sabresd.dtsi b/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
> index 71ca76a..fe59dde 100644
> --- a/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
> @@ -749,10 +749,6 @@
>  	vin-supply = <&vgen5_reg>;
>  };
>  
> -&reg_vdd3p0 {
> -	vin-supply = <&sw2_reg>;
> -};
> -
>  &reg_vdd2p5 {
>  	vin-supply = <&vgen5_reg>;
>  };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
