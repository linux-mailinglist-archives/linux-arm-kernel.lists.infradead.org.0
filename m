Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5406F334BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3pWzqa7gjfQskTnZ9nNjAVMUv5h8euy14KP20ae/T8=; b=KEYITh8vTKMTkA
	W5h7PKAWIis0Ggm/3vBj1onWs7+nm/Ryqh7BpbZlj5QYuRW8pBBxg/38iFLhOIXnUNOIaVtpbL7CK
	lhrYVFb3+YaTAKXaXzY0AB7+ABJI9lH7BSQG0jQp338e12X9hAKrS9FBwWEE8OqTpodENeRbYs7Y3
	zO0kvLbtIDGaExVeDby3ZS+xeDoRCcQXGsjEcZ/CwxfYY9D+g+yDZOaLBH6zhx+dTqwZueiFbEh36
	3w2ETbT8NGkGkOPv0CeVphZH7v3Yr/FRLcmZBJM8+/y1qBBPlf2ExXGR6s+A+MJYZ59e/wM8t7xJq
	HoAPTIl1VGjL08+aThLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpfg-0001Ax-90; Mon, 03 Jun 2019 16:18:52 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpfZ-0001AE-98
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:18:46 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 75D1C3086217;
 Mon,  3 Jun 2019 16:18:43 +0000 (UTC)
Received: from ovpn-112-59.rdu2.redhat.com (ovpn-112-59.rdu2.redhat.com
 [10.10.112.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6DF5D5D6A9;
 Mon,  3 Jun 2019 16:18:37 +0000 (UTC)
Message-ID: <0fc29577a5c69530145b6095fa1ac1a51949ba8e.camel@redhat.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Dan Williams <dcbw@redhat.com>
To: Alex Elder <elder@linaro.org>, Arnd Bergmann <arnd@arndb.de>
Date: Mon, 03 Jun 2019 11:18:36 -0500
In-Reply-To: <87f98f81-8f77-3bc5-374c-f498e07cb1bd@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
 <3b1e12b145a273dd3ded2864d976bdc5fa90e68a.camel@redhat.com>
 <87f98f81-8f77-3bc5-374c-f498e07cb1bd@linaro.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 03 Jun 2019 16:18:44 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_091845_357911_829F64BF 
X-CRM114-Status: GOOD (  21.84  )
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

On Mon, 2019-06-03 at 10:52 -0500, Alex Elder wrote:
> On 6/3/19 9:54 AM, Dan Williams wrote:
> > > To be perfectly honest, at first I thought having IPA use rmnet
> > > was a cargo cult thing like Dan suggested, because I didn't see
> > To be clear I only meant cargo-culting the naming, not any
> > functionality. Clearly IPA/rmnet/QMAP are pretty intimately
> > connected
> > at this point. But this goes back to whether IPA needs a netdev
> > itself
> > or whether you need an rmnet device created on top. If the former
> > then
> > I'd say no cargo-culting, if the later then it's a moot point
> > because
> > the device name will be rmnet%d anyway.
> 
> OK I thought you weren't sure why rmnet was a layer at all.  As I
> said, I didn't have a very good understanding of why it was even
> needed when I first started working on this.

No problem.

> I can't (or won't) comment right now on whether IPA needs its own
> netdev for rmnet to use.  The IPA endpoints used for the modem
> network interfaces are enabled when the netdev is opened and
> disabled when closed.  Outside of that, TX and RX are pretty
> much immediately passed through to the layer below or above.
> IPA currently has no other net device operations.

I don't really have issues with the patchset underneath the netdev
layer. I'm interested in how the various bits present themselves to
userspace, which is why I am trying to tie this in with Johannes'
conversation about WWAN devices, netdevs, channels, and how the various
drivers present API for creating data channels that map to different
modem contexts.

So let me rephrase. If the control plane has set up the default context
and sent a QMI Start Network message (or the network attached the
default one) and the resulting IP details are applied to the IPA netdev
can things just start sending data? Or do we need to create an rmnet on
top to get that working?

Dan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
