Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2132034C15
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10/u6UEw6SBKsbjC8EnnS2cJ6auvCCR6cHTlNC3S9GY=; b=r8hhWcZOpA4oCN
	zabQi9cx6qrNtPTQCCIl9yp3N792YpPFWItyVxh172dh1e8Ofga/GfXvu4KOYG3fpPyglMO5iEnLF
	lRxBJ1s91od11ClMg2fo1YIWpcgNqj3MR4ArTxSVeHMM3+MeAwTaTD/Qef8I+rrE4+o0QjeT3DQGn
	JcX3MaqHEe1SiK1GPb0yfCGZxL1CjSRgjABrRS5FB9h6HS0hwKRDftYspRpBaajSLTIJQbnHCn7L5
	+cbFa0xNH0zwl5hpDUT5chB6FppYr66dQIH5egrHJijj2UNaVAildrvZv+suI5PnjXWvgD+DAu37w
	JQuqAdw58SGoRq5P1K2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBGD-0004Kz-BG; Tue, 04 Jun 2019 15:22:01 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBG5-0004Jw-FV
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 15:21:54 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 87F6D2F8BC8;
 Tue,  4 Jun 2019 15:21:46 +0000 (UTC)
Received: from ovpn-112-67.rdu2.redhat.com (ovpn-112-67.rdu2.redhat.com
 [10.10.112.67])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 23E621001947;
 Tue,  4 Jun 2019 15:21:41 +0000 (UTC)
Message-ID: <feb3d23718ea462d304369d718c6ed37da8a8f15.camel@redhat.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Dan Williams <dcbw@redhat.com>
To: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
Date: Tue, 04 Jun 2019 10:21:41 -0500
In-Reply-To: <c200581b8fc167f3a0c09ef6233b8d81@codeaurora.org>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
 <3b1e12b145a273dd3ded2864d976bdc5fa90e68a.camel@redhat.com>
 <87f98f81-8f77-3bc5-374c-f498e07cb1bd@linaro.org>
 <0fc29577a5c69530145b6095fa1ac1a51949ba8e.camel@redhat.com>
 <c200581b8fc167f3a0c09ef6233b8d81@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 04 Jun 2019 15:21:51 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_082153_562209_0F1CEF05 
X-CRM114-Status: GOOD (  23.75  )
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
 Eric Caruso <ejcaruso@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Networking <netdev@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, abhishek.esse@gmail.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-06-03 at 13:04 -0600, Subash Abhinov Kasiviswanathan
wrote:
> > > I can't (or won't) comment right now on whether IPA needs its own
> > > netdev for rmnet to use.  The IPA endpoints used for the modem
> > > network interfaces are enabled when the netdev is opened and
> > > disabled when closed.  Outside of that, TX and RX are pretty
> > > much immediately passed through to the layer below or above.
> > > IPA currently has no other net device operations.
> > 
> > I don't really have issues with the patchset underneath the netdev
> > layer. I'm interested in how the various bits present themselves to
> > userspace, which is why I am trying to tie this in with Johannes'
> > conversation about WWAN devices, netdevs, channels, and how the
> > various
> > drivers present API for creating data channels that map to
> > different
> > modem contexts.
> > 
> > So let me rephrase. If the control plane has set up the default
> > context
> > and sent a QMI Start Network message (or the network attached the
> > default one) and the resulting IP details are applied to the IPA
> > netdev
> > can things just start sending data? Or do we need to create an
> > rmnet on
> > top to get that working?
> > 
> > Dan
> 
> Hi Dan
> 
> All data from the hardware will have the MAP headers.
> We still need to create rmnet devs over the IPA netdev and use it
> for 
> the
> data path.
> The IPA netdev will pass on the packets which it receives from the 
> hardware
> and queue it to network stack where it will be intercepted by the
> rmnet rx handler.

Ok, so IPA only needs a netdev so that rmnet has something to
send/receive packets to/from? This gets even closer to the discussion
in "cellular modem driver APIs - take 2" from last week.

Dan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
