Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89DF56ADF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bKWhaZl6r6ws1A0wIv5raiJ+BC69Wa53x/j5yusrdo=; b=pBLzhztIbyQBhI
	LM5FlyRvwELCrp+q39zwkVrB6kt0DgfeL0hi+VpcTX0Sa5e1xcXiXDDu3/h16/JjzZKRTvBt6Y9RY
	1JCurdRNsa2Af7JE6lSW6wQet+T0j65X1TAZd50LRycm4DT4Fm+Yv5L1kyF0G093C6vqWw4MIZ0oE
	wvCsy3nQsXvO7culzMIn0EQwmBNbLunlbUKPIbbOw6Vsu4y1UgyqbmZ10atEsPdZxG2AzNgt6W7h0
	s87KYA+PHiInzZCoSCrDXAEYGlzn1afH6hZLmrXm165V80g13qNMyyneIkppYaX3C18Dgu6qUYGkF
	NPRnLk0IiUmtJiZAcI5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg89X-0006Dx-6f; Wed, 26 Jun 2019 13:39:59 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg89C-0006D3-R8
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:39:40 +0000
Received: by mail-io1-xd42.google.com with SMTP id n5so1700737ioc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 06:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/cAvS1LUQ3PFFzfZHN6ExYDpya5Lbz77W0Hh810QZAQ=;
 b=QlQIqfZLsUncOjgR6J7XBXNsxBPkMKttINCGUr3JOiLZYBrrefkQppK6vPhxJJo39Q
 IEDpxy4Qi92mWuz9kjly7KDrYtJINta6PjyiKuTkkkEe4/rufeXZ+LZI7hjo9aZUHIgG
 qMcQglFBSZbtAjBVrO66pg/0IbKW5bsHB0cO3xmA6cxQ4i8uhL6g2k9jeC7DYAAZZPJH
 CNK9YDPBqWIGIzD6Wk04HVmp7Z/edVNMRKt1NUD3DWXTIV2mvCR/fncT+MrlHnOzbzCB
 u4Dk4EBVknXwKSR9YQFuHv1O023cnwoMbKz0U+OPXO2Drv5U28+JInmdMTwjsLyTWMYu
 R+ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/cAvS1LUQ3PFFzfZHN6ExYDpya5Lbz77W0Hh810QZAQ=;
 b=dPSVSOSugphuvI02+i1Q7GI18oFBfMF1+cFGAGdDSPWuZOX9KI5VJT1QCg+jodgHL7
 bCx2aRJGwkauQfir8dkaKU0JKw7pF6hII+A+JDs1EL/+2AbS6/S944ox9SAuSbzwoQ2K
 zN6HU7eMZZHmHnoggxd3Xy+t3w/doHjHHkmGgiEzbVyMqpTRi4YwdnnOEBFPYI8jlSlh
 9JseXyK0TefaV8FIUMYvh1lTPt7H1ce1f7pa09g3IZDH75L3EHcW1I5u0wTm7xDWz6yb
 0aOcE1842ZZEslvxAoGX2q9r0HXdA3WuzZARVzcnY7kM4KfSBiI5K1u83ccmUkqlm9QB
 RMrQ==
X-Gm-Message-State: APjAAAXc5Y7eZ2Q0TpGZcW0FikMQ6pG7gv6bQwECvKhUoVVwlWesXXwb
 CDTDdveX4skhgg3mLj5hbjrgIw==
X-Google-Smtp-Source: APXvYqybuaxPW1RbfXyc363mFXjcU/txJRVh87bfpFvZeGdyNrgVd0DcyKpVr1MWTzRGhMlj+Re4iw==
X-Received: by 2002:a02:6516:: with SMTP id u22mr5072865jab.49.1561556378050; 
 Wed, 26 Jun 2019 06:39:38 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id h19sm22843396iol.65.2019.06.26.06.39.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 06:39:37 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Johannes Berg <johannes@sipsolutions.net>, Arnd Bergmann <arnd@arndb.de>
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <fc0d08912bc10ad089eb74034726308375279130.camel@redhat.com>
 <36bca57c999f611353fd9741c55bb2a7@codeaurora.org>
 <153fafb91267147cf22e2bf102dd822933ec823a.camel@redhat.com>
 <CAK8P3a2Y+tcL1-V57dtypWHndNT3eDJdcKj29c_v+k8o1HHQig@mail.gmail.com>
 <f4249aa5f5acdd90275eda35aa16f3cfb29d29be.camel@redhat.com>
 <CAK8P3a2nzZKtshYfomOOSYkqx5HdU15Wr9b+3va0B1euNhFOAg@mail.gmail.com>
 <dbb32f185d2c3a654083ee0a7188379e1f88d899.camel@sipsolutions.net>
 <d533b708-c97a-710d-1138-3ae79107f209@linaro.org>
 <abdfc6b3a9981bcdef40f85f5442a425ce109010.camel@sipsolutions.net>
 <db34aa39-6cf1-4844-1bfe-528e391c3729@linaro.org>
 <CAK8P3a1ixL9ZjYz=pWTxvMfeD89S6QxSeHt9ZCL9dkCNV5pMHQ@mail.gmail.com>
 <efbcb3b84ff0a7d7eab875c37f3a5fa77e21d324.camel@sipsolutions.net>
From: Alex Elder <elder@linaro.org>
Message-ID: <edea19ef-f225-bdcd-f394-77e326d1d3ad@linaro.org>
Date: Wed, 26 Jun 2019 08:39:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <efbcb3b84ff0a7d7eab875c37f3a5fa77e21d324.camel@sipsolutions.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_063938_883790_43BD07B6 
X-CRM114-Status: GOOD (  34.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, David Miller <davem@davemloft.net>,
 Dan Williams <dcbw@redhat.com>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/25/19 9:19 AM, Johannes Berg wrote:
> On Mon, 2019-06-24 at 18:40 +0200, Arnd Bergmann wrote:
>> On Mon, Jun 24, 2019 at 6:21 PM Alex Elder <elder@linaro.org> wrote:
>>> On 6/18/19 2:03 PM, Johannes Berg wrote:
>>>
>>>> Really there are two possible ways (and they intersect to some extent).
>>>>
>>>> One is the whole multi-function device, where a single WWAN device is
>>>> composed of channels offered by actually different drivers, e.g. for a
>>>> typical USB device you might have something like cdc_ether and the
>>>> usb_wwan TTY driver. In this way, we need to "compose" the WWAN device
>>>> similarly, e.g. by using the underlying USB device "struct device"
>>>> pointer to tie it together.
>>>
>>> I *think* this model makes the most sense.  But at this point
>>> it would take very little to convince me otherwise...  (And then
>>> I saw Arnd's message advocating the other one, unfortunately...)
>>>
>>>> The other is something like IPA or the Intel modem driver, where the
>>>> device is actually a single (e.g. PCIe) device and just has a single
>>>> driver, but that single driver offers different channels.
>>>
>>> What I don't like about this is that it's more monolithic.  It
>>> seems better to have the low-level IPA or Intel modem driver (or
>>> any other driver that can support communication between the AP
>>> and WWAN device) present communication paths that other function-
>>> specific drivers can attach to and use.
>>
>> I did not understand Johannes description as two competing models
>> for the same code, but rather two kinds of existing hardware that
>> a new driver system would have to deal with.
> 
> Right.
> 
>> I was trying to simplify it to just having the second model, by adding
>> a hack to support the first, but my view was rather unpopular so
>> far, so if everyone agrees on one way to do it, don't worry about me ;-)
> 
> :-)
> 
> However, to also reply to Alex: I don't know exactly how IPA works, but
> for the Intel modem at least you can't fundamentally have two drivers
> for different parts of the functionality, since it's just a single piece
> of hardware and you need to allocate hardware resources from a common
> pool etc. So you cannot split the driver into "Intel modem control
> channel driver" and "Intel modem data channel driver". In fact, it's
> just a single "struct device" on the PCIe bus that you can bind to, and
> only one driver can bind at a time.

Interesting.  So a single modem driver needs to implement
*all* of the features/functions?  Like GPS or data log or
whatever, all needs to share the same struct device?
Or does what you're describing apply to a subset of the
modem's functionality?  Or something else?

> So, IOW, I'm not sure I see how you'd split that up. I guess you could
> if you actually do something like the "rmnet" model, and I suppose
> you're free to do that for IPA if you like, but I tend to think that's
> actually a burden, not a win since you just get more complex code that
> needs to interact with more pieces. A single driver for a single
> hardware that knows about the few types of channels seems simpler to me.
> 
>> - to answer Johannes question, my understanding is that the interface
>>   between kernel and firmware/hardware for IPA has a single 'struct
>>   device' that is used for both the data and the control channels,
>>   rather than having a data channel and an independent control device,
>>   so this falls into the same category as the Intel one (please correct
>>   me on that)

I don't think that's quite right, but it might be partially
right.  There is a single device representing IPA, but the
picture is a little more complicated.

The IPA hardware is actually something that sits *between* the
AP and the modem.  It implements one form of communication
pathway (IP data), but there are others (including QMI, which
presents a network-like interface but it's actually implemented
via clever use of shared memory and interrupts).

What we're talking about here is WWAN/modem management more
generally though.  It *sounds* like the Intel modem is
more like a single device, which requires a single driver,
that seems to implement a bunch of distinct functions.

On this I'm not very knowledgeable but for Qualcomm there is
user space code that is in charge of overall management of
the modem.  It implements what I think you're calling control
functions, negotiating with the modem to allow new data channels
to be created.  Normally the IPA driver would provide information
to user space about available resources, but would only make a
communication pathway available when requested.

I'm going to leave it at that for now.

> That sounds about the same then, right.
> 
> Are the control channels to IPA are actually also tunnelled over the
> rmnet protocol? And even if they are, perhaps they have a different
> hardware queue or so? That'd be the case for Intel - different hardware
> queue, same (or at least similar) protocol spoken for the DMA hardware
> itself, but different contents of the messages obviously.

I want to be careful talking about "control" but for IPA it comes
from user space.  For the purpose of getting initial code upstream,
all of that control functionality (which was IOCTL based) has been
removed, and a fixed configuration is assumed.

>> - The user space being proprietary is exactly what we need to avoid
>>   with the wwan subsystem. We need to be able to use the same
>>   method for setting up Intel, Qualcomm, Samsung, Unisoc or
>>   Hisilicon modems or anything else that hooks into the subsystem,
>>   and support that in network manager as well as the Android
>>   equivalent.
>>   If Qualcomm wants to provide their own proprietary user space
>>   solution, we can't stop them, but then that should also work on
>>   all the others unless they intentionally break it. ;-)

I won't comment on this, in part because I really don't know
right now what is proprietary or why.  I think that having
user space (proprietary or not) be able to provide management
capability is a good thing.  If a unified kernel interface
provides a common/generic way to manage the modem, I don't
know why Qualcomm wouldn't adapt their code to use it.
But I can't really speak for Qualcomm.

. . .

					-Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
