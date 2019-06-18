Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5603D4A53A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45uXWVoRmZVA82EfgqKcpa5fSfGOnItAD/7E7Ekv7Fg=; b=ikizBfrmAkGPal
	PDy0Zmyan4Mw1Cy8nO2U3yKN33MJFSPjzuOj1rJ72YwYxEe2+L4gjlNAVvZ6Snrj9uZEJbftNFhKF
	16AeNZUkorZ7FvMc32EkH0sG2fsjmxWcGF7ibblshjkIe1oRKaCbkUx2tdC0wpdClawz33GRVex5t
	SyVO0h+p4KZIXVpNtYnX25540hd16+VjZondec/YVuOSBiCAXGo2oKOCvxLCSg+oPtEmCzTaRg2GC
	w765sFP9d6+UDZ6xWqY7fHqwtEwGD7aPs7908Cl3aCoqYKIesflMUaGS5ywoSSa2qDwhHY8sfWWZ7
	PTCGDFsbCRuCv4gL3xXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFw1-0006qE-14; Tue, 18 Jun 2019 15:22:09 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFuc-0005yH-5w
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:20:44 +0000
Received: by mail-io1-xd43.google.com with SMTP id r185so24733417iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 08:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Gm6zrt3+jyOk79FjVLjqIif+2ZGmPF1/TjoosYPa/aY=;
 b=HhgTn3B5frcZ87brr7+01lN2WHNxic6G3R1o8OJlYQqfp1hc1M3WllIY/XNiGPHaCI
 Y49KrIQF61r5gxzA3PSinDixPJnXEsEXx6srKhi+lH5frsHNq772xLo9rU0uJRQ0ebi3
 3w56DiGhe4EdCPahcmsF3c9JTDGkepUtjqCViyswiVcC0HxhoXjc78KopLoqO0ENMWUL
 AWvZTUtqNEkFjvosSqLLdX6t7RDLdskTguOS4heP41b4rfNadXsjMO1ltzxQBUjRiV9x
 3lNj2/XsHUqF5UiCjHgOaLMMf59YVbkgLlt7NZqFdjvl3iv8Wi3VgT4dH65UXvzeg9f7
 8obg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Gm6zrt3+jyOk79FjVLjqIif+2ZGmPF1/TjoosYPa/aY=;
 b=KkWoAzLak2g4NrNhMMEsqxh9cRE6Cs8T8L7W1cUi1QcvS4BPKSbY2iV/oxClpH0E7n
 8+xVTPNxXdgeqvtdwb4v94uJSXe6j3R3KvaOBLRs9RjoQHvzGSmFIEwsfQ2dnBhFQTba
 cGhU91q5l7ukdZcHL2o0HzFBCL3DCQyCtS6yzcz4ve5LELrwF+8rkV+156VU56eLrz65
 SyA3iG6BSAhMMKnRVxPOLug/IoEod3XG647W7iBqtjDts5JJJ2X8qWIa1Zy2hQEVyXMJ
 rjfEpfSYVQM1Uhoyrf5rCuJEEaZPcLd/2lwB5n+hDODVO8SWBO1Ids6pFzWxrGeQotJe
 Av/w==
X-Gm-Message-State: APjAAAUe0YdZmozqwbuLWRg4qKpkZyHU07EFZ45R8u0lA7im4FxApb+R
 fR0EK9InDG0SVZwSPSULxbDucQ==
X-Google-Smtp-Source: APXvYqzN+CqWZh0iUp59ZmRZ1rXHigzZ346x42zx/+UeRjEIKpJjL/46ZcKoAoNJbjiPleDHtpFqWg==
X-Received: by 2002:a5d:9d90:: with SMTP id 16mr1935330ion.132.1560871241374; 
 Tue, 18 Jun 2019 08:20:41 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id h18sm12796116iob.80.2019.06.18.08.20.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 08:20:40 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Johannes Berg <johannes@sipsolutions.net>, Arnd Bergmann <arnd@arndb.de>, 
 Dan Williams <dcbw@redhat.com>
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
 <e6ba8a9063e63506c0b88a70418d74ca4efe85cd.camel@sipsolutions.net>
From: Alex Elder <elder@linaro.org>
Message-ID: <850eed1d-0fec-c396-6e91-b5f1f8440ded@linaro.org>
Date: Tue, 18 Jun 2019 10:20:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e6ba8a9063e63506c0b88a70418d74ca4efe85cd.camel@sipsolutions.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_082042_297348_635B00D5 
X-CRM114-Status: GOOD (  21.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Eric Caruso <ejcaruso@google.com>, linux-arm-msm@vger.kernel.org,
 abhishek.esse@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, David Miller <davem@davemloft.net>,
 cpratapa@codeaurora.org, Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/17/19 7:25 AM, Johannes Berg wrote:
> On Mon, 2019-06-17 at 13:42 +0200, Johannes Berg wrote:
> 
>> But anyway, as I alluded to above, I had something like this in mind:
> 
> I forgot to state this here, but this was *heavily* influenced by
> discussions with Dan - many thanks to him.

Thanks for getting even more concrete with this.  Code is the
most concise way of describing things, once the general ideas
seem to be coming together.

I'm not going to comment on the specific code bits, but I have
some more general questions and comments on the design.  Some
of these are simply due to my lack of knowledge of how WWAN/modem
interactions normally work.

First, a few terms (correct or improve as you like):
- WWAN device is a hardware device (like IPA) that presents a
  connection between AP and modem, and presents an interface
  that allows the use of that connection to be managed.
- WWAN netdevice represents a Linux network interface, with its
  operations and queues, etc., but implements a standardized
  set of WWAN-specific operations.  It represents a logical
' channel whose data is multiplexed over the WWAN device.
- WWAN channel is a user space abstraction that corresponds
  with a WWAN netdevice (but I'm not clear on all the ways
  they differ or interact).
- The WWAN core is kernel code that presents abstractions
  for WWAN devices and netdevices, so they can be managed
  in a generic way.  It is for configuration and communication
  and is not at all involved in the data path.

You're saying that the WWAN driver space calls wwan_add()
to register itself as a new WWAN device.

You're also saying that a WWAN device "attaches" a WWAN
netdevice, which is basically notifying the WWAN core
that the new netdev/channel is available for use.
- I trust that a "tentative" attachement is necessary.  But
  I'm not sure what makes it transition into becoming a
  "real" one, or how that event gets communicated.

Some questions:
- What causes a new channel to be created?  Is it initiated
  by the WWAN device driver?  Does the modem request that
  it get created?  User space?  Both?
- What causes a created channel to be removed?
- You distinguish between attaching a netdevice and (what
  I'll call) activating it.  What causes activation?
- How are the attributes of a WWAN device or channel set,
  or communicated?
- Are there any attributes that are only optionally supported,
  and if so, how are the supported ones communicated?
- Which WWAN channel attributes must be set *before* the
  channel is activated, and can't be changed?  Are there any
  that can be changed dynamically?

And while the whole point of this is to make things generic,
it might be nice to have a way to implement a new feature
before it can be "standardized".

Thanks.

					-Alex

PS  I don't want to exclude anybody but we could probably start
    a different mail chain on this topic...

>> driver_dev
>>   struct device *dev (USB, PCI, ...)
>>   net_device NA
>>   net_device NB
>>   tty TA
>>  ...
>>

. . .

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
