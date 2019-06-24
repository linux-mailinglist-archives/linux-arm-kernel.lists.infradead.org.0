Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD2E51BC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 21:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGQqtScigLriJ0hsWo8YyqhLLFUtvng0zwzgZCzs5pY=; b=AGDENTdMFFcLpm
	gCg6hqMr7PZHsWEL2zbDZpTGWPWddaKjehgAmKHlwvx77abtohYngs4nybysRN27BlkXlhrsGJnof
	uUEsRzcaX2l6zRwxUBovr6WdUvjH7JP/6dPrhO7hrH7e4syQEbBn+G3UPK5aEV4OXiEdMANzOWYkB
	uqM7B6i6qrfaDVKk/YiRrAxAkSHLL4zbqjzJWYUxS4V3AlRLBMXfJPzGq57koJM1TnOYi7/mYLSdJ
	m+5CiT5JwsdHhIf7it/kF7l4Td+f4BDcrkPrGJOSv/7CVepI5J5JP1cyeUoaHuFPN59Lt2enaydHk
	aUMZldeJ4dMi6WCYbpbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfV3S-0006s0-Ka; Mon, 24 Jun 2019 19:55:06 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfV3E-0006rK-L1
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 19:54:54 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A453D3078AB7;
 Mon, 24 Jun 2019 19:54:38 +0000 (UTC)
Received: from ovpn-112-53.rdu2.redhat.com (ovpn-112-53.rdu2.redhat.com
 [10.10.112.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BFA0D5D70D;
 Mon, 24 Jun 2019 19:54:31 +0000 (UTC)
Message-ID: <f0fcee096d779837abc46e7badae9105ee8aaecf.camel@redhat.com>
Subject: Re: WWAN Controller Framework (was IPA [PATCH v2 00/17])
From: Dan Williams <dcbw@redhat.com>
To: Alex Elder <elder@linaro.org>, davem@davemloft.net, arnd@arndb.de, 
 bjorn.andersson@linaro.org, ilias.apalodimas@linaro.org
Date: Mon, 24 Jun 2019 14:54:30 -0500
In-Reply-To: <23ff4cce-1fee-98ab-3608-1fd09c2d97f1@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
 <23ff4cce-1fee-98ab-3608-1fd09c2d97f1@linaro.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 24 Jun 2019 19:54:51 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_125452_732278_26CE2F6C 
X-CRM114-Status: GOOD (  21.55  )
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
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, abhishek.esse@gmail.com,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-06-24 at 11:30 -0500, Alex Elder wrote:
> OK I want to try to organize a little more concisely some of the
> discussion on this, because there is a very large amount of volume
> to date and I think we need to try to narrow the focus back down
> again.
> 
> I'm going to use a few terms here.  Some of these I really don't
> like, but I want to be unambiguous *and* (at least for now) I want
> to avoid the very overloaded term "device".
> 
> I have lots more to say, but let's start with a top-level picture,
> to make sure we're all on the same page.
> 
>          WWAN Communication
>          Channel (Physical)
>                  |     ------------------------
> ------------     v     |           :+ Control |  \
> >          |-----------|           :+ Data    |  |
> >    AP    |           | WWAN unit :+ Voice   |   > Functions
> >          |===========|           :+ GPS     |  |
> ------------     ^     |           :+ ...     |  /
>                  |     -------------------------
>           Multiplexed WWAN
>            Communication
>          Channel (Physical)
> 
> - The *AP* is the main CPU complex that's running Linux on one or
>   more CPU cores.
> - A *WWAN unit* is an entity that shares one or more physical
>   *WWAN communication channels* with the AP.

You could just say "WWAN modem" here.

> - A *WWAN communication channel* is a bidirectional means of
>   carrying data between the AP and WWAN unit.
> - A WWAN communication channel carries data using a *WWAN protocol*.
> - A WWAN unit implements one or more *WWAN functions*, such as
>   5G data, LTE voice, GPS, and so on.

Go more generic here. Not just 5G data but any WWAN IP-based data
(GPRS, EDGE, CDMA, UMTS, EVDO, LTE, 5G, etc). And not just LTE voice
but any voice data; plenty of devices don't support LTE but still have
"WWAN logical communication channels"

> - A WWAN unit shall implement a *WWAN control function*, used to
>   manage the use of other WWAN functions, as well as the WWAN unit
>   itself.
> - The AP communicates with a WWAN function using a WWAN protocol.
> - A WWAN physical channel can be *multiplexed*, in which case it
>   carries the data for one or more *WWAN logical channels*.

It's unclear to me what "physical" means here. USB Interface or
Endpoint or PCI Function or SMD channel? Or kernel TTY device?

For example on Qualcomm-based USB dongles a given USB Interface's
Endpoint represents a QMAP "IP data" channel which itself could be
multiplexed into separate "IP data" channels.  Or that USB Endpoint(s)
could be exposed as a TTY which itself can be MUX-ed dynamically using
GSM 07.10.

To me "physical" usually means the bus type (PCI, USB, SMD, whatever).
A Linux hardware driver (IPA, qmi_wwan, option, sierra, etc) binds to
that physical entity using hardware IDs (USB or PCI VID/PID, devicetree
properties) and exposes some "WWAN logical communication channels".
Those logical channels might be multiplexed and another driver (rmnet)
could handle exposing the de-muxed logical channels that the muxed
logical channel carries.

> - A multiplexed WWAN communication channel uses a *WWAN wultiplexing
>   protocol*, which is used to separate independent data streams
>   carrying other WWAN protocols.
> - A WWAN logical channel carries a bidirectional stream of WWAN
>   protocol data between an entity on the AP and a WWAN function.

It *usually* is bidirectional. For example some GPS logical
communication channels just start spitting out NMEA when you give the
control function a command. The NMEA ports themselves don't accept any
input.

> Does that adequately represent a very high-level picture of what
> we're trying to manage?

Yes, pretty well. Thanks for trying to specify it all.

> And if I understand it right, the purpose of the generic framework
> being discussed is to define a common mechanism for managing (i.e.,
> discovering, creating, destroying, querying, configuring, enabling,
> disabling, etc.) WWAN units and the functions they implement, along
> with the communication and logical channels used to communicate with
> them.

Yes.

Dan

> Comments?
> 
> 					-Alex


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
