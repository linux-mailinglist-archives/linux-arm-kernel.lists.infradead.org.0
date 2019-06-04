Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 554663414F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTvFB+AtfagCHqcAyu5DeE+127UKHorSHHSbQE5SuCA=; b=szioQmzZijgoTw
	7rdTHeuL430+bR2r/cwPJr35eDfuJTog3ID3PhSUnUxSIHJmBq5lNamaxundYc5s+YBsqqrIEA9IB
	c67cyZG6csxndhKHcyHh8q6mY33WaIznKYiYOMEEL/biEsVgYHb/O030qwO6zSX2aIAeUtuZQ3Yg1
	epguI917uKjgW4nrMYChG6pe+ZWiVwSEKX4WkIssDbwUIkktHzU6+CVVg49mQHNmv/yiopNQ5WLw6
	ltXquZJcjuP1PccQpO3IVm+6yMadOoqd3xhuE5QcBP8cYmP4r7AfXeAg9fUZdssF0Cb1JBIePE2te
	EWdLLoWXCSfEFcmFet3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4a3-0008OE-Tf; Tue, 04 Jun 2019 08:14:03 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4Zw-0008Ng-2Q
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:13:57 +0000
Received: by mail-qt1-f194.google.com with SMTP id a15so12697852qtn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:13:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OlXBKw7HgP4DZult/XowRKn8oIkzj5I8Bd8HMNjnVco=;
 b=OuLOhALF09UAG5NGyTW9QDY4iHcRG9O6Hy6fPLdq46NL2QNkSy/e/+AIuIB3+85hHb
 sdgryJ2rswKPlcsjfXcm8Abd6y04dqH0tC4QGf4sriBlnWcu2aQvTaH6J5j2S8I2DUjC
 uiXm6Y/0pZqArBQPbvtIbcqlCUdtv/p0J/gZGpz00roYDcfEBD/CpKZqcepxzxJdCHxW
 sN1gR46tmKDH9de5yGQBQ89+DzDZhHdN4LXlUfcuF+EGa9yPQo9KYUi/7MWztHKTHMoV
 39ZQgL1aYpT2pF8EDj2xBoRj4CXz96PFhvsG3vmlNvVjA/tcs1+19POV2sFSmARmGe27
 42cA==
X-Gm-Message-State: APjAAAUpvZjWq9Ch2Fb2xUCJoElNs4pJYECq69TCOOnK9TdISdaI5dbY
 E/vnYnIwZoeRnOqGnCQMA2MGG1ZdcSbngTD3Ar0=
X-Google-Smtp-Source: APXvYqz5kir33J5AjmzplbKAfH30cVdEZ3sEoQzuyfFO20zuGZF8LYiKII1TI8KuvJglH3idinfKAhZ4lWT5LqRWGgc=
X-Received: by 2002:ac8:3ff5:: with SMTP id v50mr24492574qtk.142.1559636034539; 
 Tue, 04 Jun 2019 01:13:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
 <20190531233306.GB25597@minitux>
 <d76a710d45dd7df3a28afb12fc62cf14@codeaurora.org>
 <CAK8P3a0brT0zyZGNWiS2R0RMHHFF2JG=_ixQyvjhj3Ky39o0UA@mail.gmail.com>
 <040ce9cc-7173-d10a-a82c-5186d2fcd737@linaro.org>
In-Reply-To: <040ce9cc-7173-d10a-a82c-5186d2fcd737@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 4 Jun 2019 10:13:37 +0200
Message-ID: <CAK8P3a2U=RzfpVaAgRP1QwPhRpZiBNsG5qdWjzwG=tCKZefYHA@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Alex Elder <elder@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_011356_108454_E816C34C 
X-CRM114-Status: GOOD (  34.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Eric Caruso <ejcaruso@google.com>, Dan Williams <dcbw@redhat.com>,
 Networking <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, abhishek.esse@gmail.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, David Miller <davem@davemloft.net>,
 cpratapa@codeaurora.org, Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 3:32 PM Alex Elder <elder@linaro.org> wrote:
> On 6/3/19 5:04 AM, Arnd Bergmann wrote:
> > On Sat, Jun 1, 2019 at 1:59 AM Subash Abhinov Kasiviswanathan
> >
> > - What I'm worried about most here is the flow control handling on the
> >   transmit side. The IPA driver now uses the modern BQL method to
> >   control how much data gets submitted to the hardware at any time.
> >   The rmnet driver also uses flow control using the
> >   rmnet_map_command() function, that blocks tx on the higher
> >   level device when the remote side asks us to.
> >   I fear that doing flow control for a single physical device on two
> >   separate netdev instances is counterproductive and confuses
> >   both sides.
>
> I understand what you're saying here, and instinctively I think
> you're right.
>
> But BQL manages the *local* interface's ability to get rid of
> packets, whereas the QMAP flow control is initiated by the other
> end of the connection (the modem in this case).
>
> With multiplexing, it's possible that one of several logical
> devices on the modem side has exhausted a resource and must
> ask the source of the data on the host side to suspend the
> flow.  Meanwhile the other logical devices sharing the physical
> link might be fine, and should not be delayed by the first one.
>
> It is the multiplexing itself that confuses the BQL algorithm.
> The abstraction obscures the *real* rates at which individual
> logical connections are able to transmit data.

I would assume that the real rate constantly changes, at least
for wireless interfaces that are also shared with other users
on the same network. BQL is meant to deal with that, at least
when using a modern queuing algorithm.

> Even if the multiple logical interfaces implemented BQL, they
> would not get the feedback they need directly from the IPA
> driver, because transmitting over the physical interface might
> succeed even if the logical interface on the modem side can't
> handle more data.  So I think the flow control commands may be
> necessary, given multiplexing.

Can you describe what kind of multiplexing is actually going on?
I'm still unclear about what we actually use multiple logical
interfaces for here, and how they relate to one another.

> The rmnet driver could use BQL, and could return NETDEV_TX_BUSY
> for a logical interface when its TX flow has been stopped by a
> QMAP command.  That way the feedback for BQL on the logical
> interfaces would be provided in the right place.
>
> I have no good intuition about the interaction between
> two layered BQL managed queues though.

Returning NETDEV_TX_BUSY is usually a bad idea as that
leads to unnecessary frame drop.

I do think that using BQL and the QMAP flow command on
the /same/ device would be best, as that throttles the connection
when either of the two algorithms wants us to slow down.

The question is mainly which of the two devices that should be.
Doing it in the ipa driver is probably easier to implement here,
but ideally I think we'd only have a single queue visible to the
network stack, if we can come up with a way to do that.

> > - I was a little confused by the location of the rmnet driver in
> >   drivers/net/ethernet/... More conventionally, I think as a protocol
> >   handler it should go into net/qmap/, with the ipa driver going
> >   into drivers/net/qmap/ipa/, similar to what we have fo ethernet,
> >   wireless, ppp, appletalk, etc.
> >
> > - The rx_handler uses gro_cells, which as I understand is meant
> >   for generic tunnelling setups and takes another loop through
> >   NAPI to aggregate data from multiple queues, but in case of
> >   IPA's single-queue receive calling gro directly would be simpler
> >   and more efficient.
>
> I have been planning to investigate some of the generic GRO
> stuff for IPA but was going to wait on that until the basic
> code was upstream.

That's ok, that part can easily be changed after the fact, as it
does not impact the user interface or the general design.

> >   From the overall design and the rmnet Kconfig description, it
> >   appears as though the intention as that rmnet could be a
> >   generic wrapper on top of any device, but from the
> >   implementation it seems that IPA is not actually usable that
> >   way and would always go through IPA.
>
> As far as I know *nothing* upstream currently uses rmnet; the
> IPA driver will be the first, but as Bjorn said others seem to
> be on the way.  I'm not sure what you mean by "IPA is not
> usable that way."  Currently the IPA driver assumes a fixed
> configuration, and that configuration assumes the use of QMAP,
> and therefore assumes the rmnet driver is layered above it.
> That doesn't preclude rmnet from using a different back end.

Yes, that's what I meant above: IPA can only be used through
rmnet (I wrote "through IPA", sorry for the typo), but cannot be
used by itself.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
