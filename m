Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63824E9905
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:16:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2/sl34nhct7rCqKc66Gr/vkp5nYBISac6CFMoEZHGyI=; b=kvChDBYv8PcPxq9wwAxYcArKG
	/HKmZ4NkGD/sAB7OF3xtTgLhOLKzWA17l8Oo5SBynhfCZigEX8fBm4c5zuNFPvx7hb9KnK+g7Voq4
	1mME0RHK5ydve0UJBk9QixPz9KNn9K19mTMWWYsKiVmBRC0EFW3HVfdQed77BSrhoUKFBSNoRw7sf
	R03cwHuU+FVNmItjysq/RcJx/Q96Eb2od0JJwVwIs/PvdLjQHXORluu7HYRs81DRZWq/Xn/WYbMPk
	uLGCtb2KldebWSYNuh5UoqN3/c69IavJUGlIn5MbRLPkrxSbQZpqMWMNbEZRES8lDGygnR1W50j+k
	Vh5Ra75dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPk5O-0003rJ-3L; Wed, 30 Oct 2019 09:16:14 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPk5D-0003qu-BZ
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:16:05 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E106849603532F7D3A05
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 17:15:58 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Wed, 30 Oct 2019
 17:15:51 +0800
Subject: Re: [PATCH] arm64: defconfig: Enable SMMU v3 PMCG
To: Zhou Wang <wangzhou1@hisilicon.com>, <xuwei5@huawei.com>
References: <1570695890-46743-1-git-send-email-wangzhou1@hisilicon.com>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5DB954C7.2050409@hisilicon.com>
Date: Wed, 30 Oct 2019 17:15:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1570695890-46743-1-git-send-email-wangzhou1@hisilicon.com>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_021603_569768_507895B3 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linuxarm@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/10 16:24, Zhou Wang wrote:
> HiSilicon Kunpeng920 SoC's SMMU has Performance Monitor Counter Groups(PMCG).
> This patch enables related driver in defconfig.
>
> Signed-off-by: Zhou Wang <wangzhou1@hisilicon.com>

Thanks!
Applied to the hisilicon arm64 defconfig tree.

Best Regards,
Wei

> ---
>   arch/arm64/configs/defconfig | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 8e05c39..1f4940c 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -801,6 +801,7 @@ CONFIG_PHY_ROCKCHIP_TYPEC=y
>   CONFIG_PHY_UNIPHIER_USB2=y
>   CONFIG_PHY_UNIPHIER_USB3=y
>   CONFIG_PHY_TEGRA_XUSB=y
> +CONFIG_ARM_SMMU_V3_PMU=m
>   CONFIG_FSL_IMX8_DDR_PMU=m
>   CONFIG_HISI_PMU=y
>   CONFIG_QCOM_L2_PMU=y



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
