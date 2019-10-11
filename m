Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F55AD4A76
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 00:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qoOU3tsBMGmLbKzebfxYm4tDoFkNnqdpD+hV0kRu3AA=; b=Aeo4aNND2awHfK
	4V5vsg2QcKMzt88PybPvGtH6T7Q3rH1s2gRFFc+SZDL3yAFYLBWwn1Oj8aejd/YlTj/2aC7iHmYsC
	CkfsRPAzzOigpKmPY5in8W4SrZPcwy2BUYt0d8lqZ6XGD1rSo/bGGAApQHB7emj7mbRCc4/JjGTIF
	cMgte/s0u0piXeZRXmJDhbq9Mk10h4UsLd8veuxgm2cDgx0XnnwYFCDzfHuoRD438El6WinDZ8vxa
	54pebJSDHum+IxWxfIW46Z74sYSDSyW+5/Xwt0ceR4wSP8BA4g+stcDd6BBv8BCiH8JfHZsIGZKap
	V8o5F63ML27Uouzd/XrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ3hl-00063x-9i; Fri, 11 Oct 2019 22:48:13 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ3hc-00063Q-6u
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 22:48:05 +0000
Received: by mail-qk1-f193.google.com with SMTP id x4so6449034qkx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 15:48:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SOKIN9Nyp1JbsZ7BUkjibIlWkzxw3BXcx3Hv1FQA6jE=;
 b=iLlULnD6hrNLzzOVKkk9UPPuOo0RWzIz/LzAZFhH5K9//KuKnU7EqSQ2Reehj2Q5SW
 2Bk31IO2D1OMumebDA2mzAs9c5jI8bkXw+bdClvmZupxkMISdke1BEnBjr3KOjDk2E5A
 OplHH1PnSEYHNhneAASgxgipA60R7k67RxHKy7sTZO6QUxFk+k9gxOsYwVW2jmUIqX29
 qyOt7QLkf4xGUen45XKhLKeFWsOyeFX1GiPIu5O3tSBIcnIII6tZ1ANb0DP33LKRcrWM
 qWZgpkjhPMQeDkqSTrfUY7h27OyF3OTKoiQwlSM1/lsDeGJ0mICitncxpEikv2cpYKjE
 vhWw==
X-Gm-Message-State: APjAAAVEVfLb+tceM3HMi0zmKocd6lD/8TStNM65pU/HJ46g6M+yJfUV
 RcFQ2J2exc7LA7z+iQzuI2VafGCZOXzeuNf1GUg=
X-Google-Smtp-Source: APXvYqwY0ItApn6Ic7IwoO2WjxHjjLQlid2e5HLIE2yCMJII+3/pFE7ZZeN+anW8mmfuckghY9tUfC0lFrSLy9QTGz0=
X-Received: by 2002:a05:620a:218f:: with SMTP id
 g15mr17971150qka.3.1570834081941; 
 Fri, 11 Oct 2019 15:48:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190926193030.5843-1-anders.roxell@linaro.org>
 <20190926193030.5843-5-anders.roxell@linaro.org>
 <bf5db3a5-96da-752c-49ea-d0de899882d5@huawei.com>
 <CADYN=9LB9RHgRkQj=HcKDz1x9jqmT464Kseh2wZU5VvcLit+bQ@mail.gmail.com>
 <d978673e-cbd1-5ab5-b2a4-cdb407d0f98c@huawei.com>
 <CAK8P3a0kBz1-i-3miCo1vMuoM39ivXa3oxOE9VnCqDO-nfNOxw@mail.gmail.com>
 <20191011102747.lpbaur2e4nqyf7sw@willie-the-truck>
 <20191011103342.GL25745@shell.armlinux.org.uk>
In-Reply-To: <20191011103342.GL25745@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 12 Oct 2019 00:47:45 +0200
Message-ID: <CAK8P3a1ADTc0woWWNjpeqYEtgb=snj264P4QNWOj7ZRMDv8WNg@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: configs: unset CPU_BIG_ENDIAN
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_154804_250751_E543B487 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunrong Guo <chunrong.guo@nxp.com>, Olof Johansson <olof@lixom.net>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 12:33 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Oct 11, 2019 at 11:27:48AM +0100, Will Deacon wrote:
> > Does anybody use BIG_ENDIAN? If we're not even building it then maybe we
> > should get rid of it altogether on arm64. I don't know of any supported
> > userspace that supports it or any CPUs that are unable to run little-endian
> > binaries.

So far, all 'allmodconfig' builds are big-endian and have been that way
since the option was first added, so build coverage is something we
have plenty of. It's also covered by randconfig testing, regardless of
the default endianess.

> 32-bit ARM experience is that telco class users really like big
> endian.

Right, basically anyone with a large code base migrated over from a
big-endian MIPS or PowerPC legacy that found it cheaper to change
the rest of the world than to fix their own code. The only other example
of this I heard of besides networking was from banking, where they
looked at moving from AIX on PowerPC to Linux on something cheaper,
but IIRC they ended up going with LE after all because of the lack
of distro support.

Whether any users remain in use at this time, I don't know. As most
of the larger machines require UEFI to boot, they are currently limited
to little-endian for all practical purposes, and smaller embedded
machines tend to have a smaller amount of legacy code and are
easier to move over to little-endian.

One recent reference I could find is specifically for the NXP
Layerscape LS1043 in
https://www.nxp.com/docs/en/application-note/AN5129.pdf
which apparently has some support in their codewarrior tools
for big-endian binaries.

There are also some recent openembedded bugfixes for
big-endian arm64 from NXP:
https://www.mail-archive.com/meta-freescale@yoctoproject.org/msg22378.html

Adding Chungrong Guo to Cc for additional insight on whether
they expect any notable big-endian users in the future.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
