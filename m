Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E69637B49
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwn7/oEYiZyXY8PljJDcAKstw6WRQmqlygADsrpowNs=; b=gixZ/SZ6pWVx9J
	X8MnsnqtJs0GN5Ak1cuAzTi9pTYD9fuWIMlpmNm7jpNkWqh+ofueccB2FhCnW475SapZzaqEEtMLk
	QzIYHKdqKm0xPLrIKwh2ntMEsS7zPn8gj0ZZ08JDr8Y3YLX2v/gq/FQBHlVPGgFBxOsgxVZ9WT+kJ
	HIlm7Rc8jIKwzg242AgOSNjdmm9rJHWKswae8ONa7Kj3SIIPZHlQXU6XdOoHICRaoHvmzZfGosn9Z
	R6MBRHhrhXAwysI8lbNMzNKDAJFOtuD27yK8rzU60ohQPHysW/rH5593IAt6CgwMJFHV+hCqBZLW8
	VwOP4j9iFDY684FQI3vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwP8-0007aO-AH; Thu, 06 Jun 2019 17:42:22 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwP0-0007ZG-K4
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 17:42:16 +0000
Received: by mail-it1-x141.google.com with SMTP id a186so1338725itg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 10:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DF4dQA1gIkFVgXztlpdKk3n/BViiehMxIhYhE4VnkR4=;
 b=KGwtj9UC89wRdT3HsyRr12bThebYmDfsZJLgMxmjyHJL6J0r1yu8j6LLOkmKKtV8+2
 LtMASJ9SNxz8cGVSnVadhgYrVuHX5vP5Rj6FzMvKlYbnf1WXI2U6Aq+4d/X5v+enclMW
 qyPz3cJLedz31HfbmBxP6SozodQSt6dQGgKYp9d0DOR76o0JG3gRD5plHn+vju/Z506J
 HmQvDw/OvXHk7t1DQeoX5VJOoZLLbMLWvCH0nffebEdvjYK4aVzJqqqcqlBstw8jEq9d
 dAigjLdXABVs0DH2S5SsWxRv+JXmjNJEQNoaq/ad9dFBxgK3gUbDKzbkR/YWf/oie3Mm
 YH1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DF4dQA1gIkFVgXztlpdKk3n/BViiehMxIhYhE4VnkR4=;
 b=MjCCs4uTt3uYxkToveLCVP3H4UmAyuLQ4aXzGa2HCuw6IT1cui7RJghwlhwbh6li8X
 2I8j76XECqo2lwOJLp/LXl5NqnXbxgR2LjVeSEjwNFBgzuBk4sns6n5kFtt2Fl7PIb1r
 9kQO3LWwyQp2q3xePy7sDV6Yid8btaGLltDixwTKhvyeqc3vI5bhNM0Sd0ZVI5518x5U
 GOnuTiVXYVDC7NXYiEIhBz4/UcCyN/wrYP4dC10DVIEWr9GwEq6H6Ef6ZcJzQ9tE8/iv
 FTklRE/AEURYoXNAj5iHHaWBSGO+l4d+28idcBx633YU65P2rix0p6VLl8swkDFoj5OD
 fdLQ==
X-Gm-Message-State: APjAAAVPYAHrDhpm3YzzqjV0Ddb4mzupDPOuISzttqMj5YZ+uR2Oij1i
 Ln6Mc76Draj4ef+XupcU4+6i0t3dSn0=
X-Google-Smtp-Source: APXvYqyHNwNKPxbwqRyI0UzRFRYI0LNnqNSA5yyN+XT3MtdTA8IDyJ5LpmKk0rHZQuPmLw0mXxlWnA==
X-Received: by 2002:a02:a493:: with SMTP id d19mr28473646jam.22.1559842931946; 
 Thu, 06 Jun 2019 10:42:11 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id a7sm855158iok.19.2019.06.06.10.42.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 10:42:11 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Dan Williams <dcbw@redhat.com>, Arnd Bergmann <arnd@arndb.de>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
 <20190531233306.GB25597@minitux>
 <d76a710d45dd7df3a28afb12fc62cf14@codeaurora.org>
 <CAK8P3a0brT0zyZGNWiS2R0RMHHFF2JG=_ixQyvjhj3Ky39o0UA@mail.gmail.com>
 <040ce9cc-7173-d10a-a82c-5186d2fcd737@linaro.org>
 <CAK8P3a2U=RzfpVaAgRP1QwPhRpZiBNsG5qdWjzwG=tCKZefYHA@mail.gmail.com>
 <b26cf34c0d3fa1a7a700cee935244d7a2a7e1388.camel@redhat.com>
 <CAK8P3a3pQpSpH4q=CL6gr_YzjYgoyD6-eyiLrvnZsqqjpcRxtQ@mail.gmail.com>
 <0264d7f9a35430201a89c068bb13c84c622af11a.camel@redhat.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
Date: Thu, 6 Jun 2019 12:42:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <0264d7f9a35430201a89c068bb13c84c622af11a.camel@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_104214_726285_C1F3AF03 
X-CRM114-Status: GOOD (  30.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Eric Caruso <ejcaruso@google.com>, Networking <netdev@vger.kernel.org>,
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

On 6/4/19 4:29 PM, Dan Williams wrote:
> On Tue, 2019-06-04 at 22:04 +0200, Arnd Bergmann wrote:
>> On Tue, Jun 4, 2019 at 5:18 PM Dan Williams <dcbw@redhat.com> wrote:
>>> On Tue, 2019-06-04 at 10:13 +0200, Arnd Bergmann wrote:
>>>> Can you describe what kind of multiplexing is actually going on?
>>>> I'm still unclear about what we actually use multiple logical
>>>> interfaces for here, and how they relate to one another.
>>>
>>> Each logical interface represents a different "connection" (PDP/EPS
>>> context) to the provider network with a distinct IP address and
>>> QoS.
>>> VLANs may be a suitable analogy but here they are L3+QoS.
>>>
>>> In realistic example the main interface (say rmnet0) would be used
>>> for
>>> web browsing and have best-effort QoS. A second interface (say
>>> rmnet1)
>>> would be used for VOIP and have certain QoS guarantees from both
>>> the
>>> modem and the network itself.
>>>
>>> QMAP can also aggregate frames for a given channel
>>> (connection/EPS/PDP
>>> context/rmnet interface/etc) to better support LTE speeds.
>>
>> Thanks, that's a very helpful explanation!
>>
>> Is it correct to say then that the concept of having those separate
>> connections would be required for any proper LTE modem
>> implementation,
>> but the QMAP protocol (and based on that, the rmnet implementation)
>> is Qualcomm specific and shared only among several generations of
>> modems from that one vendor?
> 
> Exactly correct.  This is what Johannes is discussing in his "cellular
> modem APIs - take 2" thread about how this should all be organized at
> the driver level and I think we should figure that out before we commit
> to IPA-with-a-useless-netdev that requires rmnets to be created on top.
> That may end up being the solution but let's have that discussion.

I looked at Johannes' message and the follow-on discussion.  As I've
made clear before, my work on this has been focused on the IPA transport,
and some of this higher-level LTE architecture is new to me.  But it
seems pretty clear that an abstracted WWAN subsystem is a good plan,
because these devices represent a superset of what a "normal" netdev
implements.

HOWEVER I disagree with your suggestion that the IPA code should
not be committed until after that is all sorted out.  In part it's
for selfish reasons, but I think there are legitimate reasons to
commit IPA now *knowing* that it will need to be adapted to fit
into the generic model that gets defined and developed.  Here
are some reasons why.

First, the layer of the IPA code that actually interacts with rmnet
is very small--less than 3% if you simply do a word count of the
source files.  Arnd actually suggested eliminating the "ipa_netdev"
files and merging their content elsewhere.  This suggests two things:
- The interface to rmnet is isolated, so the effect of whatever
  updates are made to support a WWAN (rather than netdev) model will
  be focused
- The vast majority of the driver has nothing to do with that upper
  layer, and deals almost exclusively with managing the IPA hardware.
  The idea of a generic framework isn't minor, but it isn't the
  main focus of the IPA driver either, so I don't think it should
  hold it up.

Second, the IPA code has been out for review recently, and has been
the subject of some detailed discussion in the past few weeks.  Arnd
especially has invested considerable time in review and discussion.
Delaying things until after a better generic model is settled on
(which I'm guessing might be on the order of months) means the IPA
driver will have to be submitted for review again after that, at
which point it will no longer be "fresh"; it'll be a bit like
starting over.

Third, having the code upstream actually means the actual requirements
for rmnet-over-IPA are clear and explicit.  This might not be a huge
deal, but I think it's better to devise a generic WWAN scheme that
can refer to actual code than to do so with assumptions about what
will work with rmnet (and others).  As far as I know, the upstream
rmnet has no other upstream back end; IPA will make it "real."

I support the idea of developing a generic WWAN framework, and I
can assure you I'll be involved enough to perhaps be one of the
first to implement a new generic scheme.

Optimistically, the IPA code itself hasn't seen much feedback
for v2; maybe that means it's in good shape?

Anyway, I'd obviously like to get the IPA code accepted sooner
rather than later, and I think there are good reasons to do that.

					-Alex

>>> You mentioned the need to have a common user space interface
>> for configuration, and if the above is true, I agree that we should
>> try
>> to achieve that, either by ensuring rmnet is generic enough to
>> cover other vendors (and non-QMAP clients), or by creating a
>> new user level interface that IPA/rmnet can be adapted to.
> 
> I would not suggest making rmnet generic; it's pretty QMAP specific
> (but QMAP is spoken by many many modems both SoC, USB stick, and PCIe
> minicard).
> 
> Instead, I think what Johannes is discussing is a better approach. A
> kernel WWAN framework with consistent user API that
> rmnet/IPA/qmi_wwan/MBIM/QMI/serial/Sierra can all implement.
> 
> That wouldn't affect the core packet processing of IPA/rmnet but
> instead:
> 
> 1) when/how an rmnet device actually gets created on top of the IPA (or
> qmi_wwan) device
> 
> AND (one of these two)
> 
> a) whether IPA creates a netdev on probe
> 
> OR
> 
> b) whether there is some "WWAN device" kernel object which userspace
> interacts with create rmnet channels on top of IPA
> 
> Dan
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
