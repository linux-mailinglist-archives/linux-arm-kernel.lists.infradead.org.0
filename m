Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBD8139518
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:44:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hf5ujH3As547Y1WKlqU0q4D08MSuUtzwNK40UP5pAcg=; b=fcCnJCSQpGcMOm
	/ZCFSnyvB+pjCsVEJKyXAdMBGTo5cstRl2IOH9hUJPe/IJOMRE2hH5IoH4Zp4O9a/XDFFVm9EZLN2
	Qs2Pq85JLuDBljU1kifbIQaPdfaP+izOKWPny4KoYNywMq7ZEC0IfqwN04VQ7Hn8md6IZppNSRhBF
	sykTZKRmLkn4OZiTeNcyY1US7gTa2TXsxp06SbOcCZd9SswDnyvHiZ5BO6TNQKszni0MkniyETINf
	sixvb0550KQMARRBZXzmuxz3AoUjgF+8bCPhHHNs1X+3AdTx669n8fG1VSW7rr/Uf0UoqHKw9vDsz
	VVY6aBDXpycrkryQeVbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir1t8-0000uG-25; Mon, 13 Jan 2020 15:44:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir1sy-0000tb-Il
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 15:44:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 17EF611B3;
 Mon, 13 Jan 2020 07:44:10 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8057F3F68E;
 Mon, 13 Jan 2020 07:44:08 -0800 (PST)
Date: Mon, 13 Jan 2020 15:44:04 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 01/17] arm64: entry: mark all entry code as notrace
Message-ID: <20200113154259.GA17782@lakrids.cambridge.arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-2-mark.rutland@arm.com>
 <6ac3017e-07cb-8ef4-c2e9-22a6fc8d8e24@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ac3017e-07cb-8ef4-c2e9-22a6fc8d8e24@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_074412_666963_5A887391 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, maz@kernel.org, robin.murphy@arm.com,
 broonie@kernel.org, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 catalin.marinas@arm.com, labbott@redhat.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 10:51:10AM +0530, Anshuman Khandual wrote:
> 
> 
> On 01/09/2020 12:26 AM, Mark Rutland wrote:
> > Almost all functions in entry-common.c are marked notrace, with
> > el1_undef and el1_inv being the only exceptions. We appear to have done
> > this on the assumption that there were no exception registers that we
> > needed to snapshot, and thus it was safe to run trace code that might
> > result in further exceptions and clobber those registers.
> > 
> > However, until we inherit the DAIF flags, our irq flag tracing is stale,
> > and this discrepancy could set off warnings in some configurations.
> 
> Could you give some example scenarios when this might happen ?

With CONFIG_DEBUG_LOCKDEP, any locked-instrumented function which calls
check_flags() would trigger this. So if your trace function does any
sort of lock manipulation it's liable to set this off.

I'll amend the above:

| However, until we inherit the DAIF flags, our irq flag tracing is
| stale, and this discrepancy could set off warnings in some
| configurations (e.g. with CONFIG_DEBUG_LOCKDEP).

I also hope that flag checking is performed more generally in future,
since at the moment it's only strictly performed for locking operations.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
