Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E07B41F1C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 10:31:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlhC2Zv4D+e7FQkWqZuHZDM1foyiSkFhyFezxLknSwc=; b=j3d5eMp+eAbvQH
	8HJQV3oRwEPm49hooxIws0ETELm0Ajh2Nof1bKXQPwQGkh+np2celxGBX+uMarHEr2r4UdCAqB54Y
	v9qvogFPhsxRSKlkT7wbkZMxybkIbeZKD0S5Wiw/nARlRS+NGcoBYrP1SV2hd3gchYGfjTvSWrfca
	Aw+pYTfr4WpzczJmUeJNm85wDRNSZP+xfiQ4g/aKoERpIn2HdDrfDnQxsFm17k3S0VKd+/WhM+GcZ
	0BfGSZsWRrNQB7WuKaxdH0j2Ow81wFvQW8AejtR+zqbDwiZjBcl7bQbw/uZDWP0Jy6kxhQaKIvIXV
	tVG8RBcKTjk6vybJkWEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hayfS-0005ba-Og; Wed, 12 Jun 2019 08:31:38 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hayfC-0005at-Qp
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 08:31:24 +0000
Received: by mail-qk1-f196.google.com with SMTP id i125so9535913qkd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 01:31:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=amZ8LRkQPQSX4K2c2VzVofPEOqqTn0oph48teP/8EWw=;
 b=WeIrRZURAHI2cj91mm25cPdq2RF4a8VDF2gxukTj6EQz+ifCU2cVaqY1Q5jYI2Q/Bk
 usGFTwKHct9fJ5PMF0MEL1ouDAqcPzUhlIqzOaa0+dT62oAO8EcL/DpjcGcTGhHo+n8Z
 gUEXR3OSmkGt1DlQNmq5fVgQ+/ErnEkbo0HA5eqWq6eCqtgbW6Bvxs5ko1bWW8/bVg0N
 L9+lK80s2sOdeesGCdZ4CMLOy9IIChLzYFeaczjHsVV32TDMw71AbGC1+LbY+hutZ5wo
 UYdKS2trSVREwjr+YCySlh6P4ADaktVptZFl/rj1WY99RCDBzlVdTwRaShZER0vTzu3K
 ktgw==
X-Gm-Message-State: APjAAAWsRZ3zIj6s/8CBhgXY/9S/fd4NkwX6cywGpTlPlXmHys2EGU0A
 J1cocLfhB7J/ZYfDJpBNMyoKDlW1Cs/JepTa2QI=
X-Google-Smtp-Source: APXvYqw8M9NVS5FWEo9c/CfCQavp0lk2HRFD2/V+fVHJmBJioytq8q6qxeJpvv/aHiDmMVt0v3DO6nTZszcSwl8ZWJY=
X-Received: by 2002:a05:620a:35e:: with SMTP id
 t30mr64863407qkm.14.1560328281195; 
 Wed, 12 Jun 2019 01:31:21 -0700 (PDT)
MIME-Version: 1.0
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <fc0d08912bc10ad089eb74034726308375279130.camel@redhat.com>
 <36bca57c999f611353fd9741c55bb2a7@codeaurora.org>
 <153fafb91267147cf22e2bf102dd822933ec823a.camel@redhat.com>
In-Reply-To: <153fafb91267147cf22e2bf102dd822933ec823a.camel@redhat.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 12 Jun 2019 10:31:04 +0200
Message-ID: <CAK8P3a2Y+tcL1-V57dtypWHndNT3eDJdcKj29c_v+k8o1HHQig@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Dan Williams <dcbw@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_013122_873539_E55252DD 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
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

On Tue, Jun 11, 2019 at 7:23 PM Dan Williams <dcbw@redhat.com> wrote:
> On Tue, 2019-06-11 at 10:52 -0600, Subash Abhinov Kasiviswanathan wrote:
>
> rmnet should handle muxing the QMAP, QoS, and aggregation and pass the
> resulting packet to the lower layer. That lower layer could be IPA or
> qmi_wwan, which in turn passes that QMAP packet to USB or GSI or
> whatever. This is typically how Linux handles clean abstractions
> between different protocol layers in drivers.
>
> Similar to some WiFi drivers (drivers/net/wireless/marvell/libertas for
> example) where the same firmware interface can be accessed via PCI,
> SDIO, USB, SPI, etc. The bus-specific code is self-contained and does
> not creep into the upper more generic parts.

Yes, I think that is a good model. In case of libertas, we have multiple
layers inheritence from the basic device (slightly different in the
implementation,
but that is how it should be):

struct if_cs_card { /* pcmcia specific */
     struct lbs_private {  /* libertas specific */
           struct wireless_dev { /* 802.11 specific */
                  struct net_device {
                        struct device {
                              ...
                        };
                        ...
                  };
                  ...
           };
           ...
      };
      ...
};

The outer structure gets allocated when probing the hardware specific
driver, and everything below it is implemented as direct function calls
into the more generic code, or as function pointers into the more specific
code.

The current rmnet model is different in that by design the upper layer
(rmnet) and the lower layer (qmi_wwan, ipa, ...) are kept independent in
both directions, i.e. ipa has (almost) no knowledge of rmnet, and just
has pointers to the other net_device:

       ipa_device
           net_device

       rmnet_port
           net_device

I understand that the rmnet model was intended to provide a cleaner
abstraction, but it's not how we normally structure subsystems in
Linux, and moving to a model more like how wireless_dev works
would improve both readability and performance, as you describe
it, it would be more like (ignoring for now the need for multiple
connections):

   ipa_dev
        rmnet_dev
               wwan_dev
                      net_device

Where each layer is a specialization of the next. Note: this is a
common change when moving from proprietary code to upstream
code. If a driver module is designed to live out of tree, there
is a strong incentive to limit the number of interfaces it uses,
but when it gets merged, it becomes much more flexible, as
an internal interface between wwan_dev and the hardware driver(s)
can be easily changed by modifying all drivers at once.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
