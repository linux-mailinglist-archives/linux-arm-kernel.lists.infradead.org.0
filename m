Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DFB5186D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iw3mphyB6qTr5pqx4Yhm2mGYxElxpJ1h6z9Ph0SPzCI=; b=tRmaoHBllcUVFZ
	BrNt3BMirqUkDuzgA3JOXN3hd6ssusa7ShSikwusN9yXLxt5AYQc5MgJ2XuphlPmF0sjnfO/paeSN
	LUYFBW+yC7iVH1SkB/aKGisytgxUWNNaNILlTWJSBM+njEjv04LcFlZHrQLDUOdSxVO1KYQeMNOqB
	rAcl/9+TP3w1zCos5U4VwTy+EGGr0E/i9VTQWdmrrzzWBJ/bVdzDkBphQBwseSd6pEA4knjIBog5u
	FQ6WlbJsodVZ+OdglyyNOaJpBR4M4FgsI7sWEyOLZHcl8SnfjffP2QYUH+IMyRAEe42Dq70b9sh80
	CoReTXz7XiepD6n07s4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRk9-0002n3-M2; Mon, 24 Jun 2019 16:22:57 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRj1-0002Ij-Rm
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 16:21:49 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so1393992iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 09:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NHcHEiSdSzp7kZzdggQV3ZCbPz87FtIjlV1Wwg8dnCc=;
 b=n0WuiMFNEx8umDDpCQxWIEg70TRSYwsFgwp84toS3j+ajz6fDTN+LSjpVISAk+gcn7
 OiGmouq7voqFPTDYY0IxyrHgrHYTs8zXLUp+3cSI6rsYBzJ6fQzFpIt8CsFI5XPFEbdj
 6LHZkNyI2unWRRT07m2PnS/O6/3NM5DagMSimBV3EcXZMc8/D9vDWrk+kr6r/zXdnRFJ
 lY3lW0t9qzpqMwVDBY+9fTX8b+RJktyxzISeYf5iEx7382ecQwzjY9xcf4Nmmf63t2IS
 KDFzExaZYwZQBiRx1GsxVvmQXz4bMPySOV7Yo41zenTARMgdaF20DffvHlwPmcvKdT6d
 USRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NHcHEiSdSzp7kZzdggQV3ZCbPz87FtIjlV1Wwg8dnCc=;
 b=tT0HMDiLut/btRubpPn85rCJ2wVJEaSQAhRxXecwG1lNA3rFi/96pYNtBQLPrGJKvK
 Q5FI35BrxyUn2iQFqOIR5FNwUEL5il1smjHpmvthdPsNtL9N9la7HPCLvdcmllXcCqmh
 0lpSBvtOJ6IfjaqPdb13Nyd+DyfP72jEGIEEKdBye9dZ3732HAimTyFS2aQxVnbd/bLi
 YNnxeb/qj1kmILPES/VQBt2rjE0QOaQB72khB+YCn3oclhhtssnAF0xR8GT1NiLjkFGp
 rf41ow+9Frt8qKDrg/8vBB6I2G9lqY56ymzPnK/jKdrv9cbxm1Fsw7QC9zJ8Z3Gz9Qjm
 UiSQ==
X-Gm-Message-State: APjAAAUpRm/92lKXQp2Xq73jAKfCdgfdLZIkA9eNPkgyPnUL4xyAuEjv
 x2WsuEoIuA7U4IzRjbEqnpBjkA==
X-Google-Smtp-Source: APXvYqyhoOXuIy2nGfb0zpKJ/QI7jrdnphG9+1VVEKKyvNesuyv9czZi+tkOqsGi2nRGtTpWW9HFAg==
X-Received: by 2002:a6b:1451:: with SMTP id 78mr21581488iou.247.1561393307216; 
 Mon, 24 Jun 2019 09:21:47 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id a7sm9861343iok.19.2019.06.24.09.21.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 09:21:46 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Johannes Berg <johannes@sipsolutions.net>, Arnd Bergmann <arnd@arndb.de>
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
 <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
 <b23a83c18055470c5308fcd1eed018056371fc1d.camel@sipsolutions.net>
From: Alex Elder <elder@linaro.org>
Message-ID: <a9230cf8-c8f6-9270-c0e4-b56f340c3ecc@linaro.org>
Date: Mon, 24 Jun 2019 11:21:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <b23a83c18055470c5308fcd1eed018056371fc1d.camel@sipsolutions.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_092147_920560_EF2C6107 
X-CRM114-Status: GOOD (  25.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, Dan Williams <dcbw@redhat.com>,
 linux-arm-msm@vger.kernel.org, abhishek.esse@gmail.com,
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

On 6/18/19 2:14 PM, Johannes Berg wrote:
> On Tue, 2019-06-18 at 08:16 -0500, Alex Elder wrote:
>> On 6/17/19 6:28 AM, Johannes Berg wrote:
>>> On Tue, 2019-06-11 at 13:56 +0200, Arnd Bergmann wrote:
>>>> On Tue, Jun 11, 2019 at 10:12 AM Johannes Berg
>>>> <johannes@sipsolutions.net> wrote:
>>>>
>>>>>> As I've made clear before, my work on this has been focused on the IPA transport,

. . .

>> The IPA driver was very large, and in an effort to have an initial driver
>> that was more easily accepted upstream, it was carved down to support
>> a single, very simple use case.  It supports only a single channel for
>> carrying network data, and does not expose any of the IPA's other
>> capabilities like filtering and routing (and multiplexing).
> 
> Ok. But it *does* use (or even require using) rmnet, so it has multiple
> channels in a sense, no?

Yes.  It's a multiplexing protocol, supporting one *or more* channels.

>> Originally the IPA code had an IOCTL interface for adding and removing
>> multiplexed channel IDs, but the simplified use case expected only one
>> channel to be used.  
> 
> What did those channels do? Create different netdevs? Something else
I don't know.  The code I started with only supported the use of
one channel, but assumed the use of rmnet anyway (for aggregation
and checksum offload most likely).

. . .

>> So getting back to your question, the IPA in its current form only
>> has a single "multiplexed" channel carried over the connection
>> between the AP and modem.  Previously (and in the future) there
>> was a way to add or remove channels.
> 
> What would those channels do?
> 
> I've not really been very clear with the differentiation between a
> channel and what's multiplexed inside of the channel.
> 
> Using the terminology you defined in your other mail, are you saying
> that IPA (originally) allowed multiple *connections* to the device, or
> is there basically just one connection, with multiple (QMAP-muxed)
> *channels* on top of it?

One connection, with the ability to have multiple multiplexed
channels.

> If the latter, why did IPA need ioctls, rather than rmnet?

The "full" IPA driver supported a lot more than what is being
proposed right now.  The strategy for getting support upstream
was to drastically reduce the size of the driver by focusing
on a single use case:  providing a netdev data interface served
by the modem.

But even to support that, the IPA driver needed to allow user
space to identify certain resources that need to be used for
implementing that netdev, or configuring whether certain
features (e.g. download checksum) were to be used.

. . .

>> The hardware can aggregate multiple packets received from the
>> modem into a single buffer, which the rmnet driver is then able
>> to deaggregate.
> 
> Right, I gathered that much, but I'm not really sure I see why userspace
> would even be allowed to control this? Either the device is doing it or
> not, but the driver is going to have to cope either way?

Maybe because doing aggregation or not is a policy decision?
And/or a tunable parameter?  There might be a more appropriate
way to do this.

. . .

>> My goal continues to be getting a baseline IPA driver accepted
>> upstream as soon as possible, so I can then start building on
>> that foundation.
> 
> Yeah. My goal is actually the same, but for the Intel driver, but I
> don't have much code yet (it's being cleaned up now) :-)

Well then I guess I'll beat you to it (or I *hope* I do)...

					-Alex

> 
> johannes
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
