Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 846A84AD0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 23:09:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2ge6zotSAirx+IWiNgrWvg8vyjngCYt/xEvK0Zm+40=; b=NxkfWxDcU6NsWS
	wPVFCkljS5u3+5G7hutL5Hiqzc2Goews2bwZ9Y2n3t17nO05V0oPZdxN5XNlzOC8lpIYxPARHxCqp
	SPe+Fnm9JsuFaPuZ3U7A0aoMELEWoytqt7ZBXPzTv6/8lkcr0O5ojlb7Dvi+blZ16EuQJkLV3Ctj/
	kyCG161qpA8yibtKAQbSp8dpvLuXzOjQePsIVOW/fWFBxeWorcfHNXIyK5fypdqU1eT5GlxRT5xhv
	4E2HOF4tZLWfM/VFOTLhW4HgPGQZsqfBtG2gIf2ZEuqfOuanKh/qtRev3XqdQrsdCiWrnzZYz79M+
	Nr9LvXIrepoAMGjzdffw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLM9-0001F5-RO; Tue, 18 Jun 2019 21:09:29 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLJY-0007qI-8I
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 21:06:50 +0000
Received: by mail-qk1-f193.google.com with SMTP id a27so9539203qkk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 14:06:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PhQShykXloliKPMckMupDfwZ8pnrhdgE2i1x2GgfEmI=;
 b=Gh7by3bZzbayE9gu+ay68toQAYmdCnnN0NTnoX5L+tIt4dfnHgt6kXo68p252pPyjQ
 4l40bubAeC7jxDyCO5ff80mD7PgFP7mTCpx0o/NAC/+pQgqjJl79uHZYFzagbT4/xCwW
 BTNlfPDtpbgFFJOUeAGQg90obvV4IkHxw3fq/AFV1PrETI7YcQM+8R0CKfYDZJGZ2O5p
 5xTSxSKBFSf/HjGxYog+7kZcLNrHx+PStAGwGMbVWnK6J4+D2bTHxm64bho28/FWzcZ7
 VdvzmEkJ+V3DUXUD/sm65U8fhBYt4g2e9CvcPsHIUyg6GdJECwRJCT0YrXXjUWqTz41Q
 ZCZw==
X-Gm-Message-State: APjAAAX8mpNaLqsKtk1lxYAC0Nx2aYBNbT7zuASy7aW+db6altqGjpSv
 +eERoPL13/mtZYzrpkjkOVnXbcryh7pk07R9qzU=
X-Google-Smtp-Source: APXvYqyldOckhcLwc1fQrwZ7LnDDOLS2W9t7zPz5YSzYHLSMEwkWyDge/ONSs2cFdXB+lyGj7IX6kT1wQZim1MIdYpE=
X-Received: by 2002:ae9:e608:: with SMTP id z8mr87456546qkf.182.1560892007052; 
 Tue, 18 Jun 2019 14:06:47 -0700 (PDT)
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
 <CAK8P3a29+JKbDdS9ikhgaKa-AJ1qd1sDMTAfzivGh5wN4VL88A@mail.gmail.com>
 <54a5acb6cf26ebc6447f8ebcbdcb8e0eed693ab3.camel@sipsolutions.net>
In-Reply-To: <54a5acb6cf26ebc6447f8ebcbdcb8e0eed693ab3.camel@sipsolutions.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 18 Jun 2019 23:06:29 +0200
Message-ID: <CAK8P3a3r95gXMdq7s9GF=37v6t4kR+-2iyC6bnmUDVuM+bn80Q@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_140648_337640_93DB74B5 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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

On Tue, Jun 18, 2019 at 10:39 PM Johannes Berg
<johannes@sipsolutions.net> wrote:
> On Tue, 2019-06-18 at 22:33 +0200, Arnd Bergmann wrote:

> It seems to me though that this is far more complex than what I'm
> proposing? What I'm proposing there doesn't even need any userspace
> involvement, as long as all the pieces are in the different sub-drivers,
> they'd fall out automatically.
>
> And realistically, the wwan_device falls out anyway at some point, the
> only question is if we really make one specific driver be the "owner" of
> it. I'm suggesting that we don't, and just make its lifetime depend on
> the links to parts it has (unless something like IPA actually wants to
> be an owner).

My feeling so far is that having the wwan_device be owned by a device
gives a nicer abstraction model that is also simpler for the common
case. A device driver like ipa would end up with a probe() function
that does does wwan_device_alloc/wwan_device_register, corresponding
to alloc_etherdev/register_netdev, and then communicates through
callbacks.

I agree the compound device case would get more complex by
shoehorning it into this model, but that can be a valid tradeoff
if it's the exceptional case rather than the common one.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
