Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8F52CBA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ej1DBAHpr1oVfkgAfdR7lgTrnisUCJbMwH3W064RH/0=; b=ueM9N5JPiNtAyA
	MgGkgjD8zIl43Hzik8kM+gUeQLlbRAbTIChOuD26sOiL/GrphuSITmq4h7YyGHb1f8zYY4lldmDl0
	y5dHpjqFAW9tJJVXdEsY9WMXhoiZqVUTjBJ0TDx/AZtLFRxnVxvb7/ThqnGo4D+QQ6Nw556SEHFD9
	0erbnFnLxVscnxDruz2RbgJ4xyMSXNMTJYTBVlWR5NyCvj0jtnVsKMDemo5xJbCsfKU46t6WIW7Zp
	DNqGRqRf5sv+MwKz0d9bVN3MfY1sRe0pjbZCZVadj5hNs6erktQPWaqSvbP9PvgGGa/2Rv2iqc/HH
	C06YzcCmxux2AfMrqUaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVenm-0004B3-By; Tue, 28 May 2019 16:18:14 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVemE-0002nF-6w
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:17:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA04C341;
 Tue, 28 May 2019 09:16:37 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E9923F59C;
 Tue, 28 May 2019 09:16:36 -0700 (PDT)
Date: Tue, 28 May 2019 17:16:33 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: [RFC 1/7] perf: arm64: Compile tests unconditionally
Message-ID: <20190528161633.GB28492@lakrids.cambridge.arm.com>
References: <20190528150320.25953-1-raphael.gault@arm.com>
 <20190528150320.25953-2-raphael.gault@arm.com>
 <20190528151938.GC13830@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528151938.GC13830@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091639_158541_2DA0CC09 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, Raphael Gault <raphael.gault@arm.com>,
 mingo@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 12:19:38PM -0300, Arnaldo Carvalho de Melo wrote:
> Em Tue, May 28, 2019 at 04:03:14PM +0100, Raphael Gault escreveu:
> > In order to subsequently add more tests for the arm64 architecture
> > we compile the tests target for arm64 systematically.
> 
> Humm, the subject doesn't match the description? I.e. it _was_
> unconditionally built, now it is only built if CONFIG_DWARF_UNWIND is
> set to 'y'.

Perhaps it's hard to read, but we haven't introduced new conditionality.

Previously we'd only build the tests directory if CONFIG_DWARF_UNWIND
was selected, so tests/dwarf-unwind.o was always dependent on that.

Now we always try to build the tests directory, and move the
CONFIG_DWARF_UNWIND guard specifically to tests/dwarf-unwind.o.

Thanks,
Mark.

> 
> - Arnaldo
>  
> > Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> > ---
> >  tools/perf/arch/arm64/Build       | 2 +-
> >  tools/perf/arch/arm64/tests/Build | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/tools/perf/arch/arm64/Build b/tools/perf/arch/arm64/Build
> > index 36222e64bbf7..a7dd46a5b678 100644
> > --- a/tools/perf/arch/arm64/Build
> > +++ b/tools/perf/arch/arm64/Build
> > @@ -1,2 +1,2 @@
> >  perf-y += util/
> > -perf-$(CONFIG_DWARF_UNWIND) += tests/
> > +perf-y += tests/
> > diff --git a/tools/perf/arch/arm64/tests/Build b/tools/perf/arch/arm64/tests/Build
> > index 41707fea74b3..a61c06bdb757 100644
> > --- a/tools/perf/arch/arm64/tests/Build
> > +++ b/tools/perf/arch/arm64/tests/Build
> > @@ -1,4 +1,4 @@
> >  perf-y += regs_load.o
> > -perf-y += dwarf-unwind.o
> > +perf-$(CONFIG_DWARF_UNWIND) += dwarf-unwind.o
> >  
> >  perf-y += arch-tests.o
> > -- 
> > 2.17.1
> 
> -- 
> 
> - Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
