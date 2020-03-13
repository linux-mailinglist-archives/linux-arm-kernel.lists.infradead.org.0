Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB633184643
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 12:53:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/y+bs+qhBSKgMSbGp0oHdzP+Mh6NZbE40G+ircmHaA=; b=MeUMHXL3kduX8K
	nH/CuwDZIMGn4947JXbKab0DthQ08wyMvYR+oJKRNQh7wJFCxEAa4GZ+Tzg2SJ8ewBX9eTVcV5Mon
	RNPLgqCG3RPpDT23QNtrlaig9ZP7z/AUH78optYbCjlNmDPhsFbxYO4mdvlErTr6mRhtKly/FILMo
	xqlqw09dbh2HIF/FsRnxe4APwT48nDgocV4If6P1xySnzLFFtoe5tP+q7u65tsNjX+fUpoMe2QPET
	J3+uya9SNzyHPTqCr/fciz/+mHHQoTK2jzl1CmvYqsGyESBY/Y6sl8grLba7OgheVivJzZ61M4X3x
	U2YMEBZbZWN58rP9bneQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCisO-0005gB-Bs; Fri, 13 Mar 2020 11:53:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCisC-0005ea-Tn
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 11:53:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9724D30E;
 Fri, 13 Mar 2020 04:53:03 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E6E923F534;
 Fri, 13 Mar 2020 04:53:02 -0700 (PDT)
Date: Fri, 13 Mar 2020 11:53:00 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: James Clark <james.clark@arm.com>
Subject: Re: [PATCH v6 0/3] perf tools: Add support for some spe events
Message-ID: <20200313115300.GE42546@lakrids.cambridge.arm.com>
References: <20200228160126.GI36089@lakrids.cambridge.arm.com>
 <20200306152520.28233-1-james.clark@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306152520.28233-1-james.clark@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_045305_008732_2EC08378 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: nd@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 03:25:17PM +0000, James Clark wrote:
> Hi Mark,
> 
> Yes I think this is something I can look into. For now I have removed
> that last patch because the current patch set already works very similarly anyway
> and allows people to use SPE in perf:
> 
>     ./perf record -e arm_spe_0/branch_filter=1/
> vs
>     ./perf record -e arm_spe/branch-misses/pp

Thanks, FWIW that looks fine to me.

> Also I don't have access to any big.LITTLE hardware with SPE so wouldn't be able
> to test collating all the SPE PMUs.

Likewise, I just want to make sure we don't back ourselves into a
corner.

Otherwise, I have no comments on these patches, so feel free to take
that as:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> 
> Thanks
> James
> 
> Tan Xiaojun (3):
>   perf tools: Move arm-spe-pkt-decoder.h/c to the new dir
>   perf tools: Add support for "report" for some spe events
>   perf report: Add SPE options to --itrace argument
> 
>  tools/perf/Documentation/itrace.txt           |   5 +-
>  tools/perf/util/Build                         |   2 +-
>  tools/perf/util/arm-spe-decoder/Build         |   1 +
>  .../util/arm-spe-decoder/arm-spe-decoder.c    | 225 ++++++
>  .../util/arm-spe-decoder/arm-spe-decoder.h    |  66 ++
>  .../arm-spe-pkt-decoder.c                     |   0
>  .../arm-spe-pkt-decoder.h                     |   2 +
>  tools/perf/util/arm-spe.c                     | 747 +++++++++++++++++-
>  tools/perf/util/auxtrace.c                    |  13 +
>  tools/perf/util/auxtrace.h                    |  13 +-
>  10 files changed, 1032 insertions(+), 42 deletions(-)
>  create mode 100644 tools/perf/util/arm-spe-decoder/Build
>  create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.c
>  create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.h
>  rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.c (100%)
>  rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.h (96%)
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
