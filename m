Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC5B32D7E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 12:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBrgA5UvIfkfmApDur+3o3QLjl7ocXPoGNwz/cOQfDM=; b=FwWd2zOOtllA/3
	UyaO4MZDxu41kCq7bFQg04V+td8g5Em5wXrKrHrzQLSxPEtN9sKUQbObsTq1YboWddw5Hag0e36Pt
	rrcRUKVWMgqvFYz8GniX6+x/cfk0zDzUGD9s4+bJWkHWlOdrFqAmMUWEZqPWVk20KedP+ggDIJpf4
	SmyVPsWoKd4t/KaxbiWXlak8tgsaGRDiqFXQUc0nLGSWo/ugEMIyyy/Pe0OUHeAk4d9ROphvsjG15
	mu742vvGQDkmKyGYhpXpmGSt1pIYyqQ+QcJ+C6+cq0Yct4lf2PS72zfnWl02IB0+/FLtxlsmXZVFt
	/H+AxXhOXuUW6L9B+X0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjqD-0000FQ-6k; Mon, 03 Jun 2019 10:05:21 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjpU-0007IS-S4
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 10:04:54 +0000
Received: by mail-qt1-f193.google.com with SMTP id u12so8635681qth.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 03:04:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4mTLQRrHjaRBaZSwkMEWXidv12RrUMv/IgTicgG6H6Y=;
 b=VlFq3CUiaICbEm4RTs2KAjkURWKCD3+iif8Aak5LWgg0SWgFPEJKWkVy+BdjYXL2g2
 JHMi10YBnoPM+Jrry2XLsNJsBgLZgg1y04MDU4BFKtvAC/3UjP7j+B7XXZwaMdFRTRQe
 Bc32m5WIOS4kDCqg7eq7p/TZmyazVq+OIzLOsSNnER2jY0SzABJRl7JkJTvbGQ8m7q0d
 /nSG3tjZhffvsxjWZlm5IEffHmyqnHaAE+oYrmOXNerS6NOnxARTV/nKYZ0rnSx8uNMl
 r0TfZYpJnAYPcP2yjggDOwld4JwX/RmA4bnRxgxlr1ddTCfIjLddFcd2GuKOYEKxzQnn
 B5yg==
X-Gm-Message-State: APjAAAVXW+c8YbRA9zm1BA9R/R2DfTW1GeeuN2usW5F8ZKdMG2W6AVyw
 isEkXaVCtcwB2BPG9eUXgNqvIOYPpF+Sn4gJvtEtpSnFIJKthg==
X-Google-Smtp-Source: APXvYqyJKu5GwO9ABnBYg2Ba17xg3CWHMZcxHiqutvmKcrHX9Lm6N7mfkfbtxvzLf+9LUIihQPa7nJEQpZpARdFTdGA=
X-Received: by 2002:a0c:e78b:: with SMTP id x11mr955877qvn.93.1559556275186;
 Mon, 03 Jun 2019 03:04:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
 <20190531233306.GB25597@minitux>
 <d76a710d45dd7df3a28afb12fc62cf14@codeaurora.org>
In-Reply-To: <d76a710d45dd7df3a28afb12fc62cf14@codeaurora.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 3 Jun 2019 12:04:18 +0200
Message-ID: <CAK8P3a0brT0zyZGNWiS2R0RMHHFF2JG=_ixQyvjhj3Ky39o0UA@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_030437_230331_54AE9A1F 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Networking <netdev@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, abhishek.esse@gmail.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 1, 2019 at 1:59 AM Subash Abhinov Kasiviswanathan
<subashab@codeaurora.org> wrote:
> On 2019-05-31 17:33, Bjorn Andersson wrote:
> > On Fri 31 May 13:47 PDT 2019, Alex Elder wrote:
> >> On 5/31/19 2:19 PM, Arnd Bergmann wrote:
> > But any such changes would either be years into the future or for
> > specific devices and as such not applicable to any/most of devices on
> > the market now or in the coming years.
> >
> >
> > But as Arnd points out, if the software split between IPA and rmnet is
> > suboptimal your are encouraged to fix that.
>
> The split rmnet design was chosen because we could place rmnet
> over any transport - IPA, PCIe (https://lkml.org/lkml/2018/4/26/1159)
> or USB.
>
> rmnet registers a rx handler, so the rmnet packet processing itself
> happens in the same softirq when packets are queued to network stack
> by IPA.

I've read up on the implementation some more, and concluded that
it's mostly a regular protocol wrapper, doing IP over QMAP. There
is nothing wrong with the basic concept I think, and as you describe
this is an abstraction to keep the common bits in one place, and
have them configured consistently.

A few observations on more details here:

- What I'm worried about most here is the flow control handling on the
  transmit side. The IPA driver now uses the modern BQL method to
  control how much data gets submitted to the hardware at any time.
  The rmnet driver also uses flow control using the
  rmnet_map_command() function, that blocks tx on the higher
  level device when the remote side asks us to.
  I fear that doing flow control for a single physical device on two
  separate netdev instances is counterproductive and confuses
  both sides.

- I was a little confused by the location of the rmnet driver in
  drivers/net/ethernet/... More conventionally, I think as a protocol
  handler it should go into net/qmap/, with the ipa driver going
  into drivers/net/qmap/ipa/, similar to what we have fo ethernet,
  wireless, ppp, appletalk, etc.

- The rx_handler uses gro_cells, which as I understand is meant
  for generic tunnelling setups and takes another loop through
  NAPI to aggregate data from multiple queues, but in case of
  IPA's single-queue receive calling gro directly would be simpler
  and more efficient.

- I'm still not sure I understand the purpose of the layering with
  using an rx_handler as opposed to just using
  EXPORT_SYMBOL(rmnet_rx_handler) and calling that from
  the hardware driver directly.
  From the overall design and the rmnet Kconfig description, it
  appears as though the intention as that rmnet could be a
  generic wrapper on top of any device, but from the
  implementation it seems that IPA is not actually usable that
  way and would always go through IPA.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
