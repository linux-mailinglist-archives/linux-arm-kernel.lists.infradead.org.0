Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAD1332C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SvG3HnGcFlOCM5jYT7mrei59gey7VaQlIQ74Lkdhv8Q=; b=OhS6VR/y0Em54u
	7BH5hIV80k5DlQvAGRTIgPBlFWNrvk7HW4A0mbQdVlnj2yLkGbnyVcdZ3BZuwzVm70PJN3RNI7+Ch
	E4KMlyK67CJ6IEIAnqyxbkcWExocToSm7+NDMkYl48HkDs5TEcdw6Kiw/FbPjfcPAVh574NOuTDwS
	S9S3LJdk8w5iNfBO4yEcjtFXJicsqRHDW8D/d9Fj5S2JQ4iOE0G/EWKtdRXa+4fdLNpuYZ7uRL5SH
	xez7LVgXqjk2fUGDGsMVPeH+NCRZCfi4sb7nmsI8sQ4BjTsP6WL3AQ+DEXhv12XfuepiMyYfPioYh
	Fsw0Ulz6i+TxpIKE+AIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXoMO-0008I7-QV; Mon, 03 Jun 2019 14:54:52 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoM3-00089P-8k
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:54:34 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A02D13107B08;
 Mon,  3 Jun 2019 14:54:30 +0000 (UTC)
Received: from ovpn-112-59.rdu2.redhat.com (ovpn-112-59.rdu2.redhat.com
 [10.10.112.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D7C2A5B686;
 Mon,  3 Jun 2019 14:54:26 +0000 (UTC)
Message-ID: <3b1e12b145a273dd3ded2864d976bdc5fa90e68a.camel@redhat.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Dan Williams <dcbw@redhat.com>
To: Alex Elder <elder@linaro.org>, Arnd Bergmann <arnd@arndb.de>
Date: Mon, 03 Jun 2019 09:54:26 -0500
In-Reply-To: <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Mon, 03 Jun 2019 14:54:30 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_075431_729776_7A48D9A7 
X-CRM114-Status: GOOD (  42.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Eric Caruso <ejcaruso@google.com>, Networking <netdev@vger.kernel.org>,
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

On Fri, 2019-05-31 at 15:47 -0500, Alex Elder wrote:
> On 5/31/19 2:19 PM, Arnd Bergmann wrote:
> > On Fri, May 31, 2019 at 6:36 PM Alex Elder <elder@linaro.org>
> > wrote:
> > > On 5/31/19 9:58 AM, Dan Williams wrote:
> > > > On Thu, 2019-05-30 at 22:53 -0500, Alex Elder wrote:
> > > > 
> > > > My question from the Nov 2018 IPA rmnet driver still stands;
> > > > how does
> > > > this relate to net/ethernet/qualcomm/rmnet/ if at all? And if
> > > > this is
> > > > really just a netdev talking to the IPA itself and unrelated to
> > > > net/ethernet/qualcomm/rmnet, let's call it "ipa%d" and stop
> > > > cargo-
> > > > culting rmnet around just because it happens to be a net driver
> > > > for a
> > > > QC SoC.
> > > 
> > > First, the relationship between the IPA driver and the rmnet
> > > driver
> > > is that the IPA driver is assumed to sit between the rmnet driver
> > > and the hardware.
> > 
> > Does this mean that IPA can only be used to back rmnet, and rmnet
> > can only be used on top of IPA, or can or both of them be combined
> > with another driver to talk to instead?
> 
> No it does not mean that.
> 
> As I understand it, one reason for the rmnet layer was to abstract
> the back end, which would allow using a modem, or using something
> else (a LAN?), without exposing certain details of the hardware.
> (Perhaps to support multiplexing, etc. without duplicating that
> logic in two "back-end" drivers?)
> 
> To be perfectly honest, at first I thought having IPA use rmnet
> was a cargo cult thing like Dan suggested, because I didn't see

To be clear I only meant cargo-culting the naming, not any
functionality. Clearly IPA/rmnet/QMAP are pretty intimately connected
at this point. But this goes back to whether IPA needs a netdev itself
or whether you need an rmnet device created on top. If the former then
I'd say no cargo-culting, if the later then it's a moot point because
the device name will be rmnet%d anyway.

Dan

> the benefit.  I now see why one would use that pass-through layer
> to handle the QMAP features.
> 
> But back to your question.  The other thing is that I see no
> reason the IPA couldn't present a "normal" (non QMAP) interface
> for a modem.  It's something I'd really like to be able to do,
> but I can't do it without having the modem firmware change its
> configuration for these endpoints.  My access to the people who
> implement the modem firmware has been very limited (something
> I hope to improve), and unless and until I can get corresponding
> changes on the modem side to implement connections that don't
> use QMAP, I can't implement such a thing.
> 
> > > Currently the modem is assumed to use QMAP protocol.  This means
> > > each packet is prefixed by a (struct rmnet_map_header) structure
> > > that allows the IPA connection to be multiplexed for several
> > > logical
> > > connections.  The rmnet driver parses such messages and
> > > implements
> > > the multiplexed network interfaces.
> > > 
> > > QMAP protocol can also be used for aggregating many small packets
> > > into a larger message.  The rmnet driver implements de-
> > > aggregation
> > > of such messages (and could probably aggregate them for TX as
> > > well).
> > > 
> > > Finally, the IPA can support checksum offload, and the rmnet
> > > driver handles providing a prepended header (for TX) and
> > > interpreting the appended trailer (for RX) if these features
> > > are enabled.
> > > 
> > > So basically, the purpose of the rmnet driver is to handle QMAP
> > > protocol connections, and right now that's what the modem
> > > provides.
> > 
> > Do you have any idea why this particular design was picked?
> 
> I don't really.  I inherited it.  Early on, when I asked about
> the need for QMAP I was told it was important because it offered
> certain features, but at that time I was somewhat new to the code
> and didn't have the insight to judge the merits of the design.
> Since then I've mostly just accepted it and concentrated on
> improving the IPA driver.
> 
> > My best guess is that it evolved organically with multiple
> > generations of hardware and software, rather than being thought
> > out as a nice abstraction layer. If the two are tightly connected,
> > this might mean that what we actually want here is to reintegrate
> > the two components into a single driver with a much simpler
> > RX and TX path that handles the checksumming and aggregation
> > of data packets directly as it passes them from the network
> > stack into the hardware.
> 
> In general, I agree.  And Dan suggested combining the rmnet
> and IPA drivers into a single driver when I posted the RFC
> code last year.  There's still the notion of switching back
> ends that I mentioned earlier; if that's indeed an important
> feature it might argue for keeping rmnet as a shim layer.
> But I'm really not the person to comment on this.  Someone
> (Subash?) from Qualcomm might be able to provide better answers.
> 
> > Always passing data from one netdev to another both ways
> > sounds like it introduces both direct CPU overhead, and
> > problems with flow control when data gets buffered inbetween.
> 
> My impression is the rmnet driver is a pretty thin layer,
> so the CPU overhead is probably not that great (though
> deaggregating a message is expensive).  I agree with you
> on the flow control.
> 
> > The intermediate buffer here acts like a router that must
> > pass data along or randomly drop packets when the consumer
> > can't keep up with the producer.
> 
> I haven't reviewed the rmnet code in any detail, but you
> may be right.
> 
> 					-Alex
> 
> >         Arnd
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
