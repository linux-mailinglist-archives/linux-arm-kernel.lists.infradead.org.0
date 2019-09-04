Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3365BA92F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 22:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzsLzCV1S1CKnAwo92s+0Ay2EXkeb2cQn9OxxZ7yrcs=; b=a/QlyLp5thP225
	tnu/UvMFyF7prUlhc2BmHCxf4RxxYPi7zi13Vh8tEsIs56ebug1yHtcveTqm4994lLs2YVjiyigdr
	0xR/9hOB/buyH+v/4bOunxrxXoLQ8YD0L2O1kw8sqLEw1E2AwLfnYg2tOgsz8fEH1eh59ysxGOoe5
	A5XgFiXOvLA/h92fNNioKEJ6iIlhEaVEKsSHnKhdYEJpiFopZVAdXdCEi0dPTCuHxQMc3DRg4hoLw
	e7em1SqJ9ql+Qt6lmDi2OelKIrc/Y7mYAszAcSG1hDZT8iefPAm+WJqWv3iqfBKC5EjlIYPoQ25nY
	dlt51o0tEd8bv6DnMDqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5bkU-0007ud-Lp; Wed, 04 Sep 2019 20:19:26 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5bkL-0007uJ-L7
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 20:19:19 +0000
Received: by mail-qk1-f193.google.com with SMTP id z67so8048157qkb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 13:19:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qh/qciDEfWc4OjbcG4Um6lwqGmIH8ZsH2+0R1t1wkU0=;
 b=jcAfylG0lyJfTxqG9qqrOqJo8o0xr71ISv64TIIIGmZYZM5oPCZ6yhRvawf6UhXhRY
 7OudIOgS1WU3VWbM17ciys9XYnCNXjaowkjgeefWmPCFR7qGhVBia2/p15NbuhUWB3QZ
 JtoTvd1nTvOAFZBYohp4zq2pCuHHXsIdYxeQcp2xMJhRfhmuWCFNisBdzffo1yWwT+Xb
 UaQBdJbA0rosYTJaY+eqWcjRsbR4V8nVgMbt2Pa6I5hoAweu1wkd9rPHm+5Kp7gR9kE8
 zy9FfMxV94lmN4i7MjGYbH+Rl90D2clIgZQAbn+kPFBcJIp8oOdvHLqMaYjTM4RyYNDw
 mjYA==
X-Gm-Message-State: APjAAAWOKlQWd4kqW22/W2+FeYolXYiuFa7fiptYoywKeyd6N+B/Jjcd
 uqQSZ/GDKUR6mBzuH8WG0k8BmBUaqsys4W4ZFNU=
X-Google-Smtp-Source: APXvYqzBobmbGvpo2oDXZWB0ABwWXrJXFuXrLEB8UTeHm2167iphOD5iFcn3Ju0O3NIQkoDrkhf59YbwLaSfDSGk+ZU=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr40901684qka.3.1567628356393; 
 Wed, 04 Sep 2019 13:19:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190819190552.11254-1-f.fainelli@gmail.com>
 <20190819190552.11254-2-f.fainelli@gmail.com>
 <CAK8P3a2XbU0s0S7wsX5s+UDNc5tfDkqs2KZw+7qXNZ5RuYW8MA@mail.gmail.com>
 <4fd4b848-669d-00c5-144b-deab7a62a263@gmx.net>
In-Reply-To: <4fd4b848-669d-00c5-144b-deab7a62a263@gmx.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 22:19:00 +0200
Message-ID: <CAK8P3a0jGZoULsURg_-aFHsdNF1BKTJ39rinssVPaGW5BBjQ2g@mail.gmail.com>
Subject: Re: [GIT PULL 2/3] Broadcom defconfig-arm64 changes for 5.4
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_131917_693449_209AAF54 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@kernel.org>,
 arm-soc <arm@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Olof Johansson <olof@lixom.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 7:06 PM Stefan Wahren <wahrenst@gmx.net> wrote:
> Am 04.09.19 um 15:02 schrieb Arnd Bergmann:
> > On Mon, Aug 19, 2019 at 9:06 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
> >> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
> >>
> >>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
> >>
> >> are available in the Git repository at:
> >>
> >>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.4/defconfig-arm64
> >>
> >> for you to fetch changes up to d6cc9ddd23f8b113797152896462b27e2b213ece:
> >>
> >>   Merge tag 'tags/bcm2835-defconfig-64-next-2019-08-15' into defconfig-arm64/next (2019-08-15 11:38:29 -0700)
> >>
> >> ----------------------------------------------------------------
> >> This pull request contains Broadcom ARM64-based SoCs defconfig updates
> >> for 5.4, please pull the following:
> >>
> >> - Nicolas enables the Raspberry Pi CPUFREQ driver in the ARM64 defconfig file
> > Pulled into arm/defconfig.
> >
> > The way we work at the moment, there is no real need to split changes
> > to the arm32 and arm64 defconfig files into separate pull requests or even
> > separate patches.
>
> this is new to me. My understanding was to separate all changes between
> arm32 and arm64 changes.

Right, that was the policy for a long time, but it has gradually gotten
more relaxed.

> So this isn't necessary for the DT arm/arm64 changes, too?

I would still like to see large pull requests get split up into logical
chunks, and the 32/64 split tends to be a natural boundary for
many things, but I think there are cases where it makes more
sense to combine. For instance, the raspberry pi changes tend
to go together for 32/64, so a single pull request is best here.

OTOH, if there are many changes for one Broadcom platform, in
addition to a couple of patches each for the other platforms,
a good split might be

a) bcm283{5678}, both 32-bit and 64-bit combined
b) random other 32-bit DT changes
c) random other 64-bit DT changes

As a rule of thumb, the best pull requests are those
that clearly tell what goes on in the branch using a
tag/commit description in a couple of paragraphs without
enumerating unrelated items. (same as a changeset
commit message actually).

The branches we currently have are

  arm/fixes
 arm/defconfig
  arm/drivers
  arm/dt
  arm/soc
  arm/late

Each of them contain 32-bit and 64-bit changes across all platforms.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
