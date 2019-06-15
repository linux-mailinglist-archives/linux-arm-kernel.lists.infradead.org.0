Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFA446D7C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 03:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WRukcDVCIX19R1FmI6zcYEoNOzxQRRvTLDPsefndmaI=; b=YE7n8YqwGTWxr2
	fbKkw05Rjhte1SFTyXm0CYll1cWJD8SZr1LNxgI+Sm8Aoz3hcnSJXuIQI6dqYbtVlLqaghfQorNPH
	hStLMg6StVRLm9mTYdJ+d2DDVjtm8oECFqltDcC1DZwI70hM4cHSe7ZQcDASEsqB8+VJF4cqIOJyg
	lFeMyLhCORFTeszdFN9j5grflni5dOkK22l7WYnwkLGIwOc3dbpiypKyyfPRrr0HEQjyvwpPcHNUz
	IFe+Kio5UIeY1QUX0I+ErC43HwpTum7g7eydRAj+kygmzzPUlQtoDJRhNL492M2gmmE5gVmWpd/e9
	t9UFap5hD0CwrsVT8ZWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbxKu-0002Rd-I8; Sat, 15 Jun 2019 01:18:28 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbxKl-0002RJ-1e
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 01:18:20 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5F1I7hS012437;
 Fri, 14 Jun 2019 20:18:08 -0500
Message-ID: <f0a14c9b46aa110485ea32cecb57c7c2c04fac43.camel@kernel.crashing.org>
Subject: Re: [RFC PATCH v2] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Sat, 15 Jun 2019 11:18:06 +1000
In-Reply-To: <20190614201318.GT13533@google.com>
References: <5783e36561bb77a1deb6ba67e5a9824488cc69c6.camel@kernel.crashing.org>
 <20190613190248.GH13533@google.com>
 <e6c7854ae360be513f6f43729ed6d4052e289376.camel@kernel.crashing.org>
 <CAKv+Gu95pQ7_OfLbEXHZ_bhYnqOgTBKCmTgqUY27un-Y708BgQ@mail.gmail.com>
 <d5d3e7b9553438482854c97e09543afb7de23eaa.camel@kernel.crashing.org>
 <20190614095742.GA27188@e121166-lin.cambridge.arm.com>
 <906b2576756e82a54b584c3de2d8362602de07ce.camel@kernel.crashing.org>
 <84320a45ef9395d82bf1c5d4d2d7e6db189cbfda.camel@kernel.crashing.org>
 <20190614131253.GR13533@google.com>
 <fdedfe23250f0dcb49619ed9da1d53ff7e7403d8.camel@kernel.crashing.org>
 <20190614201318.GT13533@google.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_181819_243229_1290DBE0 
X-CRM114-Status: GOOD (  13.57  )
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

On Fri, 2019-06-14 at 15:13 -0500, Bjorn Helgaas wrote:

> Ok, I have to read about this. I haven't seen a device with that on
> > yet, it looks messy at a quick glance.
> > 
> > Can ACPI convey the information ? On powerpc and sparc64 we have ways
> > to read the BAR values from the device-tree created by OF when it
> > assigned them.
> 
> I agree, EA is messy.
> 
> I don't think it's feasible to do this in ACPI.  It's a pretty
> fundamental principle of PCI that you can discover what resources a
> device needs and uses by looking at its config space.  In general PCIe
> requires ECAM, which gives the OS direct access to config space,
> although it does allow exceptions for architecture-specific firmware
> interfaces for accessing config space, e.g., ia64 SAL (PCIe r4.0, sec
> 7.2.2).

So this isn't something I need, but if others do, we can find a
reasonable compromise here and push it to the spec. It's actually
fairly easy:

If a device is used by FW (SMM, SMCCC or whatever other runtime thingy)
to the extent that temporarily disabling it for BAR sizing can cause
random boot failures (if the wrong event happens at the wrong time), it
would be easy for FW to "mark" that device as such (_DSM #5 == 2 ? just
kidding...) and provide some forms of properties/datas that expose the
resources that were assigned. On OF, the properties for that already
exist, so just adding something like "no-bar-sizing" or such in the
node for the device would do.

It's easy because FW only has to "represent" endpoints that have such
properties and leave everything else to the OS. There is no need to
mandate a full representation of all PCI devices.

There are a few details to be careful of, for example, if any bridge in
the parent chain of such an endpoint has BARs (not windows, actual
BARs), then they should have those properties too, otherwise sizing
them will temporarily disable the path to the device since BAR sizing
should be done with memory/io decode off.

But otherwise, it's a pretty trivial thing to specify and implement I
suspect. A lot easier than requiring HW to implement EA is my gut
feeling :-)

As I said, I don't have a pressing need for that now (could have come
in handy back in the powermac days ... oh well). But if enough people
do, I'm happy to help ironing something out.

Cheers,
Ben




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
