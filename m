Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB7DA5D5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 23:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aS5GebB6uPw5g36QoP0Ij+WVPfDKvFGlIe+GMsWr2Ag=; b=meHtK7zaZr0HLh
	ZbZhv0khwU7PwbtnvBJphTp2ghya7vSABsgdJdVRp8z9Ae2eFDDzgTXn7p9A8ruJEq63RkVg8iCai
	+cCm9hfgdLmdnDAIjjULDKGNIX5DeemyK8rBZF7HqZEwbqycyae4aKeRVDLLHTO48s8A7NKRaglz7
	8uD9a479yjmjxUMrH0Sco2IVG8n5VnwQ/0VaMr3eJtW6WyHoH4EtvrXxU0411Ryl+NmmizGME1KIw
	eg9mXNIiqPv5q7PnHLqtMBvQ6CDeKRofhVWq1oyE4A9bC9JgYZ1rWU740WqXf0fKbB6EEUEb2wrcX
	7gAA7kHfPflwXYjMvEoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4tbY-0003L0-FI; Mon, 02 Sep 2019 21:11:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4tbM-0003Jz-CE
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 21:11:05 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE26E20870;
 Mon,  2 Sep 2019 21:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567458663;
 bh=qX20IVLvUSWOzNkJj+sBxx54B1HMotDbCAEmajym6B4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AD5eFMS4HiX4X1/0G9Dh521nWKDrI33a0LGJ0QWlqf8kqJtJGwk+ofVyNT7IeCGfl
 Im9W9rMBG81wLTIm2kTSbYoxtjkXIiRrPWYKaSy4KyVxMQEWteJ9LBElPao4m4VEYW
 tpe6XC5372WqFaPwj4r+5pjb3N8k7cK0+9491v18=
Date: Mon, 2 Sep 2019 16:11:00 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] PCI: Move ATS declarations to linux/pci.h
Message-ID: <20190902211100.GH7013@google.com>
References: <20190830150756.21305-1-kw@linux.com>
 <20190830161840.GA9733@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830161840.GA9733@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_141104_443559_F48DBC27 
X-CRM114-Status: GOOD (  11.50  )
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
 iommu@lists.linux-foundation.org, Will Deacon <will@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 09:18:40AM -0700, Christoph Hellwig wrote:
> On Fri, Aug 30, 2019 at 05:07:56PM +0200, Krzysztof Wilczynski wrote:
> > Move ATS function prototypes from include/linux/pci-ats.h to
> > include/linux/pci.h so users only need to include <linux/pci.h>:
> 
> Why is that so important?  Very few PCI(e) device drivers use ATS,
> so keeping it out of everyones include hell doesn't seem all bad.

This was my idea, and it wasn't a good one, sorry.

The ATS, PRI, and PASID interfaces are all sort of related and are
used only by the IOMMU drivers, so it probably makes sense to put them
all together.  Right now the ATS stuff is in linux/pci.h and PRI/PASID
stuff is in linux/pci-ats.h.  Maybe the right thing would be to move
the ATS stuff to pci-ats.h.

I previously moved it from pci-ats.h to pci.h with ff9bee895c4d ("PCI:
Move ATS declarations to linux/pci.h so they're all together") with
the excuse of putting the external ATS interfaces next to
pci_ats_init().  But that really looks like it was a mistake because
pci_ats_init() is a PCI-internal thing and its declaration should
probably be in drivers/pci/pci.h instead.

There's also a useless "struct pci_ats" forward declaration in
linux/pci.h that I should have removed with d544d75ac96a ("PCI: Embed
ATS info directly into struct pci_dev").

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
