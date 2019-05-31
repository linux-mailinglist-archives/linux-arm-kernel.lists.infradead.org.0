Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C941B31673
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 23:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPzIlZ/LwpZHNoxqRsqIYkIc/InOxgAu/vR8OfKozE8=; b=SZDjbVwF0He4HC
	CRi0q8f+vUeWSk9bpBA2ybiCdZSVw+fY7ex+F0LTAXJAowScoJ0y6pEFz5Wjmj7axBUealVONUvvu
	KB8YV/EgvQotPOlLo27smvAw2EHnIYg/maJ57IASrkVabJLpLJYI/pFjMHJxIHMFIPezv8gDQ5KLh
	1QNi6ldVFO9AUOPc9HvmI6c4SU4HKchoXKd6C+Odjl9DOCm//er1OjZtMReosanC1BDVHp3tVperG
	aDc3ojh+k6prQPvqFoVfx7NJXcBuf+nK5gKLMtTG2o7Kg0YJd2arDt64b07HdDtOVH73jjbwrVtHs
	dJsdNjW/MDBCviXr2++Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWopS-0005D0-FM; Fri, 31 May 2019 21:12:46 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWopK-0005Cc-7Y
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 21:12:39 +0000
Received: by mail-qt1-f196.google.com with SMTP id t1so2593217qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 14:12:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AZptDCZbtMb0PQHhtVnS/aF9UysKMAzgtneB0+7FC+I=;
 b=hQne2Cr1l6J+pxat17eiicF7kmwor1mcX+M8FTuUy6k0Ii0NJmB1olDGH94UKOb/4Z
 YLVujdlcb089fDRuh97rANwR97W1BTNdEuBtO7LjWbjmKbR0BSH1csZQEIXAyuEqC6Ej
 YDPdRWOYWq/OTcVfh39tfS5iAYrOFiVKkp2Ry4UGkrGv2N6kyl4xBb5fmf5CeNwbMu6W
 FGmeGJKfZn4DuoGIJpXppZ0pv120Q4vbGR8WVieBPmKUBxEyWKDQ03Yzx5iST19hMLQZ
 zM3NiXgyvUxyexeb4l3cpFHjjG/EeTJ5xG/8CFEUbPUTHRCyqNmCJ+TC9yGbpH81muRl
 kx4Q==
X-Gm-Message-State: APjAAAUuwHLBGxeTlnJykKzEb9ghcBlfJZ7vpNVZu3+c5n4pn313P1CK
 J00CzVwIFEsYDsBEsbEpYd5DxLv6wOxMsk+WVg4=
X-Google-Smtp-Source: APXvYqzHvUnfa6x/YLh/Fjn3Tw3E+yBquiW3NroCyGZFdVC85oGAnHKEDZucf7nAm9xpQNUD3gkU2OGRWDNqkRg6xhY=
X-Received: by 2002:aed:3e7c:: with SMTP id m57mr6159988qtf.204.1559337157081; 
 Fri, 31 May 2019 14:12:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
In-Reply-To: <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 23:12:20 +0200
Message-ID: <CAK8P3a2rkQd3t-yNdNGePW8E7rhObjAvUpW6Ga9AM6rJJ27BOw@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Alex Elder <elder@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_141238_273418_89CD93BF 
X-CRM114-Status: GOOD (  27.64  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
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

On Fri, May 31, 2019 at 10:47 PM Alex Elder <elder@linaro.org> wrote:
> On 5/31/19 2:19 PM, Arnd Bergmann wrote:
> > On Fri, May 31, 2019 at 6:36 PM Alex Elder <elder@linaro.org> wrote:
> >> On 5/31/19 9:58 AM, Dan Williams wrote:
> >>> On Thu, 2019-05-30 at 22:53 -0500, Alex Elder wrote:
> >
> > Does this mean that IPA can only be used to back rmnet, and rmnet
> > can only be used on top of IPA, or can or both of them be combined
> > with another driver to talk to instead?
>
> No it does not mean that.
>
> As I understand it, one reason for the rmnet layer was to abstract
> the back end, which would allow using a modem, or using something
> else (a LAN?), without exposing certain details of the hardware.
> (Perhaps to support multiplexing, etc. without duplicating that
> logic in two "back-end" drivers?)
>
> To be perfectly honest, at first I thought having IPA use rmnet
> was a cargo cult thing like Dan suggested, because I didn't see
> the benefit.  I now see why one would use that pass-through layer
> to handle the QMAP features.
>
> But back to your question.  The other thing is that I see no
> reason the IPA couldn't present a "normal" (non QMAP) interface
> for a modem.  It's something I'd really like to be able to do,
> but I can't do it without having the modem firmware change its
> configuration for these endpoints.  My access to the people who
> implement the modem firmware has been very limited (something
> I hope to improve), and unless and until I can get corresponding
> changes on the modem side to implement connections that don't
> use QMAP, I can't implement such a thing.

Why would that require firmware changes? What I was thinking
here is to turn the bits of the rmnet driver that actually do anything
interesting on the headers into a library module (or a header file
with inline functions) that can be called directly by the ipa driver,
keeping the protocol unchanged.

> > Always passing data from one netdev to another both ways
> > sounds like it introduces both direct CPU overhead, and
> > problems with flow control when data gets buffered inbetween.
>
> My impression is the rmnet driver is a pretty thin layer,
> so the CPU overhead is probably not that great (though
> deaggregating a message is expensive).  I agree with you
> on the flow control.

The CPU overhead I mean is not from executing code in the
rmnet driver, but from passing packets through the network
stack between the two drivers, i.e. adding each frame to
a queue and taking it back out. I'm not sure how this ends
up working in reality but from a first look it seems like
we might bounce in an out of the softirq handler inbetween.

          Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
