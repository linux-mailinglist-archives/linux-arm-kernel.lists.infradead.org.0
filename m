Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A97A4ABF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 22:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVDnfSUG1nhJRLXrLdJuW2qYuMwC5q5Cb4uprlAaRxo=; b=FG/npl8FE6aaPV
	WyaWQyb04EC3o21bFPaKhyOgPzPlGVBFuZKr2R0Y0oRmrf3HAXydc7nHbjYeJKlAMJVzxrooTFRRj
	qaC1ep312clzJM3rEuLGGjNszhTQCF81uKCk2h6dj7pa0t49LA/vGGOnS7aSQppH4BmCO4pJUqp2s
	4rkCWNPCVwGV73b6eS5UjB0qtn2MRIjwZ0diZSp7vRsPyrNaZAj0MOjnREJyg7iEpfyyXVn80JFBo
	z/MqEgoACgYirEVL6tQFIVqQQ9ioEvl3yYJzx2MUs8ePiMcYOP3wTE1aEJSwntUQX68NjUUlCblXt
	AkAQT/Y2PVqUHxL2XKaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdKtU-0003Dw-P8; Tue, 18 Jun 2019 20:39:52 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdKtE-0003DX-Fm
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 20:39:37 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hdKt4-0006wN-US; Tue, 18 Jun 2019 22:39:27 +0200
Message-ID: <54a5acb6cf26ebc6447f8ebcbdcb8e0eed693ab3.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 18 Jun 2019 22:39:24 +0200
In-Reply-To: <CAK8P3a29+JKbDdS9ikhgaKa-AJ1qd1sDMTAfzivGh5wN4VL88A@mail.gmail.com>
 (sfid-20190618_223407_865082_9D7B2E70)
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
 (sfid-20190618_223407_865082_9D7B2E70)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_133936_529615_A2AEB115 
X-CRM114-Status: GOOD (  18.61  )
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

On Tue, 2019-06-18 at 22:33 +0200, Arnd Bergmann wrote:

> > Yeah, but where do you hang that driver? Maybe the TTY function is
> > actually a WWAN specific USB driver, but the ethernet is something
> > generic that can also work with pure ethernet USB devices, and it's
> > difficult to figure out how to tie those together. The modules could
> > load in completely different order, or even the ethernet module could
> > load but the TTY one doesn't because it's not configured, or vice versa.
> 
> That was more or less my point: The current drivers exist, but don't
> lean themselves to fitting into a new framework, so maybe the best
> answer is not to try fitting them.
> 
> To clarify: I'm not suggesting to write new USB drivers for these at all,
> but instead keep three parts that are completely unaware of each other
> a)  a regular netdevice driver
> b)  a regular tty driver
> c)  the new wwan subsystem that expects a device to be created
>     from a hardware driver but knows nothing of a) and b)
> 
> To connect these together, we need one glue driver that implements
> the wwan_device and talks to a) and b) as the hardware. There are
> many ways to do that. One way would be to add a tty ldisc driver.
> A small user space helper opens the chardev, sets the ldisc
> and then uses an ldisc specific ioctl command to create a wwan
> device by passing an identifier of the netdevice and then exits.
> From that point on, you have a wwan device like any other.

Well, ok. I don't think it'd really work that way ("passing an
identifier of the netdevice") because you could have multiple
netdevices, but I see what you mean in principle.

It seems to me though that this is far more complex than what I'm
proposing? What I'm proposing there doesn't even need any userspace
involvement, as long as all the pieces are in the different sub-drivers, 
they'd fall out automatically.

And realistically, the wwan_device falls out anyway at some point, the
only question is if we really make one specific driver be the "owner" of
it. I'm suggesting that we don't, and just make its lifetime depend on
the links to parts it has (unless something like IPA actually wants to
be an owner).

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
