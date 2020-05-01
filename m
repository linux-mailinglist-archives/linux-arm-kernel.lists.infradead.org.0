Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6E31C1545
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 15:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVEvcrkObox3K75zijZNfrttLW8/+Mb5PIMUNhoEySc=; b=R9ev7z/VT6/EeI
	tU+d3JKcRIXd9ISUp0nrDoNRKEh4vMQPQiylKg4PfhE1fl/3AcBdo2/jVJTc5aDzZ+/Dk8u/rUZrz
	cfqgMWlhOkc0San8dPIoQsWXjUGC+Xn09aNKYrQQHz6SQi49H3d6NkVV6XNINsMeO7ROVnG5YGz96
	7dszwBD9kbzyE2fuLebv7CmOOdyQLAj4WTjiIrM6oUsXOtYbbh+Tf9Ahx+mO0dg68gIwNCHAjbuA2
	YNWt1GlDjeqksZ7rKOYLiohOgWgZRX1qaeUyVHMIVmLbXxAryonDU3Ug8LRhxlTH1CM52rTfmsSAP
	hEJ344DY+OHFgZekhTOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUW3X-0004h7-1d; Fri, 01 May 2020 13:50:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUW3H-0004Jz-Uz
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 13:50:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F6BB1FB;
 Fri,  1 May 2020 06:50:03 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD9BA3F68F;
 Fri,  1 May 2020 06:50:01 -0700 (PDT)
Date: Fri, 1 May 2020 14:49:56 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH RFC 2/2] ACPI/IORT: work around num_ids ambiguity
Message-ID: <20200501134956.GA7240@e121166-lin.cambridge.arm.com>
References: <20200501095843.25401-1-ardb@kernel.org>
 <20200501095843.25401-3-ardb@kernel.org>
 <e3c7bdab-a2b0-d7c9-5c7b-eee680509338@arm.com>
 <CAMj1kXH0mcK3N94=uOuiL2_iy=eWhsnoXhvfiXv_kQ_j=F2a_Q@mail.gmail.com>
 <18e01ac7-974e-8308-c18c-67aa3fd7ad4e@arm.com>
 <CAMj1kXHsXEmaLuVBo7cgdzHju22WKksu7s3B3-hBE4mYhnuJ=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXHsXEmaLuVBo7cgdzHju22WKksu7s3B3-hBE4mYhnuJ=Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_065004_042453_00DBC798 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, Pankaj Bansal <pankaj.bansal@nxp.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 03:10:59PM +0200, Ard Biesheuvel wrote:

[...]

> > >> If we silently fix things up, then people will continue to write broken
> > >> tables without even realising, new OSes will have to implement the same
> > >> mechanism because vendors will have little interest in changing things
> > >> that have worked "correctly" with Linux for years, and we've effectively
> > >> achieved a de-facto redefinition of the spec. Making our end of the
> > >> interface robust is obviously desirable, but there still needs to be
> > >> *some* incentive for the folks on the other end to get it right.
> > >>
> > >
> > > Agreed. But at least we'll be able to detect it and flag it in the
> > > general case, rather than having a special case for D05/06 only
> > > (although I suppose splitting the output ranges like those platforms
> > > do is rather unusual)
> >
> > Yup, in principle the fixed quirk list gives a nice reassuring sense of
> > "we'll work around these early platforms and everyone from now on will
> > get it right", but whether reality plays out that way is another matter
> > entirely...
> 
> The reason I am looking into this is that I think the fix should go to
> stable, given that the current situation makes it impossible to write
> firmware that works with older and newer kernels.

Yes. If we do remove the quirk the sooner we do it the better to
reduce the stable patches.

> Lorenzo said he wouldn't mind taking the current version with ACPI OEM
> ID matching back to -stable, but it's another quirk list to manage,
> which I would prefer to avoid.
> 
> But I don't care deeply either way, to be honest, as long as we can
> get something backported so compliant firmware is not being penalized
> anymore.

Question: if we remove the iort_workaround_oem_info stuff but we *do*
keep the existing apply_id_count_workaround flag and we set it by going
through all the mappings at boot time and detect if any of these
off-by-one conditions apply - would the resulting code be any simpler ?

The global flag would apply (as it does now) to _all_ mappings but it is
very likely that if the off-by-one firmware bug is present it applies to
the IORT table as a whole rather than a single mapping entry.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
