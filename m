Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783403152D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 21:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgPsTHrMCVxxG0Ve8Hz+m4ZM/r5hlr8w6l3F3G6TQfw=; b=BQ+H5OZerKjxw5
	Smt38g/h7uNb64tSxLEoyS1tX4jXCrRSIKwNY5wZ1rm0W0y2awSP+vjgWjz+t6L3qBPYRexO6XkER
	gogq0KozVWkXeYAeUeDnyhctgWHBlz1mCOY70fvbPhR1OPqHGq5aGMgt0kAr74+xz3zy/4NhpZkNT
	MhWibvh85DYV7kmW1OqWNVTmT8ULf5atocRCIx/ty8eCZYON5j8SgAYqj6SftX1uLwi6xu4QcYdCi
	sQrqW5yI3jhgXxAJD9s6jaVqffMv7UcOdkyeSDYbAU7Xnv8RreOdRYCZU4BprQzrWMb3bmhwQNa86
	fN4Rx8R9LRobAkqxGJVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWn44-0003F6-A0; Fri, 31 May 2019 19:19:44 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWn3x-0003EI-4k
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 19:19:38 +0000
Received: by mail-qt1-f196.google.com with SMTP id x47so2206850qtk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 12:19:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZasN1uMb6LWNr3Bdl17/Az/Guny0XVTL4T4x9/AydIU=;
 b=s6XxxtvzfLjOOEBvYwGTALBB42WA4Qxg4xrrafk+a7hhpK4tT+XbTTn7t2Zl+qGz7/
 o41SCs0AnLsevYOfeJ20ssmBR9Fo4q+9DRoNdInyhyVx8RTv4O8BuPCbEA3657fkhW4a
 3Q6+AznfEX5STmPhh6lGsQ0CMjp2pwqyYinE2OjKY5MA3hxb4NNN7R3uTgWdYF1kr7R5
 KrCmyt4pl8Sf8pURx2Lepcf/BLbg7Xi1gG6k5UtsDA3viA3togh0b2AQ8WIQ0lqO+T3l
 /rOF93LAGRzIOTBTlLgWCo+Q9O6yfooGtQKAoltmbgB5HQpXxPn/xyODLp9Hnw3z9jM9
 3fbA==
X-Gm-Message-State: APjAAAX++TalibgYNygoMpGX0/YucPhPlk77GGpfT5EWDdLc23vVdMOk
 QPbOYTKUKU+cp5H9yGCwBfYtH8qpj7QODVJdc3M=
X-Google-Smtp-Source: APXvYqwTzyt4WCkVVX3Qulyt1v2QQMhca2JE7R2nPL+bbYIIgogHgkLIhe92uxEulcPWL7paeV3/6XiyNu5oc8Epn44=
X-Received: by 2002:aed:3e7c:: with SMTP id m57mr5706705qtf.204.1559330374999; 
 Fri, 31 May 2019 12:19:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
In-Reply-To: <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 21:19:18 +0200
Message-ID: <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Alex Elder <elder@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_121937_178686_BC6618F6 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

On Fri, May 31, 2019 at 6:36 PM Alex Elder <elder@linaro.org> wrote:
> On 5/31/19 9:58 AM, Dan Williams wrote:
> > On Thu, 2019-05-30 at 22:53 -0500, Alex Elder wrote:
> >
> > My question from the Nov 2018 IPA rmnet driver still stands; how does
> > this relate to net/ethernet/qualcomm/rmnet/ if at all? And if this is
> > really just a netdev talking to the IPA itself and unrelated to
> > net/ethernet/qualcomm/rmnet, let's call it "ipa%d" and stop cargo-
> > culting rmnet around just because it happens to be a net driver for a
> > QC SoC.
>
> First, the relationship between the IPA driver and the rmnet driver
> is that the IPA driver is assumed to sit between the rmnet driver
> and the hardware.

Does this mean that IPA can only be used to back rmnet, and rmnet
can only be used on top of IPA, or can or both of them be combined
with another driver to talk to instead?

> Currently the modem is assumed to use QMAP protocol.  This means
> each packet is prefixed by a (struct rmnet_map_header) structure
> that allows the IPA connection to be multiplexed for several logical
> connections.  The rmnet driver parses such messages and implements
> the multiplexed network interfaces.
>
> QMAP protocol can also be used for aggregating many small packets
> into a larger message.  The rmnet driver implements de-aggregation
> of such messages (and could probably aggregate them for TX as well).
>
> Finally, the IPA can support checksum offload, and the rmnet
> driver handles providing a prepended header (for TX) and
> interpreting the appended trailer (for RX) if these features
> are enabled.
>
> So basically, the purpose of the rmnet driver is to handle QMAP
> protocol connections, and right now that's what the modem provides.

Do you have any idea why this particular design was picked?

My best guess is that it evolved organically with multiple
generations of hardware and software, rather than being thought
out as a nice abstraction layer. If the two are tightly connected,
this might mean that what we actually want here is to reintegrate
the two components into a single driver with a much simpler
RX and TX path that handles the checksumming and aggregation
of data packets directly as it passes them from the network
stack into the hardware.

Always passing data from one netdev to another both ways
sounds like it introduces both direct CPU overhead, and
problems with flow control when data gets buffered inbetween.
The intermediate buffer here acts like a router that must
pass data along or randomly drop packets when the consumer
can't keep up with the producer.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
