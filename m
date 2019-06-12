Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4117742A46
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdChZR3sqpJPPn/YeaqJcsBMWyA2QVIQmVOjmAH4/bo=; b=aurfyaSXn+WpDF
	B06RrRSBp+sTQEIX1eOoaHLbJ7GYzq0vpMaY18OLRSaGmZBYVFwkpHmgOSOWWzA6edSz35fXR3ZbK
	Im/K8r9zScBjS88w31GHBejpFfzgg7hUnYQ5HC+vxyzyyyqcMnvHWmrxsY2waSZKOg6e9rGL7vAWQ
	SqPbZA7BXGgGDcNfmDRB+rFnX4jvdUkEQTF3bWNjkA//iEwDMfJba5t8nZN0XBsNByr7uKFHvUYZ2
	o5cWBPE1zmkQK0W/c2/eghyUq6ZFENj+6w6Zbjao9QjKYSYxCtUToG8gY+kEQxjEmaLlWftQmXvtr
	4GvY7zfGNOpBBJkisUTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4pt-0005CW-Md; Wed, 12 Jun 2019 15:06:49 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4pg-0005C5-IU
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:06:37 +0000
Received: by mail-qt1-f193.google.com with SMTP id x2so17972403qtr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 08:06:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1g7s/UPWJzJeB4LrTKmbsG4ivrcvy+TUBuxC551yLEY=;
 b=q+/LZAn2jzxhaC40NhAY4Jz8Za68Dw4NahNjErgVy2qQyHMzrCxMhJcoc5Donp87lG
 NmPWZKnbsi9ghFvdAapSRRb9NC+WJ1eQ2jkiduw9BIDZhthWmUgwGroOFWPc3dF15FHo
 TThlPmtCk+L7StE6YC++J6OZMoluI2r4qKtNiOyKNFE9cuJaS+IJjxQNPxzXmYlttgBA
 mlWss4dunue6t56/aSaqP4kzHBS8mKapYEMZA9emf8aBYJlQaXSwQIvja/uy1khJBl+S
 xo3/jXAL6SG0ZqzAjOQlwoXSQ0KOA+S9DfB+/4xqgFEF9hEr5vQB40pgSL9MOz/aXq2q
 g6Zg==
X-Gm-Message-State: APjAAAUGSpHtonp3/+lnYHrFCZJRuEFZTooTRCuq3/Y4sh4EiOiWphef
 2CHy/Kk37wUyqJeM8QHfoW63anuL3EDwjrVAWCg=
X-Google-Smtp-Source: APXvYqzOMpjxx8OTt1LYucvtT3ec0rHQVDXxOvYnWwFFLgDetKQQiEnhNqtCjwvLI9BT1ZM6g2S2uumX596TBUy4Jug=
X-Received: by 2002:ac8:8dd:: with SMTP id y29mr5832711qth.304.1560351994976; 
 Wed, 12 Jun 2019 08:06:34 -0700 (PDT)
MIME-Version: 1.0
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <fc0d08912bc10ad089eb74034726308375279130.camel@redhat.com>
 <36bca57c999f611353fd9741c55bb2a7@codeaurora.org>
 <153fafb91267147cf22e2bf102dd822933ec823a.camel@redhat.com>
 <CAK8P3a2Y+tcL1-V57dtypWHndNT3eDJdcKj29c_v+k8o1HHQig@mail.gmail.com>
 <f4249aa5f5acdd90275eda35aa16f3cfb29d29be.camel@redhat.com>
In-Reply-To: <f4249aa5f5acdd90275eda35aa16f3cfb29d29be.camel@redhat.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 12 Jun 2019 17:06:17 +0200
Message-ID: <CAK8P3a2nzZKtshYfomOOSYkqx5HdU15Wr9b+3va0B1euNhFOAg@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Dan Williams <dcbw@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_080636_613728_04BD7DC9 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Eric Caruso <ejcaruso@google.com>, David Miller <davem@davemloft.net>,
 linux-arm-msm@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Networking <netdev@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 4:28 PM Dan Williams <dcbw@redhat.com> wrote:
> On Wed, 2019-06-12 at 10:31 +0200, Arnd Bergmann wrote:
> > On Tue, Jun 11, 2019 at 7:23 PM Dan Williams <dcbw@redhat.com> wrote:
> I was trying to make the point that rmnet doesn't need to care about
> how the QMAP packets get to the device itself; it can be pretty generic
> so that it can be used by IPA/qmi_wwan/rmnet_smd/etc.

rmnet at the moment is completely generic in that regard already,
however it is implemented as a tunnel driver talking to another
device rather than an abstraction layer below that driver.

> > The current rmnet model is different in that by design the upper
> > layer
> > (rmnet) and the lower layer (qmi_wwan, ipa, ...) are kept independent
> > in
> > both directions, i.e. ipa has (almost) no knowledge of rmnet, and
> > just
> > has pointers to the other net_device:
> >
> >        ipa_device
> >            net_device
> >
> >        rmnet_port
> >            net_device
> >
> > I understand that the rmnet model was intended to provide a cleaner
> > abstraction, but it's not how we normally structure subsystems in
> > Linux, and moving to a model more like how wireless_dev works
> > would improve both readability and performance, as you describe
> > it, it would be more like (ignoring for now the need for multiple
> > connections):
> >
> >    ipa_dev
> >         rmnet_dev
> >                wwan_dev
> >                       net_device
>
> Perhaps I'm assuming too much from this diagram but this shows a 1:1
> between wwan_dev and "lower" devices.
>
> What Johannes is proposing (IIRC) is something a bit looser where a
> wwan_dev does not necessarily provide netdev itself, but is instead the
> central point that various channels (control, data, gps, sim card, etc)
> register with. That way the wwan_dev can provide an overall view of the
> WWAN device to userspace, and userspace can talk to the wwan_dev to ask
> the lower drivers (ipa, rmnet, etc) to create new channels (netdev,
> tty, otherwise) when the control channel has told the modem firmware to
> expect one.

Right, as I noted above, I simplified it a bit. We probably want to
have multiple net_device instances for an ipa_dev, so there has
to be a 1:n relationship instead of 1:1 at one of the intermediate
levels, but it's not obvious which level that should be.

In theory we could even have a single net_device instance correspond
to the ipa_dev, but then have multiple IP addresses bound to it,
so each IP address corresponds to a channel/queue/napi_struct,
but the user visible object remains a single device.

I trust that you and Johannes are more qualified than me to make
the call on that point.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
