Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E1EC9BD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:14:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VmiRy6kbj+CMuGh3uYcYMuO16yVQnjZ1fWhGznN3jb8=; b=XXWNtkW/3Yx4oQbcIe7Tx/Nks
	muHD9etnY4ZLhvHbhzqpu5qb/CPerEoK/7LH1lnT8hkqmQVqNJ+h8iQdSNVY+UCa6M2pxpT6TZ18E
	n5TuWAITpOAPoeqPwNiqnyGsfwdXqR8KfMa7eAaXx2X1xhtQq8Y7UQMbI6gdKoFX3Y8+d27RiODTc
	jK93CfOqm3ewvqz9eNGnNwUdkXK18HwLDVyFcAfFTSA7hvL0BdBgw6ri6kWe7bK6C9QfrUcNAaDL2
	KSDM48HiooCiuPanAzXqJyhgDJup4DVVtdBJTdu+X2KxxXqCRQppjfpuNMhuOg1OWVu/mIswjmAHV
	B4R/saT9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFy7h-000207-7N; Thu, 03 Oct 2019 10:14:13 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFy7a-0001zY-0r
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:14:07 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x93A2J55020727; Thu, 3 Oct 2019 12:13:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=8P9lBIH2EjtLoqWh8kEKBgTx+oCkp2//ut7kNrzMBMk=;
 b=XKSPLhchexVTwVYLQfaQQ7XE/rbyZ+1lGE0yi9GgsbCUhbXrzjgQxC/vNeDxLR9xADiF
 ZNONUjtVSutevwzTUNA6nBY60SkHPHXirVtWbDI3YkYGqF2+/dYG6aD06fmizCYgJC7D
 IXKNiPKUpxd8pDMzFhXJGJF+zNeywHyDQIqf2NKk201DZXnGxhOE2oebMX41euUbY3g6
 yDeUI0ws1BsAXjhfRwb/8hjoudqEzFUQ6DxhQimwgM2aJXe6wS50sjdrsNc2hRlSbuoI
 3waLwDfyJJ/CD2qa1fZVenUFQHDekOGzhykjgFBOjQp/E6i2WKZGrxwQ+9Wd8OyuPRXs BQ== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9vnam10h-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 03 Oct 2019 12:13:55 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 3532D23;
 Thu,  3 Oct 2019 10:13:45 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2155C2B5CB3;
 Thu,  3 Oct 2019 12:13:45 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 3 Oct
 2019 12:13:44 +0200
Subject: Re: [PATCH 1/5] net: ethernet: stmmac: Add support for syscfg clock
To: Christophe Roullier <christophe.roullier@st.com>, <robh@kernel.org>,
 <davem@davemloft.net>, <joabreu@synopsys.com>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <peppe.cavallaro@st.com>
References: <20190920053817.13754-1-christophe.roullier@st.com>
 <20190920053817.13754-2-christophe.roullier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <7032bc93-cfb3-4538-1de5-bd901a3fc8c5@st.com>
Date: Thu, 3 Oct 2019 12:13:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190920053817.13754-2-christophe.roullier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-03_04:2019-10-01,2019-10-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_031406_351360_EDDA7C73 
X-CRM114-Status: GOOD (  22.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 9/20/19 7:38 AM, Christophe Roullier wrote:
> Add optional support for syscfg clock in dwmac-stm32.c
> Now Syscfg clock is activated automatically when syscfg
> registers are used
> 
> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
> ---
>   .../net/ethernet/stmicro/stmmac/dwmac-stm32.c | 36 +++++++++++++------
>   1 file changed, 25 insertions(+), 11 deletions(-)

Acked-by: Alexandre TORGUE <alexandre.torgue@st.com>

> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
> index 4ef041bdf6a1..7e6619868cc1 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
> @@ -152,23 +152,32 @@ static int stm32mp1_clk_prepare(struct stm32_dwmac *dwmac, bool prepare)
>   	int ret = 0;
>   
>   	if (prepare) {
> -		ret = clk_prepare_enable(dwmac->syscfg_clk);
> -		if (ret)
> -			return ret;
> -
> +		if (dwmac->syscfg_clk) {
> +			ret = clk_prepare_enable(dwmac->syscfg_clk);
> +			if (ret)
> +				return ret;
> +		}
>   		if (dwmac->clk_eth_ck) {
>   			ret = clk_prepare_enable(dwmac->clk_eth_ck);
>   			if (ret) {
> -				clk_disable_unprepare(dwmac->syscfg_clk);
> +				if (dwmac->syscfg_clk)
> +					goto unprepare_syscfg;
>   				return ret;
>   			}
>   		}
>   	} else {
> -		clk_disable_unprepare(dwmac->syscfg_clk);
> +		if (dwmac->syscfg_clk)
> +			clk_disable_unprepare(dwmac->syscfg_clk);
> +
>   		if (dwmac->clk_eth_ck)
>   			clk_disable_unprepare(dwmac->clk_eth_ck);
>   	}
>   	return ret;
> +
> +unprepare_syscfg:
> +	clk_disable_unprepare(dwmac->syscfg_clk);
> +
> +	return ret;
>   }
>   
>   static int stm32mp1_set_mode(struct plat_stmmacenet_data *plat_dat)
> @@ -296,7 +305,7 @@ static int stm32mp1_parse_data(struct stm32_dwmac *dwmac,
>   {
>   	struct platform_device *pdev = to_platform_device(dev);
>   	struct device_node *np = dev->of_node;
> -	int err = 0;
> +	int err;
>   
>   	/* Gigabit Ethernet 125MHz clock selection. */
>   	dwmac->eth_clk_sel_reg = of_property_read_bool(np, "st,eth-clk-sel");
> @@ -320,13 +329,17 @@ static int stm32mp1_parse_data(struct stm32_dwmac *dwmac,
>   		return PTR_ERR(dwmac->clk_ethstp);
>   	}
>   
> -	/*  Clock for sysconfig */
> +	/*  Optional Clock for sysconfig */
>   	dwmac->syscfg_clk = devm_clk_get(dev, "syscfg-clk");
>   	if (IS_ERR(dwmac->syscfg_clk)) {
> -		dev_err(dev, "No syscfg clock provided...\n");
> -		return PTR_ERR(dwmac->syscfg_clk);
> +		err = PTR_ERR(dwmac->syscfg_clk);
> +		if (err != -ENOENT)
> +			return err;
> +		dwmac->syscfg_clk = NULL;
>   	}
>   
> +	err = 0;
> +
>   	/* Get IRQ information early to have an ability to ask for deferred
>   	 * probe if needed before we went too far with resource allocation.
>   	 */
> @@ -436,7 +449,8 @@ static int stm32mp1_suspend(struct stm32_dwmac *dwmac)
>   		return ret;
>   
>   	clk_disable_unprepare(dwmac->clk_tx);
> -	clk_disable_unprepare(dwmac->syscfg_clk);
> +	if (dwmac->syscfg_clk)
> +		clk_disable_unprepare(dwmac->syscfg_clk);
>   	if (dwmac->clk_eth_ck)
>   		clk_disable_unprepare(dwmac->clk_eth_ck);
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
