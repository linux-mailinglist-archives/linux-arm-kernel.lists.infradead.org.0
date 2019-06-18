Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEF84AB7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 22:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTdLI8nnc13il/ZkokmRgS8a0NtDZLEehaM4d0Cki7Q=; b=ZUz0qt9Ywu6QOD
	G7dvRCSnMoRVtznRDP96z+uWIYrIK11M/lLj35PUe81h3HVAKXINH9WPA9RsyeXePTAmXOqBWd6Ne
	OED1DYDh3firaJP0BoJbdcA3tmRBJ6oaYfq7slAXF592qgMPVoEiCLW+OCA27fm73gtDrUqIvgYYa
	zAC2M5Dx2oqVvTnXZtS56LUjLzfjRoH8RqwggWp56kgyZDEViJF6dsGgqsQE5Yp/K2DhbjbUsyrlY
	CbBvpQNF+GZ5OShEoO5ACfA/xJtlpmZy6LcpGkrSkqab3B2l58N7RhicTiL7E44Mp1MMVXl4c6TgH
	fe8Roq9xcdpu+0+ibJLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdKQq-0000ss-TE; Tue, 18 Jun 2019 20:10:17 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdKQX-0000s7-SP
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 20:09:59 +0000
Received: by mail-qt1-f196.google.com with SMTP id n11so17007995qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 13:09:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gnX6xKMGivJziLWPy0MXzH36uFV6fP8h9GWYY0vF4dQ=;
 b=S7umH65R70viWFN/cswnxsjjp6Wd6jr3BLO4iWNssNB7EQxb1IYdk4VMJxGM428SPT
 5UFs89uqdSHLyijC2YYVXDcE+w2VAVpe3hzY8dWPmxIGRXA/2jXscmbt+DM1jZHlShbS
 RGE+DtWeOf5YGWfhr97GbU9RHrSRcgGLHLcJ9LyUWPFmCcXDHt2D+Fi8ZZqWjl+DENTy
 P2PuTUH05Tvp6WmURnfRv1AjdlVxWOV+biXjCXVeSAQ4t9QVIWMRL+wG8dXQCOfHSCwZ
 ULBBJUWQ5lGo198fVV+hRfKco8nLg13Pi9I4EXiKDwMFzsFjoiGkdLl0RksJ9HZy3AIZ
 bTYg==
X-Gm-Message-State: APjAAAU4mQdsNK0CEQioZBI+g9hcxwWrQzRH6yLv3cVq59bWXUOXT1U4
 eI2n1Lq/wVqsswh3ZeexPNe+dxOVPuZ8MzLbAcU=
X-Google-Smtp-Source: APXvYqzMxSZbNKZMyYx2SIWSteQCuWwP6hDYpVFmbIVCBXlz3S9dXHNlAfNiln2W3gebm9oJkPV+di6FaYLU9Wb0Sxs=
X-Received: by 2002:a0c:87ab:: with SMTP id 40mr28470984qvj.93.1560888596401; 
 Tue, 18 Jun 2019 13:09:56 -0700 (PDT)
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
In-Reply-To: <abdfc6b3a9981bcdef40f85f5442a425ce109010.camel@sipsolutions.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 18 Jun 2019 22:09:38 +0200
Message-ID: <CAK8P3a3ksrFTo2+dLB+doLeY+kPP7rYxv2O7BwvjYgK2cwCTuQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_130957_919722_48FB1961 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
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
 Alex Elder <elder@linaro.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 9:03 PM Johannes Berg <johannes@sipsolutions.net> wrote:
> On Tue, 2019-06-18 at 08:45 -0500, Alex Elder wrote:

> Really there are two possible ways (and they intersect to some extent).
>
> One is the whole multi-function device, where a single WWAN device is
> composed of channels offered by actually different drivers, e.g. for a
> typical USB device you might have something like cdc_ether and the
> usb_wwan TTY driver. In this way, we need to "compose" the WWAN device
> similarly, e.g. by using the underlying USB device "struct device"
> pointer to tie it together.
>
> The other is something like IPA or the Intel modem driver, where the
> device is actually a single (e.g. PCIe) device and just has a single
> driver, but that single driver offers different channels.

I would hope we can simplify this to expect only the second model,
where you have a 'struct device' corresponding to hardware and the
driver for it creates one wwan_device that user space talks to.

Clearly the multi-function device hardware has to be handled somehow,
but it would seem much cleaner in the long run to do that using
a special workaround rather than putting this into the core interface.

E.g. have a driver that lets you create a wwan_device by passing
netdev and a tty chardev into a configuration interface, and from that
point on use the generic wwan abstraction.

> Now, it's not clear to me where IPA actually falls, because so far we've
> been talking about the IPA driver only as providing *netdevs*, not any
> control channels, so I'm not actually sure where the control channel is.

The IPA driver today only handles the data path, because Alex removed
the control channel. IPA is the driver that needs to talk to the hardware,
both for data and control when finished. rmnet is a pure software construct
that also contains both a data and control side and is designed to be
independent of the lower hardware.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
