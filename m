Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BD648115
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:43:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cI4WjxSAtkU/Hp3Xq5fqA0YsV4E9QdMLjPl5ZI6t7+s=; b=NOfjGawsS5pnpS
	NKazwgL4AoLdBzJS0jA7YdyHxCFw7+UjX8J1T4fVyAwnE8pG04ADeqFVeXTXVwDuGnAgc7KIU+S/+
	cGkGaw5bjlJiAUzSk/rxzzx1dP1VnEnrANu5d+XqpniMbalZ1rwvEAoER9PRu7rlGT4EcCgau0yB7
	O//Jr917a58W0ROx6/5mzx3ScZBS4yvABqNyCpERMFn586LCyzG587a3edqdgcw+ZBkhjG2UK41IO
	W3jdyP596hfWmFVzxOeYc288F8c5vO1iwitE4R9WpKPMhSV3DPi2kTwcbkwqlhRj3obhocswZxv5h
	UghHiURNHBqA+EaXbX6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcq2U-0001hC-Lg; Mon, 17 Jun 2019 11:43:06 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcq2F-0001gg-CH
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:42:52 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hcq22-0003pC-6x; Mon, 17 Jun 2019 13:42:38 +0200
Message-ID: <dbb32f185d2c3a654083ee0a7188379e1f88d899.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Arnd Bergmann <arnd@arndb.de>, Dan Williams <dcbw@redhat.com>
Date: Mon, 17 Jun 2019 13:42:36 +0200
In-Reply-To: <CAK8P3a2nzZKtshYfomOOSYkqx5HdU15Wr9b+3va0B1euNhFOAg@mail.gmail.com>
 (sfid-20190612_170637_190349_3B0027EE)
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <fc0d08912bc10ad089eb74034726308375279130.camel@redhat.com>
 <36bca57c999f611353fd9741c55bb2a7@codeaurora.org>
 <153fafb91267147cf22e2bf102dd822933ec823a.camel@redhat.com>
 <CAK8P3a2Y+tcL1-V57dtypWHndNT3eDJdcKj29c_v+k8o1HHQig@mail.gmail.com>
 <f4249aa5f5acdd90275eda35aa16f3cfb29d29be.camel@redhat.com>
 <CAK8P3a2nzZKtshYfomOOSYkqx5HdU15Wr9b+3va0B1euNhFOAg@mail.gmail.com>
 (sfid-20190612_170637_190349_3B0027EE)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_044251_420994_4D4FE180 
X-CRM114-Status: GOOD (  27.79  )
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
 Eric Caruso <ejcaruso@google.com>, David Miller <davem@davemloft.net>,
 linux-arm-msm@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Networking <netdev@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-12 at 17:06 +0200, Arnd Bergmann wrote:
> On Wed, Jun 12, 2019 at 4:28 PM Dan Williams <dcbw@redhat.com> wrote:
> > On Wed, 2019-06-12 at 10:31 +0200, Arnd Bergmann wrote:
> > > On Tue, Jun 11, 2019 at 7:23 PM Dan Williams <dcbw@redhat.com> wrote:
> > 
> > I was trying to make the point that rmnet doesn't need to care about
> > how the QMAP packets get to the device itself; it can be pretty generic
> > so that it can be used by IPA/qmi_wwan/rmnet_smd/etc.
> 
> rmnet at the moment is completely generic in that regard already,
> however it is implemented as a tunnel driver talking to another
> device rather than an abstraction layer below that driver.

It doesn't really actually *do* much other than muck with the headers a
small amount, but even that isn't really much.

You can probably implement that far more efficiently on some devices
where you have a semi-decent DMA engine that at least supports S/G.

> > > I understand that the rmnet model was intended to provide a cleaner
> > > abstraction, but it's not how we normally structure subsystems in
> > > Linux, and moving to a model more like how wireless_dev works
> > > would improve both readability and performance, as you describe
> > > it, it would be more like (ignoring for now the need for multiple
> > > connections):
> > > 
> > >    ipa_dev
> > >         rmnet_dev
> > >                wwan_dev
> > >                       net_device
> > 
> > Perhaps I'm assuming too much from this diagram but this shows a 1:1
> > between wwan_dev and "lower" devices.

I guess the fuller picture would be something like

ipa_dev
	rmnet_dev
		wwan_dev
			net_device*

(i.e. with multiple net_devices)

> > What Johannes is proposing (IIRC) is something a bit looser where a
> > wwan_dev does not necessarily provide netdev itself, but is instead the
> > central point that various channels (control, data, gps, sim card, etc)
> > register with. That way the wwan_dev can provide an overall view of the
> > WWAN device to userspace, and userspace can talk to the wwan_dev to ask
> > the lower drivers (ipa, rmnet, etc) to create new channels (netdev,
> > tty, otherwise) when the control channel has told the modem firmware to
> > expect one.

Yeah, that's more what I had in mind after all our discussions (will
continue this below).

> Right, as I noted above, I simplified it a bit. We probably want to
> have multiple net_device instances for an ipa_dev, so there has
> to be a 1:n relationship instead of 1:1 at one of the intermediate
> levels, but it's not obvious which level that should be.
> 
> In theory we could even have a single net_device instance correspond
> to the ipa_dev, but then have multiple IP addresses bound to it,
> so each IP address corresponds to a channel/queue/napi_struct,
> but the user visible object remains a single device.

I don't think this latter (multiple IP addresses) works well - you want
a hardware specific header ("ETH_P_MAP") to carry the channel ID,
without looking up the IP address and all that.


But anyway, as I alluded to above, I had something like this in mind:

driver_dev
  struct device *dev (USB, PCI, ...)
  net_device NA
  net_device NB
  tty TA
 ...

(I'm cutting out the rmnet layer here for now)

while having a separate that just links all the pieces together:

wwan_device W
  ---> dev
  ---> NA
  ---> NB
  ---> TA

So the driver is still responsible for creating the netdevs (or can of
course delegate that to an "rmnet" library), but then all it also does
is register the netdevs with the WWAN core like

	wwan_add_netdev(dev, NA)

and the WWAN core would allocate the wwan_device W for this.

That way, the drivers can concentrate on providing all the necessary
bits, and - crucially - even *different* drivers can end up linking to
the same wwan_device. For example, if you have a modem that has a multi-
function USB device, then an ethernet driver might create the netdev and
a tty driver might create the control channel, but if they both agree on
using the right "struct device" instance, you can still get the correct
wwan_device out of it all.

And, in fact, some should then be

	wwan_maybe_add_netdev(dev, N)

because the ethernet driver may not know if it attached to a modem or
not, but if the control channel also attaches it's a modem for sure,
with that ethernet channel attached to it.

Additionally, I'm thinking API such as

	wwan_add(dev, &ops, opsdata)

that doesn't automatically attach any channels, but provides "ops" to
the core to create appropriate channels. I think this latter would be
something for IPA/rmnet to use, perhaps for rmnet to offer the right ops
structure.

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
