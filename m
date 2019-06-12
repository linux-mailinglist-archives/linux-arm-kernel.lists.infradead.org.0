Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AE342774
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:27:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=802jFxJ/TMp+q0HrGMAz+PAYp6Mcoq//tD1xRJCedO4=; b=AYwMZfOHvQZXM/
	v9xMEZmkm7/F4Evld2FVlZXVG31xR20VJ6UQeB8Yowr6VLxCFVFQyxseBrJoKVejE9+KVv6kLr3tT
	PXtiuhfIqyxs62YhQESOhbyX6QZbCs9wgcRaqHCEZlkhyTBu1MwarwZgluoOMa/36L8CnfbrZG/E/
	FC/m0KdRhIdqKqCAvZEsosa+8z9AJbNvJNtFXylMT7v+a2iu1uaVPXbEV5CaHwVKXhdfGsxU6T1su
	0PIWnCpjs3Vr+JCNW0OeGiJoUBDMxqgpLrCtNXnVjzt9kmukp/adr2yI0ymn9oNJcdFl1zdzLgBPA
	RZnszMJVM/gyFCVYjV0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3Hy-0004mX-0e; Wed, 12 Jun 2019 13:27:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3Ho-0004m8-4b
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:27:33 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B30D20866;
 Wed, 12 Jun 2019 13:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560346051;
 bh=fCiEkHOn4IM9qMiFXhbfh3OOyEoB+GLRdm6K+ZhmpQQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ucR0cDZmFIAHAdxv2kahFhIRw1/m7K1Irbr3F1WGoYg1wU8GwY+GO3X8PGXOr9MfO
 27guwNNyMJRbXvYoPvcn2+SOMPfBEAIolvLJ1NJBgjuCA2nqD3gs+VATaw4iJSpvae
 0+8MmKtLZitZu83Igh7zA0p4Wi1UecnRG/psFaa0=
Date: Wed, 12 Jun 2019 08:27:30 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH/RESEND] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
Message-ID: <20190612132730.GB13533@google.com>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
 <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
 <20190604124959.GF189360@google.com>
 <e520a4269224ac54798314798a80c080832e68b1.camel@kernel.crashing.org>
 <d53fc77e1e754ddbd9af555ed5b344c5fa523154.camel@kernel.crashing.org>
 <20190611233908.GA13533@google.com>
 <97fd2516fdde7f9f01688af426c103806f68dd2c.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97fd2516fdde7f9f01688af426c103806f68dd2c.camel@kernel.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_062732_194326_FA9955D8 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, "Zilberman, Zeev" <zeev@amazon.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 10:06:06AM +1000, Benjamin Herrenschmidt wrote:
> On Tue, 2019-06-11 at 18:39 -0500, Bjorn Helgaas wrote:

> > This is fine, but can we make a tiny step toward doing this in generic
> > code instead of adding more arch-specific stuff?
> > 
> > E.g., evaluate the _DSM in the generic acpi_pci_root_add(), set a
> > "preserve_config" bit in the struct acpi_pci_root, and test the bit
> > here?
> 
> I'd rather have the flag in the host bridge no ?

Oh, of course, that would make more sense.

> Talking of which, look at the ongoing discussion I have with Lorenzo
> when it comes to pci_bus_claim_resources vs. what x86 does, I'd love
> for you to chime in. I'd like to try to consolidate things further
> accross architectures but there might be reasons I don't see as to why
> things are different in that area, so ...

I don't know any reasons why things are different per arch.  In most
cases I suspect FUD.

Speaking of which, *this* patch looks like FUD because it essentially
says "Linux shouldn't change the PCI configuration on this system" but
it offers no explanation of *why* the config needs to be preserved.  I
would really like some note like "run-time firmware depends on the
addresses of device X".

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
