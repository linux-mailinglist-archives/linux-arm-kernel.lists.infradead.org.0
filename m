Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC56F1DC59E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 05:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhIQbnb3QAd1wzeZ4NIN4Ne1ZC1m+1zeHTZVXgDRELY=; b=koO0S/g1mzRr4o
	b7DRVXE1BABHXyYVzDeMEQ+g0NaT169/hY0kcJtwhysrboU5vhTAUSt64idzi98B8OddIzS1qZCEz
	5LvfbWO851aaQUVBfzA6b0npnuE1cDcLnWsxOxY4T601ObXAPN+ExQ6bSe0s4q/riJwX3SlOr0pc3
	ESsHEmsbmT9jiltSc5l5ueyeFLotO7aQm9lOIT2jw+GVXKOIgWN9gBFqEt60V9Px0Wj3UF2awt8P7
	sT5YmulUr/K3bJcDyHGhqe2CNVdxxi0ZfuekC5yzCxiKydkvtYQDNDvibV+7Ohc4bDqJDP4RCejSA
	UBu2CgTk0FlbFGP3vzbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbbtb-00075R-8k; Thu, 21 May 2020 03:29:23 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbbtO-00073T-Tz; Thu, 21 May 2020 03:29:13 +0000
X-UUID: b56350b251484776865834adb5a89855-20200520
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=/HKKyRrVUbiWfvKCrXHATyO2NgGyKxmnEG4fgx95eYc=; 
 b=GCQ3HsvoPuYHhlmaGYQpV9OmlLoRLRUQdbqwstWmNDOX8hZK2FI8gkvn4Fn5qLFgL3qYdbLP9oiWAIDlbcN4HNodbLUsjIQOTQqqrtbNx9cEyt0135daAMyfcMJZJi0hMCoEx0FxF37K0FxSLCZCxVkpOMlvtTymsTJWXTEXw0Q=;
X-UUID: b56350b251484776865834adb5a89855-20200520
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1583469607; Wed, 20 May 2020 19:29:00 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 20:28:59 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 11:28:57 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 21 May 2020 11:28:57 +0800
Message-ID: <1590031737.26404.26.camel@mtksdaap41>
Subject: Re: [PATCH v14 03/11] soc: mediatek: Add basic_clk_name to
 scp_power_data
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Thu, 21 May 2020 11:28:57 +0800
In-Reply-To: <c510cc46-3285-fa53-b2e1-0420b0bfb61c@collabora.com>
References: <1588752963-19934-1-git-send-email-weiyi.lu@mediatek.com>
 <1588752963-19934-4-git-send-email-weiyi.lu@mediatek.com>
 <7ad67855-a3f8-f979-8849-3765bd8289d3@collabora.com>
 <1589176947.21832.9.camel@mtksdaap41> <1589513724.16252.3.camel@mtksdaap41>
 <c510cc46-3285-fa53-b2e1-0420b0bfb61c@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_202910_980482_4DC298EE 
X-CRM114-Status: GOOD (  30.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, 2020-05-18 at 19:52 +0200, Enric Balletbo i Serra wrote:
> Hi Weiyi,
> 
> On 15/5/20 5:35, Weiyi Lu wrote:
> > On Mon, 2020-05-11 at 14:02 +0800, Weiyi Lu wrote:
> >> On Wed, 2020-05-06 at 23:01 +0200, Enric Balletbo i Serra wrote:
> >>> Hi Weiyi,
> >>>
> >>> Thank you for your patch.
> >>>
> >>> On 6/5/20 10:15, Weiyi Lu wrote:
> >>>> Try to stop extending the clk_id or clk_names if there are
> >>>> more and more new BASIC clocks. To get its own clocks by the
> >>>> basic_clk_name of each power domain.
> >>>> And then use basic_clk_name strings for all compatibles, instead of
> >>>> mixing clk_id and clk_name.
> >>>>
> >>>> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> >>>> Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
> >>>> ---
> >>>>  drivers/soc/mediatek/mtk-scpsys.c | 134 ++++++++++++--------------------------
> >>>>  1 file changed, 41 insertions(+), 93 deletions(-)
> >>>>
> >>>> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> >>>> index f669d37..c9c3cf7 100644
> >>>> --- a/drivers/soc/mediatek/mtk-scpsys.c
> >>>> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> >>>> @@ -78,34 +78,6 @@
> >>>>  #define PWR_STATUS_HIF1			BIT(26)	/* MT7622 */
> >>>>  #define PWR_STATUS_WB			BIT(27)	/* MT7622 */
> >>>>  
> >>>> -enum clk_id {
> >>>> -	CLK_NONE,
> >>>> -	CLK_MM,
> >>>> -	CLK_MFG,
> >>>> -	CLK_VENC,
> >>>> -	CLK_VENC_LT,
> >>>> -	CLK_ETHIF,
> >>>> -	CLK_VDEC,
> >>>> -	CLK_HIFSEL,
> >>>> -	CLK_JPGDEC,
> >>>> -	CLK_AUDIO,
> >>>> -	CLK_MAX,
> >>>> -};
> >>>> -
> >>>> -static const char * const clk_names[] = {
> >>>> -	NULL,
> >>>> -	"mm",
> >>>> -	"mfg",
> >>>> -	"venc",
> >>>> -	"venc_lt",
> >>>> -	"ethif",
> >>>> -	"vdec",
> >>>> -	"hif_sel",
> >>>> -	"jpgdec",
> >>>> -	"audio",
> >>>> -	NULL,
> >>>> -};
> >>>> -
> >>>>  #define MAX_CLKS	3
> >>>>  
> >>>>  /**
> >>>> @@ -116,7 +88,7 @@ enum clk_id {
> >>>>   * @sram_pdn_bits: The mask for sram power control bits.
> >>>>   * @sram_pdn_ack_bits: The mask for sram power control acked bits.
> >>>>   * @bus_prot_mask: The mask for single step bus protection.
> >>>> - * @clk_id: The basic clocks required by this power domain.
> >>>> + * @basic_clk_name: The basic clocks required by this power domain.
> >>>>   * @caps: The flag for active wake-up action.
> >>>>   */
> >>>>  struct scp_domain_data {
> >>>> @@ -126,7 +98,7 @@ struct scp_domain_data {
> >>>>  	u32 sram_pdn_bits;
> >>>>  	u32 sram_pdn_ack_bits;
> >>>>  	u32 bus_prot_mask;
> >>>> -	enum clk_id clk_id[MAX_CLKS];
> >>>> +	const char *basic_clk_name[MAX_CLKS];
> >>>
> >>> I only reviewed v13, so sorry if this was already discussed. I am wondering if
> >>> would be better take advantage of the devm_clk_bulk_get() function instead of
> >>> kind of reimplementing the same, something like this
> >>>
> >>> 	const struct clk_bulk_data *basic_clocks;
> >>>
> >>
> >> I thought it should be const struct clk_bulk_data
> >> basic_clocks[MAX_CLKS]; instead of const struct clk_bulk_data
> >> *basic_clocks; in struct scp_domain_data data type
> >>
> >>>>  	u8 caps;
> >>>>  };
> >>>>  
> >>>> @@ -411,12 +383,19 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
> >>>>  	return ret;
> >>>>  }
> >>>>  
> >>>> -static void init_clks(struct platform_device *pdev, struct clk **clk)
> >>>> +static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
> >>>> +			const char * const *name)
> >>>>  {
> >>>>  	int i;
> >>>>  
> >>>> -	for (i = CLK_NONE + 1; i < CLK_MAX; i++)
> >>>> -		clk[i] = devm_clk_get(&pdev->dev, clk_names[i]);
> >>>> +	for (i = 0; i < MAX_CLKS && name[i]; i++) {
> >>>> +		clk[i] = devm_clk_get(&pdev->dev, name[i]);
> >>>> +
> >>>> +		if (IS_ERR(clk[i]))
> >>>> +			return PTR_ERR(clk[i]);
> >>>> +	}
> >>>
> >>> You will be able to remove this function, see below ...
> >>>
> >>>> +
> >>>> +	return 0;
> >>>>  }
> >>>>  
> >>>>  static struct scp *init_scp(struct platform_device *pdev,
> >>>> @@ -426,9 +405,8 @@ static struct scp *init_scp(struct platform_device *pdev,
> >>>>  {
> >>>>  	struct genpd_onecell_data *pd_data;
> >>>>  	struct resource *res;
> >>>> -	int i, j;
> >>>> +	int i, ret;
> >>>>  	struct scp *scp;
> >>>> -	struct clk *clk[CLK_MAX];
> >>>>  
> >>>>  	scp = devm_kzalloc(&pdev->dev, sizeof(*scp), GFP_KERNEL);
> >>>>  	if (!scp)
> >>>> @@ -481,8 +459,6 @@ static struct scp *init_scp(struct platform_device *pdev,
> >>>>  
> >>>>  	pd_data->num_domains = num;
> >>>>  
> >>>> -	init_clks(pdev, clk);
> >>>> -
> >>>>  	for (i = 0; i < num; i++) {
> >>>>  		struct scp_domain *scpd = &scp->domains[i];
> >>>>  		struct generic_pm_domain *genpd = &scpd->genpd;
> >>>> @@ -493,17 +469,9 @@ static struct scp *init_scp(struct platform_device *pdev,
> >>>>  
> >>>>  		scpd->data = data;
> >>>>  
> >>>> -		for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
> >>>> -			struct clk *c = clk[data->clk_id[j]];
> >>>> -
> >>>> -			if (IS_ERR(c)) {
> >>>> -				dev_err(&pdev->dev, "%s: clk unavailable\n",
> >>>> -					data->name);
> >>>> -				return ERR_CAST(c);
> >>>> -			}
> >>>> -
> >>>> -			scpd->clk[j] = c;
> >>>> -		}
> >>>> +		ret = init_basic_clks(pdev, scpd->clk, data->basic_clk_name);
> >>>> +		if (ret)
> >>>> +			return ERR_PTR(ret);
> >>>
> >>> Just call:
> >>>
> >>> 	ret = devm_clk_bulk_get(&pdev->dev, ARRAY_SIZE(basic_clocks),
> >>> 				data->basic_clocks);
> >>> 	if (ret)
> >>> 		return ERR_PTR(ret);
> >>>
> >>>>  
> >>>>  		genpd->name = data->name;
> >>>>  		genpd->power_off = scpsys_power_off;
> >>>> @@ -560,7 +528,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >>>>  		.ctl_offs = SPM_CONN_PWR_CON,
> >>>>  		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
> >>>>  				 MT2701_TOP_AXI_PROT_EN_CONN_S,
> >>>> -		.clk_id = {CLK_NONE},
> >>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP,
> >>>>  	},
> >>>>  	[MT2701_POWER_DOMAIN_DISP] = {
> >>>> @@ -568,7 +535,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >>>>  		.sta_mask = PWR_STATUS_DISP,
> >>>>  		.ctl_offs = SPM_DIS_PWR_CON,
> >>>>  		.sram_pdn_bits = GENMASK(11, 8),
> >>>> -		.clk_id = {CLK_MM},
> >>>> +		.basic_clk_name = {"mm"},
> >>>
> >>> 		.basic_clocks[] = {
> >>> 			{ .id = "mm" },
> >>> 		};
> >>>
> >>
> >> Those basic clocks without given a name (name: null) would get incorrect
> >> clock via clk_bulk_get(...) due to 
> >>
> >> /**
> >>  * of_parse_clkspec() - Parse a DT clock specifier for a given device
> >> node
> >>  * @np: device node to parse clock specifier from
> >>  * @index: index of phandle to parse clock out of. If index < 0, @name
> >> is used
> >>  * @name: clock name to find and parse. If name is NULL, the index is
> >> used
> >>
> >> And the index is 0 here in this callstack
> >>
> >> I guess something need to be improved before we use the clk_bulk_ APIs.
> >>
> > 
> > Hi Enric,
> > 
> > According to the result above, is it necessary to change the APIs or
> > maybe I should send the next version v15 first to fix other problems you
> > mentioned? Many thanks.
> > 
> 
> It is fine to send a next version without changing the APIs, it depends on the
> extra work if you are fine with the change. To be honest I didn't see the
> problem above but I think can be fixed.
> 
> Cheers,
>  Enric
> 

Hi Enric,

Got it, I'll send a next version without changing the APIs.
And please let me explain it again.
If anything wrong, feel free to correct me.

First, the clock mapping in the dts
e.g. 
clocks = <&topckgen CLK_TOP_MUX_AUD_INTBUS>, <= index 0
	 <&infracfg CLK_INFRA_AUDIO>,
	 <&infracfg CLK_INFRA_AUDIO_26M_BCLK>,
	 <&topckgen CLK_TOP_MUX_MFG>,
	 <&topckgen CLK_TOP_MUX_MM>;

clock-names = "audio",
	      "audio1",
	      "audio2",
	      "mfg",
	      "mm";


And then, in struct scp_domain_data data structure we might need to use
const struct clk_bulk_data basic_clocks[MAX_CLKS]; rather than const
struct clk_bulk_data *basic_clocks;

So what

.basic_clocks = {
	{ .id = "mm" },
};

is certainly like below

.basic_clocks = {
	{ .id = "mm" },
	{ .id = null },
	{ .id = null },
};

And using devm_clk_bulk_get(...); to get the clock resource will result
in

basic_clocks = {
	{ .id = "mm", . clk = <&topckgen CLK_TOP_MUX_MM>},
	{ .id = null, . clk = <&topckgen CLK_TOP_MUX_AUD_INTBUS>},
	{ .id = null, . clk = <&topckgen CLK_TOP_MUX_AUD_INTBUS>},
};

I thought it's incorrect for my usage inside the mtk-scpsys.c
and currently how devm_clk_bulk_get(...) will get the clock resource is
by API of_parse_clksepc()

/**
 * of_parse_clkspec() - Parse a DT clock specifier for a given device
 node
  * @np: device node to parse clock specifier from
  * @index: index of phandle to parse clock out of. If index < 0, @name
 is used
  * @name: clock name to find and parse. If name is NULL, the index is
 used

And for clocks without given a name first(id=null), will use the index 0
to get the clock. In this example, the index 0 will map to <&topckgen
CLK_TOP_MUX_AUD_INTBUS>

If we ignore the problem and use clk_bulk_prepare()/_enable() to control
the clock, so far, clk_bulk_enable will traverse all the iterator and
enable the unexpected clocks without check if the clock id(name) is
valid or not.

Right now, I'm not sure why of_parse_clkspec() assume to use the index 0
if the name is NULL. I might need some time to dig it out. If you have
some information about this part, please share it to me. Many thanks.


> 
> >>
> >>>>  		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_MM_M0,
> >>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP,
> >>>>  	},
> >>>> @@ -578,7 +545,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >>>>  		.ctl_offs = SPM_MFG_PWR_CON,
> >>>>  		.sram_pdn_bits = GENMASK(11, 8),
> >>>>  		.sram_pdn_ack_bits = GENMASK(12, 12),
> >>>> -		.clk_id = {CLK_MFG},
> >>>> +		.basic_clk_name = {"mfg"},
> >>>
> >>> 		.basic_clocks[] = {
> >>> 			{ .id = "mfg" },
> >>> 		};
> >>>
> >>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP,
> >>>>  	},
> >>>>  	[MT2701_POWER_DOMAIN_VDEC] = {
> >>>> @@ -587,7 +554,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >>>>  		.ctl_offs = SPM_VDE_PWR_CON,
> >>>>  		.sram_pdn_bits = GENMASK(11, 8),
> >>>>  		.sram_pdn_ack_bits = GENMASK(12, 12),
> >>>> -		.clk_id = {CLK_MM},
> >>>> +		.basic_clk_name = {"mm"},
> >>>
> >>> ...
> >>>
> >>> [snip]
> >>
> >>
> > 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
