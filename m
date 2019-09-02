Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34207A4F2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 08:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xlO6x3mnAossEQS+VjjN5eP2aOT5GS76TRUUWoLqXM=; b=VTjZlC3sxyhqf6
	Qp8bF9L7V8+v83WYBYs1anNzZqNRCt5KIJ6DldMyBri3upyIPeEcdwD7oJ1w3WOUlzbahooC7MKTZ
	BCyXJTM9V48v3avYBZGFhRTUgzVL+xwXH4JK67T/F3w+vhXCYEiakRN150u591XQvuMKVeXuvCWr+
	f2CXYFHaLnQ6Bd5lXG7Z1e3L31/vCYpBu56HT8mLzI8sBFX9GhqmYBZbmGRpmxu2Ylwsn/GSnGZOk
	0k3muEUwyFmpVQE+FTNHSRqO7piIdPSIspj1RkUgCTgfEoZp/YToNejzgr9mj2LuBvUxY6peNcH1v
	lZAe19V3EOK6ln5i6IRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4fkI-0006cQ-MM; Mon, 02 Sep 2019 06:23:22 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4fk6-0006bV-VW
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 06:23:13 +0000
Received: by mail-wr1-x42d.google.com with SMTP id b16so12650444wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Sep 2019 23:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GXDQLzey5eVaH3nv6gKWbG5J2SJ2qpME5x9rf2oPD3I=;
 b=kBwnMP+ONhB7ElGFyoORX2b0oURt0/dKqqr5+U+YBZKHjonzdLnbHm5hB/r+nB8nPM
 mgKOtNkOPeBc7haAzOJ+KK6MVAL3VO6Og4lQlDxaLLC/3J0D/ZgVqG/YKchBpAmu+Ps6
 8Jox4PJ5bKlMX8eb9KZpzVcGnZ3plNbKC98oVZffGGvfzQ6tWYcgIXljghLah31oLmKp
 rcqSKRhMz4YOoUKyfr0ZkE8wuDZqdZNdsYsj9NXw2IvmpwTLa6GqZqAucdhvH6kqYMYZ
 auNFCTZ3bCNq2oZEtUTlraGoIMz2ILzrYnLWduc3RUgKbIOkuHSDmZobeQzVMNpfd9eT
 YjJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GXDQLzey5eVaH3nv6gKWbG5J2SJ2qpME5x9rf2oPD3I=;
 b=kn0HgjDrEelZi+msrm+Hw1mWOdI8OBRYr9uJfYi5isVX/UODKb87tkgKZSbA3CWLrh
 pgG/gwNOIvNjjJSSCwE7z+xRLQbLZXRFUfyk701DPutLRG3JzfZHInMH03cTKHZDJme3
 vOpRyFZGNrr0WTTGT8xjeoPcKIbP72E2aKwI2qBJE1VotLxJ0t0QDRqNJ9x50NYk9zET
 shoHouMb5k31MrXivT1Ptm2d1H7jjJ16fWQFc0rUy5VfEMI2EzOw8F5uQ5lPfcS1s6/m
 k8ajoD+bnah4MJSc15x2xOc42Xr5mbyoWlWvyUp2Rb9wOauSkigR9xwYZ2A49oj/3CCu
 pIOQ==
X-Gm-Message-State: APjAAAWrkZoJsV1V0KVW2ZQ2y9xCeswnykLBka87KkF7EDEgHD7qQk0H
 5z539EuL31udXwM51vgPL0vPig==
X-Google-Smtp-Source: APXvYqwd5B1+mNZiCUdsAOpexzFqYG8beIuRWZhpUTVmnR2EtR8Ns3q0MBNTR/7EMMBAtVeoAOgVLQ==
X-Received: by 2002:a5d:424a:: with SMTP id s10mr8643502wrr.55.1567405386975; 
 Sun, 01 Sep 2019 23:23:06 -0700 (PDT)
Received: from [192.168.1.6] (124.red-83-36-179.dynamicip.rima-tde.net.
 [83.36.179.124])
 by smtp.gmail.com with ESMTPSA id w13sm32060900wre.44.2019.09.01.23.23.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 01 Sep 2019 23:23:06 -0700 (PDT)
Subject: Re: [PATCH v4 3/4] dt-bindings: Add Qualcomm USB SuperSpeed PHY
 bindings
To: Stephen Boyd <swboyd@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20190207111734.24171-1-jorge.ramirez-ortiz@linaro.org>
 <20190207111734.24171-4-jorge.ramirez-ortiz@linaro.org>
 <20190223165218.GB572@tuxbook-pro>
 <6dc0957d-5806-7643-4454-966015865d38@linaro.org>
 <5d694878.1c69fb81.5f13b.ec4f@mx.google.com>
 <20190830164520.GK26807@tuxbook-pro>
 <5d696ad2.1c69fb81.977ea.39e5@mx.google.com>
From: Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Message-ID: <f3584f38-dabc-7e7a-d1cb-84c80ed26215@linaro.org>
Date: Mon, 2 Sep 2019 08:23:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <5d696ad2.1c69fb81.977ea.39e5@mx.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_232311_081908_36683B43 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, robh@kernel.org, jackp@codeaurora.org,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, khasim.mohammed@linaro.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, shawn.guo@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/30/19 20:28, Stephen Boyd wrote:
> Quoting Bjorn Andersson (2019-08-30 09:45:20)
>> On Fri 30 Aug 09:01 PDT 2019, Stephen Boyd wrote:
>>
>>> Quoting Jorge Ramirez (2019-08-29 00:03:48)
>>>> On 2/23/19 17:52, Bjorn Andersson wrote:
>>>>> On Thu 07 Feb 03:17 PST 2019, Jorge Ramirez-Ortiz wrote:
>>>>>> +
>>>>>> +Required child nodes:
>>>>>> +
>>>>>> +- usb connector node as defined in bindings/connector/usb-connector.txt
>>>>>> +  containing the property vbus-supply.
>>>>>> +
>>>>>> +Example:
>>>>>> +
>>>>>> +usb3_phy: usb3-phy@78000 {
>>>>>> +    compatible = "qcom,snps-usb-ssphy";
>>>>>> +    reg = <0x78000 0x400>;
>>>>>> +    #phy-cells = <0>;
>>>>>> +    clocks = <&rpmcc RPM_SMD_LN_BB_CLK>,
>>>>>> +             <&gcc GCC_USB_HS_PHY_CFG_AHB_CLK>,
>>>>>> +             <&gcc GCC_USB3_PHY_PIPE_CLK>;
>>>>>> +    clock-names = "ref", "phy", "pipe";
>>>>>> +    resets = <&gcc GCC_USB3_PHY_BCR>,
>>>>>> +             <&gcc GCC_USB3PHY_PHY_BCR>;
>>>>>> +    reset-names = "com", "phy";
>>>>>> +    vdd-supply = <&vreg_l3_1p05>;
>>>>>> +    vdda1p8-supply = <&vreg_l5_1p8>;
>>>>>> +    usb3_c_connector: usb3-c-connector {
>>>
>>> Node name should be 'connector', not usb3-c-connector.
>>>
>>
>> It probably has to be usb-c-connector, because we have a
>> micro-usb-connector on the same board.
> 
> Ok. Or connector@1 and connector@2? Our toplevel node container story is
> sort of sad because we have to play tricks with node names. But in the
> example, just connector I presume? 
> 
>>
>>>>>
>>>>> The USB-C connector is attached both to the HS and SS PHYs, so I think
>>>>> you should represent this external to this node and use of_graph to
>>>>> query it.
>>>>
>>>> but AFAICS we wont be able to retrieve the vbux-supply from an external
>>>> node (that interface does not exist).
>>>>
>>>> rob, do you have a suggestion?
>>>
>>> Shouldn't the vbus supply be in the phy? Or is this a situation where
>>> the phy itself doesn't have the vbus supply going to it because the PMIC
>>> gets in the way and handles the vbus for the connector by having the SoC
>>> communicate with the PMIC about when to turn the vbus on and off, etc?
>>>
>>
>> That's correct, the VBUS comes out of the PMIC and goes directly to the
>> connector.
>>
>> The additional complicating factor here is that the connector is wired
>> to a USB2 phy as well, so we need to wire up detection and vbus control
>> to both of them - but I think this will be fine, if we can only figure
>> out a sane way of getting hold of the vbus-supply.
>>
> 
> Does it really matter to describe this situation though? Maybe it's
> simpler to throw the vbus supply into the phy and control it from the
> phy driver, even if it never really goes there. Or put it into the
> toplevel usb controller?
> 
that would work for me - the connector definition seemed a better way to
explain the connectivity but since we cant retrieve the supply from the
external node is not of much functional use.

but please let me know how to proceed. shall I add the supply back to
the phy?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
