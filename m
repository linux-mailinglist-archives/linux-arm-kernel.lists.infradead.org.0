Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 524F429182
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 09:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3PBqX7aDbXXjHtCotBcRQwnkrbNGlzdSaCXLPeYLw0M=; b=p12Lzin3/wWderoVGbTtcvfzY
	Hr3n+AZKesJjsHoRmm+7vhHm39E9B0zJxpvtCYtbuKy0YirFMCIVkir2me6AhSvGELwIW0vWQ3EMx
	U38zdSScik94YwZPAXt2ubgFpxBHh0OMUwUT3GQFmpfCLoOBFvAvQUHUoMpK9dpcP5DML4vRMIOzt
	ZBhn2jOdZL9akzRnAZqhNJ7qx/qOPfrnpTFUDlHu3bdF8G7/JygW6NkeZU4DEwb1F5KtJ2IzkzMTq
	YJi6Sa7CibKipcvNoqzeBpAbhGvOGt+i8XR00S4MDFQrqCTvslWzsz1uz8PKWRPdjK3QWxZky7Ixc
	027WmVpTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU4Iu-0000F6-8e; Fri, 24 May 2019 07:07:48 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU4Ik-0000EC-38; Fri, 24 May 2019 07:07:40 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4O71fNu007790; Fri, 24 May 2019 09:07:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=KgYz8lOxNFe9GYsbnWGU1e/GbH4dagg7a0sGq3pqCSE=;
 b=OG3jSL1iKU0eVTv0A0JLy4hhXLT9kgBxURJsh6RYps7WQY0OPv2F3yHCjBd5uYpg+A4q
 MEq92hoDZWhCciu1gJ6JFguKPZw8xS/UZUR2sZCMwtsgzo1X0CW2dLb/sAcrXcP6PvZq
 y3C3Tfkn+L4gg+mqbi9KTMUOErn/K+o6uV/+blIiBPn32JmSbDL/145K00pgVqEUynLa
 YDJckO8lEiJ5ABs+seAGcDkHfGgV+rFYMybhZJL0bepOURua/3TvwHiWNFXlU7gc4tRk
 VIELxlOeYGo7reJLqHtRUgdyt6t1olwqaQI2IBdHQ545P1tkx/vbLvhmahllcoY/egAr aQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2snrve64ab-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 24 May 2019 09:07:32 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C60F34D;
 Fri, 24 May 2019 07:07:29 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8D72315B0;
 Fri, 24 May 2019 07:07:29 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 24 May
 2019 09:07:28 +0200
Subject: Re: [v4, PATCH 2/3] net: stmmac: fix csr_clk can't be zero issue
To: Biao Huang <biao.huang@mediatek.com>, Jose Abreu <joabreu@synopsys.com>
References: <1558679169-26752-1-git-send-email-biao.huang@mediatek.com>
 <1558679169-26752-3-git-send-email-biao.huang@mediatek.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <120eba91-6d7f-1365-6b1c-e8365e54136c@st.com>
Date: Fri, 24 May 2019 09:07:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558679169-26752-3-git-send-email-biao.huang@mediatek.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-24_01:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_000738_611203_851FE7C7 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jianguo.zhang@mediatek.comi, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, boon.leong.ong@intel.com, yt.shen@mediatek.com,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Biao

On 5/24/19 8:26 AM, Biao Huang wrote:
> The specific clk_csr value can be zero, and
> stmmac_clk is necessary for MDC clock which can be set dynamically.
> So, change the condition from plat->clk_csr to plat->stmmac_clk to
> fix clk_csr can't be zero issue.
> 
> Fixes: cd7201f477b9 ("stmmac: MDC clock dynamically based on the csr clock input")
> Signed-off-by: Biao Huang <biao.huang@mediatek.com>
> ---
>   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |    6 +++---
>   .../net/ethernet/stmicro/stmmac/stmmac_platform.c  |    5 ++++-
>   2 files changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index 06487a6..b2feb6c 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -4380,10 +4380,10 @@ int stmmac_dvr_probe(struct device *device,
>   	 * set the MDC clock dynamically according to the csr actual
>   	 * clock input.
>   	 */
> -	if (!priv->plat->clk_csr)
> -		stmmac_clk_csr_set(priv);
> -	else
> +	if (priv->plat->clk_csr >= 0)
>   		priv->clk_csr = priv->plat->clk_csr;
> +	else
> +		stmmac_clk_csr_set(priv);
>   
>   	stmmac_check_pcs_mode(priv);
>   
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> index 3031f2b..f45bfbe 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> @@ -408,7 +408,10 @@ struct plat_stmmacenet_data *
>   	/* Default to phy auto-detection */
>   	plat->phy_addr = -1;
>   
> -	/* Get clk_csr from device tree */
> +	/* Default to get clk_csr from stmmac_clk_crs_set(),
> +	 * or get clk_csr from device tree.
> +	 */
> +	plat->clk_csr = -1;
>   	of_property_read_u32(np, "clk_csr", &plat->clk_csr);
>   
>   	/* "snps,phy-addr" is not a standard property. Mark it as deprecated
> 

Acked-by: Alexandre TORGUE <alexandre.torgue@st.com>

thanks
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
