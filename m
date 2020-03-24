Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DE319060C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 08:06:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kJI5fIeQ9RaHVNZdhH1HgpJ8QS32QOE+2cjqHmROr4=; b=BU5F9y3c7sXbYK
	rb7LSP1PSR5e2FsFjfokm4MMHmsqqBdYXI5mVCQrkSC2N8q2rD8xyeiicJR2kEVfjzOb+Gu9dPhMq
	7XReB1mbwpma7o8MCtmMG8cSqlOVaAMILCXR75Du2rp0AOsmx58KQEXAQGoZe5oRRVKBAMT+jVIpZ
	5d7tsqJeg06zjgPVgfIOv+uTuIc2cM1iqxczdlrOGBcbdT8ZPouWsex1MkbYkJMzVdPLCnMZjH85Y
	qUJzOg/fNCqb0fBmW0qpluvE308iPMpAkZU6TQ/twpcJbaoAZyn1g3p4PWSWwluZS/T0r6Lb478+1
	DFMOEyTSIk1J541kqLtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGddJ-0002ne-NB; Tue, 24 Mar 2020 07:05:53 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGdd8-0002ms-U7
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 07:05:44 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02O6vigS009120; Tue, 24 Mar 2020 08:05:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=TJ6WtYr21VD5PFcLOhb9jJ6FrGqugiINsfYyYW1YSXQ=;
 b=UO3yxKThrXUCp5oUiRs+I2KJM1eCkcsOTQt3i/irJgTF5yfs8GAUQmmi/e19pim6ezgD
 d+Sjv/ylEYhi+cVoNF5lL9k2S/6JQmda3N+2S3qCNFAxdx/KAvhhTRUiisfxg1a5XPJU
 dnp8Kq03QFTMHXzmIQN+AHt5YBFBb0dtX3X58ICVCVuroDivd+BYveb3tdr02BXYiFCk
 WgYNLp8jxEUABLl1QXhDA+wnOyKjhKLCxISsinTI9s95FHORYE4006JxatRou8GdoGRQ
 va0U0L7wqzfR3qzAJ+BWxLAptox6+JZ8+eMRsiC5hFKmgDSPDwrufddl7kZgMNUl51BW 5A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw995dw7f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 24 Mar 2020 08:05:34 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 43B1D100051;
 Tue, 24 Mar 2020 08:05:28 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2B94F2123A8;
 Tue, 24 Mar 2020 08:05:28 +0100 (CET)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 24 Mar
 2020 08:05:27 +0100
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Tue, 24 Mar 2020 08:05:27 +0100
From: Christophe ROULLIER <christophe.roullier@st.com>
To: "robh@kernel.org" <robh@kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>, "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Peppe CAVALLARO <peppe.cavallaro@st.com>
Subject: Re: [PATCHv2 1/1] net: ethernet: stmmac: simplify phy modes
 management for stm32
Thread-Topic: [PATCHv2 1/1] net: ethernet: stmmac: simplify phy modes
 management for stm32
Thread-Index: AQHV+3KcsJPnUGhLZUuQ86OpgL2bwKhXTYaA
Date: Tue, 24 Mar 2020 07:05:27 +0000
Message-ID: <9525b2f3-3ef6-48f0-7183-a8d531945b17@st.com>
References: <20200316090907.18488-1-christophe.roullier@st.com>
In-Reply-To: <20200316090907.18488-1-christophe.roullier@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <8C57BBC1A4029645A55F6C9855D57595@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-24_01:2020-03-23,
 2020-03-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_000543_261902_1D1B3AA1 
X-CRM114-Status: GOOD (  25.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "andrew@lunn.ch" <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Gentle reminder

Thanks in advance.
Christophe.



On 16/03/2020 10:09, Christophe Roullier wrote:
> No new feature, just to simplify stm32 part to be easier to use.
> Add by default all Ethernet clocks in DT, and activate or not in function
> of phy mode, clock frequency, if property "st,ext-phyclk" is set or not.
> Keep backward compatibility
> -----------------------------------------------------------------------
> |PHY_MODE | Normal | PHY wo crystal|   PHY wo crystal   |  No 125Mhz  |
> |         |        |      25MHz    |        50MHz       |  from PHY   |
> -----------------------------------------------------------------------
> |  MII    |	 -    |     eth-ck    |       n/a          |	    n/a  |
> |         |        | st,ext-phyclk |                    |             |
> -----------------------------------------------------------------------
> |  GMII   |	 -    |     eth-ck    |       n/a          |	    n/a  |
> |         |        | st,ext-phyclk |                    |             |
> -----------------------------------------------------------------------
> | RGMII   |	 -    |     eth-ck    |       n/a          |      eth-ck  |
> |         |        | st,ext-phyclk |                    |st,eth-clk-sel|
> |         |        |               |                    |       or     |
> |         |        |               |                    | st,ext-phyclk|
> ------------------------------------------------------------------------
> | RMII    |	 -    |     eth-ck    |      eth-ck        |	     n/a  |
> |         |        | st,ext-phyclk | st,eth-ref-clk-sel |              |
> |         |        |               | or st,ext-phyclk   |              |
> ------------------------------------------------------------------------
>
> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
>
> ---
>   .../net/ethernet/stmicro/stmmac/dwmac-stm32.c | 74 +++++++++++--------
>   1 file changed, 44 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
> index b2dc99289687..5d4df4c5254e 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
> @@ -29,6 +29,11 @@
>   #define SYSCFG_PMCR_ETH_CLK_SEL		BIT(16)
>   #define SYSCFG_PMCR_ETH_REF_CLK_SEL	BIT(17)
>   
> +/* CLOCK feed to PHY*/
> +#define ETH_CK_F_25M	25000000
> +#define ETH_CK_F_50M	50000000
> +#define ETH_CK_F_125M	125000000
> +
>   /*  Ethernet PHY interface selection in register SYSCFG Configuration
>    *------------------------------------------
>    * src	 |BIT(23)| BIT(22)| BIT(21)|BIT(20)|
> @@ -58,33 +63,20 @@
>    *|         |        |      25MHz    |        50MHz       |                  |
>    * ---------------------------------------------------------------------------
>    *|  MII    |	 -   |     eth-ck    |	      n/a	  |	  n/a        |
> - *|         |        |		     |                    |		     |
> + *|         |        | st,ext-phyclk |                    |		     |
>    * ---------------------------------------------------------------------------
>    *|  GMII   |	 -   |     eth-ck    |	      n/a	  |	  n/a        |
> - *|         |        |               |                    |		     |
> + *|         |        | st,ext-phyclk |                    |		     |
>    * ---------------------------------------------------------------------------
> - *| RGMII   |	 -   |     eth-ck    |	      n/a	  |  eth-ck (no pin) |
> - *|         |        |               |                    |  st,eth-clk-sel  |
> + *| RGMII   |	 -   |     eth-ck    |	      n/a	  |      eth-ck      |
> + *|         |        | st,ext-phyclk |                    | st,eth-clk-sel or|
> + *|         |        |               |                    | st,ext-phyclk    |
>    * ---------------------------------------------------------------------------
>    *| RMII    |	 -   |     eth-ck    |	    eth-ck        |	  n/a        |
> - *|         |        |		     | st,eth-ref-clk-sel |		     |
> + *|         |        | st,ext-phyclk | st,eth-ref-clk-sel |		     |
> + *|         |        |               | or st,ext-phyclk   |		     |
>    * ---------------------------------------------------------------------------
>    *
> - * BIT(17) : set this bit in RMII mode when you have PHY without crystal 50MHz
> - * BIT(16) : set this bit in GMII/RGMII PHY when you do not want use 125Mhz
> - * from PHY
> - *-----------------------------------------------------
> - * src	 |         BIT(17)       |       BIT(16)      |
> - *-----------------------------------------------------
> - * MII   |           n/a	 |         n/a        |
> - *-----------------------------------------------------
> - * GMII  |           n/a         |   st,eth-clk-sel   |
> - *-----------------------------------------------------
> - * RGMII |           n/a         |   st,eth-clk-sel   |
> - *-----------------------------------------------------
> - * RMII  |   st,eth-ref-clk-sel	 |         n/a        |
> - *-----------------------------------------------------
> - *
>    */
>   
>   struct stm32_dwmac {
> @@ -93,6 +85,8 @@ struct stm32_dwmac {
>   	struct clk *clk_eth_ck;
>   	struct clk *clk_ethstp;
>   	struct clk *syscfg_clk;
> +	int ext_phyclk;
> +	int enable_eth_ck;
>   	int eth_clk_sel_reg;
>   	int eth_ref_clk_sel_reg;
>   	int irq_pwr_wakeup;
> @@ -155,14 +149,17 @@ static int stm32mp1_clk_prepare(struct stm32_dwmac *dwmac, bool prepare)
>   		ret = clk_prepare_enable(dwmac->syscfg_clk);
>   		if (ret)
>   			return ret;
> -		ret = clk_prepare_enable(dwmac->clk_eth_ck);
> -		if (ret) {
> -			clk_disable_unprepare(dwmac->syscfg_clk);
> -			return ret;
> +		if (dwmac->enable_eth_ck) {
> +			ret = clk_prepare_enable(dwmac->clk_eth_ck);
> +			if (ret) {
> +				clk_disable_unprepare(dwmac->syscfg_clk);
> +				return ret;
> +			}
>   		}
>   	} else {
>   		clk_disable_unprepare(dwmac->syscfg_clk);
> -		clk_disable_unprepare(dwmac->clk_eth_ck);
> +		if (dwmac->enable_eth_ck)
> +			clk_disable_unprepare(dwmac->clk_eth_ck);
>   	}
>   	return ret;
>   }
> @@ -170,24 +167,34 @@ static int stm32mp1_clk_prepare(struct stm32_dwmac *dwmac, bool prepare)
>   static int stm32mp1_set_mode(struct plat_stmmacenet_data *plat_dat)
>   {
>   	struct stm32_dwmac *dwmac = plat_dat->bsp_priv;
> -	u32 reg = dwmac->mode_reg;
> +	u32 reg = dwmac->mode_reg, clk_rate;
>   	int val;
>   
> +	clk_rate = clk_get_rate(dwmac->clk_eth_ck);
> +	dwmac->enable_eth_ck = false;
>   	switch (plat_dat->interface) {
>   	case PHY_INTERFACE_MODE_MII:
> +		if (clk_rate == ETH_CK_F_25M && dwmac->ext_phyclk)
> +			dwmac->enable_eth_ck = true;
>   		val = SYSCFG_PMCR_ETH_SEL_MII;
>   		pr_debug("SYSCFG init : PHY_INTERFACE_MODE_MII\n");
>   		break;
>   	case PHY_INTERFACE_MODE_GMII:
>   		val = SYSCFG_PMCR_ETH_SEL_GMII;
> -		if (dwmac->eth_clk_sel_reg)
> +		if (clk_rate == ETH_CK_F_25M &&
> +		    (dwmac->eth_clk_sel_reg || dwmac->ext_phyclk)) {
> +			dwmac->enable_eth_ck = true;
>   			val |= SYSCFG_PMCR_ETH_CLK_SEL;
> +		}
>   		pr_debug("SYSCFG init : PHY_INTERFACE_MODE_GMII\n");
>   		break;
>   	case PHY_INTERFACE_MODE_RMII:
>   		val = SYSCFG_PMCR_ETH_SEL_RMII;
> -		if (dwmac->eth_ref_clk_sel_reg)
> +		if ((clk_rate == ETH_CK_F_25M || clk_rate == ETH_CK_F_50M) &&
> +		    (dwmac->eth_ref_clk_sel_reg || dwmac->ext_phyclk)) {
> +			dwmac->enable_eth_ck = true;
>   			val |= SYSCFG_PMCR_ETH_REF_CLK_SEL;
> +		}
>   		pr_debug("SYSCFG init : PHY_INTERFACE_MODE_RMII\n");
>   		break;
>   	case PHY_INTERFACE_MODE_RGMII:
> @@ -195,8 +202,11 @@ static int stm32mp1_set_mode(struct plat_stmmacenet_data *plat_dat)
>   	case PHY_INTERFACE_MODE_RGMII_RXID:
>   	case PHY_INTERFACE_MODE_RGMII_TXID:
>   		val = SYSCFG_PMCR_ETH_SEL_RGMII;
> -		if (dwmac->eth_clk_sel_reg)
> +		if ((clk_rate == ETH_CK_F_25M || clk_rate == ETH_CK_F_125M) &&
> +		    (dwmac->eth_clk_sel_reg || dwmac->ext_phyclk)) {
> +			dwmac->enable_eth_ck = true;
>   			val |= SYSCFG_PMCR_ETH_CLK_SEL;
> +		}
>   		pr_debug("SYSCFG init : PHY_INTERFACE_MODE_RGMII\n");
>   		break;
>   	default:
> @@ -294,6 +304,9 @@ static int stm32mp1_parse_data(struct stm32_dwmac *dwmac,
>   	struct device_node *np = dev->of_node;
>   	int err = 0;
>   
> +	/* Ethernet PHY have no crystal */
> +	dwmac->ext_phyclk = of_property_read_bool(np, "st,ext-phyclk");
> +
>   	/* Gigabit Ethernet 125MHz clock selection. */
>   	dwmac->eth_clk_sel_reg = of_property_read_bool(np, "st,eth-clk-sel");
>   
> @@ -431,7 +444,8 @@ static int stm32mp1_suspend(struct stm32_dwmac *dwmac)
>   
>   	clk_disable_unprepare(dwmac->clk_tx);
>   	clk_disable_unprepare(dwmac->syscfg_clk);
> -	clk_disable_unprepare(dwmac->clk_eth_ck);
> +	if (dwmac->enable_eth_ck)
> +		clk_disable_unprepare(dwmac->clk_eth_ck);
>   
>   	return ret;
>   }
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
