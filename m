Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A930F4B817
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:23:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qEsQhACzvb02Dvijd+KmGhFVBahw1Z1KPvoYACDaKs=; b=GHpNJuuIwH2Hhe
	ii3m4dZqCLWX4jGLJA1uHZBzcq4ulzatEfmQ0BRzDPjVlvtS+RIaYVfm0ZI0Qaj9qXulBN3VDVFMA
	CItmVoQAhmaIcdwqherDRFvXyn9M0popWytmTvvYhX+/B6g2rsOcHfPixvyvvRGJTg+cozJGx8VNQ
	QeLqLb13J6WtS9G8G/ZqQKc9uicqu2UCO5yNVwp8PJc+J9dHEZTd5idM8Y1bC6GVLVtza4EzLkuqN
	jtm7z1/nRwkJgquwIAjqyADNlkyytMjcvDXhN3xrBpLxEQPN3f3woLyoNXOGUYjvdCI+4Cjfx8WZJ
	QX44Nm1BNQMrrzXd7XIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZcw-0008EF-RO; Wed, 19 Jun 2019 12:23:46 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZcl-0008DM-Rb
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:23:37 +0000
Received: by mail-qt1-f194.google.com with SMTP id n11so19531873qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 05:23:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QrX9o1dbIy2aZ5toQHumMIX6sMGzZ/T6xkwZyYDZz14=;
 b=EGwVdlyEXL9UyfQ6A8/zSUYyejTOsks8/+pj+P62cSEQtAsKlw4Wi2i1Ix6grnbJvW
 paImKY8gclmZifzsdFf+ZWZNdlx1EJz/tEhovnmnUiWbn38DQEiayAX7pZwoJrDZRMMy
 u/kuxQrB+1XvqmVbrqgiJIUl/ARlveNSYesVxYU0pB4RdFE1yUm4mGZ3RzaAD+xUJdkU
 Ax/CB5n6WWkxtyzajCTWdCjpBZVYH55NPnm08gFZLhEcDMzw+/qk7WBZV5axAXauoUCi
 ocId4GqlBmEJUN93i4rI9eaZCPwsMjQWIRrvHFU4cyR9ZZcul0PiC78z/wHUXepKXyl0
 G5+Q==
X-Gm-Message-State: APjAAAWaU7rfJXiJhF1aj7boGCdNBbRO9YEHHNN1za8wuNP6c2qkUC3a
 ZvpTyNGUajM1ceL2wHchb+wo8jbm6olvnPPI480=
X-Google-Smtp-Source: APXvYqxcz8Ej40t9XcWhbMi4v3hKL5jyoIkAsv3W8QipVsdMt2GfYFsVX2pYCz87FZfPkpHzUHY9w66Ewxo5eLZoIvA=
X-Received: by 2002:aed:33a4:: with SMTP id v33mr70766520qtd.18.1560947013427; 
 Wed, 19 Jun 2019 05:23:33 -0700 (PDT)
MIME-Version: 1.0
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
 <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
 <b23a83c18055470c5308fcd1eed018056371fc1d.camel@sipsolutions.net>
 <CAK8P3a1FeUQR3pgoQxHoRK05JGORyR+TFATVQiijLWtFKTv6OQ@mail.gmail.com>
 <613cdfde488eb23d7207c7ba6258662702d04840.camel@sipsolutions.net>
 <CAK8P3a2onXpxiE4y9PzRwuPM2dh=h_BKz7Eb0=LLPgBbZoK1bQ@mail.gmail.com>
 <6c70950d0c78bc02a3d016918ec3929e@codeaurora.org>
In-Reply-To: <6c70950d0c78bc02a3d016918ec3929e@codeaurora.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 19 Jun 2019 14:23:16 +0200
Message-ID: <CAK8P3a3e+U85yHTeE4dHa4okLVHgBd8Kke9=FytzvMwz+wB0sQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_052335_893599_1DC7D9F0 
X-CRM114-Status: GOOD (  21.64  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Dan Williams <dcbw@redhat.com>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Networking <netdev@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>, Johannes Berg <johannes@sipsolutions.net>,
 linux-soc@vger.kernel.org, abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 11:15 PM Subash Abhinov Kasiviswanathan
<subashab@codeaurora.org> wrote:
>
> On 2019-06-18 14:55, Arnd Bergmann wrote:
> > On Tue, Jun 18, 2019 at 10:36 PM Johannes Berg
> > <johannes@sipsolutions.net> wrote:
> >>
> >> On Tue, 2019-06-18 at 21:59 +0200, Arnd Bergmann wrote:
> >> >
> >> > From my understanding, the ioctl interface would create the lower
> >> > netdev after talking to the firmware, and then user space would use
> >> > the rmnet interface to create a matching upper-level device for that.
> >> > This is an artifact of the strong separation of ipa and rmnet in the
> >> > code.
> >>
> >> Huh. But if rmnet has muxing, and IPA supports that, why would you
> >> ever
> >> need multiple lower netdevs?
> >
> > From my reading of the code, there is always exactly a 1:1 relationship
> > between an rmnet netdev an an ipa netdev. rmnet does the encapsulation/
> > decapsulation of the qmap data and forwards it to the ipa netdev,
> > which then just passes data through between a hardware queue and
> > its netdevice.
> >
>
> There is a n:1 relationship between rmnet and IPA.
> rmnet does the de-muxing to multiple netdevs based on the mux id
> in the MAP header for RX packets and vice versa.

Oh, so you mean that even though IPA supports multiple channels
and multiple netdev instances for a physical device, all the
rmnet devices end up being thrown into a single channel in IPA?

What are the other channels for in IPA? I understand that there
is one channel for commands that is separate, while the others
are for network devices, but that seems to make no sense if
we only use a single channel for rmnet data.

> >> Yeah, but if you actually have a hardware queue per upper netdev then
> >> you don't really need this - you just stop the netdev queue when the
> >> hardware queue is full, and you have flow control automatically.
> >>
> >> So I really don't see any reason to have these messages going back and
> >> forth unless you plan to have multiple sessions muxed on a single
> >> hardware queue.
> >
>
> Hardware may flow control specific PDNs (rmnet interfaces) based on QoS
> -
> not necessarily only in case of hardware queue full.

Right, I guess that makes sense if everything ends up in a
single queue in IPA.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
