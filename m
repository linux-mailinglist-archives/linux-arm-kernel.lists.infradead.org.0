Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0673B3A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 13:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfFI1DHpt4anQNq0+ZFHfh8N+Ru6YhBIavmKn6EJBM4=; b=PXehcRRysRB9H7
	e6h1aMMdpyYGOBJJDgFqL9oFn7hjfWAUuCEPAPGJpQRTZ8tW0sTh/XAMQHsq4qr5TKYLfsirv1VWl
	s7d8BdwWulEm/BIO032CnDLu370ekdNvDlf81afj8fjwYQggRcvKn+KaURZkefMzmDXzQlHJeMbsq
	WAVbuq27Jt/r8JncTHVn5w194x1FLPnpmbC0YhpEcwsvH5EcKKQTNCtCk3oHwbNJNDNtM6ILDajRa
	qYMGQEcfFOaXGdt/w8P35GKaCY5G+Y+4n9SVvHFLXKRWeJ9ChG5VrFDQNbC/9Zs29zekj1ndFi8ME
	iVo2BM+pNK8DxbUltUqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haI3d-00062Q-Au; Mon, 10 Jun 2019 11:01:45 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haI32-0005w8-S4
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 11:01:10 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 18EEC60AD1; Mon, 10 Jun 2019 11:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560164468;
 bh=3trH4tk+FpSyNWsSjAcyso4X8iKz3q8bkwkkDW6kp0c=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=pNVPBhlZhv6vhzWvr+hfnO+7Mhj24WaDlw7eP5r+coLume7RU0Rgp3NRBudZ5Uble
 Z+DuBuJaETbNvhLyAte6T0BOs3hpdHMutvPuKosQGtTpGFGU0QqLtp22w20Jbt20rV
 2HPZA11K4YySg2vGGsa1ambt9BKNjW7e15ltUDd0=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D3A9060271;
 Mon, 10 Jun 2019 11:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560164465;
 bh=3trH4tk+FpSyNWsSjAcyso4X8iKz3q8bkwkkDW6kp0c=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Zs7bRIFkXPtBEcVN0IE3hG8C/WidjWXVwfjfZUssqzofuOtu47AoMtEwzeR2ie/QY
 GGAv5OEPk1Xt899aW9drGqPiVD2eARuuAaZU03W5qIMRxlGDvUZTBFZiaCM/1+kM6K
 AGqozjHVsq4h9oAHisZKzuUAsj48PMm85Iz6xaCY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D3A9060271
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH 1/6] pinctrl: qcom: Add ipq6018 pinctrl driver
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-2-git-send-email-sricharan@codeaurora.org>
 <20190608032613.GC24059@builder>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <1766bee3-e4da-7c7c-9881-4a58885640dc@codeaurora.org>
Date: Mon, 10 Jun 2019 16:30:59 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190608032613.GC24059@builder>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_040108_985779_5501E5FB 
X-CRM114-Status: GOOD (  22.17  )
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

On 6/8/2019 8:56 AM, Bjorn Andersson wrote:
> On Wed 05 Jun 10:15 PDT 2019, Sricharan R wrote:
> 
>> Add initial pinctrl driver to support pin configuration with
>> pinctrl framework for ipq6018.
>>
>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
>> Signed-off-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
>> Signed-off-by: speriaka <speriaka@codeaurora.org>
> 

 Thanks for the review !!

> These should start with the author, then followed by each person that
> handled the patch on its way to the list - so your name should probably
> be last.  If you have more than one author add Co-developed-by, in
> addition to the Signed-off-by.
> 
> And please spell our speriaka's first and last name.
> 
 
  ok, will fix it.

> [..]
>> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.txt
> [..]
>> +- #gpio-cells:
>> +	Usage: required
>> +	Value type: <u32>
>> +	Definition: must be 2. Specifying the pin number and flags, as defined
>> +		    in <dt-bindings/gpio/gpio.h>
> 
> You're missing the required "gpio-ranges" property.
> 

 ok, will add.

>> +
> [..]
>> +- function:
>> +	Usage: required
>> +	Value type: <string>
>> +	Definition: Specify the alternative function to be configured for the
>> +		    specified pins. Functions are only valid for gpio pins.
>> +		    Valid values are:
>> +	adsp_ext, alsp_int, atest_bbrx0, atest_bbrx1, atest_char, atest_char0,
> 
> Please indent these.
> 

 ok.

> [..]
> 
> The rest should be in a separate patch from the binding.
> 
>> diff --git a/drivers/pinctrl/qcom/Kconfig b/drivers/pinctrl/qcom/Kconfig
> [..]
>> +enum ipq6018_functions {
> [..]
>> +	msm_mux_NA,
> 
> I like when these are sorted, and if you make the last entry msm_mux__
> the msm_pingroup array becomes easier to read.
> 

 ok.

>> +};
> [..]
>> +static const struct msm_function ipq6018_functions[] = {
> [..]
>> +	FUNCTION(gcc_tlmm),
> 
> As above, please sort these.
> 

 ok.

>> +};
>> +
>> +static const struct msm_pingroup ipq6018_groups[] = {
>> +	PINGROUP(0, qpic_pad, wci20, qdss_traceclk_b, NA, burn0, NA, NA, NA,
>> +		 NA),
> 
> Please ignore the 80-char and skip the line breaks.
> 

 ok.

>> +	PINGROUP(1, qpic_pad, mac12, qdss_tracectl_b, NA, burn1, NA, NA, NA,
>> +		 NA),
>> +	PINGROUP(2, qpic_pad, wci20, qdss_tracedata_b, NA, NA, NA, NA, NA, NA),
>> +	PINGROUP(3, qpic_pad, mac01, qdss_tracedata_b, NA, NA, NA, NA, NA, NA),
>> +	PINGROUP(4, qpic_pad, mac01, qdss_tracedata_b, NA, NA, NA, NA, NA, NA),
>> +	PINGROUP(5, qpic_pad4, mac21, qdss_tracedata_b, NA, NA, NA, NA, NA, NA),
> 
> Is there a reason to keep qpic_padN as separate functions from qpic_pad?
> 
  Hmm, the auto-gen scripts needs to be fixed. Will correct it.

> [..]
>> +static struct platform_driver ipq6018_pinctrl_driver = {
>> +	.driver = {
>> +		.name = "ipq6018-pinctrl",
>> +		.owner = THIS_MODULE,
> 
> .owner is populated automagically by platform_driver_register, so please
> omit this.
> 

 ok, missed it. will fix. 

Regards,
 Sricharan

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
