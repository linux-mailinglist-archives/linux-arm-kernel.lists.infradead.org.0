Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF231FAD0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:35:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9A6IWxettK3u6lt6k+oLWrjyjGWacDvDw9BSO84EA5c=; b=DoLjRyQyCKDv8g
	Uw9QzyyoPlIvSOe0XO09bvYoklkilQ1srCdOh+W/jHu6KWB5V5xXCy/mkz9UxpwHAlj5YzfH08T/0
	GrNMBmzyCkfDtGQnHmXqzhcRueO8vr2c11O3sRH0bJRxpkno2Ppe6ETW2DsMui0a0DDT+ELf8IHLL
	iCHCUMGeubrKs34U/i0lPlXZXMKqIfXecsYP9+O5xvUj+JYqlpMq5o+iDbyUL0AlYybd4wLc18prr
	lF9wCovM0GxZd3Mpw5iND71DYvzG/kiB5y00lE7In/26XkaR2Y8CqjQ7wrX7CCymo+VD2/oMz4Vwo
	rHx35xkoTabIzOrpudoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUp3L-0003F8-Th; Wed, 13 Nov 2019 09:35:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUp39-0003Ej-Oa
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:34:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66C042196E;
 Wed, 13 Nov 2019 09:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573637694;
 bh=i+Joc5v+V3O8xh5ub9/iSdLqMTC5+7ARcRlXYmXtWlE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B8q6SK7Q3Y5wEqXTNkiWUBkmMSmUTe8bqsvVGwk2N5qQlBUW5Z40gwUHAI/KbsXcp
 AgEc1nopCTmHLvs+3JEit7+xEPjItyxJThy0o+QyPYeIMEMeFHKFKBNu0XFEMeo86Y
 DipAB+VmiO1zOUJCCK+XeSGeSfFkkw8OM6HZVDUY=
Date: Wed, 13 Nov 2019 09:34:48 +0000
From: Will Deacon <will@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH] arm64: defconfig: Enable Qualcomm SDM845 display and gpu
 clocks
Message-ID: <20191113093448.GA25438@willie-the-truck>
References: <20191109024234.1757452-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191109024234.1757452-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_013455_824158_A9F2C6D8 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 agross@kernel.org, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-msm@vger.kernel.org, Olof Johansson <olof@lixom.net>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 06:42:34PM -0800, Bjorn Andersson wrote:
> Enable the drivers for the display and gpu clock controllers on Qualcomm
> SDM845, needed in order to get these features working. These drivers
> provides power-domains and can as such not be compiled as modules.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 7fa92defb964..7fd999be3de3 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -726,6 +726,8 @@ CONFIG_MSM_MMCC_8996=y
>  CONFIG_MSM_GCC_8998=y
>  CONFIG_QCS_GCC_404=y
>  CONFIG_SDM_GCC_845=y
> +CONFIG_SDM_GPUCC_845=y
> +CONFIG_SDM_DISPCC_845=y
>  CONFIG_SM_GCC_8150=y
>  CONFIG_HWSPINLOCK=y
>  CONFIG_HWSPINLOCK_QCOM=y

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
