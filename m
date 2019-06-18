Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFED54AB85
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 22:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fkp3SJqys/HISc9E2kvqZWaFf7p5kDhRYHJTShc5+FM=; b=UgTRxZnNmWkVGX
	jXPklrbe47IQuM6lfuwTidH9zNy7/wJPJVge7JqFZOeg+0FTCJZa1QPTtyG1VDlDrJf5XocBSkB/F
	ywXr6d8hraCkg2JID3rknGdcpLC/eaJ7igZJjSqPbPBdNRnzhUeSxS89N9kJGEZQwUaTg2fB5iPPl
	5aIPTDubhz5Gf/lrk2PEW5UmW5VYCPceJt0OH/PahTVWiSZJH4pTaKkAE09gcyhPoahuxlJdIul7+
	4fLZg2gKHFCjSotPagMFMItgJoNE2wB71SoZCdtdH4ihMrdaBcdLqaHCClfnSIdBny3fIFKmUaL3j
	KjVIRez9wbablEEhldBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdKWP-0003ty-Kp; Tue, 18 Jun 2019 20:16:01 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdKWE-0003tR-IK
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 20:15:51 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hdKW4-0006Xp-Hi; Tue, 18 Jun 2019 22:15:40 +0200
Message-ID: <97cbfb3723607c95d78e25785262ae7b0acdb11c.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 18 Jun 2019 22:15:38 +0200
In-Reply-To: <CAK8P3a3ksrFTo2+dLB+doLeY+kPP7rYxv2O7BwvjYgK2cwCTuQ@mail.gmail.com>
 (sfid-20190618_220958_615605_BA64D8AA)
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
 (sfid-20190618_220958_615605_BA64D8AA)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_131550_609485_E597498D 
X-CRM114-Status: GOOD (  23.54  )
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

On Tue, 2019-06-18 at 22:09 +0200, Arnd Bergmann wrote:
> 
> > One is the whole multi-function device, where a single WWAN device is
> > composed of channels offered by actually different drivers, e.g. for a
> > typical USB device you might have something like cdc_ether and the
> > usb_wwan TTY driver. In this way, we need to "compose" the WWAN device
> > similarly, e.g. by using the underlying USB device "struct device"
> > pointer to tie it together.
> > 
> > The other is something like IPA or the Intel modem driver, where the
> > device is actually a single (e.g. PCIe) device and just has a single
> > driver, but that single driver offers different channels.
> 
> I would hope we can simplify this to expect only the second model,
> where you have a 'struct device' corresponding to hardware and the
> driver for it creates one wwan_device that user space talks to.

I'm not sure.

Fundamentally, we have drivers in Linux for the ethernet part, for the
TTY part, and for whatever other part might be in a given USB multi-
function device.

> Clearly the multi-function device hardware has to be handled somehow,
> but it would seem much cleaner in the long run to do that using
> a special workaround rather than putting this into the core interface.

I don't think it really makes the core interface much more complex or
difficult though, and it feels easier than writing a completely
different USB driver yet again for all these devices?

As far as I understand from Dan, sometimes they really are no different
from a generic USB TTY and a generic USB ethernet, except you know that
if those show up together it's a modem.

> E.g. have a driver that lets you create a wwan_device by passing
> netdev and a tty chardev into a configuration interface, and from that
> point on use the generic wwan abstraction.

Yeah, but where do you hang that driver? Maybe the TTY function is
actually a WWAN specific USB driver, but the ethernet is something
generic that can also work with pure ethernet USB devices, and it's
difficult to figure out how to tie those together. The modules could
load in completely different order, or even the ethernet module could
load but the TTY one doesn't because it's not configured, or vice versa.

> > Now, it's not clear to me where IPA actually falls, because so far we've
> > been talking about the IPA driver only as providing *netdevs*, not any
> > control channels, so I'm not actually sure where the control channel is.
> 
> The IPA driver today only handles the data path, because Alex removed
> the control channel. IPA is the driver that needs to talk to the hardware,
> both for data and control when finished. rmnet is a pure software construct
> that also contains both a data and control side and is designed to be
> independent of the lower hardware.

I'd actually be interested in what the control path should be like.

Is it also muxed on QMAP in the same way?

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
