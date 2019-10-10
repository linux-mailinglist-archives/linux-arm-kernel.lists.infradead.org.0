Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCB0D2001
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 07:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALWImHhf82u+9BuwYarEt/mcoZkjQXdwDuJInMvlsLY=; b=Zy7iqTyDwymeSD
	DcQkri0jSt1V/FCHgcWyIKSYo7yobpxCXuzLMcGRrPJ60296Zt0OXx6u0oxfcSfLisiGJ5sl9K9XW
	mqrGKRl6gWqkl7RIRweslPVOCt5Mlmn8sNY0DcmeVH+E2WZH32I9vU0s0ZtCv9xeM7rYv2uUYF5D2
	HBL33LtYSgrdPyi3/4ZgTdzObDe0VbYsrQ1TFhb0ZvRAIiLJQMd7ToipnmPoHRTXr3GbT9gEPBna0
	rxZTOBLiJGC7N5KOnkZA31KgYq3st0bSxQE/ROugDNiJSlofU8KNAwhydrSbZMb2ekwua+u/J+4AU
	bftSz4pkb+BcfjkW3qJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIR0U-0004Tg-St; Thu, 10 Oct 2019 05:28:58 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIR0E-0004TE-J7
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 05:28:44 +0000
Received: by mail-qk1-x741.google.com with SMTP id y144so4485430qkb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 22:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r6Hep4iY8u0yDM4dyep+02jvirG1WxfZPi0UCSgzEPA=;
 b=mgx7nbirD+B+qWsSDYrOWzbCFx0K9ERikuPVhs/EhHAJrKz+tDqgfmUgXGWGRSBrbo
 UryoiU6AXZ6g1zlqeWA+/eHChgkS7xn/ksIRDyTXhZHZZI91skLOoYs5Y6Z3ls60l2+j
 NN8svFecFJkunpLR7aajvO1GIMk04+rGWimLs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r6Hep4iY8u0yDM4dyep+02jvirG1WxfZPi0UCSgzEPA=;
 b=bSM0LW0jYGjfLvCZU0k3Zo0xV52QLZMyOHwuQahemRbAwR2CL5V3+LP0qsCRpjJUB3
 iGrvHMfB50fyKFgDfOic6dTttnlaNfnCTITrMDXe8TvHoJqY8GBUYDc9TPNz1fgV/aCs
 PeHALhy4XJ7FQ15cewBiQIB4uNyO+mXkRpD8SkpZ+n+Kx42VRpRuoUb43oO+KvfWKaij
 P/Xss01IDRenIV8Yw2K8c8t3YZ5580G+DXw/n4oJ5ggHApg6oE+Ylo1b+GeVZf3dIU5/
 8kHEzl+4e9bbaHOuoFJjKJVJ54CEUwQBkEprJpaxmUya4jFKvFyTEdLPI5HG3ObbIt1h
 Nerw==
X-Gm-Message-State: APjAAAUAsmqvf6NEX37QENIfR36FsWuJ+dA8Bz5ZbVsgz040rDygbFYt
 0xVHXgrQOsY+rHZ9BVGM5iwr7FYHFVDvZnjQ7Iw=
X-Google-Smtp-Source: APXvYqwH0HMFFELFCxD2oINqI+YV0TL764wqxPt4fBPtvmrISd7LnBC85T0wCOC+E1zA48qshusCVPt0cVV1W/T+8QY=
X-Received: by 2002:a37:4dca:: with SMTP id a193mr7795691qkb.292.1570685318745; 
 Wed, 09 Oct 2019 22:28:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191007231313.4700-1-jae.hyun.yoo@linux.intel.com>
 <20191007231313.4700-4-jae.hyun.yoo@linux.intel.com>
 <20191008203157.GA184092@google.com>
 <ac256b3f-2a06-6fa5-72ab-d8f8014d253e@linux.intel.com>
 <CAFd5g47vLN6NyZR73+EqOqfOPnM7CkGGsCwEn3udnJt99d8KCg@mail.gmail.com>
In-Reply-To: <CAFd5g47vLN6NyZR73+EqOqfOPnM7CkGGsCwEn3udnJt99d8KCg@mail.gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 10 Oct 2019 05:28:26 +0000
Message-ID: <CACPK8Xc4JCNDwVfJ4zzsaZvoSmtqgMZwhYO8sv76aRnPiQwK_A@mail.gmail.com>
Subject: Re: [PATCH 3/5] i2c: aspeed: fix master pending state handling
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_222842_786912_4713315D 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Wolfram Sang <wsa@the-dreams.de>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, Rob Herring <robh+dt@kernel.org>,
 linux-i2c@vger.kernel.org, Tao Ren <taoren@fb.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 8 Oct 2019 at 21:54, Brendan Higgins <brendanhiggins@google.com> wrote:
>
> On Tue, Oct 8, 2019 at 2:13 PM Jae Hyun Yoo
> <jae.hyun.yoo@linux.intel.com> wrote:
> >
> > On 10/8/2019 1:31 PM, Brendan Higgins wrote:
> > > On Mon, Oct 07, 2019 at 04:13:11PM -0700, Jae Hyun Yoo wrote:
> > >> In case of master pending state, it should not trigger the master
> > >> command because this H/W is sharing the same data buffer for slave
> > >> and master operations, so this commit fixes the issue with making
> > >> the master command triggering happen when the state goes to active
> > >> state.
> > >
> > > nit: Makes sense, but can you explain what might happen without your
> > > change?
> >
> > If we don't use this fix, a master command could corrupt data in the
> > shared buffer if H/W is still on processing slave operation at the
> > timing.
>
> Right, can you add that to the commit message?
>
> Is this trivially reproducible? We might want to submit this
> separately as a bugfix.
>
> Actually yeah, can you send this separately as a bugfix? I think we
> might want to include this in 5.4.
>
> Wolfram and Joel, what do you think?

Yes, good suggestion. A corruption fix should be merged I think.

Always send bug fixes upstream with Fixes tags so they land in the
stable tree. This is preferable to sending them separately to the
openbmc for inclusion in that tree, and potentially reaches a wider
audience.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
