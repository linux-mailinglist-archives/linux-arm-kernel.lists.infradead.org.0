Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6584E4C29A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=um0f6L74Bju6JrBI/tUxrdkFk9x5oJuY8uwGSHnF6LU=; b=a8iVrEGYI5+BBb
	0lcMG/rmatFLzwgbno7EbXJ5kYUh/miVVOcr6fA4Avq1poLD0scNnb1auSuBCOFfEmoSHOXv5PnZI
	5ck80Gm32Od/GGzHyxfRo/0dmGHzPtKCLC/FxIYbZehRI10cuItfdNTYaEC5mPTDjIVeXnOsZU3uc
	BxIkYNVUSEa/68fYciktHm6uoA4lYHcHpCHlf2eOhOIAgO4lp7CEBrBlwnoRryB+DHxuHirtILsRJ
	WimNHNsQvwSkF7Ex+LkRQNyJ1JQm5Dj20Ev7mUX+eOuGeQFrKU6DRn0aER5ChsEX1nzg5WYZAS+Qw
	DMEy9ZoxjH/udJkenYUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdhe1-0000fE-GR; Wed, 19 Jun 2019 20:57:25 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdhdn-0000eQ-QJ
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 20:57:13 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A385B30C1330;
 Wed, 19 Jun 2019 20:57:06 +0000 (UTC)
Received: from ovpn-112-53.rdu2.redhat.com (ovpn-112-53.rdu2.redhat.com
 [10.10.112.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DACED608A7;
 Wed, 19 Jun 2019 20:56:59 +0000 (UTC)
Message-ID: <414bc504bf62ea8de2ad195c00ce64dc0acb773c.camel@redhat.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Dan Williams <dcbw@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>, Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 19 Jun 2019 15:56:58 -0500
In-Reply-To: <CAK8P3a3r95gXMdq7s9GF=37v6t4kR+-2iyC6bnmUDVuM+bn80Q@mail.gmail.com>
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
 <CAK8P3a3ksrFTo2+dLB+doLeY+kPP7rYxv2O7BwvjYgK2cwCTuQ@mail.gmail.com>
 <97cbfb3723607c95d78e25785262ae7b0acdb11c.camel@sipsolutions.net>
 <CAK8P3a29+JKbDdS9ikhgaKa-AJ1qd1sDMTAfzivGh5wN4VL88A@mail.gmail.com>
 <54a5acb6cf26ebc6447f8ebcbdcb8e0eed693ab3.camel@sipsolutions.net>
 <CAK8P3a3r95gXMdq7s9GF=37v6t4kR+-2iyC6bnmUDVuM+bn80Q@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 19 Jun 2019 20:57:07 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_135711_884360_6BE700DF 
X-CRM114-Status: GOOD (  21.76  )
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
 linux-soc@vger.kernel.org, abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-18 at 23:06 +0200, Arnd Bergmann wrote:
> On Tue, Jun 18, 2019 at 10:39 PM Johannes Berg
> <johannes@sipsolutions.net> wrote:
> > On Tue, 2019-06-18 at 22:33 +0200, Arnd Bergmann wrote:
> > It seems to me though that this is far more complex than what I'm
> > proposing? What I'm proposing there doesn't even need any userspace
> > involvement, as long as all the pieces are in the different sub-
> > drivers,
> > they'd fall out automatically.
> > 
> > And realistically, the wwan_device falls out anyway at some point,
> > the
> > only question is if we really make one specific driver be the
> > "owner" of
> > it. I'm suggesting that we don't, and just make its lifetime depend
> > on
> > the links to parts it has (unless something like IPA actually wants
> > to
> > be an owner).
> 
> My feeling so far is that having the wwan_device be owned by a device
> gives a nicer abstraction model that is also simpler for the common
> case. A device driver like ipa would end up with a probe() function
> that does does wwan_device_alloc/wwan_device_register, corresponding
> to alloc_etherdev/register_netdev, and then communicates through
> callbacks.
> 
> I agree the compound device case would get more complex by
> shoehorning it into this model, but that can be a valid tradeoff
> if it's the exceptional case rather than the common one.

In my experience, the compound device model is by far the most
prevalent for regular Linux distros or anything *not* running on an SoC
with an integrated modem.

But it's also quite common for Android, no? drivers/net/ethernet/msm/
has rmnet and IPA ethernet drivers while arch/arm/mach-msm/ has various
SMD-related control channel drivers like smd_tty.c and smd_qmi.c and
smd_nmea.c. At least that's how I remember older SMD-based devices
being in the 8xxx and 9xxx time.

Ideally those setups can benefit from this framework as well, without
having to write entirely new composite drivers for those devices.

Dan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
