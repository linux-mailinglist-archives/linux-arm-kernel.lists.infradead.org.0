Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E617B3B436
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 13:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2itmlD/oKb5F7eWKfupOn26d1shn0zc9P/6JETpx298=; b=KA/3Mx2PV1mWei
	Hh/gof+tgqNOjlZuOnSzCU/E2EHR/j13bG/WSh6QF4sTvDJz1xSzUJ1HEDyJzd8o231VJztPjnI6n
	TVEvXhEvPOKz5a+OVWaKox/66Sqp+Vj57Yb6im61XKLUueX3aqDdPV9E/eO+8E+OlceHUKJSU6pEV
	1/ZW52tbmyxckPlUko5Ha+rnRlBcDbqn8vlauwRSi5K64QaqTO6YbWQWxmT0vNtttRwNCEDGlMv6F
	dMQonM5ScgjTkyhWG6c1N6U4utrAozJVJtBdQv5jlLEOvV6BGc1sEla/TSHVOmEcrkrduguZHKTns
	xDknVow4yoDQ2mmb201Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haImP-0000Pj-5u; Mon, 10 Jun 2019 11:48:01 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haIlf-0008Vw-NQ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 11:47:17 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 50A8C60209; Mon, 10 Jun 2019 11:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560167235;
 bh=4XDPRPKTvdPgn7fWEq49BU4VLSuWjWWn+L9RjxS4Tr4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=F/dI8LIPkR1zdhwduM0KxCFEvB4R6ylEK+IMajctYv7slDZptEe5nU0lculLlTMZQ
 Lg3tAfE9I7+Gk0OZiXfCU/WQagxn5xLuPfeRxffBFonuOox3TlDtWo7tIZ74Nrn7J2
 AfjbGx6A3s0n0TQSFxBiSl2XXuIocxM3BIFaRuaw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.201.2.161]
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: sricharan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5252560209;
 Mon, 10 Jun 2019 11:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560167234;
 bh=4XDPRPKTvdPgn7fWEq49BU4VLSuWjWWn+L9RjxS4Tr4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=HfPMGgqiNfj2YJKVBh25nt5zqx5ec/y9KHWxNKJvfhFGKk9l84OrWrmGkfLDOvf4P
 ZnJ65lj203tCDVTIr73AOpExlWf94+9F/aA6lBqjitMDM8gEWDEAnvkIM5H/H/FKAm
 6iSahlOERBQTYbRiirWGS29X26w5VJh3hNTma+R8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5252560209
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH 4/6] clk: qcom: Add ipq6018 Global Clock Controller support
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-5-git-send-email-sricharan@codeaurora.org>
 <20190608033229.GE24059@builder>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <6583f576-acf4-a71b-d691-bce548e2c008@codeaurora.org>
Date: Mon, 10 Jun 2019 17:17:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190608033229.GE24059@builder>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_044715_826128_FF645267 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, linus.walleij@linaro.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

On 6/8/2019 9:02 AM, Bjorn Andersson wrote:
> On Wed 05 Jun 10:15 PDT 2019, Sricharan R wrote:
> 
>> This patch adds support for the global clock controller found on
>> the ipq6018 based devices.
>>
>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
>> Signed-off-by: anusha <anusharao@codeaurora.org>
>> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
> 
> Please fix your s-o-b chain, as described in my reply to 1/8..
> 

 ok.

>> ---
>>  drivers/clk/qcom/Kconfig       |    9 +
>>  drivers/clk/qcom/Makefile      |    1 +
>>  drivers/clk/qcom/gcc-ipq6018.c | 5267 ++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 5277 insertions(+)
>>  create mode 100644 drivers/clk/qcom/gcc-ipq6018.c
>>
>> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
>> index e1ff83c..e5fb091 100644
>> --- a/drivers/clk/qcom/Kconfig
>> +++ b/drivers/clk/qcom/Kconfig
>> @@ -120,6 +120,15 @@ config IPQ_GCC_8074
>>  	  i2c, USB, SD/eMMC, etc. Select this for the root clock
>>  	  of ipq8074.
>>  
>> +config IPQ_GCC_6018
> 
> Please maintain sort order.
> 

 ok.

>> +	tristate "IPQ6018 Global Clock Controller"
>> +	depends on COMMON_CLK_QCOM
>> +	help
>> +	  Support for global clock controller on ipq6018 devices.
>> +	  Say Y if you want to use peripheral devices such as UART, SPI,
>> +	  i2c, USB, SD/eMMC, etc. Select this for the root clock
>> +	  of ipq6018.
>> +
>>  config MSM_GCC_8660
>>  	tristate "MSM8660 Global Clock Controller"
>>  	help
>> diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
>> index f0768fb..025137d 100644
>> --- a/drivers/clk/qcom/Makefile
>> +++ b/drivers/clk/qcom/Makefile
>> @@ -22,6 +22,7 @@ obj-$(CONFIG_APQ_MMCC_8084) += mmcc-apq8084.o
>>  obj-$(CONFIG_IPQ_GCC_4019) += gcc-ipq4019.o
>>  obj-$(CONFIG_IPQ_GCC_806X) += gcc-ipq806x.o
>>  obj-$(CONFIG_IPQ_GCC_8074) += gcc-ipq8074.o
>> +obj-$(CONFIG_IPQ_GCC_6018) += gcc-ipq6018.o
> 
> Ditto.
> 

 ok.

>>  obj-$(CONFIG_IPQ_LCC_806X) += lcc-ipq806x.o
>>  obj-$(CONFIG_MDM_GCC_9615) += gcc-mdm9615.o
>>  obj-$(CONFIG_MDM_LCC_9615) += lcc-mdm9615.o
>> diff --git a/drivers/clk/qcom/gcc-ipq6018.c b/drivers/clk/qcom/gcc-ipq6018.c
> [..]
>> +static int gcc_ipq6018_probe(struct platform_device *pdev)
>> +{
>> +	return qcom_cc_probe(pdev, &gcc_ipq6018_desc);
>> +}
>> +
>> +static int gcc_ipq6018_remove(struct platform_device *pdev)
>> +{
>> +	return 0;
> 
> Just omit .remove from the gcc_ipq6018_driver instead of providing a
> dummy function.
> 

 ok.

>> +}
>> +
>> +static struct platform_driver gcc_ipq6018_driver = {
>> +	.probe = gcc_ipq6018_probe,
>> +	.remove = gcc_ipq6018_remove,
>> +	.driver = {
>> +		.name   = "qcom,gcc-ipq6018",
>> +		.owner  = THIS_MODULE,
> 
> Don't specify .owner in platform drivers.
> 

 ok.

> [..]
>> +MODULE_DESCRIPTION("Qualcomm Technologies, Inc. GCC IPQ6018 Driver");
>> +MODULE_LICENSE("GPL v2");
>> +MODULE_ALIAS("platform:gcc-ipq6018");
> 
> This modalias won't be used.
>

 ok. But it looks to be there in other clk drivers as well.
 
Regards,
 Sricharan

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
