Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78718E39F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 19:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JVdQpPb+Db2BSRCjdLnOMYENs9SvK5yX5nMJ3JWC7j0=; b=MoixEMMs7Z7f6b/c96bjlKAb3
	bU/Ax5Sivkot63xeuh0wLwRZAiiDPGTBZbrx0gjvSnzw2A5BtCMr6QSBrSfIcVQy06g7NcFkm6hIa
	j0Mj3X7t9hueOGvS1LM6TXITVbW0b31/vAB+Xyg80bU1VKfZCsbn0//br2267YsjtbtVxY0Qf+hND
	+OtlDMnn9scNTWShUWZAW5k13URWW/AvJR7u1jpICpwokZefPvaMfBBr6D3Oho596t7jwni7WR5py
	9389mLfyxR4fR4WgF6a4E7i9zFFMDoMKlyeQOVI52y064bdCOrqLQuPmKDbJtAbQhqcnVOVhqGoRZ
	8aum+qmDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgtq-0006BE-5i; Thu, 24 Oct 2019 17:27:50 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgth-0006Ah-0P
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 17:27:42 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 10:27:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="282007280"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.148])
 ([10.7.153.148])
 by orsmga001.jf.intel.com with ESMTP; 24 Oct 2019 10:27:28 -0700
Subject: Re: [PATCH i2c-next 1/2] dt-bindings: i2c: aspeed: add hardware
 timeout support
To: Brendan Higgins <brendanhiggins@google.com>, Peter Rosin <peda@axentia.se>
References: <20191021202414.17484-1-jae.hyun.yoo@linux.intel.com>
 <20191021202414.17484-2-jae.hyun.yoo@linux.intel.com>
 <0a629f7b-b829-c332-27d8-dc825205ff72@axentia.se>
 <7abf933b-cb18-10af-9c1b-163ec65ffae5@linux.intel.com>
 <b98827fa-462a-060b-efc7-27fe5d7742ff@axentia.se>
 <7806ece8-1d7c-7aa8-20af-6f5f964bec64@linux.intel.com>
 <6eba3e62-9215-0c39-258b-7abfb394bc48@axentia.se>
 <CAFd5g46Zv6E=PcU6=aX65rg2TRY5y3nWB8CYjGJioU_zpfcOUw@mail.gmail.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <5f883aea-a849-eade-5a91-3ac35d2d6b73@linux.intel.com>
Date: Thu, 24 Oct 2019 10:27:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAFd5g46Zv6E=PcU6=aX65rg2TRY5y3nWB8CYjGJioU_zpfcOUw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_102741_106276_0F421038 
X-CRM114-Status: GOOD (  33.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Wolfram Sang <wsa@the-dreams.de>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Tao Ren <taoren@fb.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Cedric Le Goater <clg@kaod.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/23/2019 5:09 PM, Brendan Higgins wrote:
> On Wed, Oct 23, 2019 at 2:17 PM Peter Rosin <peda@axentia.se> wrote:
>>
>> On 2019-10-22 19:44, Jae Hyun Yoo wrote:
>>> On 10/22/2019 1:45 AM, Peter Rosin wrote:
>>>> On 2019-10-21 23:57, Jae Hyun Yoo wrote:
>>>>> Hi Peter,
>>>>>
>>>>> On 10/21/2019 2:05 PM, Peter Rosin wrote:
>>>>>> On 2019-10-21 22:24, Jae Hyun Yoo wrote:
>>>>>>> Append a binding to support hardware timeout feature.
>>>>>>>
>>>>>>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>>>>> ---
>>>>>>>     Documentation/devicetree/bindings/i2c/i2c-aspeed.txt | 2 ++
>>>>>>>     1 file changed, 2 insertions(+)
>>>>>>>
>>>>>>> diff --git a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>>>>>>> index b47f6ccb196a..133bfedf4cdd 100644
>>>>>>> --- a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>>>>>>> +++ b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>>>>>>> @@ -17,6 +17,8 @@ Optional Properties:
>>>>>>>     - bus-frequency        : frequency of the bus clock in Hz defaults to 100 kHz when not
>>>>>>>                      specified
>>>>>>>     - multi-master : states that there is another master active on this bus.
>>>>>>> +- aspeed,hw-timeout-ms   : Hardware timeout in milliseconds. If it's not
>>>>>>> +                   specified, the H/W timeout feature will be disabled.
>>>>>>>
>>>>>>>     Example:
>>>>>>>
>>>>>>>
>>>>>>
>>>>>> Some SMBus clients support a smbus-timeout-disable binding for disabling
>>>>>> timeouts like this, for cases where the I2C adapter in question on occasion
>>>>>> is unable to keep the pace. Adding that property thus avoids undesired
>>>>>> timeouts when the client is SMBus conformant without it. Your new binding
>>>>>> is the reverse situation, where you want to add a timeout where one is
>>>>>> otherwise missing.
>>>>>>
>>>>>> Anyway, since I2C does not have a specified lowest possible frequency, this
>>>>>> feels like something that is more in the SMBus arena. Should the property
>>>>>> perhaps be a generic property named smbus-timeout-ms, or something like
>>>>>> that?
>>>>>
>>>>> Well, I tried upstreaming of the generic timeout property a year ago but
>>>>> I agreed that the generic bus timeout property can be set by an ioctl
>>>>> command so it didn't need to be added into device tree at that time. Not
>>>>> sure if any need has come recently but I haven't heard that. This driver
>>>>> still uses the generic timeout property which is provided by i2c core
>>>>> for handling command timeouts, and it's out of scope from this patch
>>>>> series.
>>>>>
>>>>>> If the above is not wanted or appropriate, then I would personally prefer
>>>>>> aspeed,bus-timeout-ms over aspeed,hw-timeout-ms. To me, hw-timeout-ms sounds
>>>>>> like a (more serious) timeout between the CPU and the I2C peripheral unit
>>>>>> or something like that. But I don't care deeply...
>>>>>
>>>>> Changes I submitted in this patch set is for a different purpose which
>>>>> is very Aspeed H/W specific, and actually it's a more serious timeout
>>>>> setting indeed. If this H/W is used in multi-master environment, it
>>>>> could meet a H/W hang that freezes itself in slave mode and it can't
>>>>> escape from the state. To resolve the specific case, this H/W provides
>>>>> self-recovery feature which monitors abnormal state of SDA, SCL and its
>>>>> H/W state machine using the timeout setting to determine the escape
>>>>> condition.
>>>>
>>>> Are you saying that the aspeed HW is buggy and that this abnormal state
>>>> is self inflicted by the aspeed HW even if other masters on the bus
>>>> behave sanely? Because I didn't quite read it that way at all...
>>>
>>> I don't think it's an Aspeed HW bug. Actually, this HW can be exposed to
>>> very severe environments if it is used as a Baseboard Management
>>> Controller which needs two or more multi-masters on a bus depends on
>>> HW design. Also, it should expect unknown or buggy device attachment
>>> on a bus through add-on card slots. Aspeed HW provides HW timeout
>>> feature to support exceptional cases handling which comes from the
>>> severe use cases.
>>>
>>>> To me, it sounded *exactly* like the state I2C clients end up in when an
>>>> I2C master "dies" and stops communicating in the middle of a transaction.
>>>> I.e. the thing that the SMBus timeout is designed to prevent (and the
>>>> state the I2C nine-clk-recovery sequence addresses). The only twist (that
>>>> I saw) was that the aspeed HW is also a master and that the aspeed master
>>>> driver is completely locked out from the bus while some obnoxious master
>>>> fails to complete its transaction (or whatever it was up to).
>>>
>>> If this HW runs on a single-master bus, any master dying issue will be
>>> cured by recovery logic which this driver already has and the logic uses
>>> the bus timeout setting you are saying.
>>>
>>> This patch set is mainly focusing on a 'slave mode hang' issue on a
>>> 'multi-master' bus which can't be covered by the recovery logic.
>>>
>>>> If this can only be triggered when the HW is acting as a slave, and by
>>>> aborted or otherwise funky master activity on the bus, then I wouldn't
>>>> call it an HW issue. Then it would be a bus issue. I.e. something needing
>>>> a bus-timeout instead of a hw-timeout.
>>>
>>> Here is an example. In a multi-node BMC system, a peer master can be
>>> shutdown in the middle of transaction, then this Aspeed HW keeps waiting
>>> for a next event from the peer master but it can't happen because the
>>> peer master was already shutdown. If we enable the 'slave inactive
>>> timeout feature' using the HW timeout setting, the this HW can escape
>>> from the waiting state. If we don't, this HW hangs forever in the
>>> waiting state and it's the reason why I implemented this patch set.
>>>
>>> The hw-timeout setting needs fine tuning depends on HW environment so
>>> it should be different from the bus-timeout.
>>
>> Yeah, ok, so you're basically confirming everything I said. I do
>> sense some confusion though, as you come across as a bit
>> defensive and seem to think that I am against the whole notion of
>> the patches. And that's not the case at all! My only issue is
>> with the naming. And I happen to think hw-timeout-ms is a really
>> bad name. It's way too broad and can mean just about anything.
>> When I read that, I think of some workaround for broken hardware,
>> not normal things like the other masters on the bus doing
>> confusing things. Funky bus activity from remote masters is
>> simply not an HW issue in my book, at least not an HW issue on
>> the local side of the bus. It's just something you *must expect*.
> 
> Sorry for not jumping in earlier, but I agree with Peter.
> 
> I like the name bus-timeout-ms better. It was not immediately clear
> from reading your commit descriptions what this was all about.

Okay, I can change the name if the 'aspeed,hw-timeout-ms' is
inappropriate but I still doubt using of 'bus-timeout-ms'.

The 'bus-timeout-ms' is being used for some client drivers in hwmon
subsystem but it's not being used for any adapter driver currently.
Since adapter drivers also use timeout value which I2C core provides,
it could make confusion with it if I use 'bus-timeout-ms' for an adapter
node in DT. Though, I and Wolfram agreed last year that the adapter
timeout property can't be added into DT because it's purely S/W property
so using of 'bus-timeout-ms' in DT for H/W property setting of an
adapter device could be acceptable if we make consensus here.

Please share your thoughts or suggest a better name for it.

Thanks,

Jae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
