Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60440518E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MaJ1ken/Ekv1UQyR96qd/KobgXZqw1ACJQQqzYTI6Uk=; b=PgGhlE5jU5Es4C
	YcaCTkh9ppUlUqrXcQpdBwyKeiM5QQcx553seksSVbxbdXV8KS8PGuN9RuMQiu1HqU3eZwaXTjbvs
	7VkB5XiSxebqgbD2hitgspBJsHJUo3kxKYQ1z0CCx3yGHtCx4sGiBWy5tV5QfhTv7tb+wxifXPfDm
	OEC6QF5K5znNxCv6wINvTmLsV7hmxCaVOIXtFydCgwOHYPxfCokb4HDan5RZ08d/LqgeldeCt8z/r
	R3uP1gOQDF7fgLGOfWvRRtZWDX42NrBTZv3gF+a0b+UnqWlPj6TPHfcsSeMNfVUBrad3O8EXi3Omc
	H+anyISS17ly13qEgZWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfS29-0002qW-JN; Mon, 24 Jun 2019 16:41:33 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfS1z-0002pP-Cy
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 16:41:24 +0000
Received: by mail-qk1-f196.google.com with SMTP id l128so10243325qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 09:41:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UdA6Y6qkEPNcox/R4AD5p5PdgoW5IX8dJGvSgmjWmkg=;
 b=Skgk50oyz69XZYLQmDO4I/zHDRnJPBydrj/sREqKR6ut5/7Nh80ILNrAxtcbI8IOzI
 VfJlkXjJkPwudlqdA847F7Zo/o+e6HSzkNPwlZvlDPpV0xUeDXmA+esyggfSK+fBZzPp
 ct8rPdsbmmnko1VH0fwOqUPl9geKXcrnqFbbMjncLHNtmKFx/ZIYHDAAR3An/mi5A614
 XxcYfyf2o7Q3U04xnhu/D2vyxkMeKCvc+hrRr1+xfmfMOUhor8QD9ISWA0igIDD9JGGO
 lZXKagwuIFyFK/ad9vJXfetdlwALHO2u4S6li+awyxb+Lg8KzCUAnVbtGdTV1Jdi2pc/
 W8nQ==
X-Gm-Message-State: APjAAAVyuvI7XNeI0XSMyRUM2w/MqviChjwEi2TZijFzAUZFDpNzHu1/
 miapoVRs5DaSi0T2oX9coiKvntmA/as+wrMEsqE=
X-Google-Smtp-Source: APXvYqx9IXxZ67+F4onDygsWo++RwTBrZyAF3TvR7CC3NoZfdYBTRnVe65OvdwgLfjKt586ottXwhlgpI1RplTtFttg=
X-Received: by 2002:a05:620a:12db:: with SMTP id
 e27mr111628534qkl.352.1561394477622; 
 Mon, 24 Jun 2019 09:41:17 -0700 (PDT)
MIME-Version: 1.0
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
In-Reply-To: <db34aa39-6cf1-4844-1bfe-528e391c3729@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 24 Jun 2019 18:40:57 +0200
Message-ID: <CAK8P3a1ixL9ZjYz=pWTxvMfeD89S6QxSeHt9ZCL9dkCNV5pMHQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Alex Elder <elder@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_094123_444478_A7791776 
X-CRM114-Status: GOOD (  26.39  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 6:21 PM Alex Elder <elder@linaro.org> wrote:
> On 6/18/19 2:03 PM, Johannes Berg wrote:
>
> > Really there are two possible ways (and they intersect to some extent).
> >
> > One is the whole multi-function device, where a single WWAN device is
> > composed of channels offered by actually different drivers, e.g. for a
> > typical USB device you might have something like cdc_ether and the
> > usb_wwan TTY driver. In this way, we need to "compose" the WWAN device
> > similarly, e.g. by using the underlying USB device "struct device"
> > pointer to tie it together.
>
> I *think* this model makes the most sense.  But at this point
> it would take very little to convince me otherwise...  (And then
> I saw Arnd's message advocating the other one, unfortunately...)
>
> > The other is something like IPA or the Intel modem driver, where the
> > device is actually a single (e.g. PCIe) device and just has a single
> > driver, but that single driver offers different channels.
>
> What I don't like about this is that it's more monolithic.  It
> seems better to have the low-level IPA or Intel modem driver (or
> any other driver that can support communication between the AP
> and WWAN device) present communication paths that other function-
> specific drivers can attach to and use.

I did not understand Johannes description as two competing models
for the same code, but rather two kinds of existing hardware that
a new driver system would have to deal with.

I was trying to simplify it to just having the second model, by adding
a hack to support the first, but my view was rather unpopular so
far, so if everyone agrees on one way to do it, don't worry about me ;-)

> > Now, it's not clear to me where IPA actually falls, because so far we've
> > been talking about the IPA driver only as providing *netdevs*, not any
> > control channels, so I'm not actually sure where the control channel is.
>
> There is user space code that handles all of this, and as far as I
> can tell, parts of it will always remain proprietary.

Two replies on this:

- to answer Johannes question, my understanding is that the interface
  between kernel and firmware/hardware for IPA has a single 'struct
  device' that is used for both the data and the control channels,
  rather than having a data channel and an independent control device,
  so this falls into the same category as the Intel one (please correct
  me on that)

- The user space being proprietary is exactly what we need to avoid
  with the wwan subsystem. We need to be able to use the same
  method for setting up Intel, Qualcomm, Samsung, Unisoc or
  Hisilicon modems or anything else that hooks into the subsystem,
  and support that in network manager as well as the Android
  equivalent.
  If Qualcomm wants to provide their own proprietary user space
  solution, we can't stop them, but then that should also work on
  all the others unless they intentionally break it. ;-)

> > and simply require that the channel is attached to the wwan device with
> > the representation-specific call (wwan_attach_netdev, wwan_attach_tty,
> > ...).
>
> Or maybe have the WWAN device present interfaces with attributes,
> and have drivers that are appropriate for each interface attach
> to only the ones they recognize they support.

I think you both mean the same thing here, a structure with callback
pointers that may or may not be filled by the driver depending on its
capabilities.

What we should try to avoid though is a way to add driver private
interfaces that risk having multiple drivers create similar functionality
in incompatible ways.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
