Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7A2ADF85
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 21:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7ci+bmv6lYGT152AkxIsh1kO23n+gr2r2DHZqH2zAQ=; b=Zhz3yvBbhRNUJq
	8PVuI3EwRM9s2pRRvBDMrGXSMLxXn6GATvo67lk8kj/KHKsixLg2t08iIpSSlMakojKt0GyuJOoTU
	3GtXLtk2eocIUjBFdtvFu/GAyrxX54PKJvYYhL2GOF/z8TNcPF/fncSDL8Mwn5WFZQpmNcN97vKnE
	rLljcjoMdMmWbqjUmk4pXQCcUvlKQPd9LGayMNWBTLQK8rjyh+1byXkdX6KfAWvXGznT2xGHg8mUg
	m55fo38HNVdHiRrSoGKXBEIpYC4AzJCKL2sT+oKQ9BMPbNvOZfuj24jHB4VWxk8uibTJAF8Q/xAQe
	ShQ7XAHDWcjtmz89JyXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7PUd-0001bQ-CS; Mon, 09 Sep 2019 19:38:31 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7PUV-0001b3-RA
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 19:38:25 +0000
Received: by mail-qt1-f194.google.com with SMTP id b2so17660450qtq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 12:38:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=83C5cArNTuV93R+PRhbVcq8+PPG/Zw02UW3M6xNCISo=;
 b=FWsmUnnSLfBDLXIoDxwknOqafQL3G7ALKESo3gXP63pZHANp+4edKA3W4epG0z5kHN
 IhaeAkaUIE7T9qNR+/ZjhykLXohn6tFnAlDZTTEnQ2y9Yl+YCJrAgeWyTcfhUWUjfGGd
 ZS6LPKxO2ESbWKYEwCcJzIFTdtflOEuGBSmxwPRwfQbtvIwcjN0iMI+1/5rV5/oEKQD7
 N0tIjcvvG38WL+BON0gilD8cB3ghd64Uo53r8TIZm9VxzOwAAxnUZGvCTkFEYwdi0yQl
 FON247F1UmLN7MUWGIkCm4UlRaMvx8roz1J6KkRj3fUgAZLWRUx//by1Y3DQFakXjTIL
 O9Sw==
X-Gm-Message-State: APjAAAXyzAAcNK+t4J5+HgwQ2x7XNO7NzmTy9oVZ1oG8NeR/mvx9afrR
 6gfLm9td6mdHkg2KA4wv8nlB46N0/ppy5tiuIWI=
X-Google-Smtp-Source: APXvYqznJr6bft2FiwRFx9J/NlM8tBNYOscDbgcfzeUzZ476EMTWBnkI79bb5QynlE2kwyHibHS1sjNun1Tqhuq/ovY=
X-Received: by 2002:a0c:e0c4:: with SMTP id x4mr15820028qvk.176.1568057902529; 
 Mon, 09 Sep 2019 12:38:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190725131257.6142-1-brgl@bgdev.pl>
 <20190725131257.6142-5-brgl@bgdev.pl>
 <5fd79cda-59d4-b69b-9902-5d01e1087c62@ti.com>
In-Reply-To: <5fd79cda-59d4-b69b-9902-5d01e1087c62@ti.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 9 Sep 2019 21:38:06 +0200
Message-ID: <CAK8P3a0tCrax_5QvWConV5PF-FjFWusNLfnU73EyjQic+Zm9+Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] ARM: davinci: support multiplatform build for ARM
 v5
To: Sekhar Nori <nsekhar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_123823_883170_7F9FBD25 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 9, 2019 at 9:38 AM Sekhar Nori <nsekhar@ti.com> wrote:
>
> On 25/07/19 6:42 PM, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> >
> > Add modifications necessary to make davinci part of the ARM v5
> > multiplatform build.
> >
> > Move the arch-specific configuration out of arch/arm/Kconfig and
> > into mach-davinci/Kconfig. Remove the sub-menu for DaVinci
> > implementations (they'll be visible directly under the system type.
> > Select all necessary options not already selected by ARCH_MULTI_V5.
> > Update davinci_all_defconfig. Explicitly include the mach-specific
> > headers in mach-davinci/Makefile.
> >
> > Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>
> Acked-by: Sekhar Nori <nsekhar@ti.com>

Ok, pulled both into arm/soc.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
