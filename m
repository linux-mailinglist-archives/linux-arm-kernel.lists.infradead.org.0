Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D207256B72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:00:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8OiOBXyCwO3NPNBg5tlEGHX7Ca+JZ0CykGQr87/7O4=; b=bS14XwUz0GZInX
	wOrilQMJgrTK5efMw5ibph/NMGllr9kkLD+2iolOoD8Q2kvYGlg0VKVuAu4E13CR2Im8fwWoP0k3V
	VMPfE72cDK+kQsrDzbwlI/2m+KFt7E5iYYNEtUKodXd2I5zMlJut/4Z3oTdAhz4/z+/tyLtdg80xc
	mMBLf0iaHyHO7BolJh56uAgnvfeaPUlGyQp3qpvg0UKbyPtcvxBhN00Jljivh/s2VeZm+1D5Lzso/
	kg1LYZIPTaTF8q9H/3z5gOUVciy2/KZITxW8biIOdbRPMFA30pIPe7Hz/UHkeIR46xT+kGY0vzEJI
	S8W2Na19Dd5N38sbxsiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8T1-0007Os-3H; Wed, 26 Jun 2019 14:00:07 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8S4-00079N-AG
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:59:10 +0000
Received: by mail-qk1-f195.google.com with SMTP id t8so1715102qkt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 06:59:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pXxa75AgHN+kU67J58uXazk7bwNbQuP7iiHjqwf4SQ4=;
 b=sP3nwow86R05TV6l6fLOZGir4sk8hi4OlvyeyGqwSeF/mX9+GBU2MVuJCsUe1cAe2p
 FbyzgmKTWZ6IQsH+x7UOMETq6rQJkaOCrCtEM+x3ouk1gvqjwf0ZYDAE4M9u7frhJhqU
 mmPIVT6gCC4YbBqR2Xn7UgGZCo64LaB5LAun6JBYArrm82l39OVDXi3NiVslD+z3RgDA
 USZ+AaFvxvmLbbgtnhtwO5uk7MA8FFMMXs5jzC00zAb+CrWhvpZt6r7rlIG5bauldebj
 3bUaZGwS4HzxmobPnclXGabSELesa4RG1BRmUGWfTb9BZKMZWgE4R+XjP5yRtnKWj+C8
 l6AA==
X-Gm-Message-State: APjAAAW5YKZgZPe5Sg31QWUi68KZw0ScYDLVh056Lygf5nA0m2sn3Qv5
 OIA+x0NQf3x/M8D1C2LABXDXqWfNV0ZwWTgX+pU=
X-Google-Smtp-Source: APXvYqzCvw9vZuTjsXYQyBmuA+cZgPu3mswH6EYEmNOv8664CbCqBtT59doitfBhiAj6kcOMBfEiw3S5FFDSDbmyUmo=
X-Received: by 2002:a37:76c5:: with SMTP id r188mr3978511qkc.394.1561557546341; 
 Wed, 26 Jun 2019 06:59:06 -0700 (PDT)
MIME-Version: 1.0
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <fc0d08912bc10ad089eb74034726308375279130.camel@redhat.com>
 <36bca57c999f611353fd9741c55bb2a7@codeaurora.org>
 <153fafb91267147cf22e2bf102dd822933ec823a.camel@redhat.com>
 <CAK8P3a2Y+tcL1-V57dtypWHndNT3eDJdcKj29c_v+k8o1HHQig@mail.gmail.com>
 <f4249aa5f5acdd90275eda35aa16f3cfb29d29be.camel@redhat.com>
 <CAK8P3a2nzZKtshYfomOOSYkqx5HdU15Wr9b+3va0B1euNhFOAg@mail.gmail.com>
 <dbb32f185d2c3a654083ee0a7188379e1f88d899.camel@sipsolutions.net>
 <d533b708-c97a-710d-1138-3ae79107f209@linaro.org>
 <abdfc6b3a9981bcdef40f85f5442a425ce109010.camel@sipsolutions.net>
 <db34aa39-6cf1-4844-1bfe-528e391c3729@linaro.org>
 <CAK8P3a1ixL9ZjYz=pWTxvMfeD89S6QxSeHt9ZCL9dkCNV5pMHQ@mail.gmail.com>
 <efbcb3b84ff0a7d7eab875c37f3a5fa77e21d324.camel@sipsolutions.net>
 <edea19ef-f225-bdcd-f394-77e326d1d3ad@linaro.org>
In-Reply-To: <edea19ef-f225-bdcd-f394-77e326d1d3ad@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 26 Jun 2019 15:58:48 +0200
Message-ID: <CAK8P3a3wHe_6ay8P+F9Vo=k19P5fifs6RWozxFF5nGYYjO_=Xw@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Alex Elder <elder@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_065908_613074_383F2DF3 
X-CRM114-Status: GOOD (  24.89  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Eric Caruso <ejcaruso@google.com>, David Miller <davem@davemloft.net>,
 Dan Williams <dcbw@redhat.com>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 3:39 PM Alex Elder <elder@linaro.org> wrote:
> On 6/25/19 9:19 AM, Johannes Berg wrote:
> > On Mon, 2019-06-24 at 18:40 +0200, Arnd Bergmann wrote:
>
> > So, IOW, I'm not sure I see how you'd split that up. I guess you could
> > if you actually do something like the "rmnet" model, and I suppose
> > you're free to do that for IPA if you like, but I tend to think that's
> > actually a burden, not a win since you just get more complex code that
> > needs to interact with more pieces. A single driver for a single
> > hardware that knows about the few types of channels seems simpler to me.
> >
> >> - to answer Johannes question, my understanding is that the interface
> >>   between kernel and firmware/hardware for IPA has a single 'struct
> >>   device' that is used for both the data and the control channels,
> >>   rather than having a data channel and an independent control device,
> >>   so this falls into the same category as the Intel one (please correct
> >>   me on that)
>
> I don't think that's quite right, but it might be partially
> right.  There is a single device representing IPA, but the
> picture is a little more complicated.
>
> The IPA hardware is actually something that sits *between* the
> AP and the modem.  It implements one form of communication
> pathway (IP data), but there are others (including QMI, which
> presents a network-like interface but it's actually implemented
> via clever use of shared memory and interrupts).

Can you clarify how QMI fits in here? Do you mean one has to
talk to both IPA and QMI to use the modem, or are these two
alternative implementations for the same basic purpose?

> > That sounds about the same then, right.
> >
> > Are the control channels to IPA are actually also tunnelled over the
> > rmnet protocol? And even if they are, perhaps they have a different
> > hardware queue or so? That'd be the case for Intel - different hardware
> > queue, same (or at least similar) protocol spoken for the DMA hardware
> > itself, but different contents of the messages obviously.
>
> I want to be careful talking about "control" but for IPA it comes
> from user space.  For the purpose of getting initial code upstream,
> all of that control functionality (which was IOCTL based) has been
> removed, and a fixed configuration is assumed.

My previous understanding was that from the hardware perspective
there is only one control interface, which is for IPA. Part of this
is abstracted to user space with ioctl commands to the IPA driver,
and then one must set up rmnet to match these by configuring
an rmnet device over netlink messages from user space, but
rmnet does not have a control protocol with the hardware.

The exception here is the flow control, which is handled using
in-band XON/OFF messages from the modem to rmnet (and
corresponding Acks the other way) that IPA just passes through.

If we also need to talk to QMI, that would be something completely
different though.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
