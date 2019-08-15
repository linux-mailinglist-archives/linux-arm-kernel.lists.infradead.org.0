Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B05D8EBF9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oMJgnnPSYg5HyZUaqPX0wosBsNAVQ+N6HqIltIgkx8=; b=DadhbiDtrX13ka
	YtVjluJyIasCcBdKxhzBk25b++oxa93bmK/3x7YC40rbJt6ChvLQezJnM7wAgRILPyySqOqrq7XIK
	osXFzAxOxgfG4ndg3VX4X9KGV4s7lrqgMpAT9k4aKEEfwB++HhltAtmYZE6lJy9TrX+NaVgXcHByj
	gI7O4IpQOrBqhxc+qTp/ltfJvlI9U389+WM7egu8jlRP2VPjOnSvIPayQSHQZCJwk/Adi0Wiqygjt
	NRqsm7lEq8lcOJFK0VP7fcOhdQpdf0tyVTjAnxdJD5GHRvSSLMK538936D3c9qnL8sFnTJDuDeKxp
	ClS1YV5K7eBZQEsvFfTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFFg-00055J-0S; Thu, 15 Aug 2019 12:53:12 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFFQ-00054S-2T
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:52:57 +0000
Received: by mail-qt1-f196.google.com with SMTP id 44so2139348qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 05:52:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fy3Y0mQQQX0c7SJ4FYFsFca/O2XocYa48w7yKqDqQDg=;
 b=IkWx9a67k1DEZH42IpNuU1lZFY7Xn8dkn6/is2oTddQqYV84lhTuqw7HJB/synfpdU
 24vuqt9ZVKyZziq3XFkSewZ4w3mh0APrZxCCYYuMXo5r0AbUaZ80eKLlIwRjxECZErw8
 UM1Eh2s6m6kptGgAb6R77T647NP5lmr8e4aFuxv6xquRRjK4t/2D4I/M5aYdNfEeGQV2
 pNOORK4F6eIHpQo/ZEV6VRGXz/pdQwZmuZ6kXRsdME38IWSsGEoa6pTuT84PNcKTQCbK
 IfA4TqlAX8iJu8t7Zb12lC4J9Nan4AYU/xDwbcAsXygjN0qe+ItB54qdsXZDIJG1CGch
 dmLg==
X-Gm-Message-State: APjAAAXWZaih6FFD4HZZq1Mi/ZnxfjlRVmy03waz/Shuipalf0isciV9
 xm24IYI5QNBiuTEJzg2CFj53awYr9dAm8ebn7X4=
X-Google-Smtp-Source: APXvYqz5FDLH/4PFGrN+rBCeaPJw0f9D87GLXBSOraa10/QlfamEb8QhyRv5x9XHcCzhyMOSt8zeE4+cawOTob0sgGA=
X-Received: by 2002:a0c:dd86:: with SMTP id v6mr3140122qvk.176.1565873575272; 
 Thu, 15 Aug 2019 05:52:55 -0700 (PDT)
MIME-Version: 1.0
References: <CACRpkdbKX7a15SC-zwxmH_ygGzOKrn0h-pzzm22UpRcLRfRVNA@mail.gmail.com>
In-Reply-To: <CACRpkdbKX7a15SC-zwxmH_ygGzOKrn0h-pzzm22UpRcLRfRVNA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 15 Aug 2019 14:52:39 +0200
Message-ID: <CAK8P3a0-HXouEGTaqCkBUpfo0rAWvDAhB9-cYat6mRGe8u2=qQ@mail.gmail.com>
Subject: Re: [GIT PULL] Ux500 DTS updates for v5.4 take one
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_055256_108462_91E8E10E 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 mathieu poirier <mathieu.poirier@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Leo Yan <leo.yan@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 11:35 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Hi ARM SoC folks,
>
> this is the first slew of DTS updates for Ux500 for v5.4, maybe
> there will be more, but this needs to get out there. Especially
> the long overdue CoreSight conversion that got stuck in my
> tree for no good reason.

Pulled into arm/dt, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
