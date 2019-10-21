Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436A3DE3D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 07:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3OhkqWR9fQizmuYjeDbdg73DMAm/TQ01iip8hzb+Nm8=; b=fUTSvXIzMUtDVr
	wtLz6/OMlUa00eOrT1o3AUw7qX1dwuyMdVdVpr748TeFAOC1ZtHB2c343KwxwOuCNr0Ri8AJzhtkX
	zd2Ym8dKjl/BlGHlAlhf0W/SaemHr9OwwI/j5ye+bGwDS77mf03knmoBnNn9X+4a6ZQWRqubcMJUh
	6mJh+6X3vteyyDBFErpqgsTA+TCd+IJ/B0210YDy4/CXqW36EmqUo63J2iccmXZ+NpryzQkVZCQkR
	MAainTYG+8l3LpouO2varUKkW96q322tBHL8DhEaeZ5i/i6X60CP0//lYBmC3/Vm1T7NKaTFjvG3o
	xVkJwJQl/pHFz2ICKsiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMQNx-0004cy-MT; Mon, 21 Oct 2019 05:37:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMQNn-0004cR-MA
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 05:37:33 +0000
Received: from localhost (unknown [122.167.89.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35E232086D;
 Mon, 21 Oct 2019 05:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571636251;
 bh=rYGQeqsJPmotORjTgIXMR9GiDSnyQMdFlYoFFuDkjIE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TcSvVDq2D+Z9ItAp5g2FBjhLRY4YTAtCMZFmkn1l1uErNzh7j+HwDr5rUdM/snzvy
 BzJ6h/NJb18FXsHdgMcTNH3i4ET/jT7VBHC3H66OzFRPr6ckheBLy8UHESO5Ur3lJ5
 8mvJByyyLMHbLlV4AgsX22aXZ2mPDgBmUelrpsYA=
Date: Mon, 21 Oct 2019 11:07:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH] arm64: defconfig: Enable Qualcomm watchdog driver
Message-ID: <20191021053725.GC2654@vkoul-mobl>
References: <20191021035603.4186317-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021035603.4186317-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_223731_749079_DBB737FE 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-msm@vger.kernel.org, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-10-19, 20:56, Bjorn Andersson wrote:
> Enable the driver for the watchdog found in the application processor
> subsystem on most modern Qualcomm platforms.

Reviewed-by: Vinod Koul <vkoul@kernel.org>

With this and the node patch, I was able to test wdt on db845c:

Tested-by: Vinod Koul <vkoul@kernel.org>


> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 4591bf1303da..f3d95f77fb0d 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -463,6 +463,7 @@ CONFIG_IMX2_WDT=y
>  CONFIG_IMX_SC_WDT=m
>  CONFIG_MESON_GXBB_WATCHDOG=m
>  CONFIG_MESON_WATCHDOG=m
> +CONFIG_QCOM_WDT=m
>  CONFIG_RENESAS_WDT=y
>  CONFIG_UNIPHIER_WATCHDOG=y
>  CONFIG_BCM2835_WDT=y
> -- 
> 2.23.0

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
