Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 619525516D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlIKDcjjaCrylq/KCnW7aU3Up/cVipz0xQQp6CKw58U=; b=iS53yrLTcG24m3
	WVFk4jgChkdOA5ROE2UEPxw2fDTtJYVDCgNPr3aQ0Zx+6l1QdxQ/vmGhfzx4rdbC6FWeP6nAWERGh
	5u/SBMiQdctDE7HchyNKUyjibaCj4X1ZGxnHC6eAQf6sBQ0AdnYiuSEJB/56mARD6TgPLeXhU+pOB
	qXY/5mbQ5EWqTpJc4o5bOFIpD8Rlg1SZXQfutG61WaTr+UaGx5U7qnFYXBYQkckT3Lg95GTQ9Jax2
	Milonm87t8Zw/VXaj0CTtV+kliBCVaCXEFambRuUKe77l+2HnY7AlD2A5UQF4Bp3ucxJ3WZJ+KVDB
	b3i9GAPty5g9Sl4hZT/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmJ3-0007Od-0I; Tue, 25 Jun 2019 14:20:21 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmIl-0006qt-Vg
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:20:05 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hfmId-0005Mb-Le; Tue, 25 Jun 2019 16:19:55 +0200
Message-ID: <efbcb3b84ff0a7d7eab875c37f3a5fa77e21d324.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Arnd Bergmann <arnd@arndb.de>, Alex Elder <elder@linaro.org>
Date: Tue, 25 Jun 2019 16:19:54 +0200
In-Reply-To: <CAK8P3a1ixL9ZjYz=pWTxvMfeD89S6QxSeHt9ZCL9dkCNV5pMHQ@mail.gmail.com>
 (sfid-20190624_184119_378618_FFFDB00F)
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
 <db34aa39-6cf1-4844-1bfe-528e391c3729@linaro.org>
 <CAK8P3a1ixL9ZjYz=pWTxvMfeD89S6QxSeHt9ZCL9dkCNV5pMHQ@mail.gmail.com>
 (sfid-20190624_184119_378618_FFFDB00F)
X-Mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_072004_024430_6EA94FF4 
X-CRM114-Status: GOOD (  33.85  )
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
 Eric Caruso <ejcaruso@google.com>, David Miller <davem@davemloft.net>,
 Dan Williams <dcbw@redhat.com>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-06-24 at 18:40 +0200, Arnd Bergmann wrote:
> On Mon, Jun 24, 2019 at 6:21 PM Alex Elder <elder@linaro.org> wrote:
> > On 6/18/19 2:03 PM, Johannes Berg wrote:
> > 
> > > Really there are two possible ways (and they intersect to some extent).
> > > 
> > > One is the whole multi-function device, where a single WWAN device is
> > > composed of channels offered by actually different drivers, e.g. for a
> > > typical USB device you might have something like cdc_ether and the
> > > usb_wwan TTY driver. In this way, we need to "compose" the WWAN device
> > > similarly, e.g. by using the underlying USB device "struct device"
> > > pointer to tie it together.
> > 
> > I *think* this model makes the most sense.  But at this point
> > it would take very little to convince me otherwise...  (And then
> > I saw Arnd's message advocating the other one, unfortunately...)
> > 
> > > The other is something like IPA or the Intel modem driver, where the
> > > device is actually a single (e.g. PCIe) device and just has a single
> > > driver, but that single driver offers different channels.
> > 
> > What I don't like about this is that it's more monolithic.  It
> > seems better to have the low-level IPA or Intel modem driver (or
> > any other driver that can support communication between the AP
> > and WWAN device) present communication paths that other function-
> > specific drivers can attach to and use.
> 
> I did not understand Johannes description as two competing models
> for the same code, but rather two kinds of existing hardware that
> a new driver system would have to deal with.

Right.

> I was trying to simplify it to just having the second model, by adding
> a hack to support the first, but my view was rather unpopular so
> far, so if everyone agrees on one way to do it, don't worry about me ;-)

:-)

However, to also reply to Alex: I don't know exactly how IPA works, but
for the Intel modem at least you can't fundamentally have two drivers
for different parts of the functionality, since it's just a single piece
of hardware and you need to allocate hardware resources from a common
pool etc. So you cannot split the driver into "Intel modem control
channel driver" and "Intel modem data channel driver". In fact, it's
just a single "struct device" on the PCIe bus that you can bind to, and
only one driver can bind at a time.

So, IOW, I'm not sure I see how you'd split that up. I guess you could
if you actually do something like the "rmnet" model, and I suppose
you're free to do that for IPA if you like, but I tend to think that's
actually a burden, not a win since you just get more complex code that
needs to interact with more pieces. A single driver for a single
hardware that knows about the few types of channels seems simpler to me.

> - to answer Johannes question, my understanding is that the interface
>   between kernel and firmware/hardware for IPA has a single 'struct
>   device' that is used for both the data and the control channels,
>   rather than having a data channel and an independent control device,
>   so this falls into the same category as the Intel one (please correct
>   me on that)

That sounds about the same then, right.

Are the control channels to IPA are actually also tunnelled over the
rmnet protocol? And even if they are, perhaps they have a different
hardware queue or so? That'd be the case for Intel - different hardware
queue, same (or at least similar) protocol spoken for the DMA hardware
itself, but different contents of the messages obviously.

> - The user space being proprietary is exactly what we need to avoid
>   with the wwan subsystem. We need to be able to use the same
>   method for setting up Intel, Qualcomm, Samsung, Unisoc or
>   Hisilicon modems or anything else that hooks into the subsystem,
>   and support that in network manager as well as the Android
>   equivalent.
>   If Qualcomm wants to provide their own proprietary user space
>   solution, we can't stop them, but then that should also work on
>   all the others unless they intentionally break it. ;-)

:-)

I tend to think there's always going to be some level of specific
handling here, because e.g. the Intel modem can expose MBIM or AT
command control channels, but not much else (that'd be useful for us
anyway, since we don't know how to speak debug protocol etc.). Other
modems will expose *only* AT commands, or *only* MBIM, and yet others
may also offer QMI and then that might be preferable.

> > > and simply require that the channel is attached to the wwan device with
> > > the representation-specific call (wwan_attach_netdev, wwan_attach_tty,
> > > ...).
> > 
> > Or maybe have the WWAN device present interfaces with attributes,
> > and have drivers that are appropriate for each interface attach
> > to only the ones they recognize they support.
> 
> I think you both mean the same thing here, a structure with callback
> pointers that may or may not be filled by the driver depending on its
> capabilities.

:-)

> What we should try to avoid though is a way to add driver private
> interfaces that risk having multiple drivers create similar functionality
> in incompatible ways.

Right.

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
