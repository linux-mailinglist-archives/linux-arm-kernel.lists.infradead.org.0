Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1F942932
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I07c04QIPIW8uE8dVBHA7F2DKLPOWMiiemv6sP36iLo=; b=KW+aRNY2kg9Ka6
	zVQ9PypFSiPQK7sHjXYbDubmjVYP1Zv293ckxt7p0nx26Azk080Wk12UtS45d6WhXQJR/Chr3Fup1
	JU7RO80QB/OACvxRPoSjCiVlYlxR0grsLhfexHsMElGMojIBa0yBe0weE8o6HXxIqKhM6GM2JvktE
	ydz4i7JpmxmbasxqHHmO3dknfEMNDrI2vB12FCd0aFRxou4qt0/e2/kAcdN3vkmW64T7PT64I5CgP
	LcCO9oU+Q4C4lZUjIaYM5KC+wyTBQgRqDcaEUUYkd6FlubqS8jcEcWwWY2YhC6LBccWrWvt11DNve
	m1tIssVd6kUigv6P6pCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4Gg-0000kd-Op; Wed, 12 Jun 2019 14:30:26 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4El-0006LB-Im
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:28:29 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0F2D9308A963;
 Wed, 12 Jun 2019 14:27:57 +0000 (UTC)
Received: from ovpn-112-16.rdu2.redhat.com (ovpn-112-16.rdu2.redhat.com
 [10.10.112.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2CF501710F;
 Wed, 12 Jun 2019 14:27:50 +0000 (UTC)
Message-ID: <f4249aa5f5acdd90275eda35aa16f3cfb29d29be.camel@redhat.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Dan Williams <dcbw@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 12 Jun 2019 09:27:49 -0500
In-Reply-To: <CAK8P3a2Y+tcL1-V57dtypWHndNT3eDJdcKj29c_v+k8o1HHQig@mail.gmail.com>
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <fc0d08912bc10ad089eb74034726308375279130.camel@redhat.com>
 <36bca57c999f611353fd9741c55bb2a7@codeaurora.org>
 <153fafb91267147cf22e2bf102dd822933ec823a.camel@redhat.com>
 <CAK8P3a2Y+tcL1-V57dtypWHndNT3eDJdcKj29c_v+k8o1HHQig@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 12 Jun 2019 14:28:16 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_072827_702855_604F03F4 
X-CRM114-Status: GOOD (  32.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-arm-msm@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Networking <netdev@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-12 at 10:31 +0200, Arnd Bergmann wrote:
> On Tue, Jun 11, 2019 at 7:23 PM Dan Williams <dcbw@redhat.com> wrote:
> > On Tue, 2019-06-11 at 10:52 -0600, Subash Abhinov Kasiviswanathan
> > wrote:
> > 
> > rmnet should handle muxing the QMAP, QoS, and aggregation and pass
> > the
> > resulting packet to the lower layer. That lower layer could be IPA
> > or
> > qmi_wwan, which in turn passes that QMAP packet to USB or GSI or
> > whatever. This is typically how Linux handles clean abstractions
> > between different protocol layers in drivers.
> > 
> > Similar to some WiFi drivers (drivers/net/wireless/marvell/libertas
> > for
> > example) where the same firmware interface can be accessed via PCI,
> > SDIO, USB, SPI, etc. The bus-specific code is self-contained and
> > does
> > not creep into the upper more generic parts.
> 
> Yes, I think that is a good model. In case of libertas, we have
> multiple
> layers inheritence from the basic device (slightly different in the
> implementation,
> but that is how it should be):

To be clear (and I probably wasn't earlier) I wasn't talking as deep
about the actual code structures as you are here but this a great
discussion.

I was trying to make the point that rmnet doesn't need to care about
how the QMAP packets get to the device itself; it can be pretty generic
so that it can be used by IPA/qmi_wwan/rmnet_smd/etc.

Your points below are a great discussion though...

> struct if_cs_card { /* pcmcia specific */
>      struct lbs_private {  /* libertas specific */
>            struct wireless_dev { /* 802.11 specific */
>                   struct net_device {
>                         struct device {
>                               ...
>                         };
>                         ...
>                   };
>                   ...
>            };
>            ...
>       };
>       ...
> };

> The outer structure gets allocated when probing the hardware specific
> driver, and everything below it is implemented as direct function
> calls
> into the more generic code, or as function pointers into the more
> specific
> code.
> 
> The current rmnet model is different in that by design the upper
> layer
> (rmnet) and the lower layer (qmi_wwan, ipa, ...) are kept independent
> in
> both directions, i.e. ipa has (almost) no knowledge of rmnet, and
> just
> has pointers to the other net_device:
> 
>        ipa_device
>            net_device
> 
>        rmnet_port
>            net_device
> 
> I understand that the rmnet model was intended to provide a cleaner
> abstraction, but it's not how we normally structure subsystems in
> Linux, and moving to a model more like how wireless_dev works
> would improve both readability and performance, as you describe
> it, it would be more like (ignoring for now the need for multiple
> connections):
> 
>    ipa_dev
>         rmnet_dev
>                wwan_dev
>                       net_device

Perhaps I'm assuming too much from this diagram but this shows a 1:1
between wwan_dev and "lower" devices.

What Johannes is proposing (IIRC) is something a bit looser where a
wwan_dev does not necessarily provide netdev itself, but is instead the
central point that various channels (control, data, gps, sim card, etc)
register with. That way the wwan_dev can provide an overall view of the
WWAN device to userspace, and userspace can talk to the wwan_dev to ask
the lower drivers (ipa, rmnet, etc) to create new channels (netdev,
tty, otherwise) when the control channel has told the modem firmware to
expect one.

For example, say you have told the firmware to create a new data
channel with ID 5 via QMI (which the kernel is unaware of because it
does not process higher-level QMI requests).

Perhaps (and this is all just brainstorming) then userspace asks the
wwan_dev to create a new data channel with ID 5 and a certain QoS. IPA
(or rmnet because that's the data channel provider for IPA) has
registered callbacks to the wwan_dev, receives this request, and
creates a new rmnet_dev/net_device, and then the wwan_dev passes the
ifindex back to userspace so we don't have to play the dance of "match
up my request with a random netlink ADD event".

The point being that since data channels aren't actually useful until
the control channel agrees with the firmware that one should exist, if
we have a wwan_dev that represents the entire WWAN device then we don't
need the initial-but-useless net_device.

Just some thoughts; Johannes can feel free to correct me at any time :)

> Where each layer is a specialization of the next. Note: this is a
> common change when moving from proprietary code to upstream
> code. If a driver module is designed to live out of tree, there
> is a strong incentive to limit the number of interfaces it uses,
> but when it gets merged, it becomes much more flexible, as
> an internal interface between wwan_dev and the hardware driver(s)
> can be easily changed by modifying all drivers at once.

Yep, I've seen this time and time again.

Dan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
