Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B51FBBE84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 00:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/KjFScbUYrL+DYq9ibwojtHVolFpPF4NcLwKB9dOgA=; b=C+Y1VSqmaHICu1
	hstAWCm+fw4djO5pYIFzNNnmT10NuyRv9fsda0nUI/EgWKhftkZ+HaJP8hijj9+nR0pPbWiZiwkfH
	Se1J6XZFgpe3yF4ZRfLDS80fI4m87UT0uL9WMkpYkDO8F3yHhWemHlRtzfxmQbfvZQQyxA9nzC5Q4
	lxgd01Q5s9qcv9HSa7MIhNjgBVbs1kxiO0isrKpv1Vlh6ucV/Vpt+ikMFE/4yBol6zBzH/35TwUez
	I4jKisiNO3nu3kxNuWHvLhKjxexM1T6YtvVyvVMoy4rxfcgODxsjSopfCzIHdTCd6u3CWOJ4Snz7K
	6wHLacHXK93e6RZkuLWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCWtw-00054h-Ux; Mon, 23 Sep 2019 22:33:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCWtm-00054J-RN
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 22:33:40 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BC1321BE5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 22:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569278018;
 bh=nLYxcAxWlZbaz10ZK84e1S0+6gSNTUbO+wZcEvFOiHE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DM+SwMU80DFZRj54tAjxcmDcgRVVI677yrCFZBaO5k5Z84UCJKwSQSruqMhvd+pGy
 EoNkvASTDS2Ww2rCPnBcu+JDnBRWgxEIY5Y/yqyHsS8LgnEl2h24/w0uRNmkGAzoEk
 KKrPHlWkb082kxvyQlLLz1prA771437zq3sDLp5o=
Received: by mail-qk1-f174.google.com with SMTP id u22so13731603qkk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 15:33:38 -0700 (PDT)
X-Gm-Message-State: APjAAAXnA+ScoJbPEpKhb1xUve+HYc6gd6FZhwfYwGAUed/vNbvf8/kc
 0ogSgRHevfmiLlexBHYSER0lbJ3grh4/Xhe4Ww==
X-Google-Smtp-Source: APXvYqyqgET76zqd8nKDekYYyCpEmP/K+0iX6q/VH3yToWhjhPyUrNbHf2kddLHh66dG4mvIY5FaQisEhizOF4kLWlM=
X-Received: by 2002:a37:2fc2:: with SMTP id v185mr267999qkh.362.1569278017316; 
 Mon, 23 Sep 2019 15:33:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190907161634.27378-1-marek.vasut@gmail.com>
 <CAL_JsqL47dQT-P78j4Ph61fsgA45Ha0AJjDajiMk52yFj++s+g@mail.gmail.com>
In-Reply-To: <CAL_JsqL47dQT-P78j4Ph61fsgA45Ha0AJjDajiMk52yFj++s+g@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 23 Sep 2019 17:33:26 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK+SwX8Lu+-4UgpLVxL05yTcs8Af9mPVHqzbf6+HF9v3A@mail.gmail.com>
Message-ID: <CAL_JsqK+SwX8Lu+-4UgpLVxL05yTcs8Af9mPVHqzbf6+HF9v3A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: Add /soc dma-ranges
To: =?UTF-8?B?TWFyZWsgVmHFoXV0?= <marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_153338_910659_2A4DFDE2 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wolfram Sang <wsa@the-dreams.de>,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 10:14 AM Rob Herring <robh@kernel.org> wrote:
>
> On Sat, Sep 7, 2019 at 5:16 PM <marek.vasut@gmail.com> wrote:
> >
> > From: Marek Vasut <marek.vasut+renesas@gmail.com>
> >
> > Add dma-ranges property into /soc node to describe the DMA capabilities
> > of the bus. This is currently needed to translate PCI DMA ranges, which
> > are limited to 32bit addresses.
>
> FYI, I've started working on this problem and issues around
> dma-ranges/dma_mask. Hopefully I'll get some patches out next week.

I've pushed out a branch here:

git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git dma-masks

Can you test it on Renesas. I don't have a real platform having the issue.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
