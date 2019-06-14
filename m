Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A7545F97
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NULhXeAMcALop+pi1E48TsOIhNA5T9+sqxElAi5Y6r8=; b=PqaQzTgvhY8gKN
	voILl88VprIJnEXWnyUarzz2PvQ/mSXV2T4uCLgkI2pwqjo/RoIrIhaf9o2wFeVes765+2BRMiIRs
	KLMfak3EE0Ub5MGIBz+82z44sGQtaEcS/GsD2ipN1LFDhnuG7TeSAanGJ1BkpJflswTf8CTG0tHmm
	U94gZzhjB9w7zHH63q4g5JF/uBGKR2nC80klN4amXAQNbtZkp45zZWN7rTygFvnE2HbLE74t/3c9W
	mCVt6rtS5HSpsT3yl2zog5uj1Ex95zftutwRGK6TUS4cLfz107xxIjXQ28ENc7Z1XPf3+cjVC9qpZ
	8JHZMiKBpe3SCQoOp8zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmdf-0005Lx-TO; Fri, 14 Jun 2019 13:53:08 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmZC-0005o1-Jd
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:48:32 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5EDmIRa016982;
 Fri, 14 Jun 2019 08:48:19 -0500
Message-ID: <fdedfe23250f0dcb49619ed9da1d53ff7e7403d8.camel@kernel.crashing.org>
Subject: Re: [RFC PATCH v2] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Fri, 14 Jun 2019 23:48:18 +1000
In-Reply-To: <20190614131253.GR13533@google.com>
References: <5783e36561bb77a1deb6ba67e5a9824488cc69c6.camel@kernel.crashing.org>
 <20190613190248.GH13533@google.com>
 <e6c7854ae360be513f6f43729ed6d4052e289376.camel@kernel.crashing.org>
 <CAKv+Gu95pQ7_OfLbEXHZ_bhYnqOgTBKCmTgqUY27un-Y708BgQ@mail.gmail.com>
 <d5d3e7b9553438482854c97e09543afb7de23eaa.camel@kernel.crashing.org>
 <20190614095742.GA27188@e121166-lin.cambridge.arm.com>
 <906b2576756e82a54b584c3de2d8362602de07ce.camel@kernel.crashing.org>
 <84320a45ef9395d82bf1c5d4d2d7e6db189cbfda.camel@kernel.crashing.org>
 <20190614131253.GR13533@google.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_064830_900033_71E65810 
X-CRM114-Status: GOOD (  10.26  )
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
Cc: linux-pci <linux-pci@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Sinan Kaya <okaya@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-06-14 at 08:12 -0500, Bjorn Helgaas wrote:
> On Fri, Jun 14, 2019 at 08:43:19PM +1000, Benjamin Herrenschmidt
> wrote:
> 
> > This least to another conversation we hinted at earlier.. we should
> > probably have a way to do the same at least for BARs on ACPI
> > systems so
> > we don't have to temporarily disable access to a device to size
> > them.
> 
> The PCI Enhanced Allocation capability provides a way to do this.  I
> don't know how widely used it is, but it's theoretically possible.

Ok, I have to read about this. I haven't seen a device with that on
yet, it looks messy at a quick glance.

Can ACPI convey the information ? On powerpc and sparc64 we have ways
to read the BAR values from the device-tree created by OF when it
assigned them.

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
