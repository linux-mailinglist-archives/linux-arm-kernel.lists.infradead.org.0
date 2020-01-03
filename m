Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D94E12FBBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 18:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGQTVfKKlEBT1FIabuCcIiYxqUYXfkSA0crGRCqgD94=; b=lMcIlYQx3Blhhz
	uGdcdeobD9SZMVZuaxblhqlKK6dkw4J3dKHlqdD2i0pLZqeBLV9Ckkv8/UP6abrRCzsbg0bFmdfaX
	g2LPJgu83NoUg08qrFj1YWT+Mpo2Jw3oNRX6sdcJRN0evevmiutdzjiVMAslcXY3UcisfDce/nQry
	FqvXtQ+aUOYLpQoz8lh7T5nXtZQMMadS6yS5WVpkOBfj+ppi+f5UpNlQxhi9+y0x8x8hr16fKhIMd
	bWtQKUhe0V7mNxFjNd7MRNUzFk9K6Seh1h0pu/CkHaeFvwQsUpbpb8U4v//l+ELlh+8tTtuF96To5
	KNGSn4KrSbxaBs7YPgWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inR1j-0001WM-Pp; Fri, 03 Jan 2020 17:46:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inR1c-0001VF-06
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 17:46:18 +0000
Received: by mail-pl1-x644.google.com with SMTP id c23so19294164plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 09:46:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zT72xreIxe6i6mK/tG3rIOhTx/8pgQ1JvzEt0GmjgrU=;
 b=ceq6sdHkbaX6JcTa+J4Mw4W/RDww8TLRkWJ2SR/o8XURq3zJGHOFvIucx2yv+YJIW5
 DqAATm8goVkLvFPUhC05l5dPEaRaIcNxgSkON6EbVx4OQ0t6qqedfKdkUHnONaOnq9Ip
 Nv2fOa8Im42qvzCcXo7JdAPHqsujmnYKxE9iRujgymqU6vqBgowTRUVt76hrMDH4Ovqz
 qP9LE3rWT5xKbH2Xh2nfarXzK3i+UQg6DB22gHoLl7cK9ij2q/3nkON7YE5bLMxEiM9l
 1R+zbFQ4yAo+E/1Vnt/6/ASsInKTyOb3yFASAzCNbIQF1o4TbPFxWMno1NtFwD6aA+qj
 0+IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=zT72xreIxe6i6mK/tG3rIOhTx/8pgQ1JvzEt0GmjgrU=;
 b=n99V7JG5iJB4Pvx5bcHtuyRCClXhSGJCAJXyN98kPwVjiOLvtSlI/y/m3uoFu8RI7s
 0woTYtG+O0uSOgQhtxOde0J6fnu4JF/JPIDLOouQYZXBzjiYyv2zJpIUMz952Xradyw8
 Os6G0K9W2ME65LpYUmo7nkIy2vDN1pjW0AldgzAWtSI5tWSUWL91ccaKgD/gl/HMr6lu
 4ttWpbyLqtJOduIqm5pvfpQ8//VRsJhf6vRSAdVj7+1k4cDScc6f+7eQ4ZwSXfKEZwxZ
 uutJKUx3E8aZuBEnySgO9PoLDfzhJakprewSESP/dZ3bN1pJYAg4AMrLuwt5Uma5c+vS
 7A/g==
X-Gm-Message-State: APjAAAXSoDwDloc44UriEq2TNTSAyk0lqaKqp9zOi3P8zxTmUx3s37f/
 S88RreLMCp8iPrsMp2hTrqTyCSRt
X-Google-Smtp-Source: APXvYqzqK0WkNNukgCIbsCM0jqwpp2MckKJ3i/oMmyQ3hDkZ8PnccnENvC3hsNZOCY32Qdkm8pHR/w==
X-Received: by 2002:a17:902:8d95:: with SMTP id
 v21mr92483239plo.61.1578073575017; 
 Fri, 03 Jan 2020 09:46:15 -0800 (PST)
Received: from [10.67.50.49] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id
 p16sm52267570pfq.184.2020.01.03.09.46.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Jan 2020 09:46:14 -0800 (PST)
Subject: Re: broonie-regmap/for-next bisection: boot on
 ox820-cloudengines-pogoplug-series-3
To: Sriram Dash <sriram.dash@samsung.com>,
 "'kernelci.org bot'" <bot@kernelci.org>, tomeu.vizoso@collabora.com,
 khilman@baylibre.com, "'David S. Miller'" <davem@davemloft.net>,
 mgalka@collabora.com, guillaume.tucker@collabora.com, broonie@kernel.org,
 'Jayati Sahu' <jayati.sahu@samsung.com>,
 'Padmanabhan Rajanbabu' <p.rajanbabu@samsung.com>,
 enric.balletbo@collabora.com, narmstrong@baylibre.com
References: <CGME20191225075056epcas4p2ab51fc6ff1642705a61f906189bb29f0@epcas4p2.samsung.com>
 <5e0314da.1c69fb81.a7d63.29c1@mx.google.com>
 <03ca01d5c23a$09921d00$1cb65700$@samsung.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <1c3531f8-7ae2-209d-b6ed-1c89bd9f2bb6@gmail.com>
Date: Fri, 3 Jan 2020 09:46:10 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <03ca01d5c23a$09921d00$1cb65700$@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_094616_068032_2C2A41BC 
X-CRM114-Status: GOOD (  23.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 1/3/20 5:30 AM, Sriram Dash wrote:
>> From: kernelci.org bot <bot@kernelci.org>
>> Subject: broonie-regmap/for-next bisection: boot on ox820-cloudengines-
>> pogoplug-series-3
>>
>> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>> * This automated bisection report was sent to you on the basis  *
>> * that you may be involved with the breaking commit it has      *
>> * found.  No manual investigation has been done to verify it,   *
>> * and the root cause of the problem may be somewhere else.      *
>> *                                                               *
>> * If you do send a fix, please include this trailer:            *
>> *   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
>> *                                                               *
>> * Hope this helps!                                              *
>> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>>
>> broonie-regmap/for-next bisection: boot on ox820-cloudengines-pogoplug-
>> series-3
>>
>> Summary:
>>   Start:      46cf053efec6 Linux 5.5-rc3
>>   Details:    https://protect2.fireeye.com/url?k=36fb52ed-6b2b5a21-36fad9a2-
>> 000babff3793-
>> f64e7c227e0a8b34&u=https://kernelci.org/boot/id/5e02ce65451524462f9731
>> 4f
>>   Plain log:  https://protect2.fireeye.com/url?k=58f5fc3b-0525f4f7-58f47774-
>> 000babff3793-f96a18481add0d7f&u=https://storage.kernelci.org//broonie-
>> regmap/for-next/v5.5-rc3/arm/oxnas_v6_defconfig/gcc-8/lab-
>> baylibre/boot-ox820-cloudengines-pogoplug-series-3.txt
>>   HTML log:   https://protect2.fireeye.com/url?k=eaed2629-b73d2ee5-
>> eaecad66-000babff3793-
>> 84ba1e41025b4f73&u=https://storage.kernelci.org//broonie-regmap/for-
>> next/v5.5-rc3/arm/oxnas_v6_defconfig/gcc-8/lab-baylibre/boot-ox820-
>> cloudengines-pogoplug-series-3.html
>>   Result:     d3e014ec7d5e net: stmmac: platform: Fix MDIO init for platforms
>> without PHY
>>
>> Checks:
>>   revert:     PASS
>>   verify:     PASS
>>
>> Parameters:
>>   Tree:       broonie-regmap
>>   URL:
>> https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regmap.git
>>   Branch:     for-next
>>   Target:     ox820-cloudengines-pogoplug-series-3
>>   CPU arch:   arm
>>   Lab:        lab-baylibre
>>   Compiler:   gcc-8
>>   Config:     oxnas_v6_defconfig
>>   Test suite: boot
>>
>> Breaking commit found:
>>
>> -------------------------------------------------------------------------------
>> commit d3e014ec7d5ebe9644b5486bc530b91e62bbf624
>> Author: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
>> Date:   Thu Dec 19 15:47:01 2019 +0530
>>
>>     net: stmmac: platform: Fix MDIO init for platforms without PHY
>>
>>     The current implementation of "stmmac_dt_phy" function initializes
>>     the MDIO platform bus data, even in the absence of PHY. This fix
>>     will skip MDIO initialization if there is no PHY present.
>>
>>     Fixes: 7437127 ("net: stmmac: Convert to phylink and remove phylib logic")
>>     Acked-by: Jayati Sahu <jayati.sahu@samsung.com>
>>     Signed-off-by: Sriram Dash <sriram.dash@samsung.com>
>>     Signed-off-by: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
>>     Signed-off-by: David S. Miller <davem@davemloft.net>
>>
>> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>> b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>> index bedaff0c13bd..cc8d7e7bf9ac 100644
>> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>> @@ -320,7 +320,7 @@ static int stmmac_mtl_setup(struct platform_device
>> *pdev,  static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
>>  			 struct device_node *np, struct device *dev)  {
>> -	bool mdio = true;
>> +	bool mdio = false;
>>  	static const struct of_device_id need_mdio_ids[] = {
>>  		{ .compatible = "snps,dwc-qos-ethernet-4.10" },
>>  		{},
>> -------------------------------------------------------------------------------
>>
>>
>> Git bisection log:
>>
>> -------------------------------------------------------------------------------
>> git bisect start
>> # good: [e42617b825f8073569da76dc4510bfa019b1c35a] Linux 5.5-rc1 git
>> bisect good e42617b825f8073569da76dc4510bfa019b1c35a
>> # bad: [46cf053efec6a3a5f343fead837777efe8252a46] Linux 5.5-rc3 git bisect
>> bad 46cf053efec6a3a5f343fead837777efe8252a46
>> # good: [2187f215ebaac73ddbd814696d7c7fa34f0c3de0] Merge tag 'for-5.5-
>> rc2-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux
>> git bisect good 2187f215ebaac73ddbd814696d7c7fa34f0c3de0
>> # good: [0dd1e3773ae8afc4bfdce782bdeffc10f9cae6ec] pipe: fix empty pipe
>> check in pipe_write() git bisect good
>> 0dd1e3773ae8afc4bfdce782bdeffc10f9cae6ec
>> # good: [040cda8a15210f19da7e29232c897ca6ca6cc950] Merge tag 'wireless-
>> drivers-2019-12-17' of
>> git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers
>> git bisect good 040cda8a15210f19da7e29232c897ca6ca6cc950
>> # bad: [4bfeadfc0712bbc8a6556eef6d47cbae1099dea3] Merge branch 'sfc-
>> fix-bugs-introduced-by-XDP-patches'
>> git bisect bad 4bfeadfc0712bbc8a6556eef6d47cbae1099dea3
>> # good: [0fd260056ef84ede8f444c66a3820811691fe884] Merge
>> git://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf
>> git bisect good 0fd260056ef84ede8f444c66a3820811691fe884
>> # good: [90b3b339364c76baa2436445401ea9ade040c216] net: hisilicon: Fix a
>> BUG trigered by wrong bytes_compl git bisect good
>> 90b3b339364c76baa2436445401ea9ade040c216
>> # bad: [4c8dc00503db24deaf0b89dddfa84b7cba7cd4ce] qede: Disable
>> hardware gro when xdp prog is installed git bisect bad
>> 4c8dc00503db24deaf0b89dddfa84b7cba7cd4ce
>> # bad: [28a3b8408f70b646e78880a7eb0a97c22ace98d1] net/smc: unregister
>> ib devices in reboot_event git bisect bad
>> 28a3b8408f70b646e78880a7eb0a97c22ace98d1
>> # bad: [d3e014ec7d5ebe9644b5486bc530b91e62bbf624] net: stmmac:
>> platform: Fix MDIO init for platforms without PHY git bisect bad
>> d3e014ec7d5ebe9644b5486bc530b91e62bbf624
>> # good: [af1c0e4e00f3cc76cb136ebf2e2c04e8b6446285] llc2: Fix return
>> statement of llc_stat_ev_rx_null_dsap_xid_c (and _test_c) git bisect good
>> af1c0e4e00f3cc76cb136ebf2e2c04e8b6446285
>> # first bad commit: [d3e014ec7d5ebe9644b5486bc530b91e62bbf624] net:
>> stmmac: platform: Fix MDIO init for platforms without PHY
>> -------------------------------------------------------------------------------
> 
> 
> The mdio bus will be allocated in case of a phy transceiver is on board, but if
> fixed-link is configured, it will be NULL and of_mdiobus_register will
> not take effect.

There appears to be another possible flaw in the code here:

                for_each_child_of_node(np, plat->mdio_node) {
                        if (of_device_is_compatible(plat->mdio_node,
                                                    "snps,dwmac-mdio"))
                                break;
                }

the loop should use for_each_available_child_of_node() such that if a
platform has a Device Tree definition where the MDIO bus node was
provided but it was not disabled by default (a mistake, it should be
disabled by default), and a "fixed-link" property ended up being used at
the board level, we should not end-up with an invalid plat->mdio_node
reference. Then the code could possibly eliminate the use of 'mdio' as a
boolean and rely exclusively on plat->mdio_node. What do you think?

And an alternative to your fix would be to scan even further the MDIO
bus node for available child nodes, if there are none, do not perform
the MDIO initialization at all since we have no MDIO devices beneath.


> The commit d3e014ec7d5e fixes the code for fixed-link configuration.
> However, some platforms like oxnas820 which have phy
> transceivers (rgmii), fail. This is because the platforms expect the allocation
> of mdio_bus_data during stmmac_dt_phy. 
> 
> Proper solution to this is adding the mdio node in the device tree of the
> platform which can be fetched by stmmac_dt_phy.

That sounds reasonable, but we should also not break existing platforms
with existing Device Trees out there, as much as possible.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
