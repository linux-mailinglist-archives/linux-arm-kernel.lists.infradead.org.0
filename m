Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB30108F41
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 14:51:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ktoEFTlVG1YerQqTqJoEXSH2VaB6uniSphduT81814s=; b=QpCvI1ZTxmIMazDZQBcb16r2D
	zcBDE4fKM4ynaCaU2bQ63hVvPfH0k3iH1hlgEAChRi12pa0w/5TtoJk2gO4k8C3pmGdEKKmNGMFQS
	GJRpqTw7ibwnxkscqriEupnIo/j6oVUf1ifuJ9F4DnLLfHi5qjQhxqjeHjUVWgDN0WElmXL8FGkkJ
	LBD8HE8lHqFNmODvzwn53Dg+dxacb0buQEJzddAcqTVsnGpmjPnSqcPYj/rqxyGfNaYNDbcVM4xlq
	Qmf/SpuTX4azRBL+haXiW7OrTyWlFm8aHCCtfgRXeWmuKKkf9+EVTEZ+5lsCPq9ona+D0Iro6s+CA
	P21pP21ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZEm6-0007Mb-IR; Mon, 25 Nov 2019 13:51:34 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZElv-0007LW-6r; Mon, 25 Nov 2019 13:51:26 +0000
Received: from [10.28.39.99] (10.28.39.99) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Mon, 25 Nov
 2019 21:51:39 +0800
Subject: Re: [PATCH v2 3/3] clk: meson: a1: add support for Amlogic A1 clock
 driver
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
References: <1571382865-41978-1-git-send-email-jian.hu@amlogic.com>
 <1571382865-41978-4-git-send-email-jian.hu@amlogic.com>
 <1jsgnmba1a.fsf@starbuckisacylon.baylibre.com>
 <49b33e94-910b-3fd9-4da1-050742d07e93@amlogic.com>
 <1jblts3v7e.fsf@starbuckisacylon.baylibre.com>
 <f02b6fb2-5b98-0930-6d47-a3e65840fb82@amlogic.com>
 <1jh839f2ue.fsf@starbuckisacylon.baylibre.com>
 <20d04452-fc63-9e9e-220f-146b493a860f@amlogic.com>
 <1695e9b0-1730-eef6-491d-fe90ac897ee9@amlogic.com>
 <1jtv6yftmm.fsf@starbuckisacylon.baylibre.com>
 <9e652ed1-384e-f630-f2a4-0aa4486df577@amlogic.com>
 <1j7e3oqn36.fsf@starbuckisacylon.baylibre.com>
 <9ec317e8-136e-1ab4-4e9b-21210e7f3e05@amlogic.com>
 <1j5zj8qgsl.fsf@starbuckisacylon.baylibre.com>
From: Jian Hu <jian.hu@amlogic.com>
Message-ID: <7a3f1e14-e5a5-407a-335a-eb68d3082eb9@amlogic.com>
Date: Mon, 25 Nov 2019 21:51:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <1j5zj8qgsl.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.28.39.99]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_055124_707350_BCB8B618 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/11/25 20:30, Jerome Brunet wrote:
> 
> On Mon 25 Nov 2019 at 13:01, Jian Hu <jian.hu@amlogic.com> wrote:
> 
>> On 2019/11/25 18:14, Jerome Brunet wrote:
>>>
>>> On Thu 21 Nov 2019 at 04:21, Jian Hu <jian.hu@amlogic.com> wrote:
>>>
>>>> Hi, Jerome
>>>>
>>>> On 2019/11/20 23:35, Jerome Brunet wrote:
>>>>>
>>>>> On Wed 20 Nov 2019 at 10:28, Jian Hu <jian.hu@amlogic.com> wrote:
>>>>>
>>>>>> Hi, jerome
>>>>>>
>>>>>> Is there any problem about fixed_pll_dco's parent_data?
>>>>>>
>>>>>> Now both name and fw_name are described in parent_data.
>>>>>
>>>>> Yes, there is a problem.  This approach is incorrect, as I've tried to
>>>>> explain a couple times already. Let me try to re-summarize why this
>>>>> approach is incorrect.
>>>>>
>>>>> Both fw_name and name should be provided when it is possible that
>>>>> the DT does not describe the input clock. IOW, it is only for controllers
>>>>> which relied on the global name so far and are now starting to describe
>>>>> the clock input in DT
>>>>>
>>>>> This is not your case.
>>>>> Your controller is new and DT will have the correct
>>>>> info
>>>>>
>>>>> You are trying work around an ordering issue by providing both fw_name
>>>>> and name. This is not correct and I'll continue to nack it.
>>>>>
>>>>> If the orphan clock is not reparented as you would expect, I suggest you
>>>>> try to look a bit further at how the reparenting of orphans is done in
>>>>> CCF and why it does not match your expectation.
>>>>>
>>>> I have debugged the handle for orphan clock in CCF, Maybe you are missing
>>>> the last email.
>>>
>>> Nope, got it the first time
>>>
>>>> Even though the clock index exit, it will get failed for the orphan clock's
>>>> parent clock due to it has not beed added to the provider.
>>>
>>> If the provider is not registered yet, of course any query to it won't
>>> work. This why I have suggested to this debug *further* :
>>>
>>> * Is the orphan reparenting done when a new provider is registered ?
>>> * If not, should it be done ? is this your problem ?
>>>
> 
> Apparently, I was not clear enough so I'll rephrase
> 
>> Yes, the orphan reparenting is done when the new provider is
>> registered.
> 
> No it is not done yet. Please check the code.
> 
> The reparenting of orphan is done only on clock registration, not on
> provider registeration. Now that clocks can be specified by DT, this
> probably needs to added.The action of reparenting the orphan is before the provider registration 
with the current code.
> 
> That is your problem.
Yes, if the provider is registered before the clock registration, it
will reparent successfully.
> 
> Please fix the underlying issue, then you can post your series again.
> 
>>
>> Reparenting the orphan will be done when each clock is registered by
>> devm_clk_hw_register. And at this time the provider has not been
>> registered. After all clocks are registered by devm_clk_hw_register, the
>> provider will be registered by devm_of_clk_add_hw_provider.
>>
>> Reparenting the orphan will fail when fw_name is added alone, the couse is
>> that devm_clk_hw_register is always running ahead of
>> devm_of_clk_add_hw_provider.
> 
> Please stop bringing the topic of "fw_name" and "name" field together, I
> told you 3 times why this is wrong. It is not going to change.
> 
>>
>> That is why it will failed to get parent for the orphan clock.
> 
> It fails because the provider is not registered when you try to reparent
> the orphan.
> 
> It shows that you should try again once the provider is registered.
> 
OK, I have exchanged the position for devm_clk_hw_register and 
devm_of_clk_add_hw_provider in meson-eeclk.c.

It reparents successfully for orphan clock.

Is is ok that put devm_of_clk_add_hw_provider ahead?

As far as I am concerned, there is no any effect.
>>
>>
>>
>>>
>>> .
>>>
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
