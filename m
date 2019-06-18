Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCFA4AC1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 22:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfUE+i9H7W8g2DH7x9Xg6shsM3j4wpX+WFHEGqm8kvM=; b=BQsRGRg0SRCWKQ
	Wts5AlSMbDKlgoR1H0QX3E2oM2HOn8VjAV27xxu8EGiijmpdRVs9rWzSItTB2FIMRImqKgvP9b8YP
	W43UwAkwdPMPgnA1bjmF9aE4QLBymMKZcTMW1WXwUOxCdcGoswKXo4MJOOKzwK60hTSrAm9wmAjXc
	hGQN7kB7TaeVFNr/mutAiN0G+K7zbMS9K5CKgul7P0ymmGAxBFY9ZxD4Gzg45R1RUVwDz8LxKO1rn
	z+iuvDfjsizjIOP2ILHPB2rWKpxxVtHguW/o9Pnsf4tS/hcwM8DDZkgToJx6YULXC3CT8KHH/cqgi
	l1CjMFVaDy2bm2gor6FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdL93-00024S-UH; Tue, 18 Jun 2019 20:55:58 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdL8p-00023m-6P
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 20:55:44 +0000
Received: by mail-qk1-f193.google.com with SMTP id t8so9538681qkt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 13:55:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z9lpWmnxIWG+yn/Q8Kt9kwRJEp4w7nP1RsHOAevW2cM=;
 b=BCdkcrhFe/GIASpfQn69VdfBZO7pKLdp4ZUhPkyECqnBM9X4FI+7JAEhzQfILNvhDl
 mUc2s5xq7Y8iVBIPDEmk5Q7h4dcyN2wchjodNPjPobxe9HsdCnAxGX8Zy99AatSVqIMn
 YEspOsJrz0vWv3Zv42BqGLU4gdthMVYH/zTj18yi9aqrfIPfCcI46yQ4S9Ly2pB/abce
 7NWmnL23ax/YGAGrDqYRbdZflraJf/xBAZtZben/MahlrhYkFOuWXpyWQ1v3VuVkTYUA
 O4wN+qnxx4hYCwPG02PHkyKZAw8aazSAwQplpKAmoBkk0NJvd4M3zrGUAa2kr3Nt0uUk
 ZFAA==
X-Gm-Message-State: APjAAAUhHku5DXOcrZXxULaoHXMrOAeK7UTXIfAi+TI6a7dzrsSnnald
 2aNnOmbwXBMNEA/5vB2Gy9L8RpGhpY2eXajcwoc=
X-Google-Smtp-Source: APXvYqzMQnj8mooGUNvWO59G0b2ABKwAdRoB6ahNoB3XWyhRG2+Kc2tlKvSqhoNGKyDN+miPCnbs/N9GlnSM6tCUpFo=
X-Received: by 2002:a37:a4d3:: with SMTP id n202mr8318000qke.84.1560891341993; 
 Tue, 18 Jun 2019 13:55:41 -0700 (PDT)
MIME-Version: 1.0
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
 <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
 <b23a83c18055470c5308fcd1eed018056371fc1d.camel@sipsolutions.net>
 <CAK8P3a1FeUQR3pgoQxHoRK05JGORyR+TFATVQiijLWtFKTv6OQ@mail.gmail.com>
 <613cdfde488eb23d7207c7ba6258662702d04840.camel@sipsolutions.net>
In-Reply-To: <613cdfde488eb23d7207c7ba6258662702d04840.camel@sipsolutions.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 18 Jun 2019 22:55:23 +0200
Message-ID: <CAK8P3a2onXpxiE4y9PzRwuPM2dh=h_BKz7Eb0=LLPgBbZoK1bQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_135543_237076_AFFF0FCF 
X-CRM114-Status: GOOD (  23.61  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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

On Tue, Jun 18, 2019 at 10:36 PM Johannes Berg
<johannes@sipsolutions.net> wrote:
>
> On Tue, 2019-06-18 at 21:59 +0200, Arnd Bergmann wrote:
> >
> > From my understanding, the ioctl interface would create the lower
> > netdev after talking to the firmware, and then user space would use
> > the rmnet interface to create a matching upper-level device for that.
> > This is an artifact of the strong separation of ipa and rmnet in the
> > code.
>
> Huh. But if rmnet has muxing, and IPA supports that, why would you ever
> need multiple lower netdevs?

From my reading of the code, there is always exactly a 1:1 relationship
between an rmnet netdev an an ipa netdev. rmnet does the encapsulation/
decapsulation of the qmap data and forwards it to the ipa netdev,
which then just passes data through between a hardware queue and
its netdevice.

[side note: on top of that, rmnet also does "aggregation", which may
 be a confusing term that only means transferring multiple frames
 at once]

> > ipa definitely has multiple hardware queues, and the Alex'
> > driver does implement  the data path on those, just not the
> > configuration to enable them.
>
> OK, but perhaps you don't actually have enough to use one for each
> session?

I'm lacking the terminology here, but what I understood was that
the netdev and queue again map to a session.

> > Guessing once more, I suspect the the XON/XOFF flow control
> > was a workaround for the fact that rmnet and ipa have separate
> > queues. The hardware channel on IPA may fill up, but user space
> > talks to rmnet and still add more frames to it because it doesn't
> > know IPA is busy.
> >
> > Another possible explanation would be that this is actually
> > forwarding state from the base station to tell the driver to
> > stop sending data over the air.
>
> Yeah, but if you actually have a hardware queue per upper netdev then
> you don't really need this - you just stop the netdev queue when the
> hardware queue is full, and you have flow control automatically.
>
> So I really don't see any reason to have these messages going back and
> forth unless you plan to have multiple sessions muxed on a single
> hardware queue.

Sure, I definitely understand what you mean, and I agree that would
be the right way to do it. All I said is that this is not how it was done
in rmnet (this was again my main concern about the rmnet design
after I learned it was required for ipa) ;-)

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
