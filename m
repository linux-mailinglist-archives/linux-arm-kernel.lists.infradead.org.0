Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E38B7480A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NWEj636MGWoJOMfdiysucklPtj85VO+8Q+Cw5E393U=; b=RUpIoGdw+t8vWW
	KYRTPlP7E+gVdGx9gLiBSmKkbX08SvKrzhl3mDxIOrWEKtEwM2yLX3vMqBiLOaCCVrFW+t6L6fJOd
	pXHxHyOIy0LUPM7NHqE7BPREDQhHHoFbhm2uk96K6sbthMMRZ2kdFlKzgtC6w3rDL+vEQOkQ92sKM
	3JLO0ifneFpKV2bQCwt+SHwfAXlu7mgb5WOpHXn2j+wLZIDqH6yu/9fqJteRtD00DOMrlXL9f+r9I
	NGG/qCQ47+UrqPa4uzoSWaT1+112KSE28gZ/MfHtFuyemKcGgo47lTUVNueC7pHIcd2OIbj8HbrFr
	DiLKbJYEGPMe2xFfosDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpp1-0003AX-Qu; Mon, 17 Jun 2019 11:29:11 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpol-0003A3-L5
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:28:57 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hcpoX-0003Tn-Jd; Mon, 17 Jun 2019 13:28:41 +0200
Message-ID: <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 17 Jun 2019 13:28:39 +0200
In-Reply-To: <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 (sfid-20190611_135708_651569_0097B773)
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 (sfid-20190611_135708_651569_0097B773)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_042855_694885_5758A8D8 
X-CRM114-Status: GOOD (  34.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, Dan Williams <dcbw@redhat.com>,
 linux-arm-msm@vger.kernel.org, abhishek.esse@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Networking <netdev@vger.kernel.org>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-11 at 13:56 +0200, Arnd Bergmann wrote:
> On Tue, Jun 11, 2019 at 10:12 AM Johannes Berg
> <johannes@sipsolutions.net> wrote:
> 
> > > As I've made clear before, my work on this has been focused on the IPA transport,
> > > and some of this higher-level LTE architecture is new to me.  But it
> > > seems pretty clear that an abstracted WWAN subsystem is a good plan,
> > > because these devices represent a superset of what a "normal" netdev
> > > implements.
> > 
> > I'm not sure I'd actually call it a superset. By themselves, these
> > netdevs are actually completely useless to the network stack, AFAICT.
> > Therefore, the overlap with netdevs you can really use with the network
> > stack is pretty small?
> 
> I think Alex meant the concept of having a type of netdev with a generic
> user space interface for wwan and similar to a wlan device, as I understood
> you had suggested as well, as opposed to a stacked device as in
> rmnet or those drivers it seems to be modeled after (vlan, ip tunnel, ...)/.

I guess. It is indeed currently modelled after the stacked devices, but
those regular netdevs are inherently useful by themselves, you don't
*have* to tunnel or use VLANs after all.

With rmnet, the underlying netdev *isn't* useful by itself, because
you're always forced to have the stacked rmnet device on top.


> > > HOWEVER I disagree with your suggestion that the IPA code should
> > > not be committed until after that is all sorted out.  In part it's
> > > for selfish reasons, but I think there are legitimate reasons to
> > > commit IPA now *knowing* that it will need to be adapted to fit
> > > into the generic model that gets defined and developed.  Here
> > > are some reasons why.
> > 
> > I can't really argue with those, though I would point out that the
> > converse also holds - if we commit to this now, then we will have to
> > actually keep the API offered by IPA/rmnet today, so we cannot actually
> > remove the netdev again, even if we do migrate it to offer support for a
> > WWAN framework in the future.
> 
> Right. The interface to support rmnet might be simple enough to keep
> next to what becomes the generic interface, but it will always continue
> to be an annoyance.

Not easily, because fundamentally it requires an underlying netdev to
have an ifindex, so it wouldn't just be another API to keep around
(which I'd classify as an annoyance) but also a whole separate netdev
that's exposed by this IPA driver, for basically this purpose only.

> > I dunno if it really has to be months. I think we can cobble something
> > together relatively quickly that addresses the needs of IPA more
> > specifically, and then extend later?
> > 
> > But OTOH it may make sense to take a more paced approach and think
> > about the details more carefully than we have over in the other thread so far.
> 
> I would hope that as soon as we can agree on a general approach, it
> would also be possible to merge a minimal implementation into the kernel
> along with IPA. Alex already mentioned that IPA in its current state does
> not actually support more than one data channel, so the necessary
> setup for it becomes even simpler.

Interesting, I'm not even sure how the driver can stop multiple channels
in the rmnet model?

> At the moment, the rmnet configuration in include/uapi/linux/if_link.h
> is almost trivial, with the three pieces of information needed being
> an IFLA_LINK to point to the real device (not needed if there is only
> one device per channel, instead of two), the IFLA_RMNET_MUX_ID
> setting the ID of the muxing channel (not needed if there is only
> one channel ?), a way to specify software bridging between channels
> (not useful if there is only one channel) 

I think the MUX ID is something we *would* want, and we'd probably want
a channel type as well, so as to not paint ourselves into a corner where
the default ends up being whatever IPA supports right now.

The software bridging is very questionable to start with, I'd advocate
not supporting that at all but adding tracepoints or similar if needed
for debugging instead.


> and a few flags that I assume
> must match the remote end:
> 
> #define RMNET_FLAGS_INGRESS_DEAGGREGATION         (1U << 0)
> #define RMNET_FLAGS_INGRESS_MAP_COMMANDS          (1U << 1)
> #define RMNET_FLAGS_INGRESS_MAP_CKSUMV4           (1U << 2)
> #define RMNET_FLAGS_EGRESS_MAP_CKSUMV4            (1U << 3)

I don't really know about these.

> > If true though, then I think this would be the killer argument *in
> > favour* of *not* merging this - because that would mean we *don't* have
> > to actually keep the rmnet API around for all foreseeable future.
> 
> I would agree with that. From the code I can see no other driver
> including the rmnet protocol header (see the discussion about moving
> the header to include/linux in order to merge ipa), and I don't see
> any other driver referencing ETH_P_MAP either. My understanding
> is that any driver used by rmnet would require both, but they are
> all out-of-tree at the moment.

I guess that would mean we have more work to do here, but it also means
we don't have to support these interfaces forever.

I'm not *entirely* convinced though. rmnet in itself doesn't really seem
to require anything from the underlying netdev, so if there's a driver
that just blindly passes things through to the hardware expecting the
right configuration, we wouldn't really see it this way?

OTOH, such a driver would probably blow up completely if somebody tried
to use it without rmnet on top, and so it would at least have to check
for ETH_P_MAP?

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
