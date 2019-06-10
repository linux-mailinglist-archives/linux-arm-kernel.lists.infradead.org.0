Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 645F13B2C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Om216Hhkd6mAmwfaO/iYZbXia22uplrID7ABOjcS1Ng=; b=imwQACkYkj7Ydc
	ih4Cy7KYlnOm7H0t3nZ1KehiZN+qyKBXEblHSHI+zua8N09QTGFfAt5sTXRvkvDQu89f/ZE8S3UmI
	Knru37mosPmbpj2oHGke2l6DhER2q5/jqgMo6xuhNOsF4QL3OyY2NVtt/7vPWcy8movp4GBKumsEo
	ByGAoeF91DcqzSidbZiN9vVcdAR+DXU1rE3Z6DGSjs39+TpnnG1IPNf7cgVMkvy8hDVDYKzdgczPM
	vTHPJLIWbq6dZhF1Gz6RWjdxGWI09P5tEcxuvoHi+erVxd6FIxEiEzBjaXceVQyTfZg2gruGu/4QD
	ePLV7xIIgFmz/fcJ19nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHFp-0005ZA-Mt; Mon, 10 Jun 2019 10:10:17 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHFb-00057a-IP
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:10:04 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id EA55360265; Mon, 10 Jun 2019 10:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560161402;
 bh=oMzk0exJ+xInm/wmcPKtXW9VAu75APw0ZR5LIiqwBMA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=SaLCPnR1Et/BEyNk+ZcTTxeIwo8gyJ/n2d+q5Xul05WI4YqSh0wyjjYUlXeZt+8+Z
 +O2BI26+KyHgNgyePciF/SQ4O9PzcgvrTyBtFsV+9RRbmDVIbSqwDUzeLy3D/3kh8l
 P7GuAlKBKloZtGxGR4J58CeiejGr35K20apQDEdE=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D6A0E60265;
 Mon, 10 Jun 2019 10:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560161402;
 bh=oMzk0exJ+xInm/wmcPKtXW9VAu75APw0ZR5LIiqwBMA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=SaLCPnR1Et/BEyNk+ZcTTxeIwo8gyJ/n2d+q5Xul05WI4YqSh0wyjjYUlXeZt+8+Z
 +O2BI26+KyHgNgyePciF/SQ4O9PzcgvrTyBtFsV+9RRbmDVIbSqwDUzeLy3D/3kh8l
 P7GuAlKBKloZtGxGR4J58CeiejGr35K20apQDEdE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D6A0E60265
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH 5/6] arm64: dts: Add ipq6018 SoC and CP01 board support
To: Christian Lamparter <chunkeey@gmail.com>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-6-git-send-email-sricharan@codeaurora.org>
 <CAAd0S9DKqAgFPgLzHiCBiJgE+OmUW7ainyjM_3-RyfCoKEa51A@mail.gmail.com>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <50231fba-7212-f8b9-9313-0c79294d4cc6@codeaurora.org>
Date: Mon, 10 Jun 2019 15:39:56 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAAd0S9DKqAgFPgLzHiCBiJgE+OmUW7ainyjM_3-RyfCoKEa51A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_031003_655233_6CE58BB5 
X-CRM114-Status: GOOD (  16.90  )
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
Cc: devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 agross@kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-soc@vger.kernel.org,
 linux-clk@vger.kernel.org,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christian,

On 6/6/2019 2:11 AM, Christian Lamparter wrote:
> On Wed, Jun 5, 2019 at 7:16 PM Sricharan R <sricharan@codeaurora.org> wrote:
>>
>> Add initial device tree support for the Qualcomm IPQ6018 SoC and
>> CP01 evaluation board.
>>
>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
>> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>>
>> +       clocks {
>> +               sleep_clk: sleep_clk {
>> +                       compatible = "fixed-clock";
>> +                       clock-frequency = <32000>;
>> +                       #clock-cells = <0>;
>> +               };
>> +
> Recently-ish, we ran into an issue with the clock-frequency of the sleep_clk
> on older IPQ40XX (and IPQ806x) on the OpenWrt Github and ML.
> From what I know, the external "32KHz" crystals have 32768 Hz, but the QSDK
> declares them at 32000 Hz. Since you probably have access to the BOM and
> datasheets. Can you please confirm what's the real clock frequency for
> the IPQ6018.
> (And maybe also for the sleep_clk of the IPQ4018 as well?).
> 

What exactly is the issue that you faced ?
Looking in to the docs, it is <32000> only on ipq6018 and ipq40xx as well.

Regards,
 Sricharan

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
