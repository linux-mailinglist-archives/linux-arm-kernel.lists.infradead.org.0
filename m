Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFFF6AFA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 21:15:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofuztRel7441rsDjoR1CnA8ump202MZbQJXgjF0PvwY=; b=eispTNzl+Yk2C9
	hC2I/4nFRdoT3NcSnDkLaiJvOu6SODJGRW7WZK/myvOaVJyXiCtsnw/nCPeFMnOAC4KuuI0say1e7
	U7kdR4SyFonolF0UhQTo3n8+xj3DRJ4P8jHdjjYzcSPksPgiZdO7tBjnni9Qi+swLXSjUZ4gM0sO5
	EXRzWeOt7vZTraQVUq4SKQnhGB4LzIO0IoyVIq8moKDRSffzSUNZ+Y2b3eNcbF+lYplSbOSJwlstA
	VzAlGC5t1ex+/MQ9NjQFZ6lNXlIFKM4NPNOla7WFkJv3D8yJF3gMqjBkvOZVxEk/58ou2T8M5OgYv
	OpMqZeaxZqpPb8avkxxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnSv3-0002a9-WE; Tue, 16 Jul 2019 19:15:22 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnSui-0002EJ-49
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 19:15:01 +0000
Received: by mail-lj1-f196.google.com with SMTP id r9so21080488ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 12:14:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nSiJ7P7aree/QouHzJYNVvw8TbrZalu/D2PKc2JLvyE=;
 b=s4ij10d8QVM7gGw6STYTo8s/pKsuYNnkK6QBsTTS2MZsObWvz/6+SxQXYjXDRIAzYZ
 /EPun7/pSOq3DxDmgd8/cRpihMcZOI+9b+0FWA1Nqnr8DagaTAK/aNGR95K18MG0SmsP
 kP7HcMyh/IpyfGq4SSSSpmqhPSznLTxr+hwansRqHI6mCDfXj2UgFc8a8QHNO9ntfv/9
 WEv7f0w062kWtfs/s4JbfC5ctNwxTZrJ8TP1ceno1EilODacY+15rj4qOTrpcUdj75GP
 L16zGBsxy2TFokeXggofqk49EdayoK1IHaAI++bFWPjlqQDVoOT4G1WvQQ5MU63LkWJJ
 qNCg==
X-Gm-Message-State: APjAAAXDuX4x2IprFIcIEz1qKB3BTDI9Qiu0T0fIabRpkTFM3ljlGTr3
 G0L3RcbiVwiKzS7VTGTQGIg+cgCdAdt7Dr6Ps8tYdA==
X-Google-Smtp-Source: APXvYqxEROc6iOj5lyf6ClNcARL3AIGUQmNApDc2V696Z1bJ00PUcJWPOlBHwgZIHSUwXD3dvtcpApTXvXdaE56AT2w=
X-Received: by 2002:a2e:9dca:: with SMTP id x10mr18269442ljj.17.1563304497831; 
 Tue, 16 Jul 2019 12:14:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190716165641.6990-1-pasha.tatashin@soleen.com>
In-Reply-To: <20190716165641.6990-1-pasha.tatashin@soleen.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 17 Jul 2019 00:44:45 +0530
Message-ID: <CACi5LpOO+sF3o+5u4jHXzba+Ki8fZ5auekKLayxSwNOL6Lp=-w@mail.gmail.com>
Subject: Re: [RFC v1 0/4] arm64: MMU enabled kexec kernel relocation
To: Pavel Tatashin <pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_121500_165232_6A51C250 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sashal@kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Eric Biederman <ebiederm@xmission.com>,
 will@kernel.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On Tue, Jul 16, 2019 at 10:26 PM Pavel Tatashin
<pasha.tatashin@soleen.com> wrote:
>
> Added identity mapped page table, and keep MMU enabled while
> kernel is being relocated from sparse pages to the final
> destination during kexec.
>
> More description about the problem I am trying to solve here, can be
> found here:
> https://lore.kernel.org/lkml/20190709182014.16052-1-pasha.tatashin@soleen.com/
>
> This patch series works in terms, that I can kexec-reboot both in QEMU
> and on a physical machine. However, I do not see performance improvement
> during relocation. The performance is just as slow as before with disabled
> caches.

Thanks for the patchset, but if the changes still don't positively
impact the kexec-reboot timings, I am not sure we if gain by adding
these to the kernel.

Like I mentioned in the previous threads, we have been carrying some
relevant fixes for the same in Linux distros. I have been trying to
find time to fix them and send them upstream, but I am caught up with
some nasty kexec_file_load() issues on arm64 currently.

So, I will find some time to work on them (may be next week) and will
Cc you when I post them out after some checks on real physical
hardware.

Thanks,
Bhupesh

> Am I missing something? Perhaps, there is some flag that I should also
> enable in page table? Please provide me with any suggestions.
>
> Pavel Tatashin (4):
>   arm64, mm: identity mapped page table
>   arm64, kexec: interface preparation for mmu enabled kexec
>   arm64, kexec: add kexec's own identity page table
>   arm64: Keep MMU on while kernel is being relocated
>
>  arch/arm64/include/asm/ident_map.h  |  26 ++++++
>  arch/arm64/include/asm/kexec.h      |   5 +-
>  arch/arm64/kernel/cpu-reset.S       |   8 --
>  arch/arm64/kernel/cpu-reset.h       |   7 +-
>  arch/arm64/kernel/machine_kexec.c   | 128 +++++++++++++++++++++-------
>  arch/arm64/kernel/relocate_kernel.S |  36 +++++---
>  arch/arm64/mm/Makefile              |   1 +
>  arch/arm64/mm/ident_map.c           |  99 +++++++++++++++++++++
>  8 files changed, 255 insertions(+), 55 deletions(-)
>  create mode 100644 arch/arm64/include/asm/ident_map.h
>  create mode 100644 arch/arm64/mm/ident_map.c
>
> --
> 2.22.0
>
>
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
