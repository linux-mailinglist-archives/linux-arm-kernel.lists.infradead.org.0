Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1C0131F95
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 06:51:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dx0JuwqFAUVRI5Meg5tQmNe8FLjcI2bpAIOvDnxZ2eE=; b=UaK8Urv7D4i/yd
	b0/hS/5ihT65UXLO+gsGkcsL/FFLNL0lhgFZUVUewWwRI0q2dj/FN7Vo2dpPE7a9nrJ92PYWyXCbp
	iI7KkxF2pa+BppSum8lqc8tjEWrvcb5TfyfAtktm+3v730f5Y3WV0AHn2iba9ZqB4FGe557gEVsR5
	4PYRyBITMSStkulL+QuPPEhvZ413XCb/X0gb2v996bUzw5ON84RBbMd5MXskZxeDEgxDkXG/Nuzrb
	D/OCx3Ujf3xV8F3JcCMIjIaM0wth2Hhc4s9SNmA+os4+lXwsQku+0qC9eQiWJC2Rtgxv5Nzn9MTYS
	AriGyovxATGGjHDh+mBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iohlc-0000NJ-8M; Tue, 07 Jan 2020 05:51:00 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iohlS-0000Le-JM
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 05:50:52 +0000
Received: by mail-pj1-x1044.google.com with SMTP id d5so8525445pjz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 21:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=upFgnCPUP6bUNf0w4clZ6s4PfWYYFquwuIgCR0kvv0I=;
 b=RRgpM4IZ7Ugi4x7YbgRZeN0WtO7LqwkD4dg6w5KkY/r8hNPZGdjI46i0C8m+jPdvuS
 yncrE4QiBQuCRIiO/Usg8lAVFBg0o6J5lv8o8G+SP82CYeezie5r94ra5JE7UczeG3ix
 aiXnyFhAJ2/NUAeHGfiaFxv0/070gsHra0Sbua2jsKxQyYxLRvjqNnHmnWqB7pEhwBAC
 6q1ywn7QjYjDMkeFbbkMdjYgpIWEXmCqbFaa5+LQvAlYrwWj0EIZcwN+2XJ23gzPJcOu
 qBRnmFnwqc7EGLh0ong3a2xuFnKqEWI3Dh5QoV0IagD1faJXXAYHBl8S5Tb4fKQIZNMy
 5Q6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=upFgnCPUP6bUNf0w4clZ6s4PfWYYFquwuIgCR0kvv0I=;
 b=LCP7AuZI/zz+cl6sKjwf0VsAPOBC0oMhXxj99xoYLLI5izL18FSi2QoXcz2H1jvyFf
 Pp/nUTwmvSMthc2lc1AZd6sZ8iBFFkH6Sz/9yA3UtFZohFlbK1GFxBixjdltTGztbENO
 lJLqdvReuwBr1ze0WmPxY8HYp1IYZGttFU+muuXZQ9PedXLxDgOMJAkfRojA9Xvq/HEN
 60LK0y9Ab+2fMKV1OH03l1+tj42clN803SezQ8GoKKndljeTHASzcH2PpEqyQZlXXZBL
 HSJMTMQZudDtWJojx/uq1DVssquud/YMXu1MH3PAq92QEgucgA/IfO8hLZgE5zPRREaM
 L07w==
X-Gm-Message-State: APjAAAVC47neeQ36smgmCfq5eVzolQE+U9Eu46O12ccKIlijRba+Fn3A
 xvngOyZ3VO5IgBdDbMhqn1uizzc0
X-Google-Smtp-Source: APXvYqzMjEBLGmJ5W55zjacQs7lGU1d7RAurGeHTe+UGPbEspBa7NgnLaj1BmlmXGXuj49IiezMW0g==
X-Received: by 2002:a17:90a:cb96:: with SMTP id
 a22mr47019768pju.96.1578376249131; 
 Mon, 06 Jan 2020 21:50:49 -0800 (PST)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 g19sm80983651pfh.134.2020.01.06.21.50.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 21:50:48 -0800 (PST)
Subject: Re: broonie-regmap/for-next bisection: boot on
 ox820-cloudengines-pogoplug-series-3
To: Sriram Dash <sriram.dash@samsung.com>,
 "'David S. Miller'" <davem@davemloft.net>,
 "'kernelci.org bot'" <bot@kernelci.org>, tomeu.vizoso@collabora.com,
 khilman@baylibre.com, mgalka@collabora.com, guillaume.tucker@collabora.com,
 broonie@kernel.org, 'Jayati Sahu' <jayati.sahu@samsung.com>,
 'Padmanabhan Rajanbabu' <p.rajanbabu@samsung.com>,
 enric.balletbo@collabora.com, narmstrong@baylibre.com,
 Heiko Stuebner <heiko@sntech.de>
References: <CGME20191225075056epcas4p2ab51fc6ff1642705a61f906189bb29f0@epcas4p2.samsung.com>
 <5e0314da.1c69fb81.a7d63.29c1@mx.google.com>
 <03ca01d5c23a$09921d00$1cb65700$@samsung.com>
 <1c3531f8-7ae2-209d-b6ed-1c89bd9f2bb6@gmail.com>
 <011801d5c51a$bd2e5710$378b0530$@samsung.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <54a292b8-3cac-0caf-08c7-841c469fb68f@gmail.com>
Date: Mon, 6 Jan 2020 21:50:47 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <011801d5c51a$bd2e5710$378b0530$@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_215050_693442_FFB06A52 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: 'Jose Abreu' <Jose.Abreu@synopsys.com>,
 'Alexandre Torgue' <alexandre.torgue@st.com>, rcsekar@samsung.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 'Maxime Coquelin' <mcoquelin.stm32@gmail.com>, pankaj.dubey@samsung.com,
 'Giuseppe Cavallaro' <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/6/2020 9:24 PM, Sriram Dash wrote:
>> From: Florian Fainelli <f.fainelli@gmail.com>
>> Subject: Re: broonie-regmap/for-next bisection: boot on ox820-cloudengines-
>> pogoplug-series-3
>>
>> On 1/3/20 5:30 AM, Sriram Dash wrote:
>>>> From: kernelci.org bot <bot@kernelci.org>
>>>> Subject: broonie-regmap/for-next bisection: boot on
>>>> ox820-cloudengines-
>>>> pogoplug-series-3
>>>>
>>>> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>>>> * This automated bisection report was sent to you on the basis  *
>>>> * that you may be involved with the breaking commit it has      *
>>>> * found.  No manual investigation has been done to verify it,   *
>>>> * and the root cause of the problem may be somewhere else.      *
>>>> *                                                               *
>>>> * If you do send a fix, please include this trailer:            *
>>>> *   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
>>>> *                                                               *
>>>> * Hope this helps!                                              *
>>>> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>>>>
>>>> broonie-regmap/for-next bisection: boot on
>>>> ox820-cloudengines-pogoplug-
>>>> series-3
>>>>
>>>> Summary:
>>>>   Start:      46cf053efec6 Linux 5.5-rc3
>>>>   Details:    https://protect2.fireeye.com/url?k=36fb52ed-6b2b5a21-
>> 36fad9a2-
>>>> 000babff3793-
>>>> f64e7c227e0a8b34&u=https://protect2.fireeye.com/url?k=2379492a-7ee2b5
>>>> 49-2378c265-0cc47a31cdbc-
>> 914c67c9400b5bae&u=https://kernelci.org/boot
>>>> /id/5e02ce65451524462f9731
>>>> 4f
>>>>   Plain log:
>>>> https://protect2.fireeye.com/url?k=58f5fc3b-0525f4f7-58f47774-
>>>> 000babff3793-f96a18481add0d7f&u=https://protect2.fireeye.com/url?k=3c
>>>> 793260-61e2ce03-3c78b92f-0cc47a31cdbc-
>> c77f49890593c376&u=https://stor
>>>> age.kernelci.org//broonie-
>>>> regmap/for-next/v5.5-rc3/arm/oxnas_v6_defconfig/gcc-8/lab-
>>>> baylibre/boot-ox820-cloudengines-pogoplug-series-3.txt
>>>>   HTML log:   https://protect2.fireeye.com/url?k=eaed2629-b73d2ee5-
>>>> eaecad66-000babff3793-
>>>> 84ba1e41025b4f73&u=https://protect2.fireeye.com/url?k=8e80051e-d31bf9
>>>> 7d-8e818e51-0cc47a31cdbc-dd2d5f3d7e3c3cd2&u=https://storage.kernelci.
>>>> org//broonie-regmap/for-
>>>> next/v5.5-rc3/arm/oxnas_v6_defconfig/gcc-8/lab-baylibre/boot-ox820-
>>>> cloudengines-pogoplug-series-3.html
>>>>   Result:     d3e014ec7d5e net: stmmac: platform: Fix MDIO init for platforms
>>>> without PHY
>>>>
>>>> Checks:
>>>>   revert:     PASS
>>>>   verify:     PASS
>>>>
>>>> Parameters:
>>>>   Tree:       broonie-regmap
>>>>   URL:
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regmap.git
>>>>   Branch:     for-next
>>>>   Target:     ox820-cloudengines-pogoplug-series-3
>>>>   CPU arch:   arm
>>>>   Lab:        lab-baylibre
>>>>   Compiler:   gcc-8
>>>>   Config:     oxnas_v6_defconfig
>>>>   Test suite: boot
>>>>
>>>> Breaking commit found:
>>>>
>>>> ---------------------------------------------------------------------
>>>> ---------- commit d3e014ec7d5ebe9644b5486bc530b91e62bbf624
>>>> Author: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
>>>> Date:   Thu Dec 19 15:47:01 2019 +0530
>>>>
>>>>     net: stmmac: platform: Fix MDIO init for platforms without PHY
>>>>
>>>>     The current implementation of "stmmac_dt_phy" function initializes
>>>>     the MDIO platform bus data, even in the absence of PHY. This fix
>>>>     will skip MDIO initialization if there is no PHY present.
>>>>
>>>>     Fixes: 7437127 ("net: stmmac: Convert to phylink and remove phylib logic")
>>>>     Acked-by: Jayati Sahu <jayati.sahu@samsung.com>
>>>>     Signed-off-by: Sriram Dash <sriram.dash@samsung.com>
>>>>     Signed-off-by: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
>>>>     Signed-off-by: David S. Miller <davem@davemloft.net>
>>>>
>>>> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>>>> b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>>>> index bedaff0c13bd..cc8d7e7bf9ac 100644
>>>> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>>>> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>>>> @@ -320,7 +320,7 @@ static int stmmac_mtl_setup(struct
>>>> platform_device *pdev,  static int stmmac_dt_phy(struct
>> plat_stmmacenet_data *plat,
>>>>  			 struct device_node *np, struct device *dev)  {
>>>> -	bool mdio = true;
>>>> +	bool mdio = false;
>>>>  	static const struct of_device_id need_mdio_ids[] = {
>>>>  		{ .compatible = "snps,dwc-qos-ethernet-4.10" },
>>>>  		{},
>>>> ---------------------------------------------------------------------
>>>> ----------
>>>>
>>>>
>>>> Git bisection log:
>>>>
>>>> ---------------------------------------------------------------------
>>>> ----------
>>>> git bisect start
>>>> # good: [e42617b825f8073569da76dc4510bfa019b1c35a] Linux 5.5-rc1 git
>>>> bisect good e42617b825f8073569da76dc4510bfa019b1c35a
>>>> # bad: [46cf053efec6a3a5f343fead837777efe8252a46] Linux 5.5-rc3 git
>>>> bisect bad 46cf053efec6a3a5f343fead837777efe8252a46
>>>> # good: [2187f215ebaac73ddbd814696d7c7fa34f0c3de0] Merge tag
>>>> 'for-5.5- rc2-tag' of
>>>> git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux
>>>> git bisect good 2187f215ebaac73ddbd814696d7c7fa34f0c3de0
>>>> # good: [0dd1e3773ae8afc4bfdce782bdeffc10f9cae6ec] pipe: fix empty
>>>> pipe check in pipe_write() git bisect good
>>>> 0dd1e3773ae8afc4bfdce782bdeffc10f9cae6ec
>>>> # good: [040cda8a15210f19da7e29232c897ca6ca6cc950] Merge tag
>>>> 'wireless- drivers-2019-12-17' of
>>>> git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers
>>>> git bisect good 040cda8a15210f19da7e29232c897ca6ca6cc950
>>>> # bad: [4bfeadfc0712bbc8a6556eef6d47cbae1099dea3] Merge branch 'sfc-
>>>> fix-bugs-introduced-by-XDP-patches'
>>>> git bisect bad 4bfeadfc0712bbc8a6556eef6d47cbae1099dea3
>>>> # good: [0fd260056ef84ede8f444c66a3820811691fe884] Merge
>>>> git://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf
>>>> git bisect good 0fd260056ef84ede8f444c66a3820811691fe884
>>>> # good: [90b3b339364c76baa2436445401ea9ade040c216] net: hisilicon:
>>>> Fix a BUG trigered by wrong bytes_compl git bisect good
>>>> 90b3b339364c76baa2436445401ea9ade040c216
>>>> # bad: [4c8dc00503db24deaf0b89dddfa84b7cba7cd4ce] qede: Disable
>>>> hardware gro when xdp prog is installed git bisect bad
>>>> 4c8dc00503db24deaf0b89dddfa84b7cba7cd4ce
>>>> # bad: [28a3b8408f70b646e78880a7eb0a97c22ace98d1] net/smc: unregister
>>>> ib devices in reboot_event git bisect bad
>>>> 28a3b8408f70b646e78880a7eb0a97c22ace98d1
>>>> # bad: [d3e014ec7d5ebe9644b5486bc530b91e62bbf624] net: stmmac:
>>>> platform: Fix MDIO init for platforms without PHY git bisect bad
>>>> d3e014ec7d5ebe9644b5486bc530b91e62bbf624
>>>> # good: [af1c0e4e00f3cc76cb136ebf2e2c04e8b6446285] llc2: Fix return
>>>> statement of llc_stat_ev_rx_null_dsap_xid_c (and _test_c) git bisect
>>>> good
>>>> af1c0e4e00f3cc76cb136ebf2e2c04e8b6446285
>>>> # first bad commit: [d3e014ec7d5ebe9644b5486bc530b91e62bbf624] net:
>>>> stmmac: platform: Fix MDIO init for platforms without PHY
>>>> ---------------------------------------------------------------------
>>>> ----------
>>>
>>>
>>> The mdio bus will be allocated in case of a phy transceiver is on
>>> board, but if fixed-link is configured, it will be NULL and
>>> of_mdiobus_register will not take effect.
>>
>> There appears to be another possible flaw in the code here:
>>
>>                 for_each_child_of_node(np, plat->mdio_node) {
>>                         if (of_device_is_compatible(plat->mdio_node,
>>                                                     "snps,dwmac-mdio"))
>>                                 break;
>>                 }
>>
>> the loop should use for_each_available_child_of_node() such that if a platform
>> has a Device Tree definition where the MDIO bus node was provided but it was
>> not disabled by default (a mistake, it should be disabled by default), and a "fixed-
>> link" property ended up being used at the board level, we should not end-up with
>> an invalid plat->mdio_node reference. Then the code could possibly eliminate
>> the use of 'mdio' as a boolean and rely exclusively on plat->mdio_node. What do
>> you think?
>>
> 
> Hello Florian,
> 
> Thanks for the review. We definitely see a problem here. For the platforms which have the snps,dwmac-mdio and they have made it disabled, it will fail.
> Also, We can completely remove the mdio variable from the function stmmac_dt_phy as what we essentially do is to check the plat->mdio_node.
> 
> Something like this will help:
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> index 1f230bd..15c342e 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> @@ -320,7 +320,6 @@ static int stmmac_mtl_setup(struct platform_device *pdev,
>  static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
>                          struct device_node *np, struct device *dev)
>  {
> -       bool mdio = false;
>         static const struct of_device_id need_mdio_ids[] = {
>                 { .compatible = "snps,dwc-qos-ethernet-4.10" },
>                 {},
> @@ -334,18 +333,13 @@ static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
>                  * the MDIO
>                  */
>                 for_each_child_of_node(np, plat->mdio_node) {
> -                       if (of_device_is_compatible(plat->mdio_node,
> +                       if (for_each_available_child_of_node(plat->mdio_node,
>                                                     "snps,dwmac-mdio"))
>                                 break;
>                 }
>         }
> 
>         if (plat->mdio_node) {
> -               dev_dbg(dev, "Found MDIO subnode\n");
> -               mdio = true;
> -       }
> -
> -       if (mdio) {
>                 plat->mdio_bus_data =
>                         devm_kzalloc(dev, sizeof(struct stmmac_mdio_bus_data),
>                                      GFP_KERNEL);
> 
> 
> Are you preparing a patch to address this, or we shall take it up?

I do not think your patch is going to fix the problem that Heiko
reported because it would try to scan the MDIO bus node which is
non-existent. Also not sure what the return value of for_each_* is
supposed to be given it is a loop construct.

> 
>> And an alternative to your fix would be to scan even further the MDIO bus node
>> for available child nodes, if there are none, do not perform the MDIO
>> initialization at all since we have no MDIO devices beneath.
>>
>>
>>> The commit d3e014ec7d5e fixes the code for fixed-link configuration.
>>> However, some platforms like oxnas820 which have phy transceivers
>>> (rgmii), fail. This is because the platforms expect the allocation of
>>> mdio_bus_data during stmmac_dt_phy.
>>>
>>> Proper solution to this is adding the mdio node in the device tree of
>>> the platform which can be fetched by stmmac_dt_phy.
>>
>> That sounds reasonable, but we should also not break existing platforms with
>> existing Device Trees out there, as much as possible.
> 
> I understand your point. Changing DT should be the last thing we should do.
> But, the code is broken for some platforms. Without the patch, the platforms with fixed-link will not work.
> For example, stih418-b2199.dts, will fail without the commit d3e014ec7d5e.
Humm then we should change the code to explicitly look for a fixed-link
node with the use of of_phy_is_fixed_link() (which would work on the old
style fixed-link that stih418-b2199.dts uses) instead of relying on some
implicit or explicit MDIO bus registration behavior.

The good thing is that I use arch/arm/boot/dts/sun7i-a20-lamobo-r1.dts
on a nearly daily basis so I can test if that works/does not work with a
fixed-link plus a mdio bus node.

> With the patch, platforms with mdio and not declaring the dt parameters will fail.
> For that , we have some proposal:
> For the newer platforms , Make it mandatory to have the mdio or snps,dwmac-mdio property. 
> There is no point of checking the device tree for mdio or snps,dwmac-mdio property and populating the plat->mdio_node, if the platforms are not having them in the device tree and expect mdio bus memory allocation. 

Yet that is what broke exactly here, the platforms that Heiko reported
the breakage on, albeit doing something arguably fragile, are not making
use of a phy-handle property nor a MDIO node to indicate where and how
to connect to a PHY, ended up broken. They use implicit bus scanning
going on by of_mdiobus_register().

> 
> For the existing platforms, which do not have the mdio or snps,dwmac-mdio property and still have the phy, if they can, they must modify the dt and include the mdio or snps,dwmac-mdio property in their dts.

This should be done, but I doubt it is going to be because those Device
Tree files are ABI and may be baked into firmware/boot loaders.

> For those platforms, which cannot modify the dt due to some reason or other, the platform should have a quirk in the platform glue layers, and use it in the stmmac_platform driver  stmmac_dt_phy  function to enable the mdio.
> 

Again, I do not think this is practical to do at all, not would it scale
particularly well, given that the same compatible string for Rockchip
gmac has been used with both the correct way and the incorrect way of
specifying the connection to the PHY device node.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
