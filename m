Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138811D81FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 19:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNl+UXpNUBuTryOdBF5gpUNT54HFkufecYeixZUKdZE=; b=TOUU1eD9dlYgGe
	XVQ9Pdzlez68jvHptp+Co5eo6BZTx6fgRMpUW9iGgVtQvDcjcuC3QD01R3kJQNj9XNAqJkIyVUeft
	eJN0TASUFqrnB4liCRTFfxrGDF5rC98sd384VAkeO4hQPXrnnNBf6Do9IABwoA7sZUsg9IIepHShF
	dQDL91g0B3Q59px/b63TiMnaoeUGFplDeUi+2VRvYhn0PvilT8nWAdhOy9dlCP3/h5GyuYGrBIvy5
	xjKvhSQDVKRo/WKMLV+xV2djmaW74GJaK+KRaJRn/x9xzE5MykYQ+UqO/3D99Jhpdo1d2vBiVZ/BM
	u8vXxr8w5FCieSENFseA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajwR-0003rG-UB; Mon, 18 May 2020 17:52:43 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajwH-0003qg-Pv; Mon, 18 May 2020 17:52:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id CF53F2A10C9
Subject: Re: [PATCH v14 03/11] soc: mediatek: Add basic_clk_name to
 scp_power_data
To: Weiyi Lu <weiyi.lu@mediatek.com>
References: <1588752963-19934-1-git-send-email-weiyi.lu@mediatek.com>
 <1588752963-19934-4-git-send-email-weiyi.lu@mediatek.com>
 <7ad67855-a3f8-f979-8849-3765bd8289d3@collabora.com>
 <1589176947.21832.9.camel@mtksdaap41> <1589513724.16252.3.camel@mtksdaap41>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <c510cc46-3285-fa53-b2e1-0420b0bfb61c@collabora.com>
Date: Mon, 18 May 2020 19:52:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1589513724.16252.3.camel@mtksdaap41>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_105234_102789_F8D07A0D 
X-CRM114-Status: GOOD (  23.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: James Liao <jamesjj.liao@mediatek.com>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Rob Herring <robh@kernel.org>, Enric Balletbo Serra <eballetbo@gmail.com>,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Weiyi,

On 15/5/20 5:35, Weiyi Lu wrote:
> On Mon, 2020-05-11 at 14:02 +0800, Weiyi Lu wrote:
>> On Wed, 2020-05-06 at 23:01 +0200, Enric Balletbo i Serra wrote:
>>> Hi Weiyi,
>>>
>>> Thank you for your patch.
>>>
>>> On 6/5/20 10:15, Weiyi Lu wrote:
>>>> Try to stop extending the clk_id or clk_names if there are
>>>> more and more new BASIC clocks. To get its own clocks by the
>>>> basic_clk_name of each power domain.
>>>> And then use basic_clk_name strings for all compatibles, instead of
>>>> mixing clk_id and clk_name.
>>>>
>>>> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
>>>> Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
>>>> ---
>>>>  drivers/soc/mediatek/mtk-scpsys.c | 134 ++++++++++++--------------------------
>>>>  1 file changed, 41 insertions(+), 93 deletions(-)
>>>>
>>>> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
>>>> index f669d37..c9c3cf7 100644
>>>> --- a/drivers/soc/mediatek/mtk-scpsys.c
>>>> +++ b/drivers/soc/mediatek/mtk-scpsys.c
>>>> @@ -78,34 +78,6 @@
>>>>  #define PWR_STATUS_HIF1			BIT(26)	/* MT7622 */
>>>>  #define PWR_STATUS_WB			BIT(27)	/* MT7622 */
>>>>  
>>>> -enum clk_id {
>>>> -	CLK_NONE,
>>>> -	CLK_MM,
>>>> -	CLK_MFG,
>>>> -	CLK_VENC,
>>>> -	CLK_VENC_LT,
>>>> -	CLK_ETHIF,
>>>> -	CLK_VDEC,
>>>> -	CLK_HIFSEL,
>>>> -	CLK_JPGDEC,
>>>> -	CLK_AUDIO,
>>>> -	CLK_MAX,
>>>> -};
>>>> -
>>>> -static const char * const clk_names[] = {
>>>> -	NULL,
>>>> -	"mm",
>>>> -	"mfg",
>>>> -	"venc",
>>>> -	"venc_lt",
>>>> -	"ethif",
>>>> -	"vdec",
>>>> -	"hif_sel",
>>>> -	"jpgdec",
>>>> -	"audio",
>>>> -	NULL,
>>>> -};
>>>> -
>>>>  #define MAX_CLKS	3
>>>>  
>>>>  /**
>>>> @@ -116,7 +88,7 @@ enum clk_id {
>>>>   * @sram_pdn_bits: The mask for sram power control bits.
>>>>   * @sram_pdn_ack_bits: The mask for sram power control acked bits.
>>>>   * @bus_prot_mask: The mask for single step bus protection.
>>>> - * @clk_id: The basic clocks required by this power domain.
>>>> + * @basic_clk_name: The basic clocks required by this power domain.
>>>>   * @caps: The flag for active wake-up action.
>>>>   */
>>>>  struct scp_domain_data {
>>>> @@ -126,7 +98,7 @@ struct scp_domain_data {
>>>>  	u32 sram_pdn_bits;
>>>>  	u32 sram_pdn_ack_bits;
>>>>  	u32 bus_prot_mask;
>>>> -	enum clk_id clk_id[MAX_CLKS];
>>>> +	const char *basic_clk_name[MAX_CLKS];
>>>
>>> I only reviewed v13, so sorry if this was already discussed. I am wondering if
>>> would be better take advantage of the devm_clk_bulk_get() function instead of
>>> kind of reimplementing the same, something like this
>>>
>>> 	const struct clk_bulk_data *basic_clocks;
>>>
>>
>> I thought it should be const struct clk_bulk_data
>> basic_clocks[MAX_CLKS]; instead of const struct clk_bulk_data
>> *basic_clocks; in struct scp_domain_data data type
>>
>>>>  	u8 caps;
>>>>  };
>>>>  
>>>> @@ -411,12 +383,19 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
>>>>  	return ret;
>>>>  }
>>>>  
>>>> -static void init_clks(struct platform_device *pdev, struct clk **clk)
>>>> +static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
>>>> +			const char * const *name)
>>>>  {
>>>>  	int i;
>>>>  
>>>> -	for (i = CLK_NONE + 1; i < CLK_MAX; i++)
>>>> -		clk[i] = devm_clk_get(&pdev->dev, clk_names[i]);
>>>> +	for (i = 0; i < MAX_CLKS && name[i]; i++) {
>>>> +		clk[i] = devm_clk_get(&pdev->dev, name[i]);
>>>> +
>>>> +		if (IS_ERR(clk[i]))
>>>> +			return PTR_ERR(clk[i]);
>>>> +	}
>>>
>>> You will be able to remove this function, see below ...
>>>
>>>> +
>>>> +	return 0;
>>>>  }
>>>>  
>>>>  static struct scp *init_scp(struct platform_device *pdev,
>>>> @@ -426,9 +405,8 @@ static struct scp *init_scp(struct platform_device *pdev,
>>>>  {
>>>>  	struct genpd_onecell_data *pd_data;
>>>>  	struct resource *res;
>>>> -	int i, j;
>>>> +	int i, ret;
>>>>  	struct scp *scp;
>>>> -	struct clk *clk[CLK_MAX];
>>>>  
>>>>  	scp = devm_kzalloc(&pdev->dev, sizeof(*scp), GFP_KERNEL);
>>>>  	if (!scp)
>>>> @@ -481,8 +459,6 @@ static struct scp *init_scp(struct platform_device *pdev,
>>>>  
>>>>  	pd_data->num_domains = num;
>>>>  
>>>> -	init_clks(pdev, clk);
>>>> -
>>>>  	for (i = 0; i < num; i++) {
>>>>  		struct scp_domain *scpd = &scp->domains[i];
>>>>  		struct generic_pm_domain *genpd = &scpd->genpd;
>>>> @@ -493,17 +469,9 @@ static struct scp *init_scp(struct platform_device *pdev,
>>>>  
>>>>  		scpd->data = data;
>>>>  
>>>> -		for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
>>>> -			struct clk *c = clk[data->clk_id[j]];
>>>> -
>>>> -			if (IS_ERR(c)) {
>>>> -				dev_err(&pdev->dev, "%s: clk unavailable\n",
>>>> -					data->name);
>>>> -				return ERR_CAST(c);
>>>> -			}
>>>> -
>>>> -			scpd->clk[j] = c;
>>>> -		}
>>>> +		ret = init_basic_clks(pdev, scpd->clk, data->basic_clk_name);
>>>> +		if (ret)
>>>> +			return ERR_PTR(ret);
>>>
>>> Just call:
>>>
>>> 	ret = devm_clk_bulk_get(&pdev->dev, ARRAY_SIZE(basic_clocks),
>>> 				data->basic_clocks);
>>> 	if (ret)
>>> 		return ERR_PTR(ret);
>>>
>>>>  
>>>>  		genpd->name = data->name;
>>>>  		genpd->power_off = scpsys_power_off;
>>>> @@ -560,7 +528,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>>  		.ctl_offs = SPM_CONN_PWR_CON,
>>>>  		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
>>>>  				 MT2701_TOP_AXI_PROT_EN_CONN_S,
>>>> -		.clk_id = {CLK_NONE},
>>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP,
>>>>  	},
>>>>  	[MT2701_POWER_DOMAIN_DISP] = {
>>>> @@ -568,7 +535,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>>  		.sta_mask = PWR_STATUS_DISP,
>>>>  		.ctl_offs = SPM_DIS_PWR_CON,
>>>>  		.sram_pdn_bits = GENMASK(11, 8),
>>>> -		.clk_id = {CLK_MM},
>>>> +		.basic_clk_name = {"mm"},
>>>
>>> 		.basic_clocks[] = {
>>> 			{ .id = "mm" },
>>> 		};
>>>
>>
>> Those basic clocks without given a name (name: null) would get incorrect
>> clock via clk_bulk_get(...) due to 
>>
>> /**
>>  * of_parse_clkspec() - Parse a DT clock specifier for a given device
>> node
>>  * @np: device node to parse clock specifier from
>>  * @index: index of phandle to parse clock out of. If index < 0, @name
>> is used
>>  * @name: clock name to find and parse. If name is NULL, the index is
>> used
>>
>> And the index is 0 here in this callstack
>>
>> I guess something need to be improved before we use the clk_bulk_ APIs.
>>
> 
> Hi Enric,
> 
> According to the result above, is it necessary to change the APIs or
> maybe I should send the next version v15 first to fix other problems you
> mentioned? Many thanks.
> 

It is fine to send a next version without changing the APIs, it depends on the
extra work if you are fine with the change. To be honest I didn't see the
problem above but I think can be fixed.

Cheers,
 Enric


>>
>>>>  		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_MM_M0,
>>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP,
>>>>  	},
>>>> @@ -578,7 +545,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>>  		.ctl_offs = SPM_MFG_PWR_CON,
>>>>  		.sram_pdn_bits = GENMASK(11, 8),
>>>>  		.sram_pdn_ack_bits = GENMASK(12, 12),
>>>> -		.clk_id = {CLK_MFG},
>>>> +		.basic_clk_name = {"mfg"},
>>>
>>> 		.basic_clocks[] = {
>>> 			{ .id = "mfg" },
>>> 		};
>>>
>>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP,
>>>>  	},
>>>>  	[MT2701_POWER_DOMAIN_VDEC] = {
>>>> @@ -587,7 +554,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>>  		.ctl_offs = SPM_VDE_PWR_CON,
>>>>  		.sram_pdn_bits = GENMASK(11, 8),
>>>>  		.sram_pdn_ack_bits = GENMASK(12, 12),
>>>> -		.clk_id = {CLK_MM},
>>>> +		.basic_clk_name = {"mm"},
>>>
>>> ...
>>>
>>> [snip]
>>
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
