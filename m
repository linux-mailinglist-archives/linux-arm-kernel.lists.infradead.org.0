Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 743E543225
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 04:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IaSNwMkQFOWi0T1BBcfpOZEGM5DsyreUiEMjvrqFPDs=; b=pbTjfAWXFkaOVW
	7gb1A4q8fZWNuZZxJM4jhX3xDhYwAPuYYlB/5V/+K3yKmGtcc35LfsJd6KZ4FdG98SKUZLyj0w3R5
	9R79A507KRJDDVx0vvLBKFifWLXZ5yNwicE10wuGqE5nmT6dIN3MinokMASuW1zuDGgk8vt1MFbxE
	MPjiFfOhBij9q4HT/xOuRWB79RWtJuhit8bxVAs+WD3AH50MG0qQ9/Cn+8203oJqmUnVOF7sqpXkc
	uU7UHGHW92Wmqk5Aikta2Cz4IUmFiB0pOT2qLXgZnARH9X2uo/mgC7qyRGbkrWp1lEEKjnL+jrvAD
	UWNjHFYDVT7toxqaoZwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbF5P-0006XQ-Re; Thu, 13 Jun 2019 02:03:31 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbF59-0006WU-Ei
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 02:03:16 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5D234NX020590;
 Wed, 12 Jun 2019 21:03:05 -0500
Message-ID: <3093d174ddd183fe5b6e949a62a15e72aa373e26.camel@kernel.crashing.org>
Subject: Re: [PATCH+DISCUSSION] irqchip: armada-370-xp: Remove redundant ops
 assignment
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Thu, 13 Jun 2019 12:03:04 +1000
In-Reply-To: <e4c7b434452775d00b6621012ad5e263076b3fcf.camel@kernel.crashing.org>
References: <e4c7b434452775d00b6621012ad5e263076b3fcf.camel@kernel.crashing.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_190315_639027_A60C8873 
X-CRM114-Status: GOOD (  11.60  )
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
Cc: Gregory CLEMENT <gregory.clement@free-electrons.com>,
 Marc Zyngier <marc.zyngier@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-12 at 15:16 +1000, Benjamin Herrenschmidt wrote:
> pci_msi_create_irq_domain -> pci_msi_domain_update_chip_ops will
> set those two already since the driver sets MSI_FLAG_USE_DEF_CHIP_OPS
> 
> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> ---
> 
> [UNTESTED]
> 
> Just something I noticed while browsing through those drivers in
> search of ways to factor some of the code.
> 
> That leads to a question here:
> 
> Some MSI drivers such as this one (or any using the defaults
> mask/unmask
> provided by drivers/pci/msi.c) only call the PCI MSI mask/unmask
> functions.
> 
> Some other drivers call those PCI function but *also* call the parent
> mask/unmask (giv-v2m for example) which generally is the inner domain
> which just itself forwards to its own parent.

  .../...

So I looked at x86 and it also only uses pci_msi_unmask_irq, it doesn't
mask at the parent level. And it also specifies those explicitly which
isn't necessary so the same trivial cleanup patch could be done (happy
to do it unless I missed something here).

Question: If that's indeed the rule we want to establish, should we
consider making all MSI controllers just use the PCI masking and remove
the forwarding to the parent ?

The ones that do the parent, at least in drivers/irqchip/* and
drivers/pci/controller/* (ther are more in arch code) are all the GIC
ones (v2m, v3-its, v3-mbi), alpine which was copied on GIC I think,
tango and dwc.

The other approach would be to make the generic ops setup by
pci_msi_domain_update_chip_ops call the parent as well .. if there is
one and it has corresponding mask/unmask callbacks. That means things
like armada_370 would be unaffected since their "middle" irqdomain chip
doesn't have them, at least until somebody decides that masking at the
parent level as well is a good thing. I *think* it would also work for
x86 since the parent in that case is x86_vector_domain which also
doesn't have mask and unmask callbacks, so it would be a nop change.

Let me know what you think.

Cheers,
Ben.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
