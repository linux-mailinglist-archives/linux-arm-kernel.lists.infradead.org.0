Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44C244EFB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 00:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugJMx4E3i1nSHLsmj6wGHtDzxU+LA9ObTRFMfDoVocw=; b=L+X2pN0G+jzveQ
	PbZYrRlXS3+QkNJhPasFPKKr1Hm0sUnt+82mToK7kGahc4jEbvj65moaGEurGPB803g3xSbUIN5Io
	z6YeHr3ws23tY0qSVzbFQTyW9Cw78AD4iOa7//5XI2cVT9tAzY9vnbH3/nUS1/2wgJmo/NI9UCeNS
	7lLj8bPJge7h03rnfLUccVLX5hDwpaCzfcnUXX0aMsSjXQ1IouE4j3AugrEnWlxs5SH8xEeApY07j
	Ii8jQxGfqb0NaaKDrTmoW2k3n1bSzDw6rQKNYpjXWMIl2XuoD3ZpoEWvwynot69CuwC/59UNXNl4A
	d9ppoCyJNUO8ogv0qz0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbXwJ-0007gK-OS; Thu, 13 Jun 2019 22:11:23 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbXw9-0007fv-Ne
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 22:11:15 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5DMAuZM012681;
 Thu, 13 Jun 2019 17:10:57 -0500
Message-ID: <39980dcbcc30293c0ee370ff49e0ababd3f68863.camel@kernel.crashing.org>
Subject: Re: Why check for PCI_PROBE_ONLY in pci_common_init_dev()
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Date: Fri, 14 Jun 2019 08:10:56 +1000
In-Reply-To: <20190613220642.pdiifl7lc3ea43vi@shell.armlinux.org.uk>
References: <4e734c3aab8802b340e06b56803954b3e550157d.camel@kernel.crashing.org>
 <20190613220642.pdiifl7lc3ea43vi@shell.armlinux.org.uk>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_151113_920857_35DA2625 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-06-13 at 23:06 +0100, Russell King - ARM Linux admin wrote:
> On Thu, Jun 13, 2019 at 01:52:34PM +1000, Benjamin Herrenschmidt wrote:
> > Hi !
> > 
> > So while trying to sort out & cleanup the business with PCI resource
> > allocation (and do the ground work to be able to revive 
> > https://lore.kernel.org/linux-pci/20150916085850.GA17510@red-moon/) I
> > stumbled upon this one:
> > 
> > arch/arm/kernel/bios32.c:pci_common_init_dev() checks for
> > PCI_PROBE_ONLY to decide whether to claim existing resources or
> > reallocate.
> > 
> > However, I can't see any code path leading to that function that would
> > have set that flag.
> 
> Someone probably wanted it at some point but either that's been removed
> or the code was never merged.  Either way, if no one is using it on
> 32-bit ARM, it can be killed.

It's not used by code path using that function. "New style" stuff using
drivers/pci/controller/* can still use the flag, but at least I can
simplify that code.

Thanks !

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
