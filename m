Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6840E1DB28A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0kFNYA91LdKZa/u82Rr7eSA2CdDhndInzMZRyQW4LIo=; b=ZeQMMn5DIpjxqH
	3tvwfz7JNnTQqcT3q/8X7JpWhCGaJMEh7lEWJKGKxv7pFELKHUQlxabT5AuWygv5eSfrB3YuP3ezN
	0F+h0pd3P97KnJ3JpN42Hb0iGP4GQVmRJ5BrI8+tATclatXWqTGZfqpjdnosOghrz5CSzId8slMw3
	JqxkfKxks1+64r8kvIR8no4o/aApgj9l2+SBxDuvatEfAkvdNExj9+I1mrA4ix0JH3JsFFcOOhAZI
	u+t4ZXKULPEDfIlxvT/0PJRHrWkAlf/tjycgjpVOZ7CdKu1ilV257vAEapygHp0MZgWzk6avnqppG
	UrrgMC0Fh3B4YYXQhdyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNOb-00032t-II; Wed, 20 May 2020 12:00:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNOS-00032H-4d
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:00:17 +0000
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5539207C4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 12:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589976015;
 bh=p2b++fqgB3j8t8wQVCowLSphUGbZ0n9M7PbJlfK7X/g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CW5CxvEsFMAQykySax7pzLLLsuOOb0yHjoog78dUyoDsiNZGpdB8q/hjeryKbCcTP
 wIa4BnzHQws04aAqGlgPIA8bdvGr19unsaZtfbi4gLUwlMH2JvsZcNiutZfHgBEWvk
 gebWAQM0XpcbGPvbaAEOxAJQZtXaojp57sWXGDvY=
Received: by mail-lj1-f177.google.com with SMTP id z18so3285010lji.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 05:00:14 -0700 (PDT)
X-Gm-Message-State: AOAM5327rIEIlxbCpukRVLrsWQkt69ju5Yf7EOBVoTTBfbnZw8838RZz
 5Qe+UCr/tTREiUnHInSkUJ6v4uQX0TyTGLa0aXM=
X-Google-Smtp-Source: ABdhPJzqow3O8ENCEDm8pm97wOipgg7aCLHp2fW6FeVlcUNXw9PQ19agZuUv9OGshUKmBWlDt+HIDjaQRQTcXVnWHKU=
X-Received: by 2002:a2e:8e99:: with SMTP id z25mr2440347ljk.142.1589976012909; 
 Wed, 20 May 2020 05:00:12 -0700 (PDT)
MIME-Version: 1.0
References: <15745285.MnsZKaK4VV@tauon.chronox.de>
 <CGME20200520104448eucas1p122e9a8ed84d5276a1b796e10ef5e1964@eucas1p1.samsung.com>
 <dleftjh7wa3my6.fsf%l.stelmach@samsung.com>
 <2041475.ybOAuNAZB8@tauon.chronox.de>
In-Reply-To: <2041475.ybOAuNAZB8@tauon.chronox.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 20 May 2020 14:00:01 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeBkZ3R2wT9-A8LWkFx0W9KY70VW7JNjwp0RMDRc7hkTg@mail.gmail.com>
Message-ID: <CAJKOXPeBkZ3R2wT9-A8LWkFx0W9KY70VW7JNjwp0RMDRc7hkTg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] hwrng: iproc-rng200 - Set the quality value
To: Stephan Mueller <smueller@chronox.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_050016_202960_2792DA49 
X-CRM114-Status: GOOD (  19.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, Lukasz Stelmach <l.stelmach@samsung.com>,
 Scott Branden <sbranden@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Ray Jui <rjui@broadcom.com>,
 Markus Elfring <elfring@users.sourceforge.net>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 at 13:53, Stephan Mueller <smueller@chronox.de> wrote:
> > > That said, the illustrated example is typical for hardware RNGs. Yet
> > > it is never guaranteed to work that way. Thus, if you can point to
> > > architecture documentation of your specific hardware RNGs showing that
> > > the data read from the hardware is pure unconditioned noise data, then
> > > I have no objections to the patch.
> >
> > I can tell for sure that this is the case for exynos-trng[1].
>
> So you are saying that the output for the exynos-trng is straight from a ring
> oscillator without any post-processing of any kind?

Hi,

I think we will never be able to state this because the manual is
quite limited in sharing internals. What the driver does and probably
Lukasz wanted to say is that there is "post processing" block and
feature which can be disabled. The manual is saying the TRNG block
generates random data from thermal noise but not how much in a direct
way. There could be some simple post-processing or not (except the one
able to on/off). Also manual says this post processing block is there
to remove statistical weakness from the TRNG block. To me it does not
prove enough that raw data is really raw...

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
