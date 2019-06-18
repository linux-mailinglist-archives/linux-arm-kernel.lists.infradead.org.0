Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7464ABDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 22:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7a8eLztAoAd6syw7it0ALZXlQTdmtdJJNg02vXoi/zU=; b=GFeSMyaOfiruIG
	8BA5i8Va8H09NTDsdLH89q5QL5bEcRctWMFFraU+QvbXdCaxMp6w3Yapa4QLUt9XxHfILjxDlTLj6
	gJuq3FH3/lZqPrWn6LUT1iNi7+RAnL1QB9c3m+uXqAexp7Rm4mvjgYA7QIZ+wQMTc93U6J2f2K+Qj
	PLUK3bN2Dj434skmt4LVnQLir+BZdqcQoUhYP5IGfChL/anoBNgtX1qyI9HJX5j7OJChGQqaEFHqo
	f4aZ3saeHntIYuwlMdV3qAOj5UoYXtKPkgVXVZ4ctM3UNdbPYyHGqR49bPCwXCeFgZ0FB1TVEgA2l
	KW2V8DnCUKqECnNRPoMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdKo7-00015I-Mo; Tue, 18 Jun 2019 20:34:20 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdKnv-00014p-7p
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 20:34:08 +0000
Received: by mail-qt1-f195.google.com with SMTP id p15so17145744qtl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 13:34:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5YjeFcRK5lrzE+kd/ertjFC7LBI5f/r5droqcuVoNO0=;
 b=WPZjd3IIfTraWmDC7CYf5GFKZngtvHAVrlHLIBOClX64yPP0KgYDmCNCw6CTbkd0Rk
 rAQAEudjq7GxdswVDaso3NWKfMU27Y5Uk1RIR3uHn1qnA/DW7UndRSqsuPmb15Y/l32I
 xdhGgYv2tzD4FEHIyWc+oGABJ6IjEYgFETCZYorVEBXLpIytM1d5QcJzFHQ2Zb5lZ+9V
 jJFUyUdjI4wGqTQ/PjMXLGJpN+HRRVWzGdvTanI40GmU/o0E0IuGQjHEpejuK/E6RqQf
 FVJW3u/i/aBK/yF73C4ld6S85pxCt/PhEItuvszYC7V1du0iycP4FwgJkErzRZUUlXtZ
 XRmg==
X-Gm-Message-State: APjAAAVV1UZ89YSyyOn0nFcMUqMggEB23GDhK32Oq9km/vUVLD/yocJd
 gzBjHEsASggZYB86cDfe1JG2bY6zEsIqBcXn5uk=
X-Google-Smtp-Source: APXvYqyx3A8l+upotWCAoMsF3+240GZJGHix9ZiK9UNJtQoPnDFrGEJ658xuvFWtFuLSLTPnk9ZSgTgW6IKjkrTq/SU=
X-Received: by 2002:aed:2bc1:: with SMTP id e59mr81820103qtd.7.1560890046044; 
 Tue, 18 Jun 2019 13:34:06 -0700 (PDT)
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
 <CAK8P3a3ksrFTo2+dLB+doLeY+kPP7rYxv2O7BwvjYgK2cwCTuQ@mail.gmail.com>
 <97cbfb3723607c95d78e25785262ae7b0acdb11c.camel@sipsolutions.net>
In-Reply-To: <97cbfb3723607c95d78e25785262ae7b0acdb11c.camel@sipsolutions.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 18 Jun 2019 22:33:48 +0200
Message-ID: <CAK8P3a29+JKbDdS9ikhgaKa-AJ1qd1sDMTAfzivGh5wN4VL88A@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_133407_285738_9B42BE10 
X-CRM114-Status: GOOD (  27.10  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
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
 Eric Caruso <ejcaruso@google.com>, David Miller <davem@davemloft.net>,
 Dan Williams <dcbw@redhat.com>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Networking <netdev@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 10:15 PM Johannes Berg
<johannes@sipsolutions.net> wrote:
> On Tue, 2019-06-18 at 22:09 +0200, Arnd Bergmann wrote:
> > > One is the whole multi-function device, where a single WWAN device is
> > > composed of channels offered by actually different drivers, e.g. for a
> > > typical USB device you might have something like cdc_ether and the
> > > usb_wwan TTY driver. In this way, we need to "compose" the WWAN device
> > > similarly, e.g. by using the underlying USB device "struct device"
> > > pointer to tie it together.
> > >
> > > The other is something like IPA or the Intel modem driver, where the
> > > device is actually a single (e.g. PCIe) device and just has a single
> > > driver, but that single driver offers different channels.
> >
> > I would hope we can simplify this to expect only the second model,
> > where you have a 'struct device' corresponding to hardware and the
> > driver for it creates one wwan_device that user space talks to.
>
> I'm not sure.
>
> Fundamentally, we have drivers in Linux for the ethernet part, for the
> TTY part, and for whatever other part might be in a given USB multi-
> function device.
>
> > Clearly the multi-function device hardware has to be handled somehow,
> > but it would seem much cleaner in the long run to do that using
> > a special workaround rather than putting this into the core interface.
>
> I don't think it really makes the core interface much more complex or
> difficult though, and it feels easier than writing a completely
> different USB driver yet again for all these devices?
>
> As far as I understand from Dan, sometimes they really are no different
> from a generic USB TTY and a generic USB ethernet, except you know that
> if those show up together it's a modem.
>
> > E.g. have a driver that lets you create a wwan_device by passing
> > netdev and a tty chardev into a configuration interface, and from that
> > point on use the generic wwan abstraction.
>
> Yeah, but where do you hang that driver? Maybe the TTY function is
> actually a WWAN specific USB driver, but the ethernet is something
> generic that can also work with pure ethernet USB devices, and it's
> difficult to figure out how to tie those together. The modules could
> load in completely different order, or even the ethernet module could
> load but the TTY one doesn't because it's not configured, or vice versa.

That was more or less my point: The current drivers exist, but don't
lean themselves to fitting into a new framework, so maybe the best
answer is not to try fitting them.

To clarify: I'm not suggesting to write new USB drivers for these at all,
but instead keep three parts that are completely unaware of each other
a)  a regular netdevice driver
b)  a regular tty driver
c)  the new wwan subsystem that expects a device to be created
    from a hardware driver but knows nothing of a) and b)

To connect these together, we need one glue driver that implements
the wwan_device and talks to a) and b) as the hardware. There are
many ways to do that. One way would be to add a tty ldisc driver.
A small user space helper opens the chardev, sets the ldisc
and then uses an ldisc specific ioctl command to create a wwan
device by passing an identifier of the netdevice and then exits.
From that point on, you have a wwan device like any other.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
