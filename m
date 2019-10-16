Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985B1D886E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 08:02:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+yX5frXCEbGAIIKCM61iBpm+GfaPQ9GTxVJgI9ErrQ=; b=FS9p+OVJT1zhd8
	+DtdsU+UPkbO0YdMTvr3e9uvPnY5Vg+ziSRdca+TjNuJlmJFR8ziAi4CqiF2UFDJVeHSoy4mGlrpi
	38B+KPPBQF6Sf+ecu4avyW8NIBzMA8Qz2VjIQG7edA53cUw0GBKK1aqwQsx3azpRLhH0pund8wSJV
	3KCG0BcFvTfN7ZMW0lhhcSHmzYEZXLE7v9ts5fC9yhzLacXIG2UgKXHgOB3FhPOpSGLUXmLAMlFXU
	p8b6LYXZgl5ezSU5EQPVr83/nhDcz3aNACsdRlxdAAivPNc6+pyWJZO8EwuXevzvakuklPjsFkiqf
	vJvREWDmXhR00RMFwjSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKcNn-0001W8-PE; Wed, 16 Oct 2019 06:02:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKcMs-0000rD-Hb
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 06:01:08 +0000
Received: from localhost (unknown [171.76.123.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49D722067D;
 Wed, 16 Oct 2019 06:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571205666;
 bh=g+I0EDKeU/EL9t/PNSPY6ssOjQta6vTW/9jfk4rmiAc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i0P5lOVy2VTN3hflsQGO+R+2RhTH/oMNOdiB2ujdfwGRibgwBOwjLGDdVPsTdBe7r
 pWDCKujljyw2TO2qQ8Sxd+w7lZJgMFXSkduSHJWEilH7EUFm2llu7JPz5FrIvTpK3z
 fn58kGWFNRcshhfrNqMDUogqwt5YcVmj4g5M6alI=
Date: Wed, 16 Oct 2019 11:31:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH] arm64: defconfig: Enable Qualcomm SPI and QSPI controller
Message-ID: <20191016060101.GG2654@vkoul-mobl>
References: <20191012041855.511313-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191012041855.511313-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_230106_605661_15E475DB 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
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

On 11-10-19, 21:18, Bjorn Andersson wrote:
> Enable the drivers for GENI SPI and QSPI controllers found on the
> Qualcomm SDM845 platform, among others.

lgtm, tested on db845c

Reviewed-by: Vinod Koul <vkoul@kernel.org>
Tested-by: Vinod Koul <vkoul@kernel.org>

> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 688c8f200034..dcada299ff4d 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -391,7 +391,9 @@ CONFIG_SPI_MESON_SPIFC=m
>  CONFIG_SPI_ORION=y
>  CONFIG_SPI_PL022=y
>  CONFIG_SPI_ROCKCHIP=y
> +CONFIG_SPI_QCOM_QSPI=m
>  CONFIG_SPI_QUP=y
> +CONFIG_SPI_QCOM_GENI=m
>  CONFIG_SPI_S3C64XX=y
>  CONFIG_SPI_SPIDEV=m
>  CONFIG_SPI_SUN6I=y
> -- 
> 2.23.0

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
