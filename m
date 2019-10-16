Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CA5D886D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 08:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oi8Yp1ZQwDlEdAck6tAT7I4vILLUAnGdfJyA1NxNojE=; b=tP3I45NCfPqBwq
	nX1usBvbvJzDecfZ3bVtqAsp+IrmtXKNRJeEB6K2/dx3sZCuhFHDZ/VU6usKRZIjvoNcHmAkVyqBs
	7eDEyshqfQ8h2DhdTD9hpScfYmPWVfLESURpurqMhz3DnVP0zG7i89jmwD+JagjcU9Om67ZN5+cSb
	sv1/GRQFEoatnapNqYPNKgQEzmconoPuOUanUc3bV63g0gzpausWBDalN+65klVD10291r0FPgGss
	iMulATa7K9oN2T2G+fTe9h636GFF6vogEhAalkafGaa/KUF/ayMmH6yPaTlGR5wcz3FofYwvhhg4B
	8Ql54jPSdIc1+5K4BRJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKcNa-0001JX-MZ; Wed, 16 Oct 2019 06:01:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKcMS-0000Tf-Uc
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 06:00:42 +0000
Received: from localhost (unknown [171.76.123.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C446C20872;
 Wed, 16 Oct 2019 06:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571205640;
 bh=8eaAxPL2KayDUCaf1S4jMsM2BVtAzQbFkkpPFytTUFY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p0oW49M8iTuaGttBcVoEKOWVs23gzFxq5ABXZPBb+81Jc/W1q9vsSS7JEaIKFhweD
 6RvihGSk/RZHyGSIMalD3BYzyGW8+oUt2A6axpbrJPlzv+koyRmbES8V5eXzB6gUIi
 jZRCKUX2Xt+fNWGe2gkC3Hia/45pfMwRm/1vwlSc=
Date: Wed, 16 Oct 2019 11:30:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH] arm64: defconfig: Enable Qualcomm socinfo driver
Message-ID: <20191016060035.GF2654@vkoul-mobl>
References: <20191011234828.374419-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011234828.374419-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_230041_020614_2ECBBCE9 
X-CRM114-Status: GOOD (  15.40  )
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
Cc: Anson Huang <Anson.Huang@nxp.com>, Arnd Bergmann <arnd@arndb.de>,
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

On 11-10-19, 16:48, Bjorn Andersson wrote:
> The Qualcomm socinfo driver provides SoC information to userspace using
> the standard soc interface as well as a number of debugfs entries.
> 
> Enable this to allow certain user space tools to acquire this
> information, as well as getting developers access to the information in
> debugfs that is useful when reporting bugs.

lgtm, tested on db845c

Reviewed-by: Vinod Koul <vkoul@kernel.org>
Tested-by: Vinod Koul <vkoul@kernel.org>

> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 45e55dfe1ee4..a5953b0b382d 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -744,6 +744,7 @@ CONFIG_QCOM_SMEM=y
>  CONFIG_QCOM_SMD_RPM=y
>  CONFIG_QCOM_SMP2P=y
>  CONFIG_QCOM_SMSM=y
> +CONFIG_QCOM_SOCINFO=m
>  CONFIG_ARCH_R8A774A1=y
>  CONFIG_ARCH_R8A774C0=y
>  CONFIG_ARCH_R8A7795=y
> -- 
> 2.23.0

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
