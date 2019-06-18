Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5594AAF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 21:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5Sfepgvs2k2cQPstOg+c9sIzWYgJucbmCbn7mkPQzE=; b=lfjHmUbZ6jlkAC
	OIbf2glGfLqn+W89OpQU7CejVG24D2zHiDvRNhW8hxSPscQBvvwlORwqXPQF+Mbex1AyGvqbxErVl
	SWCyuQVNlQeuEr6RfhhF+CcHevV8ObBhJpsrxgVyltjj3QTRPvvux11jPQ9wgdq+fJqGQK35soZgH
	adQ0NnVSTjO793ruYDVC+vFypoWoWQ/K0KXnjoNiUMeembKBLU5oMo863F9FfTl/ku46nYOxN7bUF
	tkdEmFsPNKda4VCbMpvqMWFRhSmoMBTk0BbIZPf6V3CxKM0q8B9T6mIUNgXkzs9Rt1fuag1/lrHFm
	PtIjtg9hKbxTAX94DJ1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdJgj-0003GI-AK; Tue, 18 Jun 2019 19:22:37 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdJgY-0003Fm-Uc
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 19:22:28 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hdJgO-0005LX-Ie; Tue, 18 Jun 2019 21:22:16 +0200
Message-ID: <b90977f94df020986c6bb490e7fd0262603726b0.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Alex Elder <elder@linaro.org>, Arnd Bergmann <arnd@arndb.de>
Date: Tue, 18 Jun 2019 21:22:14 +0200
In-Reply-To: <31c2c94c-c6d3-595b-c138-faa54d0bfc00@linaro.org>
 (sfid-20190618_160100_881541_6AD64A3C)
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <583907409fad854bd3c18be688ec2724ad7a60e9.camel@sipsolutions.net>
 <31c2c94c-c6d3-595b-c138-faa54d0bfc00@linaro.org>
 (sfid-20190618_160100_881541_6AD64A3C)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_122226_980948_C6823C30 
X-CRM114-Status: GOOD (  16.37  )
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

On Tue, 2019-06-18 at 09:00 -0500, Alex Elder wrote:

> Deaggregation is a connection property, not a channel property.

That'd make sense, yes.

> And it looks like that's exactly how it's used in the rmnet
> driver.  

Yeah, I think you're right. I got confused by the whole use of "port"
there, but it seems like "port" actually refers to the underlying
netdev.

Which is really strange too, btw, because you configure the "port" to
agg/non-agg when you add a new channel to it ... So it seems like it's
part of the channel configuration, when it's not!

Anyway, I think for now we could probably live with not having this
configurable for the IPA driver, and if it *does* need to be
configurable, it seems like it should be a driver configuration, not a
channel configuration - so something like a debugfs hook if you really
just need to play with it for performance testing, or a module
parameter, or something else?

Or even, in the WWAN framework, a knob that we provide there for the
WWAN device, rather than for the (newly created) channel.

> The hardware is capable of aggregating QMAP packets
> arriving on a connection into a single buffer, so this provides
> a way of requesting it do that.
> 
> > > #define RMNET_FLAGS_INGRESS_MAP_COMMANDS          (1U << 1)
> > 
> > Similar here? If you have flow control you probably want to use it?
> 
> I agree with that, though perhaps there are cases where it
> is pointless, or can't be supported, so one might want to
> simply *not* implement/advertise the feature.  I don't know.

Sure, but then that's likely something the driver would need to know,
not necessarily userspace?

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
