Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF874ABED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 22:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EnngA7KwWzksbOn70YHNJ1KQxuAl4m9wKE9ESQKwOt4=; b=kZkK6iKUhv3d6F
	L7r3Bpn2aQTz9XhZZqzGEjmtAyhrMlplN9z4bcNCQMdvzzSHbGfj8U0FPdD7FgaH7rbcB7nJREToB
	fw+aXsYknjSE6cH9CXiRs8ZnwUYfpyiNNXbw1EyLL3NTewTtXDgsaNFvgS9frhCLrbRdY54eDA4HJ
	0byCKB+rxOcGM+Kz5UZ7eGVBksb+4hqlcnQeHzVYPaaT+Vnqw4kyj7WYTFsyBWMAJyMBLVtlPrS/1
	YjFFi7Buze7u98N/aknkQ3PhX+tVcLCaeoGNUOqNDcUbHXVe3KA/0kvyTHJxD0WA6EoilWipbYEdW
	X2BJQtHXUdewiOeqaKNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdKqj-0002qb-CJ; Tue, 18 Jun 2019 20:37:01 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdKqX-0002q8-Up
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 20:36:51 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hdKqN-0006ry-3T; Tue, 18 Jun 2019 22:36:39 +0200
Message-ID: <613cdfde488eb23d7207c7ba6258662702d04840.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 18 Jun 2019 22:36:35 +0200
In-Reply-To: <CAK8P3a1FeUQR3pgoQxHoRK05JGORyR+TFATVQiijLWtFKTv6OQ@mail.gmail.com>
 (sfid-20190618_215938_912601_E3CB8D3C)
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
 <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
 <b23a83c18055470c5308fcd1eed018056371fc1d.camel@sipsolutions.net>
 <CAK8P3a1FeUQR3pgoQxHoRK05JGORyR+TFATVQiijLWtFKTv6OQ@mail.gmail.com>
 (sfid-20190618_215938_912601_E3CB8D3C)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_133649_987178_81C54FB8 
X-CRM114-Status: GOOD (  21.63  )
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
 Alex Elder <elder@linaro.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Networking <netdev@vger.kernel.org>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-18 at 21:59 +0200, Arnd Bergmann wrote:
> 
> From my understanding, the ioctl interface would create the lower
> netdev after talking to the firmware, and then user space would use
> the rmnet interface to create a matching upper-level device for that.
> This is an artifact of the strong separation of ipa and rmnet in the
> code.

Huh. But if rmnet has muxing, and IPA supports that, why would you ever
need multiple lower netdevs?

> > > > The software bridging [...]
> 
> My understanding for this was that the idea is to use it for
> connecting bridging between distinct hardware devices behind
> ipa: if IPA drives both a USB-ether gadget and the 5G modem,
> you can use to talk to Linux running rmnet, but you can also
> use rmnet to provide fast usb tethering to 5g and bypass the
> rest of the network stack. That again may have been a wrong
> guess on my part.

Hmm. Interesting. It didn't really look to me like that, but I'm really
getting lost in the code. Anyway, it seems weird, because then you'd
just bridge the upper netdev with the other ethernet and don't need
special logic? And I don't see how the ethernet headers would work with
this now.

> ipa definitely has multiple hardware queues, and the Alex'
> driver does implement  the data path on those, just not the
> configuration to enable them.

OK, but perhaps you don't actually have enough to use one for each
session?

> Guessing once more, I suspect the the XON/XOFF flow control
> was a workaround for the fact that rmnet and ipa have separate
> queues. The hardware channel on IPA may fill up, but user space
> talks to rmnet and still add more frames to it because it doesn't
> know IPA is busy.
> 
> Another possible explanation would be that this is actually
> forwarding state from the base station to tell the driver to
> stop sending data over the air.

Yeah, but if you actually have a hardware queue per upper netdev then
you don't really need this - you just stop the netdev queue when the
hardware queue is full, and you have flow control automatically.

So I really don't see any reason to have these messages going back and
forth unless you plan to have multiple sessions muxed on a single
hardware queue.

And really, if you don't mux multiple sessions onto a single hardware
queue, you don't need a mux header either, so it all adds up :-)

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
