Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C6B4AD25
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 23:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OohJASiF4nm+ZJc0Yt6u4Kj1aL5Tm2QDtteoNPLD2ro=; b=brrUZcsSQtCVUaCcbgz/mGIem
	aUHBrE/wSMuY75049p1xrU5HyITdrREXxeWafNeuIcXkKBFMXL087aY4338hCMJTzrQc2tPopa7C2
	mgSkZlO/oZIdEpLVK3GIqstNSjDwLybDcjqS/1iunZ4uMb3BnWrZVtz9QJLag+3ukwV1S8uj04rSo
	6ubq8RuA5d9ptQjAHeKxAH/n/YEtlJDGX34Ou3Qv9JsUpGPLQj3Mq5O/XYLz0D7eY9pWhDNSTziXX
	t7+TcJHYRPyCU0zmTGg5s0huI3xoyQ9r2fK51jwNrFfk/TtESaPJVWnTQacGgivDXA8pX/zMz/Z6R
	Y3Q1ds09Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLSR-00063Y-82; Tue, 18 Jun 2019 21:15:59 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLSF-000632-93
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 21:15:49 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8C83661110; Tue, 18 Jun 2019 21:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560892546;
 bh=YZxqpwNwj9xP1mVakWl4GnRWhuxU+h/l52kLOjkWX3Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IVOJN7iw7SLfamnGPFOAHWKxlR24qZGI+fJflD1GHP+Oo/BkYwgUJIRH8PyDeOjIX
 yWdNc+O9P4dYI5N0wCG8AHfCVvLmPw/X/UKLIfyjXkZNDQzm9mCb+/zEFpUXJLPOBP
 01BzNaRPwCzmRCWihbrOMK4u18fWzfMXFHFzCzHg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 3E048608BA;
 Tue, 18 Jun 2019 21:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560892544;
 bh=YZxqpwNwj9xP1mVakWl4GnRWhuxU+h/l52kLOjkWX3Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TOVI6NUYG8I82CcnESxWEYgB0kYG+0CZ96pkTfQAcneB00XUWHiCLDk9M8clfZqdU
 enPHMCLJDTDCNtKey6d8+AOJmN1NmXdJC6F943mG9WsGQugpIFqi8+l8PUVpxBt6uk
 U7rdCNWQ7xeD9PerfSVkAPcLATq9szGad+VzOXQU=
MIME-Version: 1.0
Date: Tue, 18 Jun 2019 15:15:42 -0600
From: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
In-Reply-To: <CAK8P3a2onXpxiE4y9PzRwuPM2dh=h_BKz7Eb0=LLPgBbZoK1bQ@mail.gmail.com>
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
 <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
 <b23a83c18055470c5308fcd1eed018056371fc1d.camel@sipsolutions.net>
 <CAK8P3a1FeUQR3pgoQxHoRK05JGORyR+TFATVQiijLWtFKTv6OQ@mail.gmail.com>
 <613cdfde488eb23d7207c7ba6258662702d04840.camel@sipsolutions.net>
 <CAK8P3a2onXpxiE4y9PzRwuPM2dh=h_BKz7Eb0=LLPgBbZoK1bQ@mail.gmail.com>
Message-ID: <6c70950d0c78bc02a3d016918ec3929e@codeaurora.org>
X-Sender: subashab@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_141547_350723_8070B35A 
X-CRM114-Status: GOOD (  24.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alex Elder <elder@linaro.org>, Johannes Berg <johannes@sipsolutions.net>,
 linux-soc@vger.kernel.org, abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-06-18 14:55, Arnd Bergmann wrote:
> On Tue, Jun 18, 2019 at 10:36 PM Johannes Berg
> <johannes@sipsolutions.net> wrote:
>> 
>> On Tue, 2019-06-18 at 21:59 +0200, Arnd Bergmann wrote:
>> >
>> > From my understanding, the ioctl interface would create the lower
>> > netdev after talking to the firmware, and then user space would use
>> > the rmnet interface to create a matching upper-level device for that.
>> > This is an artifact of the strong separation of ipa and rmnet in the
>> > code.
>> 
>> Huh. But if rmnet has muxing, and IPA supports that, why would you 
>> ever
>> need multiple lower netdevs?
> 
> From my reading of the code, there is always exactly a 1:1 relationship
> between an rmnet netdev an an ipa netdev. rmnet does the encapsulation/
> decapsulation of the qmap data and forwards it to the ipa netdev,
> which then just passes data through between a hardware queue and
> its netdevice.
> 

There is a n:1 relationship between rmnet and IPA.
rmnet does the de-muxing to multiple netdevs based on the mux id
in the MAP header for RX packets and vice versa.

> [side note: on top of that, rmnet also does "aggregation", which may
>  be a confusing term that only means transferring multiple frames
>  at once]
> 
>> > ipa definitely has multiple hardware queues, and the Alex'
>> > driver does implement  the data path on those, just not the
>> > configuration to enable them.
>> 
>> OK, but perhaps you don't actually have enough to use one for each
>> session?
> 
> I'm lacking the terminology here, but what I understood was that
> the netdev and queue again map to a session.
> 
>> > Guessing once more, I suspect the the XON/XOFF flow control
>> > was a workaround for the fact that rmnet and ipa have separate
>> > queues. The hardware channel on IPA may fill up, but user space
>> > talks to rmnet and still add more frames to it because it doesn't
>> > know IPA is busy.
>> >
>> > Another possible explanation would be that this is actually
>> > forwarding state from the base station to tell the driver to
>> > stop sending data over the air.
>> 
>> Yeah, but if you actually have a hardware queue per upper netdev then
>> you don't really need this - you just stop the netdev queue when the
>> hardware queue is full, and you have flow control automatically.
>> 
>> So I really don't see any reason to have these messages going back and
>> forth unless you plan to have multiple sessions muxed on a single
>> hardware queue.
> 

Hardware may flow control specific PDNs (rmnet interfaces) based on QoS 
-
not necessarily only in case of hardware queue full.

> Sure, I definitely understand what you mean, and I agree that would
> be the right way to do it. All I said is that this is not how it was 
> done
> in rmnet (this was again my main concern about the rmnet design
> after I learned it was required for ipa) ;-)
> 
>      Arnd

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
