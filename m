Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B85C4975D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 11:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrEpH0Gt0xgG7y3uv294d1C/P9nzmzn94Kw2j3WXUrU=; b=rgD/R+fCMiyVS/
	Y+0ObgiVHXdiTENzA2wClIoeWM2WZwwakoBPOeTGshnM0FxUNpvGf3wENKGWe4GvI6N2IGxpmeAex
	l5CqjeyOpXj2V5AKKzWuGUT7dV6N6Och4jrT4UvbXykzDgSiNZ7Efawf8RoAdsHdpm/OTsOf6816b
	Bth4tcF69HIpkLshgB2hKx47h4zS1IHTn87G9Bhb6BgnXI1v/DPBmoz4NTb3i126jSd6N/wKunuf7
	HpSq6y6qbE9IoIwiSctG9zfUpMtAn0/mHETf+ORD+G18ZjBxE+xT4y673T7XnOzS5xp4Nfbg8YpMj
	ymMSY5HjsaAC/wkGGX9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Mjo-0005Ek-D4; Wed, 21 Aug 2019 09:17:04 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Mj4-0005EM-Mo
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 09:16:20 +0000
Received: by mail-oi1-f194.google.com with SMTP id n1so1068400oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 02:16:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5hGUi2i0nxlriQ2qrMCFYYed8crPnjN9WOG0blAzANk=;
 b=YenrtxhlzjamnPIyMxfSMdEG4o5hG3yWb0Fq6nwm7pAYtLhT4sjphE3pkDftDbbL55
 w49OeHzfPlXZNVp3kuMa8lyHVLMBqep3fTIC8AIcK6kuEVQTLbeOWgfvYr64eYcRjUhM
 vi2eLjN7Xbt+h6dtGv2yKCB/LxCpLLfd6YR2wJ3OYUWVlNianIXbWHT+DDu4wnBp3NLR
 Sdt+HMzlM1ByZDDw7MNydQiWt/bPU8UawgzrjBQuN08ejLsLFuctEYxJHDTIR8qSls+2
 I/DFvC8ooOCFrZ2I364xJ1Vnk54mHl1GrgJn4SHgR+9pRTWfaD8Te7Dqq8hhr9BZZCfG
 BUtA==
X-Gm-Message-State: APjAAAUwOPkCXqSxA/qRth/yN5nGXodTEpsdnXPRbkruZzoLhBSqybVI
 Kxily2oDu6Q/w7+cqXYUTqJzn1byJ/EYztpw4vY=
X-Google-Smtp-Source: APXvYqwCVNd21cHc4hxxioHAtgf4sAwOEb6D7/AVN+LRalxsgDIgIyZU4/25kxUoJAM12e9UsnBanVAFnWf5vWFpmKM=
X-Received: by 2002:a54:4618:: with SMTP id p24mr2888672oip.148.1566378977991; 
 Wed, 21 Aug 2019 02:16:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190807085415.24854-1-geert+renesas@glider.be>
 <20190821090657.shogjxxe5kdwfgut@verge.net.au>
In-Reply-To: <20190821090657.shogjxxe5kdwfgut@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Aug 2019 11:16:07 +0200
Message-ID: <CAMuHMdVzZ7oHvHP9arjiX0jRCH1ooP5D7BBWFW_9E1KoXTam+g@mail.gmail.com>
Subject: Re: [PATCH] ARM: debug-ll: Add support for r7s9210
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_021619_567372_7A2AF3CE 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 11:07 AM Simon Horman <horms@verge.net.au> wrote:
> On Wed, Aug 07, 2019 at 10:54:15AM +0200, Geert Uytterhoeven wrote:
> > Enable low-level debugging support for RZ/A2M (r7s9210).
> >
> > The RZA2MEVB board uses either SCIF2 (SDRAM enabled) or SCIF4 (HyperRAM
> > only) for the serial console.
> >
> > Note that "SCIFA" serial ports on RZ/A2 SoCs use a compressed register
> > layout, hence add support for that to renesas-scif.S.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

Thanks, queuing in renesas-devel for v5.4.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
