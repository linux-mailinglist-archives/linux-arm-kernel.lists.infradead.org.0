Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D26E24A21F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtP1rJs+emIE0OfwAE0RRgwS9k3GZ/CA24eDsih8BmU=; b=bhCOwN23GniQzL
	pAwn6Ng6EoLzSBIYvkZs/HcA53ySCFWRunA/6fJ6/hGheExDDtjRvQdo7NMoMcVQXxAXj4TnWkiUU
	k+YYwDgxpVeEIsDfJhbQjuFDUwnaOvAm8lZkA8bt4SkQ5wJV4r5hRzr36WiVVVZxhj1iFZCxLZGnx
	qM3GmGDdPk7HGGIyztTRyx5EAxnl5ZsULTF2Y3ij9jPrgUwQun0HGIHs6kn7XyOF7bfyrvnspKJk9
	B5RKtZ4ejcE9ezM9ggjGoLMz32PTJEIvdxcohJWOSntwVTeP38CCoO/fyMgCEJuKzULGwgUBD/H3N
	FFenGNU5ubqHbyzUPKyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEAx-0001lc-IH; Tue, 18 Jun 2019 13:29:27 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDy6-0002CX-Ea
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:16:15 +0000
Received: by mail-io1-xd44.google.com with SMTP id k20so29590660ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 06:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dR78zG7dX8e/qcv20iSctRC1cAVO1E4gMNVJT3ZAo/E=;
 b=rjwMQD9svLccq2nbGYutKS/aLNXeH/vsrKNFvWrqm9MoAooMzfW/zym6qG90YW54ra
 GgMPkpeIspRIDYkcD7Lsfyk4JBWRc7XKSp/jN2r6Ckjvt7P7IumoThoeJvWyOdJRRPgA
 oYU1kmuPQdH6y6fEF31GIOfz+bwi8PG1ziG4YG8IpSSu4uHwwmuyN9N3pr0QdzU9IRWE
 DkBObRvHQyB1k5I2pUgcTtKYZUhHtq9ob60J3Vev+6OFnQFNJeVEKFLLkKfj2PKzQ1x8
 Pznr/4IoX3xoEBMtcfc59ZASu/JnJBawhMfr9Mu5iEN+4Lx/7FlZHaQhpuGXEgk3NBsv
 +jyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dR78zG7dX8e/qcv20iSctRC1cAVO1E4gMNVJT3ZAo/E=;
 b=ocu4e7bAvULU3nKSz+mH3NwJSXf3Nhd2JqcpNO2isN1ffC8MTBEcNlL0datiag9UpN
 S44LdNBt4ELxTzQG7HxptM79W5H45V9xA4J0R1FZ28oAywsWveDJrsggGPAgRSXXJuXY
 OkuZ7ltOuH6ayek1RX0Jx7i0IWB7pIJPdFtI1VX/hF6rZzDpfX7A5jtWD5fml+hyOB50
 l2UVVCS4OJ0HFuDGCVjDHZQU/LG7H8LEmJS/ZW/RKT+JWw30/KtCYzwkl/Vh2iuChTlK
 jojW93c7ipcmhE7W5RotacyNTFWnE+DgDX/p6MhhKjb4dwIC22aqZtE3r0vo3PSuLpo/
 erZQ==
X-Gm-Message-State: APjAAAWHUZDlxyY1d+rKeQ9oHwGGus60L3B02LxvCsHNmBFKCwS5TvJY
 bSYxQeyE35RzM/g9bDRAkrUbvQ==
X-Google-Smtp-Source: APXvYqxEgyfDSxmDStC5HAzMdzQzl4KaE6w/BHGciyIJWW3VFHHwdl8AegXIj49rvISbgbN/uw7b9Q==
X-Received: by 2002:a02:9143:: with SMTP id b3mr2073935jag.12.1560863766913;
 Tue, 18 Jun 2019 06:16:06 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id q13sm13795359ioh.36.2019.06.18.06.16.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 06:16:05 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Johannes Berg <johannes@sipsolutions.net>, Arnd Bergmann <arnd@arndb.de>
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
From: Alex Elder <elder@linaro.org>
Message-ID: <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
Date: Tue, 18 Jun 2019 08:16:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_061610_979836_04CEA8BB 
X-CRM114-Status: GOOD (  42.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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

On 6/17/19 6:28 AM, Johannes Berg wrote:
> On Tue, 2019-06-11 at 13:56 +0200, Arnd Bergmann wrote:
>> On Tue, Jun 11, 2019 at 10:12 AM Johannes Berg
>> <johannes@sipsolutions.net> wrote:
>>
>>>> As I've made clear before, my work on this has been focused on the IPA transport,
>>>> and some of this higher-level LTE architecture is new to me.  But it
>>>> seems pretty clear that an abstracted WWAN subsystem is a good plan,
>>>> because these devices represent a superset of what a "normal" netdev
>>>> implements.
>>>
>>> I'm not sure I'd actually call it a superset. By themselves, these
>>> netdevs are actually completely useless to the network stack, AFAICT.
>>> Therefore, the overlap with netdevs you can really use with the network
>>> stack is pretty small?
>>
>> I think Alex meant the concept of having a type of netdev with a generic
>> user space interface for wwan and similar to a wlan device, as I understood
>> you had suggested as well, as opposed to a stacked device as in
>> rmnet or those drivers it seems to be modeled after (vlan, ip tunnel, ...)/.

Yes, that's pretty much what I meant by "superset."  We still need
netdev functionality (though not between rmnet and ipa).  And it sounds
like we're talking about a better framework for managing the related
WWAN devices that represent logical modem connections.  We're discussing
more than one spot in the networking stack though, so I can see why
"superset" wasn't the right word.

> I guess. It is indeed currently modelled after the stacked devices, but
> those regular netdevs are inherently useful by themselves, you don't
> *have* to tunnel or use VLANs after all.
> 
> With rmnet, the underlying netdev *isn't* useful by itself, because
> you're always forced to have the stacked rmnet device on top.

Well I had mentioned earlier that I thought IPA could present just
a single non-rmnet interface that could be used "directly" (i.e.,
without rmnet).  But that would be a sort of hard-wired thing, and
would not be part of the general WWAN framework under discussion.

>>>> HOWEVER I disagree with your suggestion that the IPA code should
>>>> not be committed until after that is all sorted out.  In part it's
>>>> for selfish reasons, but I think there are legitimate reasons to
>>>> commit IPA now *knowing* that it will need to be adapted to fit
>>>> into the generic model that gets defined and developed.  Here
>>>> are some reasons why.
>>>
>>> I can't really argue with those, though I would point out that the
>>> converse also holds - if we commit to this now, then we will have to
>>> actually keep the API offered by IPA/rmnet today, so we cannot actually
>>> remove the netdev again, even if we do migrate it to offer support for a
>>> WWAN framework in the future.
>>
>> Right. The interface to support rmnet might be simple enough to keep
>> next to what becomes the generic interface, but it will always continue
>> to be an annoyance.
> 
> Not easily, because fundamentally it requires an underlying netdev to
> have an ifindex, so it wouldn't just be another API to keep around
> (which I'd classify as an annoyance) but also a whole separate netdev
> that's exposed by this IPA driver, for basically this purpose only.
> 
>>> I dunno if it really has to be months. I think we can cobble something
>>> together relatively quickly that addresses the needs of IPA more
>>> specifically, and then extend later?
>>>
>>> But OTOH it may make sense to take a more paced approach and think
>>> about the details more carefully than we have over in the other thread so far.
>>
>> I would hope that as soon as we can agree on a general approach, it
>> would also be possible to merge a minimal implementation into the kernel
>> along with IPA. Alex already mentioned that IPA in its current state does
>> not actually support more than one data channel, so the necessary
>> setup for it becomes even simpler.
> 
> Interesting, I'm not even sure how the driver can stop multiple channels
> in the rmnet model?

Here's a little background.

The IPA driver was very large, and in an effort to have an initial driver
that was more easily accepted upstream, it was carved down to support
a single, very simple use case.  It supports only a single channel for
carrying network data, and does not expose any of the IPA's other
capabilities like filtering and routing (and multiplexing).

Originally the IPA code had an IOCTL interface for adding and removing
multiplexed channel IDs, but the simplified use case expected only one
channel to be used.  IOCTLs had to be removed to make the code acceptable
for upstream, and again to simplify things, we went with a hard-wired
configuration, with a single channel with an assumed set of features
in use (TCP offload, basically).  Once upstream, we planned to add back
features in layers, including adding a netlink interface to control
things like managing multiplexed channels.

The overall design assumed that the IPA connection between the modem
and AP was carrying QMAP protocol though.  And the rmnet driver is
designed to parse and handle that, so for the design I started with
the use of the rmnet driver made sense:  it is a shim layer that takes
care of rmnet multiplexing and aggregation (and checksum offload).

So getting back to your question, the IPA in its current form only
has a single "multiplexed" channel carried over the connection
between the AP and modem.  Previously (and in the future) there
was a way to add or remove channels.

>> At the moment, the rmnet configuration in include/uapi/linux/if_link.h
>> is almost trivial, with the three pieces of information needed being
>> an IFLA_LINK to point to the real device (not needed if there is only
>> one device per channel, instead of two), the IFLA_RMNET_MUX_ID
>> setting the ID of the muxing channel (not needed if there is only
>> one channel ?), a way to specify software bridging between channels
>> (not useful if there is only one channel) 
> 
> I think the MUX ID is something we *would* want, and we'd probably want
> a channel type as well, so as to not paint ourselves into a corner where
> the default ends up being whatever IPA supports right now.

Agreed.

> The software bridging is very questionable to start with, I'd advocate
> not supporting that at all but adding tracepoints or similar if needed
> for debugging instead.

To be honest I don't understand the connection between software
bridging and debugging, but that's OK.  I'm a fan of tracepoints
and have always intended to make use of them in the IPA driver.

>> and a few flags that I assume
>> must match the remote end:
>>
>> #define RMNET_FLAGS_INGRESS_DEAGGREGATION         (1U << 0)
>> #define RMNET_FLAGS_INGRESS_MAP_COMMANDS          (1U << 1)
>> #define RMNET_FLAGS_INGRESS_MAP_CKSUMV4           (1U << 2)
>> #define RMNET_FLAGS_EGRESS_MAP_CKSUMV4            (1U << 3)
> 
> I don't really know about these.

The hardware can aggregate multiple packets received from the
modem into a single buffer, which the rmnet driver is then able
to deaggregate.  This feature is supposed to help performance
but I've always been a little skeptical because it also comes
at a cost.  This is used as a flag in an rmnet (QMAP) header,
which to me seems a little odd.  (There should be a distinction
between flags needed in a message header and flags that represent
properties of a connection or channel.)

I believe the only QMAP commands are for doing essentially
XON/XOFF flow control on a single channel.  In the course of
the e-mail discussion in the past few weeks I've come to see
why that would be necessary.

The checksum offload is done differently, depending on whether
it's ingress (download from modem) or egress.  For egress,
a header is inserted that describes what the hardware should
checksum and where it should place the result.  For ingress,
the hardware appends a trailer that contains information
about the computed checksum values.  The rmnet driver is
currently responsible for inserting the header and parsing
the trailer.

I'm probably missing something, but I think the checksum
offload could be handled by the IPA driver rather than
rmnet.  It seems to be an add-on that is completely
independent of the multiplexing and aggregation capabilities
that QMAP provides.

>>> If true though, then I think this would be the killer argument *in
>>> favour* of *not* merging this - because that would mean we *don't* have
>>> to actually keep the rmnet API around for all foreseeable future.

This is because it's a user space API?  If so I now understand
what you mean.

As Arnd said (below) this is designed in the way out-of-tree code
works and expects.  I don't want to advocate for breaking that,
but if a general model that supports what's required can be used,
I'll adapt the IPA code to suit that.

My goal continues to be getting a baseline IPA driver accepted
upstream as soon as possible, so I can then start building on
that foundation.

					-Alex

>> I would agree with that. From the code I can see no other driver
>> including the rmnet protocol header (see the discussion about moving
>> the header to include/linux in order to merge ipa), and I don't see
>> any other driver referencing ETH_P_MAP either. My understanding
>> is that any driver used by rmnet would require both, but they are
>> all out-of-tree at the moment.
> 
> I guess that would mean we have more work to do here, but it also means
> we don't have to support these interfaces forever.
> 
> I'm not *entirely* convinced though. rmnet in itself doesn't really seem
> to require anything from the underlying netdev, so if there's a driver
> that just blindly passes things through to the hardware expecting the
> right configuration, we wouldn't really see it this way?
> 
> OTOH, such a driver would probably blow up completely if somebody tried
> to use it without rmnet on top, and so it would at least have to check
> for ETH_P_MAP?
> 
> johannes
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
