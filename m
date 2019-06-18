Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 218754AB45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 21:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkkMxedfviUnZvV9Q6E/Wzet3SlkAkfeeW3Kih9L4bA=; b=CT+SG99NS3npCa
	DZi1XcYS/7sgWbCuQ8+wEA118qo00lMUva1e0T7O0B3jwKmUnV0cl6fnyP1byyizPBTaojptxdyhR
	PeiA+6MfbqXV3KeFrsNeclaKDRHifIFcL6zTEcUEqjneSZ2f8jWWuJ0UBJHsajwQk7oGJmdC2v3xc
	vBTvUpagu/AmegfoUYcxVHfTl28pecwzEIjXYo2JYF6EHljNNT1GSyDY+9h4TLsTFyoUIP9Mc/sMC
	jhDlou7pshQ7sT5SAoLx6wRi6shMsMu5+Oom9pOXVsDHhlGAryNy0ZbaiaXNIZv3e5OciNk0xcq9Z
	I37zZvpIExqp6wR09k4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdKGm-0004o8-Hg; Tue, 18 Jun 2019 19:59:52 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdKGZ-0004ma-TX
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 19:59:41 +0000
Received: by mail-qk1-f195.google.com with SMTP id r6so9452029qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 12:59:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i7s7c5OcKeclqiywXdqj12aC74/yCawdjmwihldgF1s=;
 b=p+yBo7cNe41B3ohIAmpmM5tEQlMlYdi01FCCMO35FoqYCKuTDgHwvTU2vV060TuXzu
 ZZTx5MZuPBjVxT2+YnrAeaNT8pVEgtDmRyTU7b4Te8WFYZzR/QRDBIZDEypY84G4afzN
 V03LgUDmkGkPhIpGIhi0WGwgvUrXHMoLoVeawXO6zNdPwZBe8YxBR+yVeEE9igoUoQ0+
 et4XNS70wst9Ad4wwcA0c6DnM4MnKRfJOpemos1sJ6k+9WuVzGlmyI0oggTa7To9vjBs
 JMSutK/tQB7nWzPicQKu6hv34lqXnOfKyt+9CNeWqfTWiZ0dmy5n6aX6kEe6/qBSkkSk
 ppbA==
X-Gm-Message-State: APjAAAU7FU9eTi4jpl3PghQhtpDbzUn8iTy+Joo9BgS2VVsf1xlEHzH3
 Pw6tB/cDLlN1SDgdzqSO3bbW5RXtXALsIi0aAww=
X-Google-Smtp-Source: APXvYqy6dw17Y5hPbpJB1iwj6Y5EiqPTo9iLm7ZATxD+K27A0WaDVgnTPbaE839sYu0LKjhIqohaX9442ZVn9lHIr6Q=
X-Received: by 2002:a37:a4d3:: with SMTP id n202mr8102665qke.84.1560887976962; 
 Tue, 18 Jun 2019 12:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
 <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
 <b23a83c18055470c5308fcd1eed018056371fc1d.camel@sipsolutions.net>
In-Reply-To: <b23a83c18055470c5308fcd1eed018056371fc1d.camel@sipsolutions.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 18 Jun 2019 21:59:19 +0200
Message-ID: <CAK8P3a1FeUQR3pgoQxHoRK05JGORyR+TFATVQiijLWtFKTv6OQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_125939_957692_9C26A633 
X-CRM114-Status: GOOD (  28.37  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Tue, Jun 18, 2019 at 9:14 PM Johannes Berg <johannes@sipsolutions.net> wrote:
> On Tue, 2019-06-18 at 08:16 -0500, Alex Elder wrote:
> > On 6/17/19 6:28 AM, Johannes Berg wrote:
> > So getting back to your question, the IPA in its current form only
> > has a single "multiplexed" channel carried over the connection
> > between the AP and modem.  Previously (and in the future) there
> > was a way to add or remove channels.
>
> What would those channels do?
>
> I've not really been very clear with the differentiation between a
> channel and what's multiplexed inside of the channel.
>
> Using the terminology you defined in your other mail, are you saying
> that IPA (originally) allowed multiple *connections* to the device, or
> is there basically just one connection, with multiple (QMAP-muxed)
> *channels* on top of it?
>
> If the latter, why did IPA need ioctls, rather than rmnet?

From my understanding, the ioctl interface would create the lower
netdev after talking to the firmware, and then user space would use
the rmnet interface to create a matching upper-level device for that.
This is an artifact of the strong separation of ipa and rmnet in the
code.

> > > The software bridging is very questionable to start with, I'd advocate
> > > not supporting that at all but adding tracepoints or similar if needed
> > > for debugging instead.
> >
> > To be honest I don't understand the connection between software
> > bridging and debugging, but that's OK.
>
> It's a mess. Basically, AFAICT, the only use for the rmnet bridging is
> in fact debugging. What it does, again AFAICT, is mirror out all the
> rmnet packets to the bridge if you attach it to a bridge, so that then
> you can attach another netdev to the bridge and forward all the rmnet
> packets to another system for debugging.
>
> It's a very weird way of doing this, IMHO.

My understanding for this was that the idea is to use it for
connecting bridging between distinct hardware devices behind
ipa: if IPA drives both a USB-ether gadget and the 5G modem,
you can use to talk to Linux running rmnet, but you can also
use rmnet to provide fast usb tethering to 5g and bypass the
rest of the network stack. That again may have been a wrong
guess on my part.

> > I believe the only QMAP commands are for doing essentially
> > XON/XOFF flow control on a single channel.  In the course of
> > the e-mail discussion in the past few weeks I've come to see
> > why that would be necessary.
>
> It does make sense, because you only have a single hardware (DMA)
> channel in these cases, so you implement flow control in software on
> top.
>
> (As I said before, the Intel modem uses different hardware channels for
> different sessions, so doesn't need something like this - the hardware
> ring just fills up and there's your flow control)

ipa definitely has multiple hardware queues, and the Alex'
driver does implement  the data path on those, just not the
configuration to enable them.

Guessing once more, I suspect the the XON/XOFF flow control
was a workaround for the fact that rmnet and ipa have separate
queues. The hardware channel on IPA may fill up, but user space
talks to rmnet and still add more frames to it because it doesn't
know IPA is busy.

Another possible explanation would be that this is actually
forwarding state from the base station to tell the driver to
stop sending data over the air.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
