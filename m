Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF4BDC2E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h/voD1rSx3+L9oN/MO7fWSapXbSIhYYHiO53Lqu5jIY=; b=DRnr0v/LSX7UZwmt8AmvdAc2b
	NrNOgdBFh9lofwT7d9VSg7j0ejruqHlP1aU25xUzYRcQAqqwMNanciDPO2Ee8f78VUlept+HOqUVD
	2Pso6jkfG6tcJTRHFn9KYmHWIgyMZd1dYRZHPj/ue+V/zIcilyTc14fFkNguEBsBtXCvZ/w/+Axi0
	9ofpqHz5FXFBS7y947QO2uXULDK3S3iW85x8xmGrYYq5AGkgYSzgPlH0IPVVRDnQopi4AZ112CYQb
	Tj03GNilUvZnjvIhOidB0n/rx8xKaM9wev0zUFS+UbgOuGdv9rVpbkeVmKHQx9jj6aNWEul7I2rXy
	oUHvScIlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPeU-0006tY-JF; Fri, 18 Oct 2019 10:38:34 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPeJ-0006sm-BK
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:38:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id EDB57612F8; Fri, 18 Oct 2019 10:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571395102;
 bh=DDzea6D+szQ9vq8iio9ZbHXTx9y94I7ALFnpAw8tZ/Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Yms85Xbu2q9tQbXVKsZUqDHJR6CzSTqesztydnB1bfmQEXszanTjxHPOSm+BwmBT8
 JR9mtoSLxc4VwK+upe5/KWrt3tH0qhfEdev/iJQLnqnRffjlU4D2ql72FkI/av+iRt
 CTP5btPKVKVCBhN107zfobsvCYpOSzjvk2V3J12k=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 01224612E2;
 Fri, 18 Oct 2019 10:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571395099;
 bh=DDzea6D+szQ9vq8iio9ZbHXTx9y94I7ALFnpAw8tZ/Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cF+N8Uwkb5NwlB/zkGAHv6ZvarrVhig1upqcadwyDtotmcpP9jl2eYWdHJ50+zChi
 AhsA7dqi8S9Km3a0tAeZNjst7Qszf4i6CW3H0q13fiURPAkK267mG89KFAtRNpvhiH
 WLjH3BvVBn4OQzVaDVPhv3VzJdq2XBioXEdEs7O4=
MIME-Version: 1.0
Date: Fri, 18 Oct 2019 16:08:18 +0530
From: Sibi Sankar <sibis@codeaurora.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH] arm64: defconfig: Enable Qualcomm remoteproc dependencies
In-Reply-To: <20191009001442.15719-1-bjorn.andersson@linaro.org>
References: <20191009001442.15719-1-bjorn.andersson@linaro.org>
Message-ID: <95a80ff0e89a568d223fab6eb1f9362a@codeaurora.org>
X-Sender: sibis@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_033823_430354_778158D9 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel-owner@vger.kernel.org, Anson Huang <Anson.Huang@nxp.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Alex Elder <elder@linaro.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-msm@vger.kernel.org, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-09 05:44, Bjorn Andersson wrote:
> Enable the the power domains, reset controllers and remote block device
> memory access drivers necessary to boot the Audio, Compute and Modem
> DSPs on Qualcomm SDM845.
> 
> None of the power domains are system critical, but needs to be builtin
> as the driver core prohibits probe deferal past late initcall.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Reviewed-by: Sibi Sankar <sibis@codeaurora.org>

> ---
>  arch/arm64/configs/defconfig | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig 
> b/arch/arm64/configs/defconfig
> index c9a867ac32d4..42f042ba1039 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -732,10 +732,13 @@ CONFIG_RPMSG_QCOM_GLINK_SMEM=m
>  CONFIG_RPMSG_QCOM_SMD=y
>  CONFIG_RASPBERRYPI_POWER=y
>  CONFIG_IMX_SCU_SOC=y
> +CONFIG_QCOM_AOSS_QMP=y
>  CONFIG_QCOM_COMMAND_DB=y
>  CONFIG_QCOM_GENI_SE=y
>  CONFIG_QCOM_GLINK_SSR=m
> +CONFIG_QCOM_RMTFS_MEM=m
>  CONFIG_QCOM_RPMH=y
> +CONFIG_QCOM_RPMHPD=y
>  CONFIG_QCOM_SMEM=y
>  CONFIG_QCOM_SMD_RPM=y
>  CONFIG_QCOM_SMP2P=y
> @@ -780,6 +783,8 @@ CONFIG_PWM_ROCKCHIP=y
>  CONFIG_PWM_SAMSUNG=y
>  CONFIG_PWM_SUN4I=m
>  CONFIG_PWM_TEGRA=m
> +CONFIG_RESET_QCOM_AOSS=y

I should probably fix this ^^

> +CONFIG_RESET_QCOM_PDC=m
>  CONFIG_RESET_TI_SCI=y
>  CONFIG_PHY_XGENE=y
>  CONFIG_PHY_SUN4I_USB=y

-- 
-- Sibi Sankar --
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
