Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 334A935132
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 22:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V30txOQ6iQb5Ya33yUwkqq5E17Fk36l5ArgcdmAWBAM=; b=AobiDzz2dUcjLg
	DAypbP5KXF0rCKAEy44enElHD1QfvpCoSvy34VJy7cpvIiWRQGdXQCsgVBgxzZn5Ud5juOtJ6oHYY
	+uC1KYCA6XOKzDgnMW3CnwHZmdtRfv0S59T5LY+2JN30vESzWhuK/gCYQVkWwgXTzPu9cUJyUp1Yf
	uE9BY7qi8fjVI9ht3C2OuZ7qLnxc4cKorl5z3xBwZNHcWkJowRZqIEdRsbtDDL/5wzIe4rqfCFnnA
	FYta8o4Z94eMBg5rSea32o2LM+LWBlmuc5KBTI0nt2uMzyYubn42sLTVqFmeG9o7xNcrM4uZ7ujwI
	ycxCc3KFHUtMGahE2OoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYGFX-00008q-7p; Tue, 04 Jun 2019 20:41:39 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYGFP-00008Q-QV
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 20:41:33 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x54KfGAB012090;
 Tue, 4 Jun 2019 15:41:17 -0500
Message-ID: <e520a4269224ac54798314798a80c080832e68b1.camel@kernel.crashing.org>
Subject: Re: [RFC] ARM64 PCI resource survey issue(s)
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Wed, 05 Jun 2019 06:41:16 +1000
In-Reply-To: <20190604124959.GF189360@google.com>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
 <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
 <20190604124959.GF189360@google.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_134132_011300_C24FB882 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On Tue, 2019-06-04 at 07:49 -0500, Bjorn Helgaas wrote:
> > Yes... I am not personally aware of such a case but I was led to
> > believe based on prior conversations that such setups do exist,
> > especially in the non-ACPI ARM64 world. Which is why I would suggest
> > initially changing the default only on ACPI, at least until we have a
> > bit better visibility.
> 
> If a resource assignment that is valid in terms of all the PCI rules
> (BARs are valid, BARs are inside upstream bridge windows, etc) doesn't
> work, we would need more information in order to fix anything.  We'd
> need to know exactly *what* doesn't work and *why* so we can avoid it.
> The current blanket statement of "reassign everything and hope it
> works better" is useless.

I agree and I assume the problem stems from BIOSes creating either
invalid or incomplete assignments but as I said, I don't know for sure
as our platforms dont have that problem.

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
