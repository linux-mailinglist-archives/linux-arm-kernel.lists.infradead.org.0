Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCA44AAEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 21:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzGi+z3avWJafHOlJhVWYH2fKOU6VfOCqM8T5SQF/b4=; b=uSTKBDEiXPMVRT
	eS/hRFn3bSNHPKj9+zQ/SttP/UQU80LM67i7GKJFADxPQsZxoSx5+B5CqsOuhKL8r1VbtxW1J/t/a
	2w3sKytzxEF0FQTE44RYEqIIa6JaygepIsuSNqSkFXHB4vMttF3BBkDRC+CeuDdO+CivUXVJi3RCj
	rLW7eIHxjxjtIx74Ohr1qVK4fJ/Wxj9SOLUAUs39zr8Dkdvgoj3RfSVhV/KWBWJZwP+A9aCGXs13B
	At7RwO5o7xaD1gvekF+V++G4xcgxZtbegwuIRC2ycBSwZc5GCE60HR6lOl0/v8xPiZrH2YY20UVCD
	S+Y85TSBuvgHMaLQy5EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdJZe-0008JW-11; Tue, 18 Jun 2019 19:15:18 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdJZI-0008HS-Jf
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 19:14:58 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hdJZ7-0005DR-J3; Tue, 18 Jun 2019 21:14:46 +0200
Message-ID: <b23a83c18055470c5308fcd1eed018056371fc1d.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Alex Elder <elder@linaro.org>, Arnd Bergmann <arnd@arndb.de>
Date: Tue, 18 Jun 2019 21:14:39 +0200
In-Reply-To: <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
 (sfid-20190618_151608_865253_7DD4EC08)
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
 <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
 (sfid-20190618_151608_865253_7DD4EC08)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_121456_800725_63E679C6 
X-CRM114-Status: GOOD (  44.36  )
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

On Tue, 2019-06-18 at 08:16 -0500, Alex Elder wrote:
> On 6/17/19 6:28 AM, Johannes Berg wrote:
> > On Tue, 2019-06-11 at 13:56 +0200, Arnd Bergmann wrote:
> > > On Tue, Jun 11, 2019 at 10:12 AM Johannes Berg
> > > <johannes@sipsolutions.net> wrote:
> > > 
> > > > > As I've made clear before, my work on this has been focused on the IPA transport,
> > > > > and some of this higher-level LTE architecture is new to me.  But it
> > > > > seems pretty clear that an abstracted WWAN subsystem is a good plan,
> > > > > because these devices represent a superset of what a "normal" netdev
> > > > > implements.
> > > > 
> > > > I'm not sure I'd actually call it a superset. By themselves, these
> > > > netdevs are actually completely useless to the network stack, AFAICT.
> > > > Therefore, the overlap with netdevs you can really use with the network
> > > > stack is pretty small?
> > > 
> > > I think Alex meant the concept of having a type of netdev with a generic
> > > user space interface for wwan and similar to a wlan device, as I understood
> > > you had suggested as well, as opposed to a stacked device as in
> > > rmnet or those drivers it seems to be modeled after (vlan, ip tunnel, ...)/.
> 
> Yes, that's pretty much what I meant by "superset."  We still need
> netdev functionality (though not between rmnet and ipa).  And it sounds
> like we're talking about a better framework for managing the related
> WWAN devices that represent logical modem connections.  We're discussing
> more than one spot in the networking stack though, so I can see why
> "superset" wasn't the right word.

Right, ok, gotcha. I was focused (here at least) much more on the
netdevs, rather than the whole "superset" of functionality :-)

> > I guess. It is indeed currently modelled after the stacked devices, but
> > those regular netdevs are inherently useful by themselves, you don't
> > *have* to tunnel or use VLANs after all.
> > 
> > With rmnet, the underlying netdev *isn't* useful by itself, because
> > you're always forced to have the stacked rmnet device on top.
> 
> Well I had mentioned earlier that I thought IPA could present just
> a single non-rmnet interface that could be used "directly" (i.e.,
> without rmnet).  But that would be a sort of hard-wired thing, and
> would not be part of the general WWAN framework under discussion.

Oh, I guess I didn't see that (got to the thread late), but is that
actually useful? It doesn't seem very useful to me since you can't
actually do anything there.

> Here's a little background.

That's great to have :-) Let me read and comment/ask questions.

> The IPA driver was very large, and in an effort to have an initial driver
> that was more easily accepted upstream, it was carved down to support
> a single, very simple use case.  It supports only a single channel for
> carrying network data, and does not expose any of the IPA's other
> capabilities like filtering and routing (and multiplexing).

Ok. But it *does* use (or even require using) rmnet, so it has multiple
channels in a sense, no?

> Originally the IPA code had an IOCTL interface for adding and removing
> multiplexed channel IDs, but the simplified use case expected only one
> channel to be used.  

What did those channels do? Create different netdevs? Something else?

> IOCTLs had to be removed to make the code acceptable
> for upstream, and again to simplify things, we went with a hard-wired
> configuration, with a single channel with an assumed set of features
> in use (TCP offload, basically).  Once upstream, we planned to add back
> features in layers, including adding a netlink interface to control
> things like managing multiplexed channels.

Right, ok.

> The overall design assumed that the IPA connection between the modem
> and AP was carrying QMAP protocol though.  And the rmnet driver is
> designed to parse and handle that, so for the design I started with
> the use of the rmnet driver made sense:  it is a shim layer that takes
> care of rmnet multiplexing and aggregation (and checksum offload).

Sure, I can't really disagree. It's just that we have an ongoing
discussion separately about whether or not rmnet really makes sense
itself, mostly starting from our interest in supporting the Intel modem,
and realizing that we have like 5 or 6 different driver-specific
interfaces of doing the same thing.

> So getting back to your question, the IPA in its current form only
> has a single "multiplexed" channel carried over the connection
> between the AP and modem.  Previously (and in the future) there
> was a way to add or remove channels.

What would those channels do?

I've not really been very clear with the differentiation between a
channel and what's multiplexed inside of the channel.

Using the terminology you defined in your other mail, are you saying
that IPA (originally) allowed multiple *connections* to the device, or
is there basically just one connection, with multiple (QMAP-muxed)
*channels* on top of it?

If the latter, why did IPA need ioctls, rather than rmnet?

> > The software bridging is very questionable to start with, I'd advocate
> > not supporting that at all but adding tracepoints or similar if needed
> > for debugging instead.
> 
> To be honest I don't understand the connection between software
> bridging and debugging, but that's OK.

It's a mess. Basically, AFAICT, the only use for the rmnet bridging is
in fact debugging. What it does, again AFAICT, is mirror out all the
rmnet packets to the bridge if you attach it to a bridge, so that then
you can attach another netdev to the bridge and forward all the rmnet
packets to another system for debugging.

It's a very weird way of doing this, IMHO.

> I'm a fan of tracepoints
> and have always intended to make use of them in the IPA driver.

:-)

> The hardware can aggregate multiple packets received from the
> modem into a single buffer, which the rmnet driver is then able
> to deaggregate.

Right, I gathered that much, but I'm not really sure I see why userspace
would even be allowed to control this? Either the device is doing it or
not, but the driver is going to have to cope either way?

> This feature is supposed to help performance
> but I've always been a little skeptical because it also comes
> at a cost.  This is used as a flag in an rmnet (QMAP) header,
> which to me seems a little odd.  (There should be a distinction
> between flags needed in a message header and flags that represent
> properties of a connection or channel.)

I'm not going to comment on the QMAP protocol, I know nothing about it
:-)

> I believe the only QMAP commands are for doing essentially
> XON/XOFF flow control on a single channel.  In the course of
> the e-mail discussion in the past few weeks I've come to see
> why that would be necessary.

It does make sense, because you only have a single hardware (DMA)
channel in these cases, so you implement flow control in software on
top.

(As I said before, the Intel modem uses different hardware channels for
different sessions, so doesn't need something like this - the hardware
ring just fills up and there's your flow control)

> The checksum offload is done differently, depending on whether
> it's ingress (download from modem) or egress.  For egress,
> a header is inserted that describes what the hardware should
> checksum and where it should place the result.  For ingress,
> the hardware appends a trailer that contains information
> about the computed checksum values.  The rmnet driver is
> currently responsible for inserting the header and parsing
> the trailer.

Sure, makes sense, but again - if you can negotiate with the modem on
whether it's going to do RX CSUM offload, you can tell it with ethtool
(assuming you do have a netdev per channel, I guess), and for TX CSUM
you can just have the header or not depending on whether you want it and
the modem is capable of it.

> I'm probably missing something, but I think the checksum
> offload could be handled by the IPA driver rather than
> rmnet.  It seems to be an add-on that is completely
> independent of the multiplexing and aggregation capabilities
> that QMAP provides.

Agree.

> > > > If true though, then I think this would be the killer argument *in
> > > > favour* of *not* merging this - because that would mean we *don't* have
> > > > to actually keep the rmnet API around for all foreseeable future.
> 
> This is because it's a user space API?  If so I now understand
> what you mean.

Yes.

> As Arnd said (below) this is designed in the way out-of-tree code
> works and expects.  I don't want to advocate for breaking that,
> but if a general model that supports what's required can be used,
> I'll adapt the IPA code to suit that.
> 
> My goal continues to be getting a baseline IPA driver accepted
> upstream as soon as possible, so I can then start building on
> that foundation.

Yeah. My goal is actually the same, but for the Intel driver, but I
don't have much code yet (it's being cleaned up now) :-)

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
