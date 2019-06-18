Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9474AC75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 23:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lO2MSeRK0aEiyp7KtQvFSLQVPT+GoHoTh6skicOLThs=; b=scVnhYnIHIEpLp
	wN9cWDy8MUeszeOI47BCSstT30IikA/dtLfBwkWlfnx8PZnOJ7UflYSpVxxLJL6/i+MyatId1ZHRp
	TZoWyFfoLnEDj9O5cj6jfiqKy8ZdIKaox0llSB8fDTEoitF6L5L0D8okDGssO2y4GDMbeheNFDK52
	1qIsg1Exb6s2h37PN4PchPpZCzapIe7UjgIddaRm0BWSRdJ0YLnzonNTCBPTW555RJdaVnl+2LQwn
	YK5JsMioG/YWmd6N0uIQdYWewMK9ZxVJDsRoGNM5FcWy6Pmhh3Y2EnB6jDlX5CPRb0Z7ihAz39WKW
	TwS+psqV789BLbRSV8Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLFc-0004w8-Ou; Tue, 18 Jun 2019 21:02:44 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLFR-0004vJ-QK
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 21:02:35 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hdLFE-0007LA-Ng; Tue, 18 Jun 2019 23:02:20 +0200
Message-ID: <6e7f0fb2f85d5062a9e23d37c47d311e10aa4624.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 18 Jun 2019 23:02:18 +0200
In-Reply-To: <CAK8P3a2onXpxiE4y9PzRwuPM2dh=h_BKz7Eb0=LLPgBbZoK1bQ@mail.gmail.com>
 (sfid-20190618_225543_624686_3B7D51E7)
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
 <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
 <b23a83c18055470c5308fcd1eed018056371fc1d.camel@sipsolutions.net>
 <CAK8P3a1FeUQR3pgoQxHoRK05JGORyR+TFATVQiijLWtFKTv6OQ@mail.gmail.com>
 <613cdfde488eb23d7207c7ba6258662702d04840.camel@sipsolutions.net>
 <CAK8P3a2onXpxiE4y9PzRwuPM2dh=h_BKz7Eb0=LLPgBbZoK1bQ@mail.gmail.com>
 (sfid-20190618_225543_624686_3B7D51E7)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_140233_858750_5B98CEF4 
X-CRM114-Status: GOOD (  18.89  )
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

On Tue, 2019-06-18 at 22:55 +0200, Arnd Bergmann wrote:
> On Tue, Jun 18, 2019 at 10:36 PM Johannes Berg
> <johannes@sipsolutions.net> wrote:
> > 
> > On Tue, 2019-06-18 at 21:59 +0200, Arnd Bergmann wrote:
> > > 
> > > From my understanding, the ioctl interface would create the lower
> > > netdev after talking to the firmware, and then user space would use
> > > the rmnet interface to create a matching upper-level device for that.
> > > This is an artifact of the strong separation of ipa and rmnet in the
> > > code.
> > 
> > Huh. But if rmnet has muxing, and IPA supports that, why would you ever
> > need multiple lower netdevs?
> 
> From my reading of the code, there is always exactly a 1:1 relationship
> between an rmnet netdev an an ipa netdev. rmnet does the encapsulation/
> decapsulation of the qmap data and forwards it to the ipa netdev,
> which then just passes data through between a hardware queue and
> its netdevice.

I'll take your word for it. Seems very odd, given that the whole point
of the QMAP header seems to be ... muxing?

> [side note: on top of that, rmnet also does "aggregation", which may
>  be a confusing term that only means transferring multiple frames
>  at once]

Right, but it's not all that much interesting in the context of this
discussion.

> Sure, I definitely understand what you mean, and I agree that would
> be the right way to do it. All I said is that this is not how it was done
> in rmnet (this was again my main concern about the rmnet design
> after I learned it was required for ipa) ;-)

:-)

Well, I guess though if the firmware wants us to listen to those on/off
messages we'll have to do that one way or the other.

Oh. Maybe it's just *because* rmnet is layered on top, and thus you
fundamentally cannot do flow control the way I described - not because
you have multiple session on the same hardware ring, but because you
abstracted the hardware ring away too much ...


johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
