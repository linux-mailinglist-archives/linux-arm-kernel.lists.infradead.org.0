Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05D71E1F98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZjkPznzoudT68fecFLyxeaPDaiMjKcy/3Oqkf0qa8s=; b=M8KT9gMwFoZLOZ
	coN8NPaghVIsN9ksBw1G6oNA+TbEZpgyMPz2VWJP0FkezDJAhC+Smb8IgOec0pQKlovZarf/jrCeE
	jWnMNGV4x5HbOj/mTDwkni8kSFM1zmpabJYbunhpl33q4FWZQsOmSb4SByh8mpJNLIzrVVzgJRT+k
	eO8aNQ3Ipt8CLs34Yo39CyYVwWmgeZ2edqivuZ45LxXvl4nRM2b2Sc2YowBw1CzPic34wq8GWt2e5
	eWuXK39LeJvh2RYbT2M6CTTDql7/LgVYKYc6twq5IOEiH1Ss7cwQJWaruOAIYL8aaLcJu5n9wiLXf
	dKmGCeTTlcGrISv7VSkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdWmq-0004O6-Ln; Tue, 26 May 2020 10:26:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdWmf-0004Nf-2d
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:26:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72C1A20776;
 Tue, 26 May 2020 10:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590488768;
 bh=lmcLb8+M+6Qz8n5wFOSYGTrAgIGliGsm6Wgl/neWLe0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d5HGb9WmqFFPwxXwxPi1zRvi8opVRLcbwCw1s6EbDHTiGStc7Dg2K91bx0xK3Wc6p
 hyc0qAhNV97ABhWDV0r1bgYfa5nDac6nFZlQsZZ57G9GDeKnbTE77OSGFQi1PZ4smQ
 MPvwush2j+LLXl9aeZ6h/vebHCCq6xFa87z+7bbY=
Date: Tue, 26 May 2020 11:26:03 +0100
From: Will Deacon <will@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v7 0/3] perf arm-spe: Add support for synthetic events
Message-ID: <20200526102602.GA27166@willie-the-truck>
References: <20200504115625.12589-1-leo.yan@linaro.org>
 <20200522030919.GE32389@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522030919.GE32389@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_032609_134372_0D33ED6A 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 11:09:19AM +0800, Leo Yan wrote:
> On Mon, May 04, 2020 at 07:56:22PM +0800, Leo Yan wrote:
> > This patch set is to support synthetic events with enabling Arm SPE
> > decoder.  Since before Xiaojun Tan (Hisilicon) and James Clark (Arm)
> > have contributed much for this task, so this patch set is based on their
> > privous work and polish for the version 7.
> > 
> > The main work in this version is to polished the core patch "perf
> > arm-spe: Support synthetic events", e.g. rewrite the code to calculate
> > ip, packet generation for multiple types (L1 data cache, Last level
> > cache, TLB, remote access, etc).  It also heavily refactors code for
> > data structure and program flow, which removed unused fields in
> > structure and polished the program flow to achieve neat code as
> > possible.
> > 
> > This patch set has been checked with checkpatch.pl, though it leaves
> > several warnings, but these warnings are delibarately kept after
> > reviewing.  Some warnings ask to add maintainer (so far it's not
> > necessary), and some warnings complaint for patch 02 "perf auxtrace:
> > Add four itrace options" for the text format, since need to keep the
> > consistency with the same code format in the source code, this is why
> > this patch doesn't get rid of checkpatch warnings.
> 
> Gentle ping ...
> 
> It would be appreciate if can get some review for this patch set.

I was hoping that James Clark would have a look, since he was the last
person to go near the userspace side of SPE.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
