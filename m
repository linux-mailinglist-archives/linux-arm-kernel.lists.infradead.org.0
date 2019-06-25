Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A28D54FAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+xMQ406hug+8l0x31QKvVyj6plyl32BYuOz5KaC6kE=; b=H1Sxj8Z0heLW5a
	LqipVHvqjESE0Yj4Qe7KQanmI3qtrxtjAe27W/JOT4HfQoAtIQF8XsIy2WVzaPVOPjZDQLKcH4i8/
	OAzpt+cS7I+Btb3bCKKyM3Hz2sJlieu1WpBo8j29qII5N0NQkUfPOMF/NUIkwacbyBC9/PlXyNVRO
	/hsIKGyCo8748tIuQrFomPVuqr4pwoQHIb1DihpiHKQIIaEgHtkede9dbifjBvi7UPdju7l2iSUxK
	wm5PI5oykOhMQIt3NBndncP6SyOk8KURoN1PskRg25awztVz14r4CUEomOeRBmJbDcjv3IQAGbyVt
	aML546u8aCREN0fbTqEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl7B-0000rS-Fh; Tue, 25 Jun 2019 13:04:01 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl6n-0000dt-Tk
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:03:39 +0000
Received: by mail-io1-xd43.google.com with SMTP id j6so366002ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AaAux+mpjiFWEqJlAiGOu1BVPLgrTOOP018VAUoSN3o=;
 b=lmRjWvzcBFajWRoBK3znbG6i3978d6nBbrRGi3suA6cnsxIj5JI2hVj20FLTyh+0yt
 zV7i5MYXlc52IXaOeYNjzP8Km02CfCbdrpobiwqLnmNIoJC484FCh1NAiy9uJzZ2p/ak
 mMguigzQ63Q61fPmyPDQzSrl6/Lar+u1ARJamNP1zlq85bKWUns0qMJT7D9GKH4/ZlQT
 MhwVKWJ4ICSk3sn5QpF8a4LT8tnmv8P23HsxXWL/TyRkmjtwMKIuQpXXavC4cWN0plke
 Vsdh3Ar8TJ70vtpE0ohBaHT9Xa2HP7pLyJMMHPfKOWuHJNMvCFUGK8z9SL/OONjvSnzz
 TTzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AaAux+mpjiFWEqJlAiGOu1BVPLgrTOOP018VAUoSN3o=;
 b=pma9rfoF0s7SNZ/N7+7C7ZZfMS44y5v4ccdff558rF6LKjSHWF512CeKdp/XD19d8o
 Biui3WII6BohBdL2qq99G7Sook3nKoVRa9pmEW+rf/uFMnUYbvtIm6zT+OWlZKB7idaQ
 mMsrWckVxtvlJJB8FTVv5BxqvOZdu7leYj669n9qwmJlS6+paNwdij5loAt1LKtCloIm
 PxUQjol79lNZnJoM1JVHHalyhgTh1YKFhJ2KAvl5B363fcXeowUl6Ffrgi7Y2FbiQj2m
 CguazHoYSamv4XB1he7H6jJF4rVuWoIDxYLM8FM0kRiEaObFQzSPm4TvNTEM2/9GIifE
 zBnA==
X-Gm-Message-State: APjAAAVSSUOd1JlBpETczj+m2k2j0Am//rgjUIoscNGxSyevNjfM/IAv
 SQT3deL5WSxlEE77iFsMdJ7WN/Pb0PTJ81cK17Nh6Q==
X-Google-Smtp-Source: APXvYqy4zCAKoPaPG2k29F7XqifxmNDOdW2j4TDAW8nqSYe5f3mVIHS3sMFRvz8ca5dxqSPtvcR/IL7ykacX2H/I+K4=
X-Received: by 2002:a02:54c1:: with SMTP id t184mr10221497jaa.10.1561467816781; 
 Tue, 25 Jun 2019 06:03:36 -0700 (PDT)
MIME-Version: 1.0
References: <b89ef8f0-d102-7f78-f373-cbcc7faddee3@hisilicon.com>
 <20190625112148.ckj7sgdgvyeel7vy@localhost>
In-Reply-To: <20190625112148.ckj7sgdgvyeel7vy@localhost>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 25 Jun 2019 15:03:25 +0200
Message-ID: <CAOesGMj+aNkOT1YVHTSBLkOfEujk7uer3R1AmE-sa1TwCijbBg@mail.gmail.com>
Subject: Re: [GIT PULL] Hisilicon fixes for v5.2
To: Wei Xu <xuwei5@hisilicon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060337_966567_C5DA0009 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, John Garry <john.garry@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM-SoC Maintainers <arm@kernel.org>, huangdaode <huangdaode@hisilicon.com>,
 "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Jun 25, 2019 at 2:04 PM Olof Johansson <olof@lixom.net> wrote:
>
> On Tue, Jun 25, 2019 at 11:23:21AM +0100, Wei Xu wrote:
> > Hi ARM-SoC team,
> >
> > Please consider to pull the following changes.
> > Thanks!
> >
> > Best Regards,
> > Wei
> >
> > ---
> >
> > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> >
> >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> >
> > are available in the Git repository at:
> >
> >   git://github.com/hisilicon/linux-hisi.git tags/hisi-fixes-for-5.2
> >
> > for you to fetch changes up to 07c811af1c00d7b4212eac86900b023b6405a954:
> >
> >   lib: logic_pio: Enforce LOGIC_PIO_INDIRECT region ops are set at registration (2019-06-25 09:40:42 +0100)
> >
> > ----------------------------------------------------------------
> > Hisilicon fixes for v5.2-rc
> >
> > - fixed RCU usage in logical PIO
> > - Added a function to unregister a logical PIO range in logical PIO
> >   to support the fixes in the hisi-lpc driver
> > - fixed and optimized hisi-lpc driver to avoid potential use-after-free
> >   and driver unbind crash
>
> Merged to fixes, thanks.


This broke arm64 allmodconfig:

       arm64.allmodconfig:
drivers/bus/hisi_lpc.c:656:3: error: implicit declaration of function
'hisi_lpc_acpi_remove'; did you mean 'hisi_lpc_acpi_probe'?
[-Werror=implicit-function-declaration]



Please build and test your branches before you send pull requests, Wei.

I've dropped the branch again; please re-submit when fixed. I think
it's probably 5.3 material now.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
