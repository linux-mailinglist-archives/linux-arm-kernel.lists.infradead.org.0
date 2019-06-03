Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADF23311F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 15:32:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgp+tIxMwdq5WmU/JRQW9vnKt6p9wSocq/YWATG5cWE=; b=u+72xC7sCVa379
	NAho0MlhcX96AQSh2iZbru7gbDB8unB+MXoJB5ZcOk4Z/6ciH2c5s3BuL6+9pfFrxz9UktivbCN17
	v8iYdcW9DQt1KTdhfXhM5NwacImOB0KD+nkSzZ6Te1sKdM2DQ7MzBJtSohAOLpflNyEx3hTZqjF+B
	/i0Lg1n7mcqpDR0JHYQNH2A4PYvRpE+7C9CzobEJPfHcWCytywGjq12WYXyLLb9wN+wVbs+d9LGBD
	5c5UYEaoJ81MHNtGJIkXwlU54HWn0dQ4+KO1jkaBtuKhjxM835+Jv1W/7cBjIWEldZzG5cr9jcHIT
	jkpKtydFneAMrraohY/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXn4k-0000AU-HT; Mon, 03 Jun 2019 13:32:34 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXn4c-00009s-OB
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 13:32:28 +0000
Received: by mail-io1-xd42.google.com with SMTP id e3so14262318ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 06:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VeCYvjZJn7GtHGX/PA2+xplClEyq02Kh7mrOK3/KKkQ=;
 b=Qe1vSnm0mjNiYHSbelkoOUXFNvMhWM6uGc2KkQgJt+rwmeVowKLMaXwjSnBm28Z/yN
 6NoDXwMRZnH3TqrjYpwHkbZyKYDDd2xIlflxAOc5MyRZYlynM3Z4ViCBwHv50/Gcw4jN
 TUAQd/2V+k0sIIdiM+Yz87B8qMzOslP2Z+v9U+NzcmWH1jLhNo2fH/EXzD36rc4NIZrb
 mifzUlDv9zwGQ0JDO1YTdJEjM7bpWeYz5RoE0ZdErgQhKtjmZ22GIKOpEUvkAUV6wJVX
 kDK8cs1vSLgIKchGhxDtEQcjOeHNnkWjn3BUtdOY/m5XReuDGtB9aNnyGrNBsO4TGQQg
 iecQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VeCYvjZJn7GtHGX/PA2+xplClEyq02Kh7mrOK3/KKkQ=;
 b=AA4JPd7K0geXzdPKtySzQ8IGPBH+cEfql69meJkJNIHCr03Fw/pUiflyZ1prgDecmH
 JfxJbv3jmyZT8MQPk5Snp+GCvsgYubA5865rfR94pTlixXHBD1jNGUq93vb9ivdoOjRC
 Xb67i1taytEKlMTiyt6tU9sbCoSLjIzrbm3UjPcdmris3xeTeep/vjJm5X8y7vOOrXtp
 bH6PEi8NKh3LBvQuz8o5VMBUAvjqL7US/IQLecbSxuFPynOaR/ImAjHcjuJZfuLNF2Ec
 p0QsvzY50uEonM+lEtSqETDIkbloZNuITCXGQr/I5r+eGNdBKiKDU2dz8nxeT9yhwSL7
 Aw4Q==
X-Gm-Message-State: APjAAAUgKLpP2C8RcqfKsN12NrLFrHILsA1zEYgX8lh2iFyBHvf8nLcj
 ZXlPjFvNu4Ij7IPJbCi78xpw7g==
X-Google-Smtp-Source: APXvYqxAAkJUqQ+MU00LqQKkZdcB5/FFu5kIbtc8fTc7xJteSQ3kRtirsmt17Olj3hOZ/pdqjsk6Bw==
X-Received: by 2002:a05:6602:2256:: with SMTP id
 o22mr8751729ioo.95.1559568745189; 
 Mon, 03 Jun 2019 06:32:25 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id k18sm6383686itb.0.2019.06.03.06.32.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 06:32:24 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Arnd Bergmann <arnd@arndb.de>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
 <20190531233306.GB25597@minitux>
 <d76a710d45dd7df3a28afb12fc62cf14@codeaurora.org>
 <CAK8P3a0brT0zyZGNWiS2R0RMHHFF2JG=_ixQyvjhj3Ky39o0UA@mail.gmail.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <040ce9cc-7173-d10a-a82c-5186d2fcd737@linaro.org>
Date: Mon, 3 Jun 2019 08:32:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0brT0zyZGNWiS2R0RMHHFF2JG=_ixQyvjhj3Ky39o0UA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_063226_801213_7AF2491C 
X-CRM114-Status: GOOD (  31.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-arm-msm@vger.kernel.org, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/3/19 5:04 AM, Arnd Bergmann wrote:
> On Sat, Jun 1, 2019 at 1:59 AM Subash Abhinov Kasiviswanathan
> <subashab@codeaurora.org> wrote:
>> On 2019-05-31 17:33, Bjorn Andersson wrote:
>>> On Fri 31 May 13:47 PDT 2019, Alex Elder wrote:
>>>> On 5/31/19 2:19 PM, Arnd Bergmann wrote:
>>> But any such changes would either be years into the future or for
>>> specific devices and as such not applicable to any/most of devices on
>>> the market now or in the coming years.
>>>
>>>
>>> But as Arnd points out, if the software split between IPA and rmnet is
>>> suboptimal your are encouraged to fix that.
>>
>> The split rmnet design was chosen because we could place rmnet
>> over any transport - IPA, PCIe (https://lkml.org/lkml/2018/4/26/1159)
>> or USB.
>>
>> rmnet registers a rx handler, so the rmnet packet processing itself
>> happens in the same softirq when packets are queued to network stack
>> by IPA.
> 
> I've read up on the implementation some more, and concluded that
> it's mostly a regular protocol wrapper, doing IP over QMAP. There
> is nothing wrong with the basic concept I think, and as you describe
> this is an abstraction to keep the common bits in one place, and
> have them configured consistently.
> 
> A few observations on more details here:
> 
> - What I'm worried about most here is the flow control handling on the
>   transmit side. The IPA driver now uses the modern BQL method to
>   control how much data gets submitted to the hardware at any time.
>   The rmnet driver also uses flow control using the
>   rmnet_map_command() function, that blocks tx on the higher
>   level device when the remote side asks us to.
>   I fear that doing flow control for a single physical device on two
>   separate netdev instances is counterproductive and confuses
>   both sides.

I understand what you're saying here, and instinctively I think
you're right.

But BQL manages the *local* interface's ability to get rid of
packets, whereas the QMAP flow control is initiated by the other
end of the connection (the modem in this case).

With multiplexing, it's possible that one of several logical
devices on the modem side has exhausted a resource and must
ask the source of the data on the host side to suspend the
flow.  Meanwhile the other logical devices sharing the physical
link might be fine, and should not be delayed by the first one. 

It is the multiplexing itself that confuses the BQL algorithm.
The abstraction obscures the *real* rates at which individual
logical connections are able to transmit data.

Even if the multiple logical interfaces implemented BQL, they
would not get the feedback they need directly from the IPA
driver, because transmitting over the physical interface might
succeed even if the logical interface on the modem side can't
handle more data.  So I think the flow control commands may be
necessary, given multiplexing.

The rmnet driver could use BQL, and could return NETDEV_TX_BUSY
for a logical interface when its TX flow has been stopped by a
QMAP command.  That way the feedback for BQL on the logical
interfaces would be provided in the right place.

I have no good intuition about the interaction between
two layered BQL managed queues though.

> - I was a little confused by the location of the rmnet driver in
>   drivers/net/ethernet/... More conventionally, I think as a protocol
>   handler it should go into net/qmap/, with the ipa driver going
>   into drivers/net/qmap/ipa/, similar to what we have fo ethernet,
>   wireless, ppp, appletalk, etc.
> 
> - The rx_handler uses gro_cells, which as I understand is meant
>   for generic tunnelling setups and takes another loop through
>   NAPI to aggregate data from multiple queues, but in case of
>   IPA's single-queue receive calling gro directly would be simpler
>   and more efficient.

I have been planning to investigate some of the generic GRO
stuff for IPA but was going to wait on that until the basic
code was upstream.

> - I'm still not sure I understand the purpose of the layering with
>   using an rx_handler as opposed to just using
>   EXPORT_SYMBOL(rmnet_rx_handler) and calling that from
>   the hardware driver directly.

I think that's a good idea.

>   From the overall design and the rmnet Kconfig description, it
>   appears as though the intention as that rmnet could be a
>   generic wrapper on top of any device, but from the
>   implementation it seems that IPA is not actually usable that
>   way and would always go through IPA.

As far as I know *nothing* upstream currently uses rmnet; the
IPA driver will be the first, but as Bjorn said others seem to
be on the way.  I'm not sure what you mean by "IPA is not
usable that way."  Currently the IPA driver assumes a fixed
configuration, and that configuration assumes the use of QMAP,
and therefore assumes the rmnet driver is layered above it.
That doesn't preclude rmnet from using a different back end.

And I'll also mention that although QMAP *can* do multiplexed
connections over a single physical link, the IPA code I posted
currently supports only one logical interface.

					-Alex


> 
>         Arnd
> 
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
