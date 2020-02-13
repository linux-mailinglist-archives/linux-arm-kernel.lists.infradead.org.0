Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E25A15B744
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 03:46:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wO/Bx47Hy0LnmC69Ma5ebT8SoqBTInpb3HHIv/aq7fs=; b=GWKG1ITIPodnYT
	6x8VmRS0nqcU0pHWyJV2o/bjtng4iBvqJAUnB+q1MXbgnywTAQ/fqXnichqycmdBXh6dpUun2CwZ/
	zUiRzz8W8gi89SACs/eqJc8iqFIw6DejY14/VvM4bbzLqjrJ+geVQQ3Af9ZCnqv2hsBU/cPbqZIua
	DtRdbIwUuAehNaSEmakHeT7SVOktfmOo3aIFDnnO2Cm9R1pbeuPLG9Xf+O9v0Jl7JX4mK4apQMleA
	Kd5Q4/Td5rlFGV5IVPWEI7K67/EeFL6Lx9xN3LZd+wO6doTWQxiowvXVSjrlzZ/VVaXxl7S0NKmLG
	H6sJtP8B5l7ZOCAEl0+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24WN-0005SV-0C; Thu, 13 Feb 2020 02:46:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24WF-0005Rg-3u; Thu, 13 Feb 2020 02:46:25 +0000
X-UUID: 06e82ba5809d468cb25b443fb5560462-20200212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=C9+yqsvdFsqFXvESy2lGJ5+DHKFoCfZq+QLRoJgD8rc=; 
 b=N7/IgF1YFkjYNajIuuCTmN3f6wOFVXdBS7aI9LOO0A4vWTpJK3CSU7Oh8vkPLDCGaEGBwiZxdLJFXRdYvK6t77t2zekqrLnUnZTM/XCxkfVZwXMc4saWpD/C7dhkSq0QjW/K/bC/LYdWXmvbq1XA3K/0usmkZNLGuiDEwbXXVA8=;
X-UUID: 06e82ba5809d468cb25b443fb5560462-20200212
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2027482204; Wed, 12 Feb 2020 18:46:18 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Feb 2020 18:46:28 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Feb 2020 10:43:52 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 13 Feb 2020 10:45:11 +0800
Message-ID: <1581561975.19424.13.camel@mtksdaap41>
Subject: Re: [PATCH v11 06/10] soc: mediatek: Add subsys clock control for
 bus protection
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 13 Feb 2020 10:46:15 +0800
In-Reply-To: <f349b947-ff32-9f7f-b5d5-7ad3cfd00f08@gmail.com>
References: <1576813564-23927-1-git-send-email-weiyi.lu@mediatek.com>
 <1576813564-23927-7-git-send-email-weiyi.lu@mediatek.com>
 <b9ad8252-36e7-dacd-9040-de14e13f34f8@gmail.com>
 <1581476141.22901.34.camel@mtksdaap41>
 <f349b947-ff32-9f7f-b5d5-7ad3cfd00f08@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3DDF97B86FF812B1846294D7FBABACC30917C03E4D2CC14B5A4F10AAB4F50F512000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_184623_177313_B327E82D 
X-CRM114-Status: GOOD (  34.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, James Liao <jamesjj.liao@mediatek.com>,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Sascha Hauer <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-02-12 at 12:02 +0100, Matthias Brugger wrote:
> 
> On 12/02/2020 03:55, Weiyi Lu wrote:
> > On Tue, 2020-02-11 at 18:54 +0100, Matthias Brugger wrote:
> >>
> >> On 20/12/2019 04:46, Weiyi Lu wrote:
> >>> Add subsys CG control flow before/after the bus protect control
> >>> due to bus protection need SMI bus relative CGs enabled to feedback
> >>> its ack.
> >>>
> >>
> >> Sorry, I don't understand the commit message. Can you please rephrase and
> >> explain better what this change is for.
> >>
> > 
> > OK! I'll reword it.
> > 
> >>> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> >>> Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
> >>> ---
> >>>  drivers/soc/mediatek/mtk-scpsys.c | 72 +++++++++++++++++++++++++++++++++++++--
> >>>  1 file changed, 70 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> >>> index 763ca58..32be4b3 100644
> >>> --- a/drivers/soc/mediatek/mtk-scpsys.c
> >>> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> >>> @@ -79,6 +79,7 @@
> >>>  #define PWR_STATUS_WB			BIT(27)	/* MT7622 */
> >>>  
> >>>  #define MAX_CLKS	3
> >>> +#define MAX_SUBSYS_CLKS 10
> >>>  
> >>>  /**
> >>>   * struct scp_domain_data - scp domain data for power on/off flow
> >>> @@ -88,6 +89,8 @@
> >>>   * @sram_pdn_bits: The mask for sram power control bits.
> >>>   * @sram_pdn_ack_bits: The mask for sram power control acked bits.
> >>>   * @basic_clk_name: The basic clocks required by this power domain.
> >>> + * @subsys_clk_prefix: The prefix name of the clocks need to be enabled
> >>> + *                     before releasing bus protection.
> >>>   * @caps: The flag for active wake-up action.
> >>>   * @bp_table: The mask table for multiple step bus protection.
> >>>   */
> >>> @@ -98,6 +101,7 @@ struct scp_domain_data {
> >>>  	u32 sram_pdn_bits;
> >>>  	u32 sram_pdn_ack_bits;
> >>>  	const char *basic_clk_name[MAX_CLKS];
> >>> +	const char *subsys_clk_prefix;
> >>>  	u8 caps;
> >>>  	struct bus_prot bp_table[MAX_STEPS];
> >>>  };
> >>> @@ -108,6 +112,7 @@ struct scp_domain {
> >>>  	struct generic_pm_domain genpd;
> >>>  	struct scp *scp;
> >>>  	struct clk *clk[MAX_CLKS];
> >>> +	struct clk *subsys_clk[MAX_SUBSYS_CLKS];
> >>>  	const struct scp_domain_data *data;
> >>>  	struct regulator *supply;
> >>>  };
> >>> @@ -301,16 +306,22 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
> >>>  	val |= PWR_RST_B_BIT;
> >>>  	writel(val, ctl_addr);
> >>>  
> >>> -	ret = scpsys_sram_enable(scpd, ctl_addr);
> >>> +	ret = scpsys_clk_enable(scpd->subsys_clk, MAX_SUBSYS_CLKS);
> >>
> >> Why can't we enable the subsystem clocks together with the rest just after
> >> enabeling the regulator?
> >>
> > 
> > Subsys CG could only be enabled when its own power domain is already
> > turned ON, and vice versa.
> > In the dt-binding doc we mentioned there would have two groups of
> > clocks.
> > e.g.,
> > BASIC clocks need to be enabled before enabling the corresponding power
> > domain.
> > SUBSYS clocks need to be enabled before releasing the bus protection.
> > 
> 
> Do I understand correctly that we could enable/disable all clocks in the same
> place as long as we make sure that the the basic clocks are turned on before we
> turn on the subsys clocks, correct?
> 

simply, yes

> So why do we need to implement this logic in the power-controller driver?
> Shouldn't that be part of the common clock driver?
> 

we implement the subsys clock logic here just due to we already
implement the bus protection flow in the power-controller driver.
And If we don't enable the subsys clocks, bus protection cannot work.
Hence, even the subsys power is on but the HW modules under this subsys
power cannot access the bus though.

> Regards,
> Matthias
> 
> >>>  	if (ret < 0)
> >>>  		goto err_pwr_ack;
> >>>  
> >>> +	ret = scpsys_sram_enable(scpd, ctl_addr);
> >>> +	if (ret < 0)
> >>> +		goto err_sram;
> >>> +
> >>>  	ret = scpsys_bus_protect_disable(scpd);
> >>>  	if (ret < 0)
> >>> -		goto err_pwr_ack;
> >>> +		goto err_sram;
> >>>  
> >>>  	return 0;
> >>>  
> >>> +err_sram:
> >>> +	scpsys_clk_disable(scpd->subsys_clk, MAX_SUBSYS_CLKS);
> >>>  err_pwr_ack:
> >>>  	scpsys_clk_disable(scpd->clk, MAX_CLKS);
> >>>  err_clk:
> >>> @@ -337,6 +348,8 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
> >>>  	if (ret < 0)
> >>>  		goto out;
> >>>  
> >>> +	scpsys_clk_disable(scpd->subsys_clk, MAX_SUBSYS_CLKS);
> >>> +
> >>
> >> Same here, why can't we disable the clocks in the scpsys_clk_disable call?
> >>
> >>>  	/* subsys power off */
> >>>  	val = readl(ctl_addr);
> >>>  	val |= PWR_ISO_BIT;
> >>> @@ -374,6 +387,48 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
> >>>  	return ret;
> >>>  }
> >>>  
> >>> +static int init_subsys_clks(struct platform_device *pdev,
> >>> +		const char *prefix, struct clk **clk)
> >>> +{
> >>> +	struct device_node *node = pdev->dev.of_node;
> >>> +	u32 prefix_len, sub_clk_cnt = 0;
> >>> +	struct property *prop;
> >>> +	const char *clk_name;
> >>> +
> >>> +	if (!node) {
> >>> +		dev_err(&pdev->dev, "Cannot find scpsys node: %ld\n",
> >>> +			PTR_ERR(node));
> >>> +		return PTR_ERR(node);
> >>> +	}
> >>> +
> >>> +	prefix_len = strlen(prefix);
> >>> +
> >>> +	of_property_for_each_string(node, "clock-names", prop, clk_name) {
> >>> +		if (!strncmp(clk_name, prefix, prefix_len) &&
> >>> +				(clk_name[prefix_len] == '-')) {
> >>> +			if (sub_clk_cnt >= MAX_SUBSYS_CLKS) {
> >>> +				dev_err(&pdev->dev,
> >>> +					"subsys clk out of range %d\n",
> >>> +					sub_clk_cnt);
> >>> +				return -ENOMEM;
> >>
> >> EINVAL maybe, ENOMEM seems wrong here.
> >>
> > 
> > OK, I'll fix with correct error.
> > 
> >>> +			}
> >>> +
> >>> +			clk[sub_clk_cnt] = devm_clk_get(&pdev->dev,
> >>> +						clk_name);
> >>
> >> Here we get hit by the bad design of this driver in the first place. As we need
> >> the subsystem-name (eg mm-0, mm-1) to group clocks to one scp_domain.
> >> I think we should better try to model the domains and subdomains in DTS and add
> >> their clocks to it. This way we can also get rid of the scp_subdomain which can
> >> hit it's limit anytime soon when we have a chip with a sub-subdomain.
> >> That will need a new driver, but as it seems the mt8183 and the mt6765 have a
> >> more complex design I think it is worth it.
> >>
> >> That said, given that you are in v11 already I understand that your motivation
> >> to start over isn't the biggest. The problem is, any new driver will have new
> >> bindings and won't work with older DTS. So adding a lot of stuff on top of a not
> >> really nice driver isn't something I'm very keen on. On the other hand you
> >> already put a lot of work into this solution.
> >>
> >> My proposal, I'll try to bake up a new driver this week. If I fail to deliver,
> >> it's up to you to decide if you want to go on with the approach in this series
> >> or try to work on the new one.
> > 
> >> Regards,
> >> Matthias
> >>
> > 
> > Thanks for considering our request.
> > 
> >>> +
> >>> +			if (IS_ERR(clk[sub_clk_cnt])) {
> >>> +				dev_err(&pdev->dev,
> >>> +					"Subsys clk get fail %ld\n",
> >>> +					PTR_ERR(clk[sub_clk_cnt]));
> >>> +				return PTR_ERR(clk[sub_clk_cnt]);
> >>> +			}
> >>> +			sub_clk_cnt++;
> >>> +		}
> >>> +	}
> >>> +
> >>> +	return sub_clk_cnt;
> >>> +}
> >>> +
> >>>  static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
> >>>  			const char * const *name)
> >>>  {
> >>> @@ -466,6 +521,7 @@ static struct scp *init_scp(struct platform_device *pdev,
> >>>  		struct scp_domain *scpd = &scp->domains[i];
> >>>  		struct generic_pm_domain *genpd = &scpd->genpd;
> >>>  		const struct scp_domain_data *data = &scp_domain_data[i];
> >>> +		int clk_cnt;
> >>
> >> clk_cnt sounds to me like clock count, but the variable actually is only used to
> >> check the return value of init_subsys_clks. Please rename it to ret or something
> >> like this.
> >>
> > 
> > OK, I'll fix it.
> > 
> >>>  
> >>>  		pd_data->domains[i] = genpd;
> >>>  		scpd->scp = scp;
> >>> @@ -476,6 +532,18 @@ static struct scp *init_scp(struct platform_device *pdev,
> >>>  		if (ret)
> >>>  			return ERR_PTR(ret);
> >>>  
> >>> +		if (data->subsys_clk_prefix) {
> >>> +			clk_cnt = init_subsys_clks(pdev,
> >>> +					data->subsys_clk_prefix,
> >>> +					scpd->subsys_clk);
> >>> +			if (clk_cnt < 0) {
> >>> +				dev_err(&pdev->dev,
> >>> +					"%s: subsys clk unavailable\n",
> >>> +					data->name);
> >>> +				return ERR_PTR(clk_cnt);
> >>> +			}
> >>> +		}
> >>> +
> >>>  		genpd->name = data->name;
> >>>  		genpd->power_off = scpsys_power_off;
> >>>  		genpd->power_on = scpsys_power_on;
> >>>
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
