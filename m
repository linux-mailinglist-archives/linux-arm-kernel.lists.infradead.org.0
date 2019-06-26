Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BA7566A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkfTxyKhGlmpcrj5eX+bj5Df85T0DlglRXKKuVDK7s8=; b=QfGXOPbuBl5rPq
	6eyJex15Z2N0DMX/ok/IyyNSWbYAzHS4lCMUq9+683rmaAV4WqET3QQ1NOEUySg4pb2gwLxR+bHPo
	vh7yCuSrKv70mr0884DVESBu+x9bslR0bCPMvdy8QIbZLplvuqM4XthIrv6hwIpM/CZJkTvcV9ZjG
	W3uYSgEGpHJQJegwlO79ZF4zaDT3zn4LMBFa7ahSGN9KyuiQ7SVlovuhNi8mId5rUgwTnVynS92ge
	AiptnvPALcY+k9la/+YJSOEhWfcb9Z80RQzsx4j7t0grciVS81yFzqvX04MBmahRymk8AS/nxYw8B
	u+iF/Zw1wupi/YvAHK7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg57P-0005bV-Hn; Wed, 26 Jun 2019 10:25:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg57D-0005ap-1J
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:25:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 216A4360;
 Wed, 26 Jun 2019 03:25:22 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 887A33F718; Wed, 26 Jun 2019 03:25:21 -0700 (PDT)
Date: Wed, 26 Jun 2019 11:25:19 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] arm64: kaslr: keep modules inside module region when
 KASAN is enabled
Message-ID: <20190626102519.GC1161@arrakis.emea.arm.com>
References: <20190625170855.10250-1-ard.biesheuvel@linaro.org>
 <20190626093532.GA1161@arrakis.emea.arm.com>
 <CAKv+Gu8Q3EXg5vpUUKCRUyBuq1egS2h+aZdfTFcF_5fDA3GVNw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8Q3EXg5vpUUKCRUyBuq1egS2h+aZdfTFcF_5fDA3GVNw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_032523_128710_2580C9F0 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 12:01:22PM +0200, Ard Biesheuvel wrote:
> On Wed, 26 Jun 2019 at 11:35, Catalin Marinas <catalin.marinas@arm.com> wrote:
> >
> > On Tue, Jun 25, 2019 at 07:08:54PM +0200, Ard Biesheuvel wrote:
> > > When KASLR and KASAN are both enabled, we keep the modules where they
> > > are, and randomize the placement of the kernel so it is within 2 GB
> > > of the module region. The reason for this is that putting modules in
> > > the vmalloc region (like we normally do when KASLR is enabled) is not
> > > possible in this case, given that the entire vmalloc region is already
> > > backed by KASAN zero shadow pages, and so allocating dedicated KASAN
> > > shadow space as required by loaded modules is not possible.
> > >
> > > The default module allocation window is set to [_etext - 128MB, _etext]
> > > in kaslr.c, which is appropriate for KASLR kernels booted without a
> > > seed or with 'nokaslr' on the command line. However, as it turns out,
> > > it is not quite correct for the KASAN case, since it still intersects
> > > the vmalloc region at the top, where attempts to allocate shadow pages
> > > will collide with the KASAN zero shadow pages, causing a WARN() and all
> > > kinds of other trouble. So cap the top end to MODULES_END explicitly
> > > when running with KASAN.
> > >
> > > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> >
> > Thanks Ard. This seems to fix the problem. Do we need a cc stable here?
> > The patch that reduced the randomisation range to 2GB has a 4.19 stable
> > tag.
> 
> Yes, this needs backporting to v4.9 and later.

Thanks. I think Will is queuing it as a fix.

Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
