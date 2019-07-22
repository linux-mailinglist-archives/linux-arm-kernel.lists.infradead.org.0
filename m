Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA3B70295
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVkK7UNwUXLUlmd0soLMHI9IODTwgBJRkGTdYODM9LA=; b=UPDg4M6m3TnZ+R
	3Vm6Nz9H+GthxVFDco1lVI5gZaBxoel2yfBUQuxMcoAjwWi9wCsk6Eov0GxTZccjboRoRvSw8l/8k
	ndm5QteXAEA8NHw7mZBwmYYI3U82qYUwuK8LU3KbK6IauvaSe/bcgSAkP6WcAZJs6y/DJyWjY+Rsh
	KbUcqGvReYktAfGse5YUqYa4Q/DnYLtXXgBDzuGXlZCHZkUSxDePwPRd3cn2FtMSbIbNtb/TRLpAI
	qzA6uzvp+4jgHF5K6+xPuafgpz8EJ8IUUB7wcgjZZauHJJhl37P9uxBh6EnJyHbAwAWBaH0S4ziwz
	9sX7sRvH4Yp+rnSzpqNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZYO-000649-1J; Mon, 22 Jul 2019 14:44:40 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZY8-00063I-Vo
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:44:26 +0000
Received: by mail-qt1-f195.google.com with SMTP id l9so38735203qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 07:44:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=81AiTjgcr+8mwqG5ADbTHsr21uDJPCLJa70/ct/bcjM=;
 b=VvfPo1uZvvRLz1+OpNsom4zYOhxpvE7UBoOGcvexsJ6qgQS1NAU531o6vWNjcp5TWN
 V0eMH2LuQHdj7np6fzAaaDJbsc0c/mXN0zKSmfbJEtDyMjRI0b4KynywyMGkD+btgz6S
 EHwSginjfjn0qCI/oTQiTtnzbMqFQbTiI6rujd8/9Udah/iUiXjhwqXPTL2fVKRWpVvK
 TgrUGmpex4ZAq/LUe23amfRj2DU2lGJDAgPSQG9wW/H2z5lEAd4qVFetl5N0vRwgfIcM
 c/2L2Heo+aEkz+U6ECgP2/FdOVqgCdI/6VlQ3YTmANKH3VumbgDmRqP6bW87Oh9dYD7d
 cyjg==
X-Gm-Message-State: APjAAAWRUpQdLS2l/Q36uVDdi43T4fT/8tsBp2nJa2fjDgtpdj3rxxH/
 v/dkCnvQYDUd/xfbW2hPwd9uHZu73jjbDY9xV3EcCsDnlpY=
X-Google-Smtp-Source: APXvYqxaPxahPpsd+f/e2N1hLvn+NlsWWWq9cW2deYXM49rjFloV4WlsOLyToo2CiUPq30T5CLiBuUUzmLDJwt9ja4w=
X-Received: by 2002:aed:3363:: with SMTP id u90mr50010402qtd.7.1563806663345; 
 Mon, 22 Jul 2019 07:44:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190415202501.941196-1-arnd@arndb.de>
 <2424c672-e3fb-4c32-4c24-fafc59d03a96@uclinux.org>
 <CACRpkdaJ+2bub_nDp9=5b4kyKjWDnOGKscWg3KsEVixDpk8rzA@mail.gmail.com>
 <20190503170613.GA1783@roeck-us.net>
 <d8d81aca-722d-8b5f-cd5f-30cc3e4e407b@kernel.org>
In-Reply-To: <d8d81aca-722d-8b5f-cd5f-30cc3e4e407b@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 22 Jul 2019 16:44:06 +0200
Message-ID: <CAK8P3a0StV==jMq1L9k91qEsvRD1Cw2FB1V25wr1AQqzmjsTVw@mail.gmail.com>
Subject: Re: [PATCH 1/6] ARM: ks8695: watchdog: stop using mach/*.h
To: Greg Ungerer <gerg@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_074425_022852_5A206919 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 4, 2019 at 4:27 PM Greg Ungerer <gerg@kernel.org> wrote:
> On 4/5/19 3:06 am, Guenter Roeck wrote:
> > On Fri, May 03, 2019 at 08:16:05AM +0100, Linus Walleij wrote:
> >> On Fri, May 3, 2019 at 8:02 AM Greg Ungerer <gerg@uclinux.org> wrote:
> >>> Ultimately though I am left wondering if the ks8695 support in the
> >>> kernel is useful to anyone the way it is at the moment. With a minimal
> >>> kernel configuration I can boot up to a shell - but the system is
> >>> really unreliable if you try to interactively use it. I don't think
> >>> it is the hardware - it seems to run reliably with the old code
> >>> it has running from flash on it. I am only testing the new kernel,
> >>> running with the existing user space root filesystem on it (which
> >>> dates from 2004 :-)
> >>
> >> Personally I think it is a bad sign that this subarch and boards do
> >> not have active OpenWrt support, they are routers after all (right?)
> >> and any active use of networking equipment should use a recent
> >> userspace as well, given all the security bugs that popped up over
> >> the years.

Looking around on the internet, I found that Micrel at some point
had their own openwrt fork for ks8695, but I can't find a copy
any more, as the micrel.com domain is no longer used after the
acquisition by Microchip.

https://wikidevi.com/wiki/Micrel has a list of devices based on
ks8695, and it seems that most of these are rather memory
limited, which is a problem for recent openwrt builds.

Only two of the 17 listed devices have the absolute minimum of 4MB
flash and 32MB RAM for openwrt, two more have 8/32 and one
or two have 4/64, but all these configurations are too limited for the
web U/I now.

> >> With IXP4xx, Gemini and EP93xx we have found active users and
> >> companies selling the chips and reference designs and even
> >> recommending it for new products (!) at times.  If this is not the
> >> case with KS8695 and no hobbyists are willing to submit it
> >> to OpenWrt and modernize it to use device tree I think it should be
> >> deleted from the kernel.
> >>
> >
> > That may be the best approach if indeed no one is using it,
> > much less maintaining it.
>
> Well, I for one don't really use it any more. So I don't have a lot
> of motivation to maintain it any longer.

I came across my patches while rebasing my backlog to 5.3-rc1.

Should I save the (very small) trouble of sending them out again
and just remove the platform then?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
