Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC0844FD8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 01:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQ80jmLuk2TiHRJe4Pkudmiwa/0/mj89PudCeAIlyzQ=; b=iZr894OHrXxVgq
	D4Ru2Ia0RF/2ZNG4ZHva44GSv9ENTck/C9TyAb9wKutS27ceLSXbkyn57kEbl1D+xdPo0K3JrPxyE
	vXK59aPByZBBJPEWiRw++5UW4d8Ty5DPhtggPGYkrkUtOu3xPFDBmYZ5uuAkvI9Uluu1BFCF/rKoZ
	L2yjTY5kmGnEtvZe5djR8+h3Yw+vvTom3VBiQEtr/y9O7XWg8cWcuHfHUUHiCFVhBpIUjnE5Us3EP
	orDcWrwWhooLYtYzMlI/IDeIzWxf2lDNLEkmrGiwzD7c6TvThENioEyDo1Qoq4iyiXl/Hs/irX1aZ
	A2rVg9QT+hPzcsLaSWdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYp1-0000CO-S1; Thu, 13 Jun 2019 23:07:55 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYos-0000BH-M2
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 23:07:48 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5DN7ZDZ014484;
 Thu, 13 Jun 2019 18:07:36 -0500
Message-ID: <e6c7854ae360be513f6f43729ed6d4052e289376.camel@kernel.crashing.org>
Subject: Re: [RFC PATCH v2] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Fri, 14 Jun 2019 09:07:35 +1000
In-Reply-To: <20190613190248.GH13533@google.com>
References: <5783e36561bb77a1deb6ba67e5a9824488cc69c6.camel@kernel.crashing.org>
 <20190613190248.GH13533@google.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_160746_867180_DA9138E0 
X-CRM114-Status: GOOD (  14.99  )
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
Cc: linux-pci@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sinan Kaya <okaya@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-06-13 at 14:02 -0500, Bjorn Helgaas wrote:
> 
> PCI FW r3.2 says 0 means "the OS must not ignore config done by
> firmware."  That means we must keep the FW configuration intact.

So I tried implementing what you seem to want and it doesn't make sense
imho.

I think the wording of the spec is terrible and doesn't convey the
intent here.

What is it that _DSM #5 is about ? Is it about telling us that the FW
config shall not be trusted ? That seem to be its original intent based
on the existing wording and the fact that "1" says "may ignore".

Or was it always intended to be some kind of inverted logic with 0
meaning that we *must* preserve what FW did ?

But preserving what FW did was always the default for x86 and
Windows... It's just that we happen to do something wrong today on
Linux/ARM64 which is to always reassign everything.

The way Linux resource assignment works accross platforms has generally
been based on one of these 3 methods:

 - The standard x86 method, which is to claim what's there when it
doesn't look completely busted and has been assigned, then assign
what's left. This allows for FW doing partial assignment, and allows to
work around a number of BIOS bugs.

 - The "probe only" method. This was created independently on powerpc
and some other archs afaik. At least for powerpc, the reason for that
is some interesting virtualization cases where we just cannot touch or
change or move anything. The effect is to not reassign even what we
dont like, and not call pci_assign_unassign_resources().

 - The "reassign everything" method. This is used by almost all
embedded patforms accross archs. All arm32, all arm64 today (but we
agree that's wrong), all embedded powerpc etc... This is basically
meant for us not trusting whatever random uboot or other embedded FW,
if any, and do a full from-scratch assignment. There are issues in how
that is implemented accross the various platforms/archs, some for
example still honor existing bus numbers and some don't, but I doubt
it's intentional etc... but that method is there to stay.

Now, the questions are two fold

  - How do we map _DSM #5 to these, at least on arm64, maybe in the
long run we can also look at affecting x86, but that's less urgent.

  - How do I ensure the above fixes my Amazon platform ? :-)

There's one obvious thing here. If we don't want to break existing
things, then the absence of _DSM #5 must not change our existing
behaviour. I think we can all agree on this.

We might explore changing arm64 default behaviour as a second step
since we all agree it's not doing what it should, but we also know that
it will probably break some things so we need to be careful, understand
the issues and work around them. This isn't the scope of the initial
_DSM #5 patch.

That leaves us with the _DSM #5 present cases.

Now we have two values. What do they mean ? As I already said before,
the wording with "must not ignore" and "may ignore" is completely
useless and doesn't tell us a thing about the intention here. We don't
know why the FW folks may have put a given value here, and what they
expect us to do about it.

What we do know is that Seattle returns 1 and needs reassignment, and
we do know that the Amazon platforms return 0 and will want us to not
touch the existing setup.

However, does 1 means "business as usual" or does it mean "reassign
everything" ?

Does 0 means "probe only" ? Or do we still do an assignment pass for
things that the FW may have left unassigned ?

Today in Linux, the "probe only" logic tends to not call
pci_assign_unassigned_resources for example.

From a pure reading of the spec, there's an argument to be made that
both 0 and 1 values can lead to the same code that reads what's there
and reassign what's missing.

So this is a mess, a usual when it comes to specs written by
committees, but at this stage I'm at a loss as to what you want me to
do.

Cheers,
Ben.
 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
