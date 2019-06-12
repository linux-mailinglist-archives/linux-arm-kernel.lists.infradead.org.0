Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80ED04215C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 11:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7n0DKxxd1nfbqATHOUEsts3Jdl5HNjR2BzEl4/7Tjk=; b=L+BBQ3y0Bdh9fr
	or5b4yLLvODKCWhMxOLTVIhECxVguxUitT8nx755n9tjqmFb0HZcGySwIPfA0u/00utK7O0CMaQrJ
	KkJ+ofIRET0iNAn5tDJRyEfqywYDjmUOdUEFoX6esjVpHaW4zyZ1Na6yul3O4ywJWnuXj4ltBXfck
	umIkdkwo/avq10xlrVIXf2hjXK3xzd/NVcI96DRVY3QYEvDhMasKrUkdSQAcniNZPjQ9CXCOzbk0k
	yYBGlylYtubuePFmw6IASvHrViGlO1DtlXoB6HnfL8N+B8nEVZz3if7D4WJKnSUJd+vUWFkyZuKRg
	a6X50IA41zU/DyK/mYTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hazsU-0000ue-UK; Wed, 12 Jun 2019 09:49:10 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hazsH-0000tA-FZ
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 09:48:59 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 14A54605A0; Wed, 12 Jun 2019 09:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560332934;
 bh=A5Q4nuwELYGPEsPIrnbKYM/7ycbeZUO8bLNEPplxKP4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=EOISpQmtkRdbP7TYk/oMunKmp9D5WZQeue2/qI4s4fUHYLUI2np6EqiJXzsbCgxiI
 +hNvMzvf3ZF8drF3xRrGeAofXI6+ZWWZW7qYJwLWiBMKSkrFBPd0C+w7HbGchpwv0R
 9P7NXjypaMLC8dvkbdxUeaI9hoycPiMEQVDG1IuE=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3C82E6020A;
 Wed, 12 Jun 2019 09:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560332933;
 bh=A5Q4nuwELYGPEsPIrnbKYM/7ycbeZUO8bLNEPplxKP4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=jUP7os4jcFN03veZ3Wr9rOflWS/Gv9t7t/DDs3/Phz04lxOI1I1IYZhP8GWkeKVLf
 HwdmFVVwUwBkfujUQfRazwZlcnCSsh3JK/jcPiN7azOgsylP/3i5ZIk0LEfhyTemIo
 AQ9C0FuhgdNv7w0foiPlGo4DXg4QIWDSUXVx6D30=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3C82E6020A
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH 5/6] arm64: dts: Add ipq6018 SoC and CP01 board support
To: Christian Lamparter <chunkeey@gmail.com>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <CAAd0S9DKqAgFPgLzHiCBiJgE+OmUW7ainyjM_3-RyfCoKEa51A@mail.gmail.com>
 <50231fba-7212-f8b9-9313-0c79294d4cc6@codeaurora.org>
 <4056907.DrFocau5Ix@debian64>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <1a00e8c8-d07c-3b02-8ea5-6d5f3e2c7b1a@codeaurora.org>
Date: Wed, 12 Jun 2019 15:18:48 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <4056907.DrFocau5Ix@debian64>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_024857_554494_6A179DB1 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 6/10/2019 5:45 PM, Christian Lamparter wrote:
> On Monday, June 10, 2019 12:09:56 PM CEST Sricharan R wrote:
>> Hi Christian,
>>
>> On 6/6/2019 2:11 AM, Christian Lamparter wrote:
>>> On Wed, Jun 5, 2019 at 7:16 PM Sricharan R <sricharan@codeaurora.org> wrote:
>>>>
>>>> Add initial device tree support for the Qualcomm IPQ6018 SoC and
>>>> CP01 evaluation board.
>>>>
>>>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
>>>> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
>>>> --- /dev/null
>>>> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>>>>
>>>> +       clocks {
>>>> +               sleep_clk: sleep_clk {
>>>> +                       compatible = "fixed-clock";
>>>> +                       clock-frequency = <32000>;
>>>> +                       #clock-cells = <0>;
>>>> +               };
>>>> +
>>> Recently-ish, we ran into an issue with the clock-frequency of the sleep_clk
>>> on older IPQ40XX (and IPQ806x) on the OpenWrt Github and ML.
>>> From what I know, the external "32KHz" crystals have 32768 Hz, but the QSDK
>>> declares them at 32000 Hz. Since you probably have access to the BOM and
>>> datasheets. Can you please confirm what's the real clock frequency for
>>> the IPQ6018.
>>> (And maybe also for the sleep_clk of the IPQ4018 as well?).
>>>
>>
>> What exactly is the issue that you faced ?
>> Looking in to the docs, it is <32000> only on ipq6018 and ipq40xx as well.
> 
> We need just a confirmation.
> 
> Then again, Currently the qcom-ipq4019.dtsi is using 32768 Hz.
> 
> |		sleep_clk: sleep_clk {
> |			compatible = "fixed-clock";
> |			clock-frequency = <32768>;
> |			#clock-cells = <0>;
> |		};
> 
> <https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/qcom-ipq4019.dtsi#L144>
> 
> Which makes sense, because all previous Qualcomm Atheros MIPS and the
> future IPQ8072 SoCs have been either using or deriving a 32768 Hz clock.
> 
> For example: The AR9344 derives the clock from the 25MHz/40MHz external
> oscillator. This is explained in "8.16.9 Derived RTC Clock (DERIVED_RTC_CLK)".
> Which mentions that the "32KHz" clock interval is 30.5 usec / 30.48 usec
> depending whenever the external reference crystal has 40MHz or 25MHz.
> (1/30.5usec = 32.7868852 kilohertz!). The QCA9558 datasheet says the same
> in "10.19.11 Derived RTC Clock". 
> 
> For IPQ8072: I point to the post by Sven Eckelmann on the OpenWrt ML:
> <http://lists.infradead.org/pipermail/openwrt-devel/2019-May/017131.html>
> "I was only able to verify for IPQ8072 that it had a 32.768 KHz
> sleep clock." 
> 
> So this is pretty much "why there is an issue", it's confusing.
> Is possible can you please look if there are (fixed) divisors values
> listed in the documentation or the registers and bits that the values
> are stored in? Because then we could just calculate it. 
> 

Really sorry for the confusion. So looking little more, SLEEP_CLK is derived
from an external 38.4MHZ crystal, it is 32.768 KHZ. Somehow the
clk freq plan etc seems to mention them only as .032 MHZ and misses
out. That means i will correct the patch for 32768 and probably the
ipq8074.dtsi as well

Regards,
  Sricharan


-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
