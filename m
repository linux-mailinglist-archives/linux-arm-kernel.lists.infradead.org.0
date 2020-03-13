Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A14C2185078
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:42:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxiB71odsqyqAT5yuHW/2kGCe7VNobkruahXyhFTKL0=; b=f8oqFnu/Y4fe1s
	2eyTgVlxSmzG3fMNFMN11FUcwCp3qabbte4p/nd38yUw0+dkh5Az6eTvdWEHPxmMjGcWl4E3BPaKr
	uySqfV0Mh8zxsGN1lwIjjJd6MAl3I+sojlaZzwZuywNRmKkRE/TY8FEhimgA/8qVq/dXOj0auYCke
	O9L38EG6L0ZbCDHZFV/RS/i8o0jpXyhtku3tFBzB9PRrjg5hFTn5pMAKHnR/Q4WPORKaE3lwkPmel
	SY1oOqmZaYbHRfsfGAWIK0qk9vAPG8C/PD4i15I1odqm9XKhrHNlkk2TJqTs/TXmIGOVjkJhz8jOy
	KYSKzE3kZGB+uRbpFTmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCr8t-0004ST-Le; Fri, 13 Mar 2020 20:42:51 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCr8g-0004Re-GE
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 20:42:40 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 7B93A240007;
 Fri, 13 Mar 2020 20:42:36 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Amit Kucheria <amit.kucheria@linaro.org>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew@lunn.ch>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH v1 4/4] arm64: dts: marvell: Fix cpu compatible for
 AP807-quad
In-Reply-To: <2f56a89b8f88583b60446050efc523a781556e3a.1583445235.git.amit.kucheria@linaro.org>
References: <cover.1583445235.git.amit.kucheria@linaro.org>
 <2f56a89b8f88583b60446050efc523a781556e3a.1583445235.git.amit.kucheria@linaro.org>
Date: Fri, 13 Mar 2020 21:42:36 +0100
Message-ID: <87pndgx9z7.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_134238_809935_CEC99AFD 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

> make -k ARCH=arm64 dtbs_check shows the following errors. Fix them by
> removing the "arm,armv8" compatible.
>
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
> cpu@0: compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
> cpu@0: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long CHECK
> arch/arm64/boot/dts/renesas/r8a774a1-hihope-rzg2m-ex.dt.yaml
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
> cpu@1: compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
> cpu@1: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
> cpu@100: compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
> cpu@100: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
> cpu@101: compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9130-db.dt.yaml:
> cpu@101: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
>
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
> cpu@0: compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
> cpu@0: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
> cpu@1: compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
> cpu@1: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
> cpu@100: compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
> cpu@100: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
> cpu@101: compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9131-db.dt.yaml:
> cpu@101: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
>
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
> cpu@0: compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
> cpu@0: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
> cpu@1: compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
> cpu@1: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
> cpu@100: compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
> cpu@100: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
> cpu@101: compatible: Additional items are not allowed ('arm,armv8' was
> unexpected)
> /home/amit/work/builds/build-check/arch/arm64/boot/dts/marvell/cn9132-db.dt.yaml:
> cpu@101: compatible: ['arm,cortex-a72', 'arm,armv8'] is too long
>
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>


Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi b/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
> index 840466e143b47..68782f161f122 100644
> --- a/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
> @@ -17,7 +17,7 @@
>  
>  		cpu0: cpu@0 {
>  			device_type = "cpu";
> -			compatible = "arm,cortex-a72", "arm,armv8";
> +			compatible = "arm,cortex-a72";
>  			reg = <0x000>;
>  			enable-method = "psci";
>  			#cooling-cells = <2>;
> @@ -32,7 +32,7 @@
>  		};
>  		cpu1: cpu@1 {
>  			device_type = "cpu";
> -			compatible = "arm,cortex-a72", "arm,armv8";
> +			compatible = "arm,cortex-a72";
>  			reg = <0x001>;
>  			enable-method = "psci";
>  			#cooling-cells = <2>;
> @@ -47,7 +47,7 @@
>  		};
>  		cpu2: cpu@100 {
>  			device_type = "cpu";
> -			compatible = "arm,cortex-a72", "arm,armv8";
> +			compatible = "arm,cortex-a72";
>  			reg = <0x100>;
>  			enable-method = "psci";
>  			#cooling-cells = <2>;
> @@ -62,7 +62,7 @@
>  		};
>  		cpu3: cpu@101 {
>  			device_type = "cpu";
> -			compatible = "arm,cortex-a72", "arm,armv8";
> +			compatible = "arm,cortex-a72";
>  			reg = <0x101>;
>  			enable-method = "psci";
>  			#cooling-cells = <2>;
> -- 
> 2.20.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
