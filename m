Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA074FC709
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 14:11:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=quSnSiYne+L+eD5qN8Vxk7qltqgZju01g3ECTO0bOgg=; b=XwzS92JxbtsatB
	2pmUatdYfnonW1vYzi0yQs8klCZjuOMbziekX/AdMdP0ffsKbpg3V2O2jnPID3LDqhxBqY4flDBQI
	wZ9eDqMPghE3e8I3Iiby2oqDRzlnmoYpiUPp9LTu2T9gKakfmp8D25Z7Qc+GXECZj7PF5rIR2V8Sn
	tsSdktjQizPJ2D4g+mU/gzThqEgxQP6RNE2bvwTyZ+FqfgT7HYaKCGTmX2kgDUwYvac8hp3W0i8fk
	W2JWrOJ5MvNFkrPcI4EgyqnKASThbNuCuTsm1WIVqq2ttmXPe51QsuCJKp5BqO+3KY7Q0v7Zu9vls
	YNN9df+vn2iU9LBtRolA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVEu3-000243-4P; Thu, 14 Nov 2019 13:11:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEtq-00022f-U1; Thu, 14 Nov 2019 13:11:04 +0000
Received: from wf0530.dip.tu-dresden.de ([141.76.182.18] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iVEtU-0002Qj-R0; Thu, 14 Nov 2019 14:10:40 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: arm64: dts: rockchip: Disable HS400 for mmc on rk3399-roc-pc
Date: Thu, 14 Nov 2019 14:10:39 +0100
Message-ID: <2766673.iMURPl8gB5@phil>
In-Reply-To: <367bf78a-f079-f0b4-68fe-52c86823c174@fivetechno.de>
References: <20190301153348.29870-1-christoph.muellner@theobroma-systems.com>
 <20190301153348.29870-2-christoph.muellner@theobroma-systems.com>
 <367bf78a-f079-f0b4-68fe-52c86823c174@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_051103_118578_217210A6 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Brian Norris <briannorris@chromium.org>, Tony Xie <tony.xie@rock-chips.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, shawn.lin@rock-chips.com,
 Jeffy Chen <jeffy.chen@rock-chips.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Klaus Goger <klaus.goger@theobroma-systems.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Randy Li <ayaka@soulik.info>, Kishon Vijay Abraham I <kishon@ti.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Markus,

$subject is missing the [PATCH] prefix

Am Montag, 11. November 2019, 10:51:04 CET schrieb Markus Reichl:
> Working with rootfs on two 128GB mmcs on rk3399-roc-pc.
> 
> One (mmc name 128G72, one screw hole) works fine in HS400 mode.
> Other (mmc name DJNB4R, firefly on pcb, two screw holes) gets lots of
> mmc1: "running CQE recovery", even hangs with damaged fs,
> when running under heavy load, e.g. compiling kernel.
> Both run fine with HS200.
> 
> Disabling CQ with patch mmc: core: Add MMC Command Queue Support kernel parameter [0] did not help.
> [0] https://gitlab.com/ayufan-repos/rock64/linux-mainline-kernel/commit/54e264154b87dfe32a8359b2726e2d5611adbaf3

I'm hoping for some input from other people in Cc but your mail headers
also referenced the drive-impendance series from Christoph [0], which
it seems we need to poke the phy maintainer again.

Did you check if changing the impedance helped (like the signal dampening
Philipp described in one of the replies there).

[0] https://patchwork.kernel.org/patch/10835567/
most current v2 it seems is https://patchwork.kernel.org/patch/10842421/

> Therefore I propose to disable HS400 mode on roc-pc for now.

Hoping for more input :-)


Heiko


> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index 29a50a083c42..33df95e384b4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -660,8 +660,6 @@
>  
>  &sdhci {
>  	bus-width = <8>;
> -	mmc-hs400-1_8v;
> -	mmc-hs400-enhanced-strobe;
>  	non-removable;
>  	status = "okay";
>  };
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
