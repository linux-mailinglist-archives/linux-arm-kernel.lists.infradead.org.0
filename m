Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B3F4AA3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 20:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jTl1fZR5EupjxDsZH1ktm4c1dVPpqMI95yXmyznjQY=; b=OUKOV3NM74mZ7r
	Gwk6HlnKaEokDozrm5pVf13LDxHKNDEpa4vAowk/vfx+Q7k3HwqDNAqUOmxw5ggCn75QIiZ0GQ6XF
	pgUdUaE1jEcmsz+osSAfBuB1rUa9yVc/HhcOpeKbw1ypuZv6YUgumqHQ0jqAZfWx/P/xgt2t5I8LJ
	CU4ftaaION90PQdprBeoCdeEgR16dMtX1s/xlAYl95uApGYACcsW5CBgrUfxen8JsSXUofN+1gEf/
	AlbqoUVOIGIvWN6URSdnQKtfZ4groPM007gHD/JtIDW7PH2e2CCcJ8LMAvcc5mKKoAGuxbRjknjEP
	iQQfOaMiuG2Ozk5KNhXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdJAJ-0004jD-70; Tue, 18 Jun 2019 18:49:07 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdJA8-0004iD-0z
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 18:48:57 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hdJ9q-0004lc-GY; Tue, 18 Jun 2019 20:48:38 +0200
Message-ID: <967604dd8d466a99b865649174f8b9cd34b2560e.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Alex Elder <elder@linaro.org>, Arnd Bergmann <arnd@arndb.de>, Dan
 Williams <dcbw@redhat.com>
Date: Tue, 18 Jun 2019 20:48:33 +0200
In-Reply-To: <850eed1d-0fec-c396-6e91-b5f1f8440ded@linaro.org>
 (sfid-20190618_172042_951332_21BBC6A6)
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
 (sfid-20190618_172042_951332_21BBC6A6)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_114856_063347_DBD1365E 
X-CRM114-Status: GOOD (  26.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Just to add to Dan's response, I think he's captured our discussions and
thoughts well.

> First, a few terms (correct or improve as you like):

Thanks for defining, we don't do that nearly often enough.

> - WWAN device is a hardware device (like IPA) that presents a
>   connection between AP and modem, and presents an interface
>   that allows the use of that connection to be managed.

Yes. But I was actually thinking of a "wwan_dev" to be a separate
structure, not *directly* owned by a single driver and used to represent
the hardware like a (hypothetical) "struct ipa_dev".

> - WWAN netdevice represents a Linux network interface, with its
>   operations and queues, etc., but implements a standardized
>   set of WWAN-specific operations.  It represents a logical
> ' channel whose data is multiplexed over the WWAN device.

I'm not sure I'd asy it has much WWAN-specific operations? But yeah, I
guess it might.

> - WWAN channel is a user space abstraction that corresponds
>   with a WWAN netdevice (but I'm not clear on all the ways
>   they differ or interact).

As Dan said, this could be a different abstraction than a netdevice,
like a TTY, etc.

> - The WWAN core is kernel code that presents abstractions
>   for WWAN devices and netdevices, so they can be managed
>   in a generic way.  It is for configuration and communication
>   and is not at all involved in the data path.
> 
> You're saying that the WWAN driver space calls wwan_add()
> to register itself as a new WWAN device.

Assuming it knows that it is in fact a WWAN device, like IPA.

> You're also saying that a WWAN device "attaches" a WWAN
> netdevice, which is basically notifying the WWAN core
> that the new netdev/channel is available for use.
> - I trust that a "tentative" attachement is necessary.  But
>   I'm not sure what makes it transition into becoming a
>   "real" one, or how that event gets communicated.

I think Dan explained this one well. This wasn't actually on my radar
until he pointed it out.

Really this only exists with USB devices that appear as multiple
functions (ethernet, tty, ...) but still represent a single WWAN device,
with each function not necessarily being aware of that since it's just a
function driver.

Hopefully at least one of the function drivers will be able to figure it
out, and then we can combine all of the functions into the WWAN device
abstraction.

[snip - Dan's explanations are great]

Dan also said:

> > I read "attach" here as simply associating an existing netdev with the
> > "parent" WWAN device. A purely Linux operation that is only book-
> > keeping and may not have any interaction with the modem. 

Now I'm replying out of thread, but yes, that's what I had in mind. What
I meant by attaching (in this case) is just that you actually mark that
it is (or might be, if tentatively attached) part of a WWAN device.

> - Are there any attributes that are only optionally supported,
>   and if so, how are the supported ones communicated?

As Dan said, good point. I hadn't really considered that for now. I sort
of know that we need it, but for the sake of simplicity decided to elide
it for now. I'm just not sure what really are needed, and netlink
attributes make adding them (and discovering the valid ones) pretty easy
in the future, when a need arises.

> - Which WWAN channel attributes must be set *before* the
>   channel is activated, and can't be changed?  Are there any
>   that can be changed dynamically?

It's a good question. I threw a "u32 pdn" in there, but I'm not actually
sure that's what you *really* need?

Maybe the modem and userspace just agree on some arbitrary "session
identifier"? Dan mentions "MUX ID" or "MBIM Session ID", maybe there
really is no good general term for this and we should just call it a
"session identifier" and agree that it depends on the control protocol
(MBIM vs. QMI vs. ...)?

> And while the whole point of this is to make things generic,
> it might be nice to have a way to implement a new feature
> before it can be "standardized".

Not sure I understand this?

FWIW, I actually came to this because we want to upstream a driver for
an Intel modem, but ... can't really make up our mind on whether or not
to use VLAN tags, something like rmnet (but we obviously cannot use
rmnet, so that'd be another vendor specific interface like rmnet), or
sysfs, or any of the other methods we have today ... :-)

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
