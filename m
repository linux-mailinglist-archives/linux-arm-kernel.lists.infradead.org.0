Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 885853938A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 19:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Msa/gKkW8YkGmpQgCz4Hn2VwC46Cu4hZJVYpizvyxos=; b=Gz6C7HmFRoiems
	5NtM0rxLbgdFFH4H99lvzlBuPCFSgW6tgTwEmUby2pIWS2FiMyBHdrdpWqXh7Necz4uEXtW6P9rgW
	odS8AOWcdBmLNqFGXpLp+GQub05kG5PT326is+cRCC/U9rRMGOTkOsWXQ4uknjF7eZN4hF1nsfk+K
	FPavjSp//mxR3kh4n8rfDP2LWJcBvrjfSQ1hUkINCqDRgcz39HaPwFy4qTYMrt2yRxPys1JhpFvj+
	AuLBgMn3E09LKerPSg3LlwWnzG+RhcJm/L5bkt9tkIV042s43ur6Lz4Owevfy1xJ73nKVwXcyl3PM
	4mXKpS0bdgclwFycaG2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZItz-0006l8-NG; Fri, 07 Jun 2019 17:43:43 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZItq-0006kh-9S
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 17:43:35 +0000
Received: by mail-it1-x142.google.com with SMTP id n189so4036097itd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 10:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=L8Igv0c1kKwXXNn7veRB/74fSSY4c41NnqxruUQUijA=;
 b=ULzubESKs6yWyTO1zfeKq3G6Nq9xzHsM2OnKkPgQEsyEZTlGMdRlATFbdFeu4Shw2I
 UoTa4OmuP82t/QmuA215jTqrWDirqfr+3CZEruaA9pubDukMpsh0UktiDXbxqK46Uv4Z
 ucHcId6UaJgMLbGn6b/lZAH1naIeByMpFAXueqW7QJma4l3auNckJrHlw02gg3kk0uOH
 ckPMQYdQ8DxpQ/4Vk5gg+DaDFaqMREPnKb6re7paarLwDg2xpOvKJnflqnzGEn5LucM+
 lL34QDBsfkQNwdMPzg93yeB6a701oUvFZNXsWMD9nutwq4CBHH8Bf5boK98J8MbtwBDf
 25ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=L8Igv0c1kKwXXNn7veRB/74fSSY4c41NnqxruUQUijA=;
 b=fB1TNOiGD5d/0TE+w07wkecu41Cs2zEPD7mpLIwSHzJOGUq7/eNMo0O4Yu5yIgNtUE
 yxylAA32ArzrVqGKeoDO6zCK1jtmaOKELvZZMEcWXJZIf/l4R7+9bHkMY6NjskIZoID5
 R5nfeXOiSZvTlSzaptyA/R928xlLB6HAmWNPobBf62ikUjDqffIRMmS6wYHjsREf4iPo
 LJLCqxQ8OoaazoGGN7qI/URrhB21U/cgZLA6D++drYUit9AdpYYZ2eC6htWjzP56tzL+
 0m2tBWpbQ/y9ryXsIMsFvQfxZ87zwNng53AWEFZ5divdY+YsXHdOjuQZbA8uP+cHl6lv
 7CGw==
X-Gm-Message-State: APjAAAU/DP6aPxv3BqYu5MQ0HnCy3C0FsP75BieXXu3MhHZAsXBet8a7
 lXJz9TKlNr3AWbV77A/7H+HVgWOOWWQ=
X-Google-Smtp-Source: APXvYqz5GAioF1jaAZlXaE9bF6pA/rBJ+Whdl1/UGL1j0bmacQDXQiLgL6o+fLiBjQwUbVx4mCXHuQ==
X-Received: by 2002:a02:bb83:: with SMTP id g3mr36416773jan.139.1559929412746; 
 Fri, 07 Jun 2019 10:43:32 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id z17sm879253iol.73.2019.06.07.10.43.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 10:43:32 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Alex Elder <elder@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
 <CAK8P3a2rkQd3t-yNdNGePW8E7rhObjAvUpW6Ga9AM6rJJ27BOw@mail.gmail.com>
 <5ebccdbe-479d-2b7d-693c-0c412060d687@linaro.org>
Message-ID: <cd408ff3-2884-3fc7-6154-4675bc865e0d@linaro.org>
Date: Fri, 7 Jun 2019 12:43:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5ebccdbe-479d-2b7d-693c-0c412060d687@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_104334_337894_5E585613 
X-CRM114-Status: GOOD (  36.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Eric Caruso <ejcaruso@google.com>, Dan Williams <dcbw@redhat.com>,
 Networking <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, abhishek.esse@gmail.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, David Miller <davem@davemloft.net>,
 cpratapa@codeaurora.org, Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/31/19 5:08 PM, Alex Elder wrote:
> On 5/31/19 4:12 PM, Arnd Bergmann wrote:
>> On Fri, May 31, 2019 at 10:47 PM Alex Elder <elder@linaro.org> wrote:
>>> On 5/31/19 2:19 PM, Arnd Bergmann wrote:
>>>> On Fri, May 31, 2019 at 6:36 PM Alex Elder <elder@linaro.org> wrote:
>>>>> On 5/31/19 9:58 AM, Dan Williams wrote:
>>>>>> On Thu, 2019-05-30 at 22:53 -0500, Alex Elder wrote:
>>>>
>>>> Does this mean that IPA can only be used to back rmnet, and rmnet
>>>> can only be used on top of IPA, or can or both of them be combined
>>>> with another driver to talk to instead?
>>>
>>> No it does not mean that.
>>>
>>> As I understand it, one reason for the rmnet layer was to abstract
>>> the back end, which would allow using a modem, or using something
>>> else (a LAN?), without exposing certain details of the hardware.
>>> (Perhaps to support multiplexing, etc. without duplicating that
>>> logic in two "back-end" drivers?)
>>>
>>> To be perfectly honest, at first I thought having IPA use rmnet
>>> was a cargo cult thing like Dan suggested, because I didn't see
>>> the benefit.  I now see why one would use that pass-through layer
>>> to handle the QMAP features.
>>>
>>> But back to your question.  The other thing is that I see no
>>> reason the IPA couldn't present a "normal" (non QMAP) interface
>>> for a modem.  It's something I'd really like to be able to do,
>>> but I can't do it without having the modem firmware change its
>>> configuration for these endpoints.  My access to the people who
>>> implement the modem firmware has been very limited (something
>>> I hope to improve), and unless and until I can get corresponding
>>> changes on the modem side to implement connections that don't
>>> use QMAP, I can't implement such a thing.
>>
>> Why would that require firmware changes? What I was thinking
>> here is to turn the bits of the rmnet driver that actually do anything
>> interesting on the headers into a library module (or a header file
>> with inline functions) that can be called directly by the ipa driver,
>> keeping the protocol unchanged.

OK, I follow up below, but now that I re-read this I think I
misunderstood what you were saying.  I now think you were just
talking about having the QMAP parsing functionality provided
by rmnet be put into a library that the IPA driver (and others)
could use, rather than having them be two separate but stacked
drivers.

That seems like a very reasonable idea, and I don't think rmnet
does anything particularly special that would preclude it.
But:
- I have not reviewed the rmnet driver in any detail
- It's possible this wouldn't work with other back ends
- This would also need to be considered as part of any
  effort to create a generic WWAN framework (though it
  wouldn't pose any problem as far as I can tell)

> You know, it's possible you're right about not needing
> firmware changes.  But it has always been my impression
> they would be needed.  Here's why.

Now I'm just following up on the above statement.

First, what I was saying initially is that I would like to
be able to configure a simple network device that does not
implement any of the QMAP (rmnet) protocol.  That would
allow IPA to be used standalone, without any need for what
the rmnet driver provides.  This would suffice for the
current use, because the driver currently supports *only*
a single fixed-configuration data connection to the modem,
and has no need for the logical channels (or aggregation)
that QMAP provides.

I have not done that, because it would require both the AP
side and modem side endpoints to change their configuration
to *not* use QMAP.  I can configure the AP endpoint, but I
have no control over how the modem configures its endpoint.

Something about your question made me think I might have
been misunderstanding that requirement though.  I.e., I
thought it might be possible for the local (AP side)
endpoint to be configured to not use QMAP, regardless of
what the modem side does.

I didn't inquire, but I reviewed some documents, and I now
conclude that my previous understanding was correct.  I
can't configure an AP endpoint to not use QMAP without also
having the modem configure its corresponding endpoint to
not use QMAP.  The AP and modem need to agree on how their
respective "connected" endpoints are configured.

					-Alex

> It looks like this:
> 
>            GSI Channel   GSI Channel
>                |             |         
>   ----------   v   -------   v   -------------
>   | AP (ep)|=======| IPA |=======|(ep) Modem |
>   ----------       -------       -------------
> 
> The AP and Modem each have IPA endpoints (ep), which use GSI channels,
> to communicate with the IPA. Each endpoint has configuration options
> (such as checksum offload).  I *thought* that the configurations of
> the two endpoints need to be compatible (e.g., they need to agree on
> whether they're aggregating).  But with your questioning I now think
> you may be right, that only the local endpoint's configuration matters.
> 
> I will inquire further on this.  I *know* that the AP and modem
> exchange some information about IPA configuration, but looking more
> closely that looks like it's all about the configuration of shared
> IPA resources, not endpoints.
> 
> That said, the broader design (including the user space code)
> surely assumes rmnet, and I don't have any sense of what impact
> changing that would make.  I am sure that changing it would not
> be well received.
> 
> 					-Alex
> 
>>>> Always passing data from one netdev to another both ways
>>>> sounds like it introduces both direct CPU overhead, and
>>>> problems with flow control when data gets buffered inbetween.
>>>
>>> My impression is the rmnet driver is a pretty thin layer,
>>> so the CPU overhead is probably not that great (though
>>> deaggregating a message is expensive).  I agree with you
>>> on the flow control.
>>
>> The CPU overhead I mean is not from executing code in the
>> rmnet driver, but from passing packets through the network
>> stack between the two drivers, i.e. adding each frame to
>> a queue and taking it back out. I'm not sure how this ends
>> up working in reality but from a first look it seems like
>> we might bounce in an out of the softirq handler inbetween.
>>
>>           Arnd
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
