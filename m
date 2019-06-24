Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98625186C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oEVOJUAq2+Hf9SRhhBMRUg5d3z+D/D4LIKg/olqnDeM=; b=fKOwFycxdoRZky
	ApOrAoYr730MlTLqu91GNyNgeCo4O+d9xg28Lq647S7s9elTZRs3xmCxOAafgCwzNiP07nY8oSraY
	+fixEUku15Lr5snOPPqqGR+ysZqwZQE36Y1rWfdRpYBjM9+BQbiHjtJWvYQYeMQtky+qLU/8Fr4CM
	6Qx14PPGfC2FZkfh9r8Qyw+Hr1rMDJdxcVbhYcamb+nmk3qwy3MIx8MyaKC7HbYqCF6rQGe9VzKkA
	zdNm9EoCfMB0WnQfVRVelrhBzu+ZSFYJSp5Ulbt/ocD0yLThFiDTW3JCN0vD2WmhwLrMizq1mv4W7
	R7Q8Jb57VFXMNIx/wC9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRjp-0002Wd-6f; Mon, 24 Jun 2019 16:22:37 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRiu-0002Eh-5x
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 16:21:41 +0000
Received: by mail-io1-xd42.google.com with SMTP id s7so240638iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 09:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xBoAtxtjQiOSLd1WpAbjDP8j6XulfDrLmE862OfreeA=;
 b=fYYcVU3Y8B8N6WXkcacNkyYkt7leH5k7EMS3TQEAguupNHpoSAXW8cR4JoS5rXAVOZ
 daQIFAS9sj7BRg7+I3p0mNhO2ntN/ltIdIDMpSE8gjMw/9zJC2hqefo50TTKdQakcx3w
 iX7btK+oJjzhx1Fobjh/tt2szvDxnOocdGFcXS1ZdxReOQZxKy1/wWcU1O+oT9sd6rH/
 4UwP1knRJXnqXCF0HTgh2jUCcRt7UyK4kp4wvDo9zRZhgn1VBHT74mskDslvHCDrDfp6
 S+uP2hLcyFaVg0QW3iu4gjQhYl/5RmO3IBnjM6nS9KhsGvAxh5f5qG3D45pxvLI/9DO8
 MJhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xBoAtxtjQiOSLd1WpAbjDP8j6XulfDrLmE862OfreeA=;
 b=nzsES3E0UfWMJT/9htPRSTmiO9viLGcAfpJCGcdtUnGOZCN5VmQ5LyIHBF++ZZAdRA
 9EW/s3coDn9j0n6MW29b/ltbbeNoUn2Cx6XIZuaqXOHgVEMIz8LdyMHOWgE3CavJBmia
 glPiqYYL8mP7itkjco46g8+UVUYW9seAMm9ZaDMkZOUb0DRNlKf1m+XcfEufhvgj4zhs
 62Da9QBnhdSOz6xLHq42AMFbHggxGrrjU6S73APq67+FgkChGyVTPPjbou5zUGEdfQoG
 IPAmPpSFk+rffTOT5o/cHN/qXg/4DhPs6bTGC+w4zQfvsfu1jib/3Q6p5H8pVAqMX2AF
 20rQ==
X-Gm-Message-State: APjAAAUkv0pm2BkJwWRgUyacvcLmcUJyMAQj8s1VJX+K2NnjFsVhCawz
 tooS/jmIjzDC/moRERDraXOR5g==
X-Google-Smtp-Source: APXvYqy4syV3bwek+B+4YOIkjUI6yYRfYCHiZAyNz0icCWo8ncEG810INtf7h15+9jeaQd+N4s95Nw==
X-Received: by 2002:a6b:7d49:: with SMTP id d9mr93389ioq.50.1561393299179;
 Mon, 24 Jun 2019 09:21:39 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id b8sm15046010ioj.16.2019.06.24.09.21.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 09:21:38 -0700 (PDT)
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
 <d533b708-c97a-710d-1138-3ae79107f209@linaro.org>
 <abdfc6b3a9981bcdef40f85f5442a425ce109010.camel@sipsolutions.net>
From: Alex Elder <elder@linaro.org>
Message-ID: <db34aa39-6cf1-4844-1bfe-528e391c3729@linaro.org>
Date: Mon, 24 Jun 2019 11:21:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <abdfc6b3a9981bcdef40f85f5442a425ce109010.camel@sipsolutions.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_092140_252479_6D2AC19E 
X-CRM114-Status: GOOD (  32.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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

On 6/18/19 2:03 PM, Johannes Berg wrote:
> On Tue, 2019-06-18 at 08:45 -0500, Alex Elder wrote:
> 
>> If it had a well-defined way of creating new channels to be
>> multiplexed over the connection to the modem, the IPA driver
>> (rather than the rmnet driver) could present network interfaces
>> for each and perform the multiplexing.  
> 
> Right. That's what I was thinking of.

. . .

>> But I think the IPA driver would register with the WWAN core as
>> a "provider," and then the WWAN core would subsequently request
>> that it instantiate netdevices to represent channels on demand
>> (rather than registering them).
> 
> Yeah, I guess you could call it that way.
> 
> Really there are two possible ways (and they intersect to some extent).
> 
> One is the whole multi-function device, where a single WWAN device is
> composed of channels offered by actually different drivers, e.g. for a
> typical USB device you might have something like cdc_ether and the
> usb_wwan TTY driver. In this way, we need to "compose" the WWAN device
> similarly, e.g. by using the underlying USB device "struct device"
> pointer to tie it together.

I *think* this model makes the most sense.  But at this point
it would take very little to convince me otherwise...  (And then
I saw Arnd's message advocating the other one, unfortunately...)

> The other is something like IPA or the Intel modem driver, where the
> device is actually a single (e.g. PCIe) device and just has a single
> driver, but that single driver offers different channels.

What I don't like about this is that it's more monolithic.  It
seems better to have the low-level IPA or Intel modem driver (or
any other driver that can support communication between the AP
and WWAN device) present communication paths that other function-
specific drivers can attach to and use.

> Now, it's not clear to me where IPA actually falls, because so far we've
> been talking about the IPA driver only as providing *netdevs*, not any
> control channels, so I'm not actually sure where the control channel is.

There is user space code that handles all of this, and as far as I
can tell, parts of it will always remain proprietary.

> For the Intel device, however, the control channel is definitely
> provided by exactly the same driver as the data channels (netdevs).

I do see the need for a control interface.  But I suspect it
would *overlap* with what you describe and might need to be more
general and/or extensible.  Are there control channels specific to
use for a modem--like a "modem control interface" or something?
Is there something broader, like "this WWAN device supports
functions A, and B with protocols X, Y; please open a connection
to A with protocol X."  Do both exist?  I'm just trying to contain
whatever a "control channel" really represents, and what it would
be associated with.

> "provider" is a good word, and in fact the Intel driver would also be a
> provider for a GNSS channel (TBD how to represent, a tty?), one or
> multiple debug/tracing channels, data channels (netdevs), AT command
> channels (mbim, ...?) (again tbd how to represent, ttys?), etc.

Yes, this is much clearer to me now.

> What I showed in the header files I posted so far was the provider only
> having "data channel" ops (create/remove a netdev) but for each channel
> type we either want a new method there, or we just change the method to
> be something like
> 
> 	int (*create_channel)(..., enum wwan_chan_type chan_type, ...);
> 
> and simply require that the channel is attached to the wwan device with
> the representation-specific call (wwan_attach_netdev, wwan_attach_tty,
> ...).

Or maybe have the WWAN device present interfaces with attributes,
and have drivers that are appropriate for each interface attach
to only the ones they recognize they support.

					-Alex

> This is a bit less comfortable because then it's difficult to know what
> was actually created upon the request, so it's probably better to have
> different methods for the different types of representations (like I had
> - add_netdev, add_tty, ...).
> 
> Note also that I said "representation-specific", while passing a
> "channel type", so for this we'd actually need a convention on what
> channel type has what kind of representation, which again gets awkward.
> Better to make it explicit.
> 
> (And even then, we might be able to let userspace have some control,
> e.g. the driver might be able to create a debug channel as both a TTY or
> something else)
> 
> johannes
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
