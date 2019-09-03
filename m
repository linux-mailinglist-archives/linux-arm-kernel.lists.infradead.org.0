Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00551A68BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 14:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+gl69OWe+xD3jgbOTzzMCdChY9RbuZ+6IeG43pHhzk=; b=nJai6geM7sj20U
	7pJVGkMlTGA3bh7lu4eAgKfAaAbFJg0mb8N/ZnWH/xlOa8VFFugHupFlPz4E37OV56r4baQWnSh8F
	lKvcL4kl9L/TRKTG3TemmPCnD8XORJ/vUdbsaAqtwbyjfbarplgK0xTtc4txb1xVOFffYl3SRpKGr
	vnwOJ7Xvkfr6rZypbtEhtaNjy3FHmNKkbdyImloO6fDk45VXfpnFy9SaoFfiwnV7xNMb7IYpVEVSh
	bZpLq/CHpS24ytLySN9VLXUwgxeZzf/nU0obZ+waFFIsPBrOW1bI4fPfrV5obT8YKZOcjEL2JMDcC
	8L76FSWHMFUExQvjt5GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i589N-0005Z9-8f; Tue, 03 Sep 2019 12:43:09 +0000
Received: from mail-qt1-f178.google.com ([209.85.160.178])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i589A-0005Yg-ON
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 12:42:57 +0000
Received: by mail-qt1-f178.google.com with SMTP id j10so2015907qtp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 05:42:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LjGO+oUxhZvmZfNDhv28dAl2/ZZJXmLVYGmjLAI6tU8=;
 b=dVrlV679GfHJ+GYZtvmVn6dLptZ6WpGCalNk0n+Elv37iPG8pBnWLSbt90Ip94rz1f
 clwGD0i/1STG1lwOtkVLZDS0cjPVB/jkTCxDrHPmnjSHUkqcuj31OvBiv1rmjnGilaov
 PhaBckWXGQkLTaPg94aSbC4fn2hQpvly/twANG+y/UdMCiWRNZSAFwom5H6e9Xl7Plyb
 QjUtzQlfUvy/Rpxwgka5aGu6/6dz3y3m1tFL4PeorC1pBlqoPR/j1JAUiFOieFRrGijz
 YMhK0+dEPJRghV7/ij0oJbJ23z8J2T/5SwNXeYYKUDh7Gb+yb69/QbGuPP1v8YE6Tysi
 4GEQ==
X-Gm-Message-State: APjAAAUPYljqyMzTLQUdxXR31RAtNKQhjxKnbMl7lzfiogZDJ2tInqt1
 04nDXRhP3M4gtBp5fVAS0E8N+bIULYHIl+vLVdPCYg==
X-Google-Smtp-Source: APXvYqz/RjqtxAdND8OwqAOI6N7IRdIdxkC5cn5hWSHGzEd9UlyPn9MWNX54H+S4BXK9wirBn0TXv39BZMO0i5a9dgM=
X-Received: by 2002:a0c:e74b:: with SMTP id g11mr21379063qvn.62.1567514575190; 
 Tue, 03 Sep 2019 05:42:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190816163042.6604-1-krzk@kernel.org>
 <20190816163042.6604-2-krzk@kernel.org>
 <CAJKOXPf6qpGDNxKpUJ+Eby8NS+BhrypA4xy_m1s4GHFA55Q9PQ@mail.gmail.com>
In-Reply-To: <CAJKOXPf6qpGDNxKpUJ+Eby8NS+BhrypA4xy_m1s4GHFA55Q9PQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 14:42:39 +0200
Message-ID: <CAK8P3a3cCE-KJxoQLE5qNd5Rg=Z3Bus05FQf92DqCAHS+EFhzQ@mail.gmail.com>
Subject: Re: [GIT PULL 3/3] ARM: dts: exynos: DT for v5.4
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_054256_795443_FB65D401 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.178 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 9:52 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Fri, 16 Aug 2019 at 18:30, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > ----------------------------------------------------------------
> > Samsung DTS ARM changes for v5.4
> >
> > 1. Add AHCI to Exynos5250,
> > 2. Add camera and GPU power domains to Exynos5422,
> > 3. Minor cleanup.
>
> Just a reminder - this one pull request is good to go. No changes needed.

Thanks for the reminder. There was a bit of delay because of my
vacation. Pulled now into arm/dt.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
