Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66610468A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yB4LLj1K7zQexubMJJukQ3OGxSB3m8A+ZxCFied7Eo=; b=bAMc8PMopIgthA
	S2fazoxXr5dZygYRZEOaHcQbfWIESI3z8qlM8+BuBhj/3XJOoOPT1cYrBxuUYCRzrRG5HvXZUJM/o
	i+4PLCokQAFXPwWEetssBnRihoA4ACtPITiSrN4hW+9haglHOxOcpgzCmIpUYX6KR29LfYWU2tN4M
	u+t1lwPfAnAe2XPegDvCwu4/8NkIrUaiwFP4VcXH10GZK4DB1RPn3xSEmgbJKP3VpL2jON6mmxfWB
	bkZpLAF6qtLirPjt7JujsINI/FVZ+quHHOdX/ULoZFA2Rw+OUDDqMqc1E88jXtNf6ULfW8GGHAB75
	w97G/PThIDd0+Ec4vZBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsZz-0008AJ-7w; Fri, 14 Jun 2019 20:13:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsZo-00089X-Cy
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:13:33 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC94E2133D;
 Fri, 14 Jun 2019 20:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560543212;
 bh=xAM7mBjDbgUS5XcFtTkGqbwxqhzw2VQJQpfEmS3r5OU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y9B/wKt8iAZmQzcNZMwojsGSPxWD0nlvAJ9fR2Mgc9gCFoXg973sQdjAjVCP/6T1t
 b9gCFz2nYYCVV+dwHCGPAcSHn7aY/9VRZMzyrF48P1GQ4HMlgijZoW0/5QGEf73pu9
 RW4fNguuPDa39W3Az18UKkqM6+czwwa/16ADuqpE=
Date: Fri, 14 Jun 2019 15:13:18 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [RFC PATCH v2] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
Message-ID: <20190614201318.GT13533@google.com>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fdedfe23250f0dcb49619ed9da1d53ff7e7403d8.camel@kernel.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_131332_465243_55726434 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Fri, Jun 14, 2019 at 11:48:18PM +1000, Benjamin Herrenschmidt wrote:
> On Fri, 2019-06-14 at 08:12 -0500, Bjorn Helgaas wrote:
> > On Fri, Jun 14, 2019 at 08:43:19PM +1000, Benjamin Herrenschmidt
> > wrote:
> > 
> > > This least to another conversation we hinted at earlier.. we should
> > > probably have a way to do the same at least for BARs on ACPI
> > > systems so
> > > we don't have to temporarily disable access to a device to size
> > > them.
> > 
> > The PCI Enhanced Allocation capability provides a way to do this.  I
> > don't know how widely used it is, but it's theoretically possible.
> 
> Ok, I have to read about this. I haven't seen a device with that on
> yet, it looks messy at a quick glance.
> 
> Can ACPI convey the information ? On powerpc and sparc64 we have ways
> to read the BAR values from the device-tree created by OF when it
> assigned them.

I agree, EA is messy.

I don't think it's feasible to do this in ACPI.  It's a pretty
fundamental principle of PCI that you can discover what resources a
device needs and uses by looking at its config space.  In general PCIe
requires ECAM, which gives the OS direct access to config space,
although it does allow exceptions for architecture-specific firmware
interfaces for accessing config space, e.g., ia64 SAL (PCIe r4.0, sec
7.2.2).

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
