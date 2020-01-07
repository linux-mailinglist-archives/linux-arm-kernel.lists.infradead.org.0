Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B3613264C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 13:36:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bMCor/ng/ZbLY3OxKwlGGXYe9PksYGy5bcH7X9eM9OY=; b=qUstnwT1hKiFgRZ71lDVrKFPO
	9xui0Ue15Lmm4G887ARR/I4J/vs/NOsaiAuZTCZyaBXDgGxCNdlQ5X8ATre4MNTBE+cwBvA2ZHNMC
	wN/pQd98jxaUEi1fvthTw1q7fA6zrPvZ9TKiG7l405JjV9ItarNQfWVQHJG/+qHXS96yWaZ2a99FC
	Ng37zcpm2XyZXPMTGQpTiA54lKv6VQF83DL9/bcUnjXxA/fGEiNDEXGuJ3NPfcqxGxfSUKv4zotX/
	n9wbOefcWTl9cX09lM4Fw1aer9zYN0sK56e5orff30i2sZv20tw870+SBS+cmcDvq7j6YpitFdrsw
	e7OwPZteA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioo67-0007zc-EH; Tue, 07 Jan 2020 12:36:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioo5z-0007yn-DM
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 12:36:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E992331B;
 Tue,  7 Jan 2020 04:36:25 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 188593F534;
 Tue,  7 Jan 2020 04:36:22 -0800 (PST)
Subject: Re: [PATCH net] Revert "net: stmmac: platform: Fix MDIO init for
 platforms without PHY"
To: Sriram Dash <sriram.dash@samsung.com>,
 'Florian Fainelli' <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 narmstrong@baylibre.com, 'Heiko Stuebner' <heiko@sntech.de>
References: <CGME20200107050854epcas1p3c1a66e67f14802322063f6c9747f1986@epcas1p3.samsung.com>
 <20200107050846.16838-1-f.fainelli@gmail.com>
 <011a01d5c51d$d7482290$85d867b0$@samsung.com>
 <59cb4087-6a71-9684-c4cf-d203600b45a9@arm.com>
 <014001d5c553$ff7f06d0$fe7d1470$@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <71256455-6cfe-a19e-1c48-17bded1903f8@arm.com>
Date: Tue, 7 Jan 2020 12:36:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <014001d5c553$ff7f06d0$fe7d1470$@samsung.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_043627_537983_20734F4A 
X-CRM114-Status: GOOD (  27.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: 'Jose Abreu' <Jose.Abreu@synopsys.com>,
 'Jayati Sahu' <jayati.sahu@samsung.com>,
 'Alexandre Torgue' <alexandre.torgue@st.com>, tomeu.vizoso@collabora.com,
 rcsekar@samsung.com, khilman@baylibre.com, linux-kernel@vger.kernel.org,
 'Padmanabhan Rajanbabu' <p.rajanbabu@samsung.com>,
 "'David S. Miller'" <davem@davemloft.net>, guillaume.tucker@collabora.com,
 broonie@kernel.org, pankaj.dubey@samsung.com,
 'Maxime Coquelin' <mcoquelin.stm32@gmail.com>, mgalka@collabora.com,
 enric.balletbo@collabora.com, 'Giuseppe Cavallaro' <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/01/2020 12:14 pm, Sriram Dash wrote:
>> From: Robin Murphy <robin.murphy@arm.com>
>> Subject: Re: [PATCH net] Revert "net: stmmac: platform: Fix MDIO init for
>> platforms without PHY"
>>
>> On 07/01/2020 5:46 am, Sriram Dash wrote:
>>>> From: Florian Fainelli <f.fainelli@gmail.com>
>>>> Subject: [PATCH net] Revert "net: stmmac: platform: Fix MDIO init for
>>> platforms
>>>> without PHY"
>>>>
>>>> This reverts commit d3e014ec7d5ebe9644b5486bc530b91e62bbf624 ("net:
>>>> stmmac: platform: Fix MDIO init for platforms without PHY") because
>>>> it
>>> breaks
>>>> existing systems with stmmac which do not have a MDIO bus sub-node
>>>> nor a 'phy-handle' property declared in their Device Tree. On those
>>>> systems, the stmmac MDIO bus is expected to be created and then
>>>> scanned by
>>>> of_mdiobus_register() to create PHY devices.
>>>>
>>>> While these systems should arguably make use of a more accurate
>>>> Device
>>> Tree
>>>> reprensentation with the use of the MDIO bus sub-node an appropriate
>>>> 'phy- handle', we cannot break them, therefore restore the behavior
>>>> prior to the
>>> said
>>>> commit.
>>>>
>>>> Fixes: d3e014ec7d5e ("net: stmmac: platform: Fix MDIO init for
>>>> platforms without PHY")
>>>> Reported-by: Heiko Stuebner <heiko@sntech.de>
>>>> Reported-by: kernelci.org bot <bot@kernelci.org>
>>>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>>> Nacked-by: Sriram Dash <Sriram.dash@samsung.com>
>>>
>>>> ---
>>>> Heiko,
>>>>
>>>> I did not add the Tested-by because the patch is a little bit
>>>> different
>>> from what
>>>> you tested, even if you most likely were not hitting the other part
>>>> that I
>>> was
>>>> changing. Thanks!
>>>>
>>>>    drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 2 +-
>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>>>> b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>>>> index cc8d7e7bf9ac..bedaff0c13bd 100644
>>>> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>>>> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>>>> @@ -320,7 +320,7 @@ static int stmmac_mtl_setup(struct
>>>> platform_device *pdev,  static int stmmac_dt_phy(struct
>> plat_stmmacenet_data *plat,
>>>>    			 struct device_node *np, struct device *dev)  {
>>>> -	bool mdio = false;
>>>> +	bool mdio = true;
>>>
>>>
>>> This is breaking for the platforms with fixed-link.
>>> stih418-b2199.dts and 169445.dts to name a few.
>>>
>>> For the newer platforms, they should provide the mdio/ snps,dwmac-mdio
>>> property in the device tree as we are checking the mdio/
>>> snps,dwmac-mdio property in the stmmac_platform driver for the mdio bus
>> memory allocation.
>>> For existing platforms, I agree we should not break them, but we
>>> should make the code correct. And make the existing platforms adapt to the
>> proper code.
>>> There is a proposed solution.
>>> https://protect2.fireeye.com/url?k=d075c0fc-8da69942-d0744bb3-0cc47a31
>>> ba82-60be9f5a0fb38a27&u=https://lkml.org/lkml/2020/1/7/14
>>>
>>> What do you think?
>>
>> The binding says that the phy handle and mdio child node are optional, so
>> "update all of the DTBs!" is not a viable solution. I'm far from an expert here, but
> 
> I get your point Robin. Because the mdio child or snps,dwmac-mdio is not mandatory,
> there has been this problem.
> 
>> AFAICS the fault of the current code is that it assumes the lack of a phy handle
>> implies a fixed link, so the obvious answer is to actually check whether the
> 
> Kind of.
> 
>> "fixed-link" property is present.
> 
> 
> I agree to have a fixed link check. Possibly this can be done:

FWIW, given the 4th case in the kerneldoc table I think this check might 
need to come first. On the upside, there appears to be a handy helper 
already, so it may just be as simple as:

	bool mdio = !of_phy_is_fixed_link(np);

Robin.

> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> @@ -320,7 +320,9 @@ static int stmmac_mtl_setup(struct platform_device *pdev,
>   static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
>                           struct device_node *np, struct device *dev)
>   {
> -       bool mdio = false;
> +       bool mdio = true;
> +       struct device_node *fixed_link;
> +
>          static const struct of_device_id need_mdio_ids[] = {
>                  { .compatible = "snps,dwc-qos-ethernet-4.10" },
>                  {},
> @@ -340,9 +342,8 @@ static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
>                  }
>          }
> 
> -       if (plat->mdio_node) {
> -               dev_dbg(dev, "Found MDIO subnode\n");
> -               mdio = true;
> +       if (of_get_child_by_name(np, "fixed-link")) {
> +               mdio = false;
>          }
> 
>          if (mdio) {
> 
> Neil and Heiko,
> 
> Can you guys please test this on your platforms?
> We can post a more cleaner version of the patch if all agree to it.
> 
>>
>> Robin.
>>
>>>
>>>>    	static const struct of_device_id need_mdio_ids[] = {
>>>>    		{ .compatible = "snps,dwc-qos-ethernet-4.10" },
>>>>    		{},
>>>> --
>>>> 2.19.1
>>>
>>>
>>>
>>> _______________________________________________
>>> linux-arm-kernel mailing list
>>> linux-arm-kernel@lists.infradead.org
>>> https://protect2.fireeye.com/url?k=2cb95551-716a0cef-2cb8de1e-0cc47a31
>>> ba82-d01ceb62a8a93fa2&u=http://lists.infradead.org/mailman/listinfo/li
>>> nux-arm-kernel
>>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
