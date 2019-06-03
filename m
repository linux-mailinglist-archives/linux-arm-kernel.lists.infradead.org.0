Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D74B332AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vqpSNQ/Q6YQgb861CM/74/aqaOCuF0CqszHHi5CKBw=; b=hKOhAaEItrUkLC
	37f+30d0vQSAbFl/LdETnpot/mnZsUu+o/+9M16vs9Fzw48VRz5ycP1jFzdcO3GfGkqctkMem85Ok
	NaX25jjVkPo8XLCYehVUKO4riKSz+hTvlKRuDwcsLUywcsV8H8tajIZ0jaRgKFmBeVqun5Gj+v8Va
	4MhCJjtGofo0s7Fx7z/KReIZl4uhkwPMszw21B92TCArEzO8nxwO1/37BDUD8HyTqXeTtSvB9PAoa
	r7JonW4aX9VLZ2sXqEa9wE85qLKc5vcAPJtxJmonIUdRSknGv19JCW69zJMr320w2S8jLk3Mx0jQE
	hs68AOzu3yNcqg/84gRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXoIQ-0007jD-Bo; Mon, 03 Jun 2019 14:50:46 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoIJ-0007iQ-7X
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:50:41 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0328830917AB;
 Mon,  3 Jun 2019 14:50:32 +0000 (UTC)
Received: from ovpn-112-59.rdu2.redhat.com (ovpn-112-59.rdu2.redhat.com
 [10.10.112.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CCFC72E053;
 Mon,  3 Jun 2019 14:50:25 +0000 (UTC)
Message-ID: <99b9a24b229975689fb4686915190200606e8afc.camel@redhat.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Dan Williams <dcbw@redhat.com>
To: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>, Bjorn
 Andersson <bjorn.andersson@linaro.org>
Date: Mon, 03 Jun 2019 09:50:24 -0500
In-Reply-To: <d76a710d45dd7df3a28afb12fc62cf14@codeaurora.org>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
 <20190531233306.GB25597@minitux>
 <d76a710d45dd7df3a28afb12fc62cf14@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Mon, 03 Jun 2019 14:50:38 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_075039_305895_026BC242 
X-CRM114-Status: GOOD (  36.23  )
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
 abhishek.esse@gmail.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-05-31 at 17:59 -0600, Subash Abhinov Kasiviswanathan
wrote:
> On 2019-05-31 17:33, Bjorn Andersson wrote:
> > On Fri 31 May 13:47 PDT 2019, Alex Elder wrote:
> > 
> > > On 5/31/19 2:19 PM, Arnd Bergmann wrote:
> > > > On Fri, May 31, 2019 at 6:36 PM Alex Elder <elder@linaro.org>
> > > > wrote:
> > > > > On 5/31/19 9:58 AM, Dan Williams wrote:
> > > > > > On Thu, 2019-05-30 at 22:53 -0500, Alex Elder wrote:
> > > > > > 
> > > > > > My question from the Nov 2018 IPA rmnet driver still
> > > > > > stands; how does
> > > > > > this relate to net/ethernet/qualcomm/rmnet/ if at all? And
> > > > > > if this is
> > > > > > really just a netdev talking to the IPA itself and
> > > > > > unrelated to
> > > > > > net/ethernet/qualcomm/rmnet, let's call it "ipa%d" and stop
> > > > > > cargo-
> > > > > > culting rmnet around just because it happens to be a net
> > > > > > driver for a
> > > > > > QC SoC.
> > > > > 
> > > > > First, the relationship between the IPA driver and the rmnet
> > > > > driver
> > > > > is that the IPA driver is assumed to sit between the rmnet
> > > > > driver
> > > > > and the hardware.
> > > > 
> > > > Does this mean that IPA can only be used to back rmnet, and
> > > > rmnet
> > > > can only be used on top of IPA, or can or both of them be
> > > > combined
> > > > with another driver to talk to instead?
> > > 
> > > No it does not mean that.
> > > 
> > > As I understand it, one reason for the rmnet layer was to
> > > abstract
> > > the back end, which would allow using a modem, or using something
> > > else (a LAN?), without exposing certain details of the hardware.
> > > (Perhaps to support multiplexing, etc. without duplicating that
> > > logic in two "back-end" drivers?)
> > > 
> > > To be perfectly honest, at first I thought having IPA use rmnet
> > > was a cargo cult thing like Dan suggested, because I didn't see
> > > the benefit.  I now see why one would use that pass-through layer
> > > to handle the QMAP features.
> > > 
> > > But back to your question.  The other thing is that I see no
> > > reason the IPA couldn't present a "normal" (non QMAP) interface
> > > for a modem.  It's something I'd really like to be able to do,
> > > but I can't do it without having the modem firmware change its
> > > configuration for these endpoints.  My access to the people who
> > > implement the modem firmware has been very limited (something
> > > I hope to improve), and unless and until I can get corresponding
> > > changes on the modem side to implement connections that don't
> > > use QMAP, I can't implement such a thing.
> > > 
> > 
> > But any such changes would either be years into the future or for
> > specific devices and as such not applicable to any/most of devices
> > on
> > the market now or in the coming years.
> > 
> > 
> > But as Arnd points out, if the software split between IPA and rmnet
> > is
> > suboptimal your are encouraged to fix that.
> > 
> > Regards,
> > Bjorn
> 
> The split rmnet design was chosen because we could place rmnet
> over any transport - IPA, PCIe (https://lkml.org/lkml/2018/4/26/1159)
> or USB.

Yeah, that's what I was looking for clarification on :) Clearly since
rmnet can have many transports it should be able to be used by
different HW drivers, be that qmi_wwan, IPA, and maybe even
rmnet_smd.c?

> rmnet registers a rx handler, so the rmnet packet processing itself
> happens in the same softirq when packets are queued to network stack
> by IPA.

This directly relates to the discussion about a WWAN subsystem that
Johannes Berg started a couple weeks ago. IPA appears to create a
netdev of its own. Is that netdev usable immediately, or does one need
to create an rmnet device on top to access the default PDN?

Thanks,
Dan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
