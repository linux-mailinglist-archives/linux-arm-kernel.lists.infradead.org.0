Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343F54A2A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d42dEqiduzM21D8XYNmI8zRDip2e98E+O6OjEdHhDVY=; b=ekezcdHNgeJu/I
	GoI1vud/Wd4ZNlA2V/1GJT3rDB1EvC8Hl8vvxgTS6AzIm4vB8nEBOpvz5MjwrA2qvu9odODtRJvXz
	GTzbZ+Ns928axfvCovT/q4balcYZl0QaQOvlcGcnFuhta1SlIst5Cc+3LbXXN7fq/e5+B1p/PpUv3
	t45izSNp9WA/+WISi11ADCOBc55yZfMaTAh+ivs4aLXvRQq48WpQ8qyiuF4p/8hT3gS7OuxeAfbhu
	dwXZfcSAiHw20Y9rFX6rZbsU6CBy4fJ0DwU7Jxooq/a3HkkSNsEr6HXclFfFLq4aU9NTdewKPFsj5
	/jKGWlioZG38OUDkp6kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEQu-0005nn-NO; Tue, 18 Jun 2019 13:45:57 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEQU-0005n9-Hr
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:45:32 +0000
Received: by mail-io1-xd42.google.com with SMTP id u13so30006923iop.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 06:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hHqioTBNjt9iAW7qsAj1MGA0jRkZED+ks43d8hU4AUM=;
 b=Sk5StRbjsbnBAuhfxRS127eSuO0NA5YWh3g4z9tOiefCQ1z+Ubf3xfmsxAhhCo38FA
 z5W9dd2EvNPvugQe3QUWUsf4YtQc+P4rfpxnJ6kBJSGHTENt98o61nLZv6EcUCSTYEEz
 lFRqme0FKc3mFpnkwE1nGxzrwuT/wiofrhIebgKe4LTTRF8G1cLg+Ewtasmbtz167egZ
 IprHZRwVaaHkY9vhlchdmBIBxU1Fb+PUPCyuK4RYMl3q/oHghyp9QcOW3Ws+PlN1pq7l
 l7o3NhNS7PbzSgB4Ec2mMoFaUStJ51saMFflVrGLvoCXLoTHzIHIAGiNV0sJF/1/agna
 Hw+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hHqioTBNjt9iAW7qsAj1MGA0jRkZED+ks43d8hU4AUM=;
 b=Ceunz0RbUI+EWumgMkJvQlb0dUZAHocfghZmemPQfg5Oh9xODnM90NR87/SrKmijS3
 a/52dLscJ4vy5Wt58Rg4vge1OeSGtPwT+vMgYgUPLQyGye7hXZNK3HSKFE9WUjffalEe
 5iw2mcXaGJgfcC9xZow9ZUe+Oba43pxn+1tXFQxg2o6Thd84jczoMPg/jtX6pGaXzDSs
 xWUnqD++GLb6fjYh5G51FVj57+HklDF/jbM8RbVPAsBl5N9uQJDDWYu0xlwuLswN8r/T
 kMoY12nSVjhsvs9gK8V73P8hzDGM8D4MefnTGn8WAh0z8y14B4+oasrAtUt7ONwCM1bR
 SiDQ==
X-Gm-Message-State: APjAAAUsmq28xLKVHN53jQz2umFjuXSOMwsVG0rPGcxUaCtTHUiNAfiN
 Ao3DuOJGj1SI9Db8mu881gFkng==
X-Google-Smtp-Source: APXvYqzDaPCQOJP7+b9QX44U1hmNssHvCj4ype2sBXXK8UTxAOGdESYkJaFCoFZ9cNzAPD4R0LmyCw==
X-Received: by 2002:a02:9143:: with SMTP id b3mr2252458jag.12.1560865529214;
 Tue, 18 Jun 2019 06:45:29 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id x13sm11920449ioj.18.2019.06.18.06.45.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 06:45:28 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Johannes Berg <johannes@sipsolutions.net>, Arnd Bergmann <arnd@arndb.de>, 
 Dan Williams <dcbw@redhat.com>
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
From: Alex Elder <elder@linaro.org>
Message-ID: <d533b708-c97a-710d-1138-3ae79107f209@linaro.org>
Date: Tue, 18 Jun 2019 08:45:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <dbb32f185d2c3a654083ee0a7188379e1f88d899.camel@sipsolutions.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_064530_594003_B511ADAA 
X-CRM114-Status: GOOD (  34.70  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, linux-arm-msm@vger.kernel.org,
 abhishek.esse@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, David Miller <davem@davemloft.net>,
 cpratapa@codeaurora.org, Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/17/19 6:42 AM, Johannes Berg wrote:
> On Wed, 2019-06-12 at 17:06 +0200, Arnd Bergmann wrote:
>> On Wed, Jun 12, 2019 at 4:28 PM Dan Williams <dcbw@redhat.com> wrote:
>>> On Wed, 2019-06-12 at 10:31 +0200, Arnd Bergmann wrote:
>>>> On Tue, Jun 11, 2019 at 7:23 PM Dan Williams <dcbw@redhat.com> wrote:
>>>
>>> I was trying to make the point that rmnet doesn't need to care about
>>> how the QMAP packets get to the device itself; it can be pretty generic
>>> so that it can be used by IPA/qmi_wwan/rmnet_smd/etc.
>>
>> rmnet at the moment is completely generic in that regard already,
>> however it is implemented as a tunnel driver talking to another
>> device rather than an abstraction layer below that driver.
> 
> It doesn't really actually *do* much other than muck with the headers a
> small amount, but even that isn't really much.
> 
> You can probably implement that far more efficiently on some devices
> where you have a semi-decent DMA engine that at least supports S/G.

If it had a well-defined way of creating new channels to be
multiplexed over the connection to the modem, the IPA driver
(rather than the rmnet driver) could present network interfaces
for each and perform the multiplexing.  As I think Arnd
suggested, this could at least partially be done with library
code (to be shared with other "back-end" interfaces) rather
than using a layered driver.  This applies to aggregation,
channel flow control, and checksum offload as well.

But I'm only familiar with IPA; I don't know whether the above
statements make any sense for other "back-end" drivers.

>>>> I understand that the rmnet model was intended to provide a cleaner
>>>> abstraction, but it's not how we normally structure subsystems in
>>>> Linux, and moving to a model more like how wireless_dev works
>>>> would improve both readability and performance, as you describe
>>>> it, it would be more like (ignoring for now the need for multiple
>>>> connections):
>>>>
>>>>    ipa_dev
>>>>         rmnet_dev
>>>>                wwan_dev
>>>>                       net_device
>>>
>>> Perhaps I'm assuming too much from this diagram but this shows a 1:1
>>> between wwan_dev and "lower" devices.
> 
> I guess the fuller picture would be something like
> 
> ipa_dev
> 	rmnet_dev
> 		wwan_dev
> 			net_device*
> 
> (i.e. with multiple net_devices)
> 
>>> What Johannes is proposing (IIRC) is something a bit looser where a
>>> wwan_dev does not necessarily provide netdev itself, but is instead the
>>> central point that various channels (control, data, gps, sim card, etc)
>>> register with. That way the wwan_dev can provide an overall view of the
>>> WWAN device to userspace, and userspace can talk to the wwan_dev to ask
>>> the lower drivers (ipa, rmnet, etc) to create new channels (netdev,
>>> tty, otherwise) when the control channel has told the modem firmware to
>>> expect one.
> 
> Yeah, that's more what I had in mind after all our discussions (will
> continue this below).

This is great.  The start of a more concrete discussion of the
pieces that are missing...

>> Right, as I noted above, I simplified it a bit. We probably want to
>> have multiple net_device instances for an ipa_dev, so there has
>> to be a 1:n relationship instead of 1:1 at one of the intermediate
>> levels, but it's not obvious which level that should be.
>>
>> In theory we could even have a single net_device instance correspond
>> to the ipa_dev, but then have multiple IP addresses bound to it,
>> so each IP address corresponds to a channel/queue/napi_struct,
>> but the user visible object remains a single device.
> 
> I don't think this latter (multiple IP addresses) works well - you want
> a hardware specific header ("ETH_P_MAP") to carry the channel ID,
> without looking up the IP address and all that.

I agree with this.  It's not just multiple IP addresses for
an interface, it really is multiplexed--with channel ids.
It's another addressing parameter orthogonal to the IP space.

> But anyway, as I alluded to above, I had something like this in mind:
> 
> driver_dev
>   struct device *dev (USB, PCI, ...)
>   net_device NA
>   net_device NB
>   tty TA
>  ...
> 
> (I'm cutting out the rmnet layer here for now)
> 
> while having a separate that just links all the pieces together:
> 
> wwan_device W
>   ---> dev
>   ---> NA
>   ---> NB
>   ---> TA
> 
> So the driver is still responsible for creating the netdevs (or can of
> course delegate that to an "rmnet" library), but then all it also does
> is register the netdevs with the WWAN core like
> 
> 	wwan_add_netdev(dev, NA)
> 
> and the WWAN core would allocate the wwan_device W for this.

That would be nice.  I believe you're saying that (in my case)
the IPA driver creates and owns the netdevices.

But I think the IPA driver would register with the WWAN core as
a "provider," and then the WWAN core would subsequently request
that it instantiate netdevices to represent channels on demand
(rather than registering them).

> That way, the drivers can concentrate on providing all the necessary
> bits, and - crucially - even *different* drivers can end up linking to
> the same wwan_device. For example, if you have a modem that has a multi-
> function USB device, then an ethernet driver might create the netdev and
> a tty driver might create the control channel, but if they both agree on
> using the right "struct device" instance, you can still get the correct
> wwan_device out of it all.
> 
> And, in fact, some should then be
> 
> 	wwan_maybe_add_netdev(dev, N)
> 
> because the ethernet driver may not know if it attached to a modem or
> not, but if the control channel also attaches it's a modem for sure,
> with that ethernet channel attached to it.
> 
> Additionally, I'm thinking API such as
> 
> 	wwan_add(dev, &ops, opsdata)
> 
> that doesn't automatically attach any channels, but provides "ops" to
> the core to create appropriate channels. I think this latter would be
> something for IPA/rmnet to use, perhaps for rmnet to offer the right ops
> structure.

Yes, that's more like what I meant above.  I see you're thinking
as you write...

					-Alex
> 
> johannes
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
