Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A939A17F0D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 08:02:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxOUTq7MJuZiNbihR9TZ4iJKQNyp6x7f3kviLxVO2B8=; b=oSrYdgx7SWy5st
	FPkrDrFB2S5HnePizcLFzJZ1fLHQB0u1XoA5bUu+R9CJtXYnBASKyFhbvE4zWt18+rFSIGHxzjLEp
	D8CFpyDAMWf1r83e9XUKSgKXzhN7hlqU1w/OhF5JQOXf1bQnopIV9whOkHIBzTOAEt2O6DEohVIBc
	Aa2ZqLL2at906HetJehd4n1pIt7mbx+SjelCtyqsGhzdoRvaPUZemS5ECdRxrSqj3MrHv0y1HM5na
	2LEemUYyIvtxsWUetOPQ9YO8Cthb4G0xH5a+6bEts8O0Rmqh0wyWpJLaaOp8FVhfSLvXlQP7951Cc
	m/MnqB2BhWkVU+SqiE/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBYtp-0003Wh-Jc; Tue, 10 Mar 2020 07:01:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBYtf-0003WC-FP
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 07:01:48 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B1A12467C;
 Tue, 10 Mar 2020 07:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583823706;
 bh=uXhlkK6m4rFYqC7rfUPeSbG0I1pRrOsi/+xRnMgu3Bs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uV3Ts6vkE5Fp768fM6DJjeKqN3gx2pe3fboRGD2UPeS0RWNuXx/iedtBQPvOqo8MA
 t4V9s014B537zzvQIxhpJtf4B74ttqKqfJvYG2+xqJYcOU6dspuHFCjy1UOR8dmw1H
 /DJB1Xvj60Z8y1d8tiKBFT26V1Gw8cYIXoStU21c=
Date: Tue, 10 Mar 2020 15:01:38 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V16 4/5] defconfig: arm64: add i.MX system controller
 thermal support
Message-ID: <20200310070134.GB17772@dragon>
References: <1582330132-13461-1-git-send-email-Anson.Huang@nxp.com>
 <1582330132-13461-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582330132-13461-4-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_000147_541376_2F1CDF02 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, peng.fan@nxp.com, catalin.marinas@arm.com,
 bjorn.andersson@linaro.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com, will@kernel.org, amit.kucheria@verdurent.com,
 festevam@gmail.com, daniel.lezcano@linaro.org, krzk@kernel.org,
 marcin.juszkiewicz@linaro.org, Linux-imx@nxp.com, rui.zhang@intel.com,
 linux@roeck-us.net, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 s.hauer@pengutronix.de, robh+dt@kernel.org, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 fugang.duan@nxp.com, linux-kernel@vger.kernel.org, dinguyen@kernel.org,
 kernel@pengutronix.de, olof@lixom.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 22, 2020 at 08:08:51AM +0800, Anson Huang wrote:
> This patch enables CONFIG_IMX_SC_THERMAL as module.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Prefix should be 'arm64: defconfig: ...'

Fixed it up and applied patch.

Shawn

> ---
> No change.
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 1c74437..1ff479c 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -453,6 +453,7 @@ CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
>  CONFIG_CPU_THERMAL=y
>  CONFIG_THERMAL_EMULATION=y
>  CONFIG_QORIQ_THERMAL=m
> +CONFIG_IMX_SC_THERMAL=m
>  CONFIG_ROCKCHIP_THERMAL=m
>  CONFIG_RCAR_THERMAL=y
>  CONFIG_RCAR_GEN3_THERMAL=y
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
