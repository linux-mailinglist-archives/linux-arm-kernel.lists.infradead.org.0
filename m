Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159AE56FCC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 19:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlSszBzXkGEI0fQIRPXCqZzzilYYERHp+FW4ZPj3uDE=; b=RcsN6jdqW+r7Bb
	kOZFOltWiR7onOMruPSfxFpi677STPYz7NlZoyMTLhfEgIYm8DKI2/EvlHL+IZwknLyiFnj4w3N9w
	UUleuItjDLoTB/9xWOxy0fprg9gEdovtwlw+iPqnf7qSansPo2Yrxq+mXM3X5fyWuodeT16ZPCfQi
	l+PBALEMUdjV5OUGmdfxX6CsYM1j7iZFbJobyChz3MpXUw17XjakwjSi5/Sv91tfRZ2W19EJWQWZP
	cUTtUrL9fK5qrcj9y6MbEYDTP0DQuYQl74XK70v4LBqU7xk79CisgfRzPzMecBiFAnng7TURnCpKh
	FTyF3/LFNELKc23MMMiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgBzP-0002Kq-QT; Wed, 26 Jun 2019 17:45:47 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgBz1-0002EL-Qq
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 17:45:26 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hgByp-0007sg-J1; Wed, 26 Jun 2019 19:45:11 +0200
Message-ID: <8bcefe5c5e4697a0c0b1543ef386bc8268c19d76.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Alex Elder <elder@linaro.org>, Arnd Bergmann <arnd@arndb.de>
Date: Wed, 26 Jun 2019 19:45:07 +0200
In-Reply-To: <edea19ef-f225-bdcd-f394-77e326d1d3ad@linaro.org>
 (sfid-20190626_153939_653069_ADB7A601)
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
 <efbcb3b84ff0a7d7eab875c37f3a5fa77e21d324.camel@sipsolutions.net>
 <edea19ef-f225-bdcd-f394-77e326d1d3ad@linaro.org>
 (sfid-20190626_153939_653069_ADB7A601)
X-Mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_104524_590015_88F91820 
X-CRM114-Status: GOOD (  33.76  )
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

On Wed, 2019-06-26 at 08:39 -0500, Alex Elder wrote:

> > However, to also reply to Alex: I don't know exactly how IPA works, but
> > for the Intel modem at least you can't fundamentally have two drivers
> > for different parts of the functionality, since it's just a single piece
> > of hardware and you need to allocate hardware resources from a common
> > pool etc. So you cannot split the driver into "Intel modem control
> > channel driver" and "Intel modem data channel driver". In fact, it's
> > just a single "struct device" on the PCIe bus that you can bind to, and
> > only one driver can bind at a time.
> 
> Interesting.  So a single modem driver needs to implement
> *all* of the features/functions?  Like GPS or data log or
> whatever, all needs to share the same struct device?
> Or does what you're describing apply to a subset of the
> modem's functionality?  Or something else?

Well, what is even the "implement the functions"? I mean, as kernel
drivers we're really just in the business of providing communication
channels to those functions. E.g. if you have a GNSS/GPS device, you
might just have another TTY channel with NMEA data coming out, or
something like that, right?

But from a kernel POV yes, I don't see how you could create multiple
function drivers for something behind the same PCIe device (unless it
actually appeared as multiple virtual functions or such, like the bigger
ethernet NICs, but it doesn't).

But this points out to me that I was actually not quite accurate when I
spoke about struct device before in the USB context with function
drivers, but I have to do some research before I can correct myself
correctly.

> > So, IOW, I'm not sure I see how you'd split that up. I guess you could
> > if you actually do something like the "rmnet" model, and I suppose
> > you're free to do that for IPA if you like, but I tend to think that's
> > actually a burden, not a win since you just get more complex code that
> > needs to interact with more pieces. A single driver for a single
> > hardware that knows about the few types of channels seems simpler to me.
> > 
> > > - to answer Johannes question, my understanding is that the interface
> > >   between kernel and firmware/hardware for IPA has a single 'struct
> > >   device' that is used for both the data and the control channels,
> > >   rather than having a data channel and an independent control device,
> > >   so this falls into the same category as the Intel one (please correct
> > >   me on that)
> 
> I don't think that's quite right, but it might be partially
> right.  There is a single device representing IPA, but the
> picture is a little more complicated.
> 
> The IPA hardware is actually something that sits *between* the
> AP and the modem.  It implements one form of communication
> pathway (IP data), but there are others (including QMI, which
> presents a network-like interface but it's actually implemented
> via clever use of shared memory and interrupts).

OK.

Well, I guess this then might eventually become a bit of a hybrid - you
eventually want one WWAN device to represent it all to userspace, but
might actually have multiple devices with different drivers (from the
kernel POV)?

But this is more like all the USB devices work. I just have to figure
out how to correctly tie them together - "struct device" may or may not
be right? I need to check how this functions.

I guess for something where you have DT (like you allude to elsewhere)
you could just capture all this in DT by having some phandle link or
something?

> What we're talking about here is WWAN/modem management more
> generally though.  It *sounds* like the Intel modem is
> more like a single device, which requires a single driver,
> that seems to implement a bunch of distinct functions.

Yes.

> On this I'm not very knowledgeable but for Qualcomm there is
> user space code that is in charge of overall management of
> the modem.  It implements what I think you're calling control
> functions, negotiating with the modem to allow new data channels
> to be created.  Normally the IPA driver would provide information
> to user space about available resources, but would only make a
> communication pathway available when requested.

Right.

> > Are the control channels to IPA are actually also tunnelled over the
> > rmnet protocol? And even if they are, perhaps they have a different
> > hardware queue or so? That'd be the case for Intel - different hardware
> > queue, same (or at least similar) protocol spoken for the DMA hardware
> > itself, but different contents of the messages obviously.
> 
> I want to be careful talking about "control" but for IPA it comes
> from user space.  For the purpose of getting initial code upstream,
> all of that control functionality (which was IOCTL based) has been
> removed, and a fixed configuration is assumed.

But something that's ioctl based is just one form of "control" pathway.
I was thinking of the AT or MBIM commands "control" channel. And then
ioctls are likely something that terminates in the *driver*, right? I
mean, the driver wouldn't get an ioctl and actually talk AT commands to
the device ...

But yes, the various control planes are confusing, we need to
disentangle that. I tried over in the other email by layering where the
control terminates.

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
