Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7187A85C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 14:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+QVvoHqG3cixpU+lAe7EcAhJ3XeWlfmUKrUxcCoTiE=; b=JU6FR5ALk7Ix2Q
	qqeVK+mhb+XYXCJuaNreqFgGDhEEakssC7mUjSpYv3qEAWZLGxAWDi/C7+OC35biqxsTokDoWd0OP
	YhKLnLu6sAk192obDvJgr+kue5xHEuVCbWPfIjDm9dgWYPKZotEH44ye64ZgKppKsE/u8Jt/u35AV
	F2iYo9TzZCGJhVloG2/tMLxRsv0zkhHewhhUdZIOi4cYaoRDuY5DJ457cE7uJfXKkWMoERmVzUpHN
	0fdmuK1FP6UaEXuXDu14AUQWxYno/d8X1u7vmaNxM7HhKIVxaugte+Oc6P0cmhQC7lysn2bMnXgyF
	0OqteVaemH5xg6eOdJkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRD2-0003L6-Rm; Tue, 30 Jul 2019 12:26:28 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRBd-0001Fn-9l
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 12:25:03 +0000
Received: by mail-qt1-f194.google.com with SMTP id a15so62741036qtn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 05:25:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vg24wzBIc+D+Hmv+R1GPqhgrmLOPVkmrpAuvjDtlIDU=;
 b=Yparjx+u4itcYIeWUYPvjv/W1zxnB6Q4mJfxYhoBNRb8HQTGmjkkSil2iZQts0B/ks
 AU+PZkGSL9VspLFEso+81Y//FijW7C/gTcyEjhPs/V+sBktheZ0ULiCVxpJgZRmuvdH4
 AuBULZf0LY78EES/+GIUvQUB9ONKzCGsnHjWS5ZZxu0VffBaN8v+DWyyAqi3L0J/Daye
 AUWeT5edBhdXuJ7Q9ERlzkV801FyEk344crMYXgFb7drh4q/Ae+XgWDDHJURKygUdC/B
 ettUdk5yNUWvovoX1T1T8dR4TUHQavqiioeySbxWAMRaoYhce1HGQoBu/NZeTNEC7Ote
 UgOw==
X-Gm-Message-State: APjAAAXJT7iBigj0bDX2aEdjXf6TlPUVsM2TIRmzFVGPf/kf2DNJ3W0a
 Ea7CaA1RxaXrbIuH+EYiqQKKa2TXN4uJ4OXtvLM=
X-Google-Smtp-Source: APXvYqzfoZoBuiAjwAqXgbVNXXKwoEiH6dY5V72EFZ3ka6brjjn9cMP5XNNFWJ1mx1f3K5mwNQb5H6XBvPEoDQjUWN0=
X-Received: by 2002:a0c:ba2c:: with SMTP id w44mr81948752qvf.62.1564489499864; 
 Tue, 30 Jul 2019 05:24:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3jjDh6aEVf0bBFYc=8GtB38kL6sWVZGJiUe427A7m2ng@mail.gmail.com>
In-Reply-To: <CAK8P3a3jjDh6aEVf0bBFYc=8GtB38kL6sWVZGJiUe427A7m2ng@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 30 Jul 2019 14:24:43 +0200
Message-ID: <CAK8P3a1i3fV_qzx_q6nucqh4aNLi0a+iwvcis9BpYfMOkoew8Q@mail.gmail.com>
Subject: Re: RFC: remove Nuvoton w90x900/nuc900 platform?
To: Wan ZongShun <mcuos.com@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_052501_597170_9EC7269D 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tomer Maimon <tmaimon77@gmail.com>, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>, Nancy Yuen <yuenn@google.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 2:09 PM Mail Delivery Subsystem
<mailer-daemon@googlemail.com> wrote:
> On Tue, Jul 30, 2019 at 2:09 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > As the mach-netx and mach-8695 platforms are being removed now,
> > I wonder whether we should do the same with w90x00: Here is what
> > I found after looking at the git history and external material for it.
> >
> >     - The supported chips (nuc910/950/960) are no longer marketed
> >       by the manufacturer
> >
> >     - Newer chips from the same family (nuc97x, nuc980, n329x)
> >       that are still marketed have Linux BSPs but those were never
> >       submitted for upstream inclusion.
> >
> >     - Wan ZongShun is listed as maintainer, but the last patch he wrote
> >       was in 2011.
> >
> >     - All patches to w90x900 platform specific files afterwards
> >       are cleanups that were apparently done without access to
> >       test hardware.
> >
> >     - The http://www.mcuos.com/ website listed in the MAINTAINERS
> >        file is no longer reachable.
>
> Recipient inbox full
>
> Your message couldn't be delivered to mcuos.com@gmail.com. Their inbox is full, or it's getting too much mail right now.

Yes, that too.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
