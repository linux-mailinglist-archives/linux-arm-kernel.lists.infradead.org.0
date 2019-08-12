Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D252F89D76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXOuIhbPH3Udhve3wPoIt7vDIbGm3GwRP7OMQ4Vurx8=; b=LRheFGQnKhR6+k
	PlM3UEBBhzqSXmxxxVAZCtbiOrr0fLv590SH/IyhPzCI7j/DIbH1tp/BUxKZDF/dNV3jdHMUMf7DD
	G4ZpPnwed75qX7yZG6NOb8FthotQR6FtMoWdnKIDG2LKNU9fz4w5T5/7gFXv4zxl/DjEfL/Ayrczv
	O+NgTVzkc1PbyU+4woIzcP25yRQEiM1IyRnR5HmH7RxtkY7xzpU1aN6V2tjEBD1f96j5oOIyx731H
	8D1Tc77V3sCqwmfTFfb8Ox3tFfcaQUEKLpmyWyMZ6IjUS7yj6/LlffRhNrd94GwbjIw6/mZkWgiyC
	GFZOG4E+lnDn56Lf4xng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8z7-0003TI-4L; Mon, 12 Aug 2019 11:59:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8yn-0003SX-Ky
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 11:59:14 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 119E3206DF;
 Mon, 12 Aug 2019 11:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565611152;
 bh=vBt+QSKBMMCiqKR4EJbOKmSTXRlZV73GsGzL2FwUFJ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fNg4o/1DEJKQAm6uBrNHwHIN+mT16FEFUIdmxoWSh26piY5b/OFu3/R6KVvSGZyVE
 LBmqq11G1+mi2FqfDTde3aOME9v4BE4eoQl+JtsT9nCU4AnoXyK+r1BLkCwUIX3zq/
 nIZfbgFk7V6RTyvRIDL0O3KVu3itpDSJYE/adOOA=
Date: Mon, 12 Aug 2019 12:59:07 +0100
From: Will Deacon <will@kernel.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH v4 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
Message-ID: <20190812115907.kugk57jvv3g2r66a@willie-the-truck>
References: <20190808204007.30110-1-jeremy.linton@arm.com>
 <20190808204007.30110-2-jeremy.linton@arm.com>
 <20190808222518.5q4fhd2tvs4lb6aw@rric.localdomain>
 <CAJZ5v0imn0X=M38LJcwe76gfLafWGU+MgyGd=NuKAeDtNZ+1DQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0imn0X=M38LJcwe76gfLafWGU+MgyGd=NuKAeDtNZ+1DQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_045913_712194_1A935BAC 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "rric@kernel.org" <rric@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, Jeremy Linton <jeremy.linton@arm.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "lenb@kernel.org" <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 11:06:07AM +0200, Rafael J. Wysocki wrote:
> On Fri, Aug 9, 2019 at 12:25 AM Robert Richter <rrichter@marvell.com> wrote:
> >
> > On 08.08.19 15:40:06, Jeremy Linton wrote:
> > > ACPI 6.3 adds a flag to the CPU node to indicate whether
> > > the given PE is a thread. Add a function to return that
> > > information for a given linux logical CPU.
> > >
> > > Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> > > Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> > > ---
> > >  drivers/acpi/pptt.c  | 53 +++++++++++++++++++++++++++++++++++++++++++-
> > >  include/linux/acpi.h |  5 +++++
> > >  2 files changed, 57 insertions(+), 1 deletion(-)
> >
> > Reviewed-by: Robert Richter <rrichter@marvell.com>
> 
> Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> 
> and please push it through ARM64 along with the second patch.

Thanks. I'll push these into -next shortly.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
