Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343DC33C07
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 01:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CMOFpHsKocRmb4FOUYQ0TCcvLPo239U5xJzgVf5N5bA=; b=knkLO9l11Xc/vA
	Cz8KrUvjnp+4UkPgvGGp6G00CC5kRpVZun/KMUwJo0UE2rONrg/Te32ArxcK4SWOE6dOmwhYOJ4CM
	fzQ6TTW6/I15onTNey0tzfb841WNrug9FTuepacEEhZdOm243kNFTRB9g3+MiSesqxyJcLfk/tzJ6
	+q2SfDKaESU1QUarHB2SRlDD6iS4xU9d9OpuodM7H82jSn8QiPuRwbirqua8rMYMH+rnlv/XlJ5FP
	dvtdFJ0/gf3DtvMTfm6PVJW5s7cY7e3lHRlC3Xgjr3Y6cEm2Kj+lXDTWWeFpSdWJd0cJ2r8LUtRTV
	LsPat7zt6I9/AqZC2c0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXwaB-0006dJ-UE; Mon, 03 Jun 2019 23:41:39 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXwa4-0006cv-Mj
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 23:41:34 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x53NfGPf015895;
 Mon, 3 Jun 2019 18:41:17 -0500
Message-ID: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
Subject: [RFC] ARM64 PCI resource survey issue(s)
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 04 Jun 2019 09:41:16 +1000
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_164132_891076_8CCC9A54 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, "Zilberman, Zeev" <zeev@amazon.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, bhelgaas@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Folks !

I'd like to revive the discussion around Ard's old patch:

https://patchwork.kernel.org/patch/9675707/

We (Amazon) need that sorted one way or another ASAP since we have
setups coming where we must not let Linux change the FW assignments
under some host bridges.

In fact it's a reasonable thing to require for other reasons. The EFI
framebuffer is an example, there can be others where FW/ACPI/EL3 etc...
might have assumptions based on where some system devices were located
by the boot FW and will break if we move them (such things are common
on x86 and powerpc).

Taking a step back I think (and I suspect we generally agree based on
followup discussions I've seen) that the "right" thing to do is to have
our default behaviour be:

   - Claim what the FW established if it's not obviously broken

   - Call pci_assign_unassigned_resources() to assign what the FW
didn't assign

Which is more or less what powerpc and x86 do today, but using a
different mechanism than what's in pci_bus_claim_resources() (they are
similar to each other, I wrote the current powerpc one loosely based on
the x86 one at the time). That leads to a side question (which we
should probably discuss in a separate thread) of whether we want to
consolidate all that.

That said, we also know this is going to break *some* existing
platforms that have known broken FW assignment. The question is then
can we sufficiently detect the breakage and re-assign in those cases
(like x86 does fairly successfully in a number of cases), or do we need
to add some board/platform quirks to force the full re-assigment on
known broken platforms ?

Even if all arm64 platforms are found to be broken today, I would still
like to have our default be to use the FW setup, if anything as an
incentive for newer platforms to get it right. At the very least on
ACPI.

We can use DSM#5 when it exists to force one way or another (ideally on
a per bus basis but that's harder, so let's start with host bridges
maybe ?)

Thoughts ? I'm happy to do some of the work here. We have an emergency
to get the AZ case solved, and Ard old patch does that...

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
