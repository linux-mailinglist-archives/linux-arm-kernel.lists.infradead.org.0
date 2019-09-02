Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A0DA5D9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 23:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwGSBeafH4M8z7HrcOkY72o89KQZnhuN6awEFc4IPyY=; b=SGXZEgy/yyUfkm
	GactC2Y94wdk7ENeTmugeu2+dduh0IpiJPTKg+oda8oBkJMlrpf+Hf9kW6RZKnIzWCZz5m/e/pi0j
	DPj5N+rNH+Q5sGHRqeMKvSKX0tL61IfJDLL6mJTbMx92GKOO+2UU+fenyjMX9HNcjBscgNIHjgqMG
	FC9Klm9RsQJamrLjlrdjjhDWGDddlqlbytG2cZLQljswWfh7cDGYjDnDkCTvLb26Vw4PfqjxifYja
	6boouF62SAz4vyv6LdaYVW2B1CPxmwhFZwNssQm6bgcQl+51vfxJiMCJkkLvmgg4p5Bk0KU9SSEV0
	r3ZWdTS9DTbq4p4ECY+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4u28-0003cx-4o; Mon, 02 Sep 2019 21:38:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4u1t-0003cO-7i
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 21:38:30 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CABC520828;
 Mon,  2 Sep 2019 21:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567460308;
 bh=kaaq401nmBdTSHu/XiUBD70JNneEb8DIrs7hzf+jJHc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zWpp0ekwFLO9mEtnMHUAEc17a8bDcIff1Kozu6gDr4uXN3F9z04i1GNSj/QOZ5rKe
 FuHpA83H1qV8KrwcFIOyzgWaTfrOqG2VvFNMund6t/JQJRgqCUafDAKfxyeOndoZtF
 quD/TKjyWIqOB1/QEOmWDfYieCsTGdVxuxScOlfE=
Date: Mon, 2 Sep 2019 16:38:26 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] PCI: Move ATS declarations to linux/pci.h
Message-ID: <20190902213826.GI7013@google.com>
References: <20190830150756.21305-1-kw@linux.com>
 <20190830161840.GA9733@infradead.org>
 <20190902211100.GH7013@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902211100.GH7013@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_143829_296293_9AE51124 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Wilczynski <kw@linux.com>, linux-pci@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Kelsey Skunberg <skunberg.kelsey@gmail.com>,
 Will Deacon <will@kernel.org>, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+cc Kelsey]

On Mon, Sep 02, 2019 at 04:11:00PM -0500, Bjorn Helgaas wrote:
> On Fri, Aug 30, 2019 at 09:18:40AM -0700, Christoph Hellwig wrote:
> > On Fri, Aug 30, 2019 at 05:07:56PM +0200, Krzysztof Wilczynski wrote:
> > > Move ATS function prototypes from include/linux/pci-ats.h to
> > > include/linux/pci.h so users only need to include <linux/pci.h>:
> > 
> > Why is that so important?  Very few PCI(e) device drivers use ATS,
> > so keeping it out of everyones include hell doesn't seem all bad.
> 
> This was my idea, and it wasn't a good one, sorry.
> 
> The ATS, PRI, and PASID interfaces are all sort of related and are
> used only by the IOMMU drivers, so it probably makes sense to put them
> all together.  Right now the ATS stuff is in linux/pci.h and PRI/PASID
> stuff is in linux/pci-ats.h.  Maybe the right thing would be to move
> the ATS stuff to pci-ats.h.
> 
> I previously moved it from pci-ats.h to pci.h with ff9bee895c4d ("PCI:
> Move ATS declarations to linux/pci.h so they're all together") with
> the excuse of putting the external ATS interfaces next to
> pci_ats_init().  But that really looks like it was a mistake because
> pci_ats_init() is a PCI-internal thing and its declaration should
> probably be in drivers/pci/pci.h instead.

Never mind the pci_ats_init() part; Kelsey has already moved that:
https://git.kernel.org/cgit/linux/kernel/git/helgaas/pci.git/commit/?id=b92b512a435d

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
