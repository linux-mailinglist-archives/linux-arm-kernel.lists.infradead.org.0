Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF0C132415
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:46:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJFk84ASTJ/lhUgaYarc8ysIl9Z7easDfuvdc4t6Qs4=; b=PF6zRnb8jKT+Ig
	R3SsDTyTl2TI5CXyP4JFEcXFfPt6c7bKnqB8fDtk/RCKqvY1eB+TLmbe9snUWIXm1U2wbYpZG7Z3n
	++PNdGRsbEN3YstA01ws7s+wpahgUEyQ1q0qUI2qXBsdURy5b8iIzl8dLGlU6P9ZHOAmAacTA6QJb
	Y09fz0kuBnHLaecv5afBkZG9JidyMiAxOizliP6L5SZe9TlCEK14Gn8xQ4pZrI41I1eMR5yvpSFY6
	O3j+MEKgUBVrVflOkwFjAPCVBfKZqb4q1l1kQXUo/jDxqKE0S8uawCs2RGTdkFaNkIw67xgTZKh51
	4A+5Y02NutjTm1bUPkdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomNp-00026O-Vt; Tue, 07 Jan 2020 10:46:45 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomNh-00025z-Ph
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 10:46:39 +0000
Received: by mail-wr1-x444.google.com with SMTP id z3so53383622wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 02:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7rTH7Mcvy9VwocrAIm3b118vtxupV3Wfvxxlykhwfhw=;
 b=XrfY/ltUBec+Jj/oE1JL7YfnYj4n/J8vFbVYL5l1ta6HNoHTpo2D+5wFT2waJ87+UK
 3nKSRefjWLgsZ5uWXpDiMY+ZnT6QLbbbZSeKYuyNPEogXK3SErwoqSzg7BBuw5On38yw
 gJr4TM7AhokfRQeU6lnLk/XbqMYXAOPzgjN2IKj9taW9e0wmvv18AeOM+Rr536Cfy+Fg
 zqW/R7vhMUE3VZnn33/iITSm7V46IMLarYsBQQMYeir9Z3dUM6mYUAtMN2EE2HsyIxpH
 mk5CX0Wexkdt1vTLaYKfzTckANhmGgq82FWL7epmVRPdGZoixVUr2NmSC9qXb1npBOL+
 W3fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=7rTH7Mcvy9VwocrAIm3b118vtxupV3Wfvxxlykhwfhw=;
 b=isII64BFsCcwXiFG0Vaw25YbELCkzh2Z0vUmwXh8nzL6bWdIbJdXBVc/su7NGfEn/9
 6ZsT3SKjFzAs0bgOVYMv69FIw7pBAs6+oQMXRUNvftuB7x9aub7TwFyzYTlxisX7tunw
 zg+kICy86qp+9VaC6deqi/XbI4KCX0k/I6wpwvZS3yumPut//3usn0pCWhTSlQDUPFRE
 jCho8XPL2DGL2GI7g9z9ieYjbMuIcC1gRe1+hXMM7yQUQ9Tq3NmBekZ5cYwfETdBEri7
 vdl4FGJ+s86Bw69knaFbFupBlMZRPyGwltATQvHPsQCmISOPZUXrlh4Bpky2YsnnSV66
 kDTw==
X-Gm-Message-State: APjAAAXw0RB4by6fvJZJ1WtDqdai+QQvAysX2fvpGFq2EQNv+VIjU70N
 dlXLsvT7gEU2wNjbNErpImqoXw==
X-Google-Smtp-Source: APXvYqxuWN4aaBHGSaP5ESCWj+T7ZddZ68fPIgFqkf78nsOoU+Bwt5cZdFIT76i2bV/yP0mXYG78yA==
X-Received: by 2002:adf:fd43:: with SMTP id h3mr70405322wrs.169.1578393996370; 
 Tue, 07 Jan 2020 02:46:36 -0800 (PST)
Received: from [10.1.2.12] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t81sm26921154wmg.6.2020.01.07.02.46.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jan 2020 02:46:35 -0800 (PST)
Subject: Re: [PATCH net] Revert "net: stmmac: platform: Fix MDIO init for
 platforms without PHY"
To: Sriram Dash <sriram.dash@samsung.com>,
 'Florian Fainelli' <f.fainelli@gmail.com>, netdev@vger.kernel.org
References: <CGME20200107050854epcas1p3c1a66e67f14802322063f6c9747f1986@epcas1p3.samsung.com>
 <20200107050846.16838-1-f.fainelli@gmail.com>
 <011a01d5c51d$d7482290$85d867b0$@samsung.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <8a1ca3ad-23c8-ded6-6b7a-533b3ddc307a@baylibre.com>
Date: Tue, 7 Jan 2020 11:46:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <011a01d5c51d$d7482290$85d867b0$@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_024637_840374_601F9762 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 'Jayati Sahu' <jayati.sahu@samsung.com>,
 'Alexandre Torgue' <alexandre.torgue@st.com>, tomeu.vizoso@collabora.com,
 rcsekar@samsung.com, khilman@baylibre.com, linux-kernel@vger.kernel.org,
 'Padmanabhan Rajanbabu' <p.rajanbabu@samsung.com>,
 "'David S. Miller'" <davem@davemloft.net>, guillaume.tucker@collabora.com,
 broonie@kernel.org, pankaj.dubey@samsung.com,
 'Maxime Coquelin' <mcoquelin.stm32@gmail.com>, mgalka@collabora.com,
 enric.balletbo@collabora.com, 'Giuseppe Cavallaro' <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/01/2020 06:46, Sriram Dash wrote:
>> From: Florian Fainelli <f.fainelli@gmail.com>
>> Subject: [PATCH net] Revert "net: stmmac: platform: Fix MDIO init for
> platforms
>> without PHY"
>>
>> This reverts commit d3e014ec7d5ebe9644b5486bc530b91e62bbf624 ("net:
>> stmmac: platform: Fix MDIO init for platforms without PHY") because it
> breaks
>> existing systems with stmmac which do not have a MDIO bus sub-node nor a
>> 'phy-handle' property declared in their Device Tree. On those systems, the
>> stmmac MDIO bus is expected to be created and then scanned by
>> of_mdiobus_register() to create PHY devices.
>>
>> While these systems should arguably make use of a more accurate Device
> Tree
>> reprensentation with the use of the MDIO bus sub-node an appropriate 'phy-
>> handle', we cannot break them, therefore restore the behavior prior to the
> said
>> commit.
>>
>> Fixes: d3e014ec7d5e ("net: stmmac: platform: Fix MDIO init for platforms
>> without PHY")
>> Reported-by: Heiko Stuebner <heiko@sntech.de>
>> Reported-by: kernelci.org bot <bot@kernelci.org>
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> Nacked-by: Sriram Dash <Sriram.dash@samsung.com>
> 
>> ---
>> Heiko,
>>
>> I did not add the Tested-by because the patch is a little bit different
> from what
>> you tested, even if you most likely were not hitting the other part that I
> was
>> changing. Thanks!
>>
>>  drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>> b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>> index cc8d7e7bf9ac..bedaff0c13bd 100644
>> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
>> @@ -320,7 +320,7 @@ static int stmmac_mtl_setup(struct platform_device
>> *pdev,  static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
>>  			 struct device_node *np, struct device *dev)  {
>> -	bool mdio = false;
>> +	bool mdio = true;
> 
> 
> This is breaking for the platforms with fixed-link.
> stih418-b2199.dts and 169445.dts to name a few.
> 
> For the newer platforms, they should provide the mdio/ snps,dwmac-mdio
> property in the device tree as we are checking the mdio/ snps,dwmac-mdio
> property in the stmmac_platform driver for the mdio bus memory allocation.
> For existing platforms, I agree we should not break them, but we should make
> the code correct. And make the existing platforms adapt to the proper code.
> There is a proposed solution. 
> https://lkml.org/lkml/2020/1/7/14

Can you post it as a patch then and add me in CC since it also breaks Oxnas as reported as Kci ?

Neil

> 
> What do you think?
> 
>>  	static const struct of_device_id need_mdio_ids[] = {
>>  		{ .compatible = "snps,dwc-qos-ethernet-4.10" },
>>  		{},
>> --
>> 2.19.1
> 
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
