Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AE23164A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 22:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVcmwXu9Wn8/zc1zlhpaQFahUUD7kYDUH0/x3Y1Wk4k=; b=J6Ukh3bbC5K48D
	43F91LiH04zAKYBOc38d6i2nAGIQqatKIApopBfBV2nvJB/Af/9Zp0++dnbQBe7Dhz+IR7Q9C8mdF
	B+knGh0/6KETjPiXYb7DdfFSjHZ8U3tXaV2TETQCUyA6O4chxztMS75hekN9lPGkX4/QAvo4PPmgF
	49wG5kuJwLwcinUAfdBBUqyRrcvWcugDazzHg8vj7i3iXVMRuR1wYckMC83tnarMlpLb3lVW9Yyqy
	h8F/caIUBSDGaeSvf/4MllYlSwLKEUgU9IgbLbbqierCUVg8JykQl0bazRb+21+ICZCp2SbpHKCE+
	PaMB66xQghUzsLGy2iOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWoRD-00061g-4A; Fri, 31 May 2019 20:47:43 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWoR4-00060d-Qk
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 20:47:36 +0000
Received: by mail-it1-x143.google.com with SMTP id h20so17996751itk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 13:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IRpwbW094OnH6umHCwQlKPhM3hpX6SvgnfjHic143gQ=;
 b=NzfStkHq0nkMo+SQp+KB/exvjNcPVOvISq6eJknDst/NZVZpKcqHgITyDIN1vsKsyV
 8OjIkYPmO6YCREB9IeRwsRx0V72d//Z3u4cnNagkgUKKtTpuznSNCJD8oe9nuCP7SpmM
 jy5Fq/Y8TDI5btRgQwOEsHlWVDU7sPv7KnU0pq/FZZUXfebygU7vjjVYLszBlHoOfB0g
 NTj+2GhyUPDb+2opYTXoym0vNjjnN+GezroevkGF2HWj3we4Ijkr9xq+I7/9fxwnfQTG
 bEkiSgEbV+ukcT8RYnzk6jtI9Cxo7xjZ8HheemOk/tx09ah7zR8OU5pTwZJZyErWTOq7
 4Lcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IRpwbW094OnH6umHCwQlKPhM3hpX6SvgnfjHic143gQ=;
 b=OrDmLZMJIU+d61NAWEj+tJ8CTTGTGRCctwd6yy3RjIWpi+/c/O7Pvyj2HsN+6KKXo5
 Rx4e2REAqtGpk2chr86M2qJVSB9dIVFiCLBylOOApT2csZYGdqFujTiFnh4W6vt6wcX6
 VA01lp97hW35dXI2q2BkD+zCoWEnbyjGF8pjT/6azBgE5E340eHkVq06zdS/dWNBXXiv
 pOmL4pMWGg1L7D/n0feCg1xzamT+hGewFcEiWrWsUBj6EHcwFwcO72PsnV5d94cc1rgW
 mlmbaCw5dv5E8fw87vKYDf7OJ3mld5hv4kOsM0GVTxkJ4fIHGRmKS06iEzHFuHkpsa4N
 GU/w==
X-Gm-Message-State: APjAAAX7A4FAbeHeNZgDzI6kEWOLfE9EyHJO2II+qmhoXU+ZlwKeuY0P
 DqMZ+E+IOBXAXCB5/R4TIT+JfA==
X-Google-Smtp-Source: APXvYqxMwgapovXvtTiMAmYy3K2/KLt39IROipPv8qWsPS7pwqaEQ4P+f4PszMxyXxk6DGk15dn94w==
X-Received: by 2002:a24:378b:: with SMTP id r133mr8135816itr.154.1559335653390; 
 Fri, 31 May 2019 13:47:33 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id x11sm2327554ion.10.2019.05.31.13.47.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 13:47:32 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Arnd Bergmann <arnd@arndb.de>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
Date: Fri, 31 May 2019 15:47:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_134734_877852_D64E88DD 
X-CRM114-Status: GOOD (  34.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 5/31/19 2:19 PM, Arnd Bergmann wrote:
> On Fri, May 31, 2019 at 6:36 PM Alex Elder <elder@linaro.org> wrote:
>> On 5/31/19 9:58 AM, Dan Williams wrote:
>>> On Thu, 2019-05-30 at 22:53 -0500, Alex Elder wrote:
>>>
>>> My question from the Nov 2018 IPA rmnet driver still stands; how does
>>> this relate to net/ethernet/qualcomm/rmnet/ if at all? And if this is
>>> really just a netdev talking to the IPA itself and unrelated to
>>> net/ethernet/qualcomm/rmnet, let's call it "ipa%d" and stop cargo-
>>> culting rmnet around just because it happens to be a net driver for a
>>> QC SoC.
>>
>> First, the relationship between the IPA driver and the rmnet driver
>> is that the IPA driver is assumed to sit between the rmnet driver
>> and the hardware.
> 
> Does this mean that IPA can only be used to back rmnet, and rmnet
> can only be used on top of IPA, or can or both of them be combined
> with another driver to talk to instead?

No it does not mean that.

As I understand it, one reason for the rmnet layer was to abstract
the back end, which would allow using a modem, or using something
else (a LAN?), without exposing certain details of the hardware.
(Perhaps to support multiplexing, etc. without duplicating that
logic in two "back-end" drivers?)

To be perfectly honest, at first I thought having IPA use rmnet
was a cargo cult thing like Dan suggested, because I didn't see
the benefit.  I now see why one would use that pass-through layer
to handle the QMAP features.

But back to your question.  The other thing is that I see no
reason the IPA couldn't present a "normal" (non QMAP) interface
for a modem.  It's something I'd really like to be able to do,
but I can't do it without having the modem firmware change its
configuration for these endpoints.  My access to the people who
implement the modem firmware has been very limited (something
I hope to improve), and unless and until I can get corresponding
changes on the modem side to implement connections that don't
use QMAP, I can't implement such a thing.

>> Currently the modem is assumed to use QMAP protocol.  This means
>> each packet is prefixed by a (struct rmnet_map_header) structure
>> that allows the IPA connection to be multiplexed for several logical
>> connections.  The rmnet driver parses such messages and implements
>> the multiplexed network interfaces.
>>
>> QMAP protocol can also be used for aggregating many small packets
>> into a larger message.  The rmnet driver implements de-aggregation
>> of such messages (and could probably aggregate them for TX as well).
>>
>> Finally, the IPA can support checksum offload, and the rmnet
>> driver handles providing a prepended header (for TX) and
>> interpreting the appended trailer (for RX) if these features
>> are enabled.
>>
>> So basically, the purpose of the rmnet driver is to handle QMAP
>> protocol connections, and right now that's what the modem provides.
> 
> Do you have any idea why this particular design was picked?

I don't really.  I inherited it.  Early on, when I asked about
the need for QMAP I was told it was important because it offered
certain features, but at that time I was somewhat new to the code
and didn't have the insight to judge the merits of the design.
Since then I've mostly just accepted it and concentrated on
improving the IPA driver.

> My best guess is that it evolved organically with multiple
> generations of hardware and software, rather than being thought
> out as a nice abstraction layer. If the two are tightly connected,
> this might mean that what we actually want here is to reintegrate
> the two components into a single driver with a much simpler
> RX and TX path that handles the checksumming and aggregation
> of data packets directly as it passes them from the network
> stack into the hardware.

In general, I agree.  And Dan suggested combining the rmnet
and IPA drivers into a single driver when I posted the RFC
code last year.  There's still the notion of switching back
ends that I mentioned earlier; if that's indeed an important
feature it might argue for keeping rmnet as a shim layer.
But I'm really not the person to comment on this.  Someone
(Subash?) from Qualcomm might be able to provide better answers.

> Always passing data from one netdev to another both ways
> sounds like it introduces both direct CPU overhead, and
> problems with flow control when data gets buffered inbetween.

My impression is the rmnet driver is a pretty thin layer,
so the CPU overhead is probably not that great (though
deaggregating a message is expensive).  I agree with you
on the flow control.

> The intermediate buffer here acts like a router that must
> pass data along or randomly drop packets when the consumer
> can't keep up with the producer.

I haven't reviewed the rmnet code in any detail, but you
may be right.

					-Alex

> 
>         Arnd
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
