Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53961F9932
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JGLI7TrB98Eov75NFBA6vcle/1k8RK+SnyW2u7GaLo=; b=p1V6sM47FUpq4E
	NGmi7jpjYNFQZzdS8a4xahwGLtvB2xexUs+Q2buH8d6n75k5UaHV0BEofDPTnnEYOPb+tiMhw853c
	nsndhPquxTbgvia0p3pF21oeVgyzH5CPE18OfK44ms6OBoufwOdSIuESWYJeRChjC5z+ZQa6fHsZq
	pHZT37WOscK872cfDTICe0QzUL1wBwDccgtmFDSgvnkuOwfs9RZClC3Ayu1sK8hw2gpjQFbPfRi9y
	/DDJNGPxz1CTPjaLDWz8QlpF7KMsaYG2H2r+zcgd57hzXllcjiXvB8NBg0r2tagA1FBKmndsWT2YL
	R4nE/2Q3ksXcAxzgL3hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpOW-0001dU-2f; Mon, 15 Jun 2020 13:43:24 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpOJ-0001cz-9e
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:43:12 +0000
Received: from mail-qt1-f178.google.com ([209.85.160.178]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MzQXu-1iyTvw2Dya-00vShr for <linux-arm-kernel@lists.infradead.org>; Mon,
 15 Jun 2020 15:43:08 +0200
Received: by mail-qt1-f178.google.com with SMTP id e16so12575109qtg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 06:43:08 -0700 (PDT)
X-Gm-Message-State: AOAM532DyOM61ModmaBQjtgN0v3avfGQVRc/1KBPH5BId5/tX40BMF/i
 iEnPcSU+y0X9+8gXOPZW9CBpe7kSLzie77PdKAE=
X-Google-Smtp-Source: ABdhPJx0OrXbUjQwUsWKBodkMGMMvkpFLaAJzfOc49aX/puOn3OjGDjHT6HOJmLaKzQk1we2dir5thvL/kN4mVexpfQ=
X-Received: by 2002:ac8:7417:: with SMTP id p23mr15803567qtq.204.1592228587251; 
 Mon, 15 Jun 2020 06:43:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200615130032.931285-1-hch@lst.de>
In-Reply-To: <20200615130032.931285-1-hch@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 15 Jun 2020 15:42:51 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3CWhrfyR4taGip8xE3U6HcRMtKBY5A69_cqzJwU1N+Cw@mail.gmail.com>
Message-ID: <CAK8P3a3CWhrfyR4taGip8xE3U6HcRMtKBY5A69_cqzJwU1N+Cw@mail.gmail.com>
Subject: Re: properly support exec and wait with kernel pointers
To: Christoph Hellwig <hch@lst.de>
X-Provags-ID: V03:K1:Lv4swOHkp1C4gVnShcqGDJEfBEUAdBZhtv6QjZXrbhdra9e/fgC
 Q/VzHKTSoMLKBh5mFYwP7UwGpYcbA26rXEKb/NldKt/58BJk+o/fuksuV+I1OOfvtyyxauH
 OVKUfdj35M9aJr5TPihdbxrt22WImwd6im94by473rDenkQimIg+puc7n+gZKrjSJc7hIFb
 5aAWZiNUXhlOr/yAOysZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:o3Qu50a6YyI=:+WXKPYMPBjQEWD+PVqnnPK
 vEjYcm90z4ksT7odW8K94eZtDnlTZ41h16ZoXEz5FhKh9+hOkhv9hrdFZ03j9I8j9wxt02PFL
 7GehpLpds7bzNhAwxyy4NoBhB7GfETIdiZuNg8e/rS+eoyCFP/2zMpuSQUuBwLP2T+m3TkNyn
 EFbkvKVCq8mXPeXvtHvV7x1K6KN3026NxpbhiAw6P3o/ehoX/as4fQ2kWL+K/0BP4bWyNFI3M
 fflPU2sIFIWDfyHZcAf5scsiKvLUTxcKqqF54Qpem0ObUtaSvxYDL0pwNRdcbvKdZsisuxRl5
 uwWPFCCLLelQE9XuwcABconsrENHuXeaqRAYmeVwLN9vBoEEWpm7dvjxtA4UA3T1ECTn7SRch
 0rx1whjmmJtrGi26kJkkLMZEC/iT3c6pU0fOhON9KxA+nNQGnQFpxPdNwIIULULJkH37D25NI
 1YXLYouJqzoS1QVAxBWCNDnjiHK2P2+XaYlzsOA5jsV9Y9kWj6XtlWkrpS/h6tgS3JaIAdG5g
 LOH54IV7qNoIDsAX/NWpbpGsDAzleoSNjDy6BXG4cUam8u8+DUxTUNMKcVdeQbbmMSbn0aAoI
 /6aqGPqnqd0ozoy5MvPjPqO4ZvoMWZcd/mvtMRxV0FTUnlNUcZ/bma5J/UOx3cjY1FfDGkRXE
 vMQ0C2jhcVpct+3tkMrjTrtpikVKxvu6qL9QJZXiG98VWY8i7nneQHhC6YsH9xOhNiEWo7O22
 2bt1+TJbbaZgYK3Y5SMFxxRSkw5o1mb+9uSEYDeueVUL6+puepBplvD0qnR6EF/XO8ufDYddi
 EwxlEeprl7GurYFc6Lco4SC0zhLOe+R9xxhfSIU9pNTFt/jslI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_064311_625986_95BCF0CA 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Parisc List <linux-parisc@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 sparclinux <sparclinux@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 3:00 PM Christoph Hellwig <hch@lst.de> wrote:
>
> Hi all,
>
> this series first cleans up the exec code and then adds proper
> kernel_execveat and kernel_wait callers instead of relying on the fact
> that the early init code and kernel threads implicitly run with
> the address limit set to KERNEL_DS.
>
> Note that the cleanup removes the compat execve(at) handlers (almost)
> entirely, as we can handle the compat difference very nicely in a
> unified codebase.  The only exception is x86 where this would list the
> handlers twice in the same syscall table due to the messed up x32
> design.  I had to add an extra compat handler just for that case, but
> maybe someone has a better idea.

I looked at all the patches and I like it a lot. I replied with some suggestions
for x32, but maybe I misunderstood what its problem is, as I don't see
anything preventing us from having two entries in the x32 table pointing
to the same function.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
