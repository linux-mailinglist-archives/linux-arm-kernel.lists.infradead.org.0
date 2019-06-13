Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0CF433D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cl2CRv9p74ftzFFGUHL0afDMDMnfHq3I9rEUBIlvg0g=; b=CoBhUSB86jSNXO
	9+cWQ2bjMu6KHjbaMxaq/Rj33og4vZgQEx//DNiCSlgYIwvwSrpsuzn2hVlCQ5zt3VP3x8r1N4RnT
	+8baU/uhNKV6P2cx74XvnSnDDVjmBexwXArfYCs2vTLu6YV+rZmIaQ0yJbeCglgHInElZetjn1a2e
	U2bICx3S0u+quB7GZtwXX6fMsNjvshfGhmDVrhtskO3jz3HouaccLGqCfopvQH0kdygdWSYsJmz3Z
	Moct0pTzaMnm84xJZ84B+pU9HWCRqSpduo8Vh47jaxjGgCXZIDR8kEFgiNZ/JUUMdA0BpWGZKmguZ
	a00eRljN2yGaI+lhGURA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbKTA-0001Sl-8F; Thu, 13 Jun 2019 07:48:24 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbKSw-0001SG-JS
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 07:48:11 +0000
Received: by mail-qt1-f193.google.com with SMTP id h21so21436246qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 00:48:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fgT/YI2hhlyXpTA69Z5TLJrfk51LKe8sjqrg92sPdsE=;
 b=qByZPR9njpY2MQoktAWFohaICF53sfF40BOfKoPXPKO/fCgMtz4BR+VaKfL4fNpZsW
 Eo2aToieTYD+UJFIrbqgT3arq2VhEgzGtwKUcanl/olkMqIpRQqutF5PqBZWGFi43tdC
 LR+Io2eTvM2G3mbvT/QQmfs9SMgKNS2EmozVyVEnd4DPQu312cM2pMCkzMmvlpQHJ7lL
 pSwDFYI69R0Js0tvDWkCKQMO0+so60U/H6+NbxQZaSXX6psOPdVTq6ykv3OyZCrbHlGK
 oG6Rs5zc7wyytCc9zkKmhJpDhvnbhR7O9C7PqwiIst9XSAJj09SRhORccZ+/maQ4rpkJ
 y/Aw==
X-Gm-Message-State: APjAAAWs43O5qt8rx5dEGd+2W23PT7bi/5SjbqUSCoJeMY30yqs1MLzl
 /rbRHHS1uHCWpoxoMp4u4fD+YKChpnBp2xJfuT0=
X-Google-Smtp-Source: APXvYqxrrnzKo+F21ENjug1XYtPxZtDHIGQHLWn6kMjV5ZWTGO0RqR8XpwT1uM7DX/d/KwMCFvP6KDGEjgTJk97GDCA=
X-Received: by 2002:ac8:3ff5:: with SMTP id v50mr69703766qtk.142.1560412088101; 
 Thu, 13 Jun 2019 00:48:08 -0700 (PDT)
MIME-Version: 1.0
References: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
 <1560262374-67875-3-git-send-email-john.garry@huawei.com>
 <20190613032034.GE13533@google.com>
In-Reply-To: <20190613032034.GE13533@google.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 13 Jun 2019 09:47:51 +0200
Message-ID: <CAK8P3a0C010LEs3HmyQKHWx4EVpVH1NUtFwYkoF16syFQ9hd8w@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] lib: logic_pio: Reject accesses to unregistered
 CPU MMIO regions
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_004810_644035_EC768AE6 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, John Garry <john.garry@huawei.com>,
 Will Deacon <will.deacon@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 5:20 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Tue, Jun 11, 2019 at 10:12:53PM +0800, John Garry wrote:
> > Currently when accessing logical indirect PIO addresses in
> > logic_{in, out}{,s}, we first ensure that the region is registered.
>
> I think logic_pio is specifically concerned with I/O port space, so
> it's a little bit unfortunate that we named this "PIO".
>
> PIO is a general term for "Programmed I/O", which just means the CPU
> is involved in each transfer, as opposed to DMA.  The transfers can be
> to either MMIO or I/O port space.
>
> So this ends up being a little confusing because I think you mean
> "Port I/O", not "Programmed I/O".

I think the terms that John uses are more common: I would also
assume that "PIO" (regardless of whether you expand it as Port
or Programmed I/O) refers only to inb/outb and PCI/ISA/LPC
I/O space, and is distinct from "MMIO", which refers to the readl/writel
accessors and PCI memory space.

That is consistent with the usage across at least the x86, powerpc
and ia64 architectures when they refer to PIO.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
