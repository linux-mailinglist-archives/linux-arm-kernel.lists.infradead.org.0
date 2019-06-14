Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAF945DFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oqa/U/CnmoSrUBPmSxTHpSR1XxxDn0ZeddMaCHl4pQE=; b=pqS2cQoB6IZM7L
	nX0Y4OkiN8Az6XZX/KzOrc2FAgFJO0QHSTsd2IDkC5EqE/HNu2gRaoZjlWai7hJQCLuPQVK7xglic
	X597ebO/UsrAR8X5l9ghGi7zvGIWKfDz3hQG/k7cpej5iezI/kEALxHQe5jQxlgx+RjwP8W8qjEeu
	ox0zja2kIGcEx7B+CGHapstDvD71BbpnbK9lB2r787rmuHHhwmSxS6NETkz5dtbaNQYSXFdg3MvOJ
	OrD8tSgWFyfpE0bOJOEULexhkctZCU6HzLKci6Lopbc19QejtXoj0W1WT7Ias6/4oGs8NC+lhCUo9
	AjCZ4n/HgKuVToit1b4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbm8y-0007dD-4B; Fri, 14 Jun 2019 13:21:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbm8l-0007ci-Bs
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:21:12 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89A4F21721
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560518470;
 bh=zSqDfvTWi/91oRnFPmD+sDE1OD8meYbhenxAA0rkJpQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=R/OivYycKXCrR4qbnGPXhaeUCc8L4u/YFYrA52THSyhzc7IZ/wON5glZJ4BYkkz28
 cM5y1K7zmj5znbVPQ+rM+TGktxk5HKIq8cBKMnjEirB7nBD5wAU2x7Zo2fEayOuA1b
 9uyJnkaPsk0m63CXpFrWN38NQwOUSd8J1wr282ZI=
Received: by mail-qt1-f179.google.com with SMTP id i34so2373587qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 06:21:10 -0700 (PDT)
X-Gm-Message-State: APjAAAUUtgYFer9ZEUSqqGTJEkdh29FMU+RTud4PJwOPbDyrbc50u/9q
 d3m7sGFjD+opvUh34qKRS9WHefd3MghF7sYNLA==
X-Google-Smtp-Source: APXvYqwPY5Ii8d7b9MpE2fLLzqMQruglLqs18oegyUlcZ2uGTJsB4Rwfi7XLE6zjZcAEozwYHNHmqcKgnXfo9XquaAc=
X-Received: by 2002:aed:3f10:: with SMTP id p16mr15589221qtf.110.1560518469746; 
 Fri, 14 Jun 2019 06:21:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
 <20190506123456.6777-10-peter.ujfalusi@ti.com>
 <20190613181626.GA7039@bogus> <e0d6a264-96b5-31a6-e70b-3b1c2d863988@ti.com>
In-Reply-To: <e0d6a264-96b5-31a6-e70b-3b1c2d863988@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 14 Jun 2019 07:20:57 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJNMkKL_FubZfjKY6jLebMetmgR24EoendHoPM2ckrUQA@mail.gmail.com>
Message-ID: <CAL_JsqJNMkKL_FubZfjKY6jLebMetmgR24EoendHoPM2ckrUQA@mail.gmail.com>
Subject: Re: [PATCH 09/16] dt-bindings: dma: ti: Add document for K3 UDMA
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_062111_463009_4BA9AB36 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Vinod <vkoul@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 2:33 PM Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
>
> Rob,
>
> On 13/06/2019 21.16, Rob Herring wrote:
> >> +Remote PSI-L endpoint
> >> +
> >> +Required properties:
> >> +--------------------
> >> +- ti,psil-base:             PSI-L thread ID base of the endpoint
> >> +
> >> +Within the PSI-L endpoint node thread configuration subnodes must present with:
> >> +ti,psil-configX naming convention, where X is the thread ID offset.
> >
> > Don't use vendor prefixes on node names.
>
> OK.
>
> >> +
> >> +Configuration node Required properties:
> >> +--------------------
> >> +- linux,udma-mode:  Channel mode, can be:
> >> +                    - UDMA_PKT_MODE: for Packet mode channels (peripherals)
> >> +                    - UDMA_TR_MODE: for Third-Party mode
> >
> > This is hardly a common linux thing. What determines the value here.
>
> Unfortunately it is.

No, it's a feature of your h/w and in no way is something linux
defined which is the point of 'linux' prefix.

> Each channel can be configured to Packet or TR mode. For some
> peripherals it is true that they only support packet mode, these are the
> newer PSI-L native peripherals.
> For these channels a udma-mode property would be correct.
>
> But we have legacy peripherals as well and they are serviced by PDMA
> (which is a native peripheral designed to talk to the given legacy IP).
> We can use either packet or TR mode in UDMAP to talk to PDMAs, it is in
> most cases clear what to use, but for example for audio (McASP) channels
> Linux is using TR channel because we need cyclic DMA while for example
> RTOS is using Packet mode as it fits their needs better.
>
> Here I need to prefix the udma-mode with linux as the mode is used by
> Linux, but other OS might opt to use different channel mode.

So you'd need <os>,udma-mode? That doesn't work... If the setting is
per OS, then it belongs in the OS because the same dtb should work
across OS's.

> The reason why this needs to be in the DT is that when the channel is
> requested we need to configure the mode and it can not be swapped
> runtime easily between Packet and TR mode.

So when the client makes the channel request, why doesn't it specify the mode?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
