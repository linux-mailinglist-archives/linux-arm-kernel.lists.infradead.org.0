Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EFC2787B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 10:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRslq85gBo5xSahoHDNru9S5gCLMvotvVOMeCjpWJzU=; b=CTk2Vb7J8w/jM2
	UEMqmhX4XXKUdJjsqgoRVMAg46oIss+XffhYbqvHEFhWlFNfmKpSEdSXSt33IJn/y1b6wCW4eLfL2
	cPsALbxTFiQgIG14i5Lsjzy7vHS1RwdXCOCi5FS6GxTdAHUNrO6lzj0rPRLwnkuAqtiF4qATwTw+s
	veFegASxXKetDE0p3Bpm0a4dAHwqN+2woPlWPdYCjAPC6q763S05uj2uZ5fspiip+jjxBV9TcYdtX
	VUI86EQOLBsLT5WWm+ErdPT+Fl+PfJnyK0bJP+eGh38MXUYN2peA9xmF60Z6sc3my8NyauUZocq2k
	XhjNE0SzqYbqlJBSW0Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjSN-0004QX-Bk; Thu, 23 May 2019 08:52:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjSG-0004Q8-7f
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 08:52:05 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9633220675;
 Thu, 23 May 2019 08:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558601523;
 bh=GvIxnz2QDkzaDXhCwkyYIbh58BouSz387m9539g/2A8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cGQ/xj15H4e7wzpcSW5LwgkL0k2fAuxUfKby8GOqJq7U+CObYxAh8WO4TLHsuSU42
 5OmnsByuClenpeucDd2R6GXBQ9Q2yBeqlfsJP9xf/abAQ4i3T1VngiNyi/Mf833qTw
 +QEBNS3NTcj3UbMAhjKZ/c3iC5Hv1hkYAHSrkH3c=
Date: Thu, 23 May 2019 16:51:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ran Wang <ran.wang_1@nxp.com>, Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>
Subject: Re: [PATCH v2] arm64: dts: ls1028a: Fix CPU idle fail.
Message-ID: <20190523085104.GP9261@dragon>
References: <20190517045753.3709-1-ran.wang_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517045753.3709-1-ran.wang_1@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_015204_293209_986BE087 
X-CRM114-Status: GOOD (  14.60  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 12:57:53PM +0800, Ran Wang wrote:
> PSCI spec define 1st parameter's bit 16 of function CPU_SUSPEND to
> indicate CPU State Type: 0 for standby, 1 for power down. In this
> case, we want to select standby for CPU idle feature. But current
> setting wrongly select power down and cause CPU SUSPEND fail every
> time. Need this fix.
> 
> Fixes: 8897f3255c9c ("arm64: dts: Add support for NXP LS1028A SoC")
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>

Leo, Bhaskar,

Do you guys agree with it?

Shawn

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   18 +++++++++---------
>  1 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index b045812..bf7f845 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -28,7 +28,7 @@
>  			enable-method = "psci";
>  			clocks = <&clockgen 1 0>;
>  			next-level-cache = <&l2>;
> -			cpu-idle-states = <&CPU_PH20>;
> +			cpu-idle-states = <&CPU_PW20>;
>  		};
>  
>  		cpu1: cpu@1 {
> @@ -38,7 +38,7 @@
>  			enable-method = "psci";
>  			clocks = <&clockgen 1 0>;
>  			next-level-cache = <&l2>;
> -			cpu-idle-states = <&CPU_PH20>;
> +			cpu-idle-states = <&CPU_PW20>;
>  		};
>  
>  		l2: l2-cache {
> @@ -53,13 +53,13 @@
>  		 */
>  		entry-method = "arm,psci";
>  
> -		CPU_PH20: cpu-ph20 {
> -			compatible = "arm,idle-state";
> -			idle-state-name = "PH20";
> -			arm,psci-suspend-param = <0x00010000>;
> -			entry-latency-us = <1000>;
> -			exit-latency-us = <1000>;
> -			min-residency-us = <3000>;
> +		CPU_PW20: cpu-pw20 {
> +			  compatible = "arm,idle-state";
> +			  idle-state-name = "PW20";
> +			  arm,psci-suspend-param = <0x0>;
> +			  entry-latency-us = <2000>;
> +			  exit-latency-us = <2000>;
> +			  min-residency-us = <6000>;
>  		};
>  	};
>  
> -- 
> 1.7.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
