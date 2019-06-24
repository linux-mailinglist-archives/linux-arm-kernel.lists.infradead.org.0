Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55135186A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8M5oJLRdYigFGft23Uh2mtLKNUIGpeT+TX8OgoHbceE=; b=M/amVWqMC6zPqs
	1wRnyf77NU258GOxOwz776ZMRy9FK4qeD5a2MZibBOP9j4QGjojv2wuaH+1a1o3YI2ptZJX65aDMd
	HSSNlEYI77SLx7zd7LGyg+80wBGP5XhOz8/P8Dv/VuNZYnGk4NWLEyCDVPmWF6rqEgxPunSnTZpaX
	0sAPBW/hjEokfe8mFCJ5w8ROWntGYiZsfmgZhgQLzXLN+M2Ym6cRDog6g1545E3m6DppuA4KPRXyu
	UzCdtBB42mwZLwkzyAQX38LvyqswV6sb6wBKWPxLK/Q0CaB3IOQmJzWlo9/J3J8wyv5sWTF16lwSJ
	uqdap4E63NM8HQhfILkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRjR-0002LQ-HZ; Mon, 24 Jun 2019 16:22:13 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRil-000282-03
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 16:21:32 +0000
Received: by mail-io1-xd41.google.com with SMTP id e3so99094ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 09:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DTdhMvHGSpRSYv+O4zZF8FaJwPrfZLTTyd9vaWKATdY=;
 b=tPmfrySUrHFTfHEWGy9TrC/IHOCSSqqAIwzEUzU+Rz7NrirPaY1DvhgyqBPm2cwW+9
 UszyhOghqLy1knpjHUDSI3bgA4cBbr3rqbwCk2lUXIvEE35Gic/adiiZp/uTcMZG8Wwn
 EXVZO6hFXRSiquGOh2WfyVBqY5Ios8VVce31ZgSOipQYGpxtdq6do7A/39NgNSX9Ec2E
 FzfUUsilUBEWcu6Ez6QsIHjePKYvueexIbvhtkxV/6i+g+vEGGvpYyx3iTTKxiC5SveA
 54bZHa7LZzYAWRacyaU/IG+gZo2uuB5bNf6q/f3jOf74y0xIWPb2aV0oAO2DXHk2WKcB
 4YWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DTdhMvHGSpRSYv+O4zZF8FaJwPrfZLTTyd9vaWKATdY=;
 b=nGZ2i5YIIBdOxuTeCyf6LQGa3+7j7ADnNZ8e/XTrAc2ALKhIKB2WZrkILI/qAsNtrY
 7+8M0un7JxJpvXMkJvCbum98I3RcFyAyB7jVTlNMcwqSVTTAKt6/XzeHeiYfnz8oQ8vY
 HGfqiSHnHlbcMUgl/WAX/Ar8UrkWE2eIhaU8K2uSXwLrlcIJPWoQ2PY4aqahoEa068Lw
 0SUkSQyuSiNBthqUpb2pxgPN/f6ibeJcMMqV5hrxv+VX4MRu066MniWKW8bkzQzVlN93
 jVADLWi4zgkd8UDv8wqyhMrO0l01h/oP1trHl+Yx/cYHuNWCEFhEk+rAoiS2sk1RjXlv
 oVAw==
X-Gm-Message-State: APjAAAX9GwPkF/023deEL99Cls2Sr6qxjWdi62+YhtxnNYVCJlS3tT2Y
 SOgVNQoBSxNmRttjDEf53kuVCA==
X-Google-Smtp-Source: APXvYqwdIdy6gdFnh0AoofirCVmNPT2cDDVwmDZlJD8dTb+hXiv59U6tCJDzC8nEAkMRQg/1EV+S1A==
X-Received: by 2002:a6b:b7d5:: with SMTP id h204mr6073067iof.188.1561393290206; 
 Mon, 24 Jun 2019 09:21:30 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id v13sm14220933ioq.13.2019.06.24.09.21.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 09:21:29 -0700 (PDT)
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
 <e6ba8a9063e63506c0b88a70418d74ca4efe85cd.camel@sipsolutions.net>
 <850eed1d-0fec-c396-6e91-b5f1f8440ded@linaro.org>
 <967604dd8d466a99b865649174f8b9cd34b2560e.camel@sipsolutions.net>
From: Alex Elder <elder@linaro.org>
Message-ID: <cf4e990c-1a59-802b-7565-4d7c876416b9@linaro.org>
Date: Mon, 24 Jun 2019 11:21:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <967604dd8d466a99b865649174f8b9cd34b2560e.camel@sipsolutions.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_092131_196235_56328D8A 
X-CRM114-Status: GOOD (  27.04  )
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

On 6/18/19 1:48 PM, Johannes Berg wrote:
> Just to add to Dan's response, I think he's captured our discussions and
> thoughts well.
> 
>> First, a few terms (correct or improve as you like):
> 
> Thanks for defining, we don't do that nearly often enough.
> 
>> - WWAN device is a hardware device (like IPA) that presents a
>>   connection between AP and modem, and presents an interface
>>   that allows the use of that connection to be managed.
> 
> Yes. But I was actually thinking of a "wwan_dev" to be a separate
> structure, not *directly* owned by a single driver and used to represent
> the hardware like a (hypothetical) "struct ipa_dev".

I think you're talking about creating a coordination interface
that allows multiple drivers to interact with a WWAN device,
which might implement several independent features.

>> - WWAN netdevice represents a Linux network interface, with its
>>   operations and queues, etc., but implements a standardized
>>   set of WWAN-specific operations.  It represents a logical
>> ' channel whose data is multiplexed over the WWAN device.
> 
> I'm not sure I'd asy it has much WWAN-specific operations? But yeah, I
> guess it might.

I want to withdraw this notion of a "WWAN netdevice"...

>> - WWAN channel is a user space abstraction that corresponds
>>   with a WWAN netdevice (but I'm not clear on all the ways
>>   they differ or interact).
> 
> As Dan said, this could be a different abstraction than a netdevice,
> like a TTY, etc.

Right, I get that now.

. . .

>> - Which WWAN channel attributes must be set *before* the
>>   channel is activated, and can't be changed?  Are there any
>>   that can be changed dynamically?
> 
> It's a good question. I threw a "u32 pdn" in there, but I'm not actually
> sure that's what you *really* need?
> 
> Maybe the modem and userspace just agree on some arbitrary "session
> identifier"? Dan mentions "MUX ID" or "MBIM Session ID", maybe there
> really is no good general term for this and we should just call it a
> "session identifier" and agree that it depends on the control protocol
> (MBIM vs. QMI vs. ...)?
> 
>> And while the whole point of this is to make things generic,
>> it might be nice to have a way to implement a new feature
>> before it can be "standardized".
> 
> Not sure I understand this?

I'm talking about a way to experiment with new functionality in a
way that's explicitly not part of the interface.  But doing that
isn't necessary and it's probably not a good idea anyway.

> FWIW, I actually came to this because we want to upstream a driver for
> an Intel modem, but ... can't really make up our mind on whether or not
> to use VLAN tags, something like rmnet (but we obviously cannot use
> rmnet, so that'd be another vendor specific interface like rmnet), or
> sysfs, or any of the other methods we have today ... :-)

OK cool then we have some common needs.   Let's get this defined so
we can use it for both!

					-Alex

> 
> johannes
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
