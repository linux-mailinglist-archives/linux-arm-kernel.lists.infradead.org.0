Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F5218A3B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 21:24:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTS1QTPorXz7o0eRhjPqR/b985YKUlS3XGnVTXXjpiE=; b=bK/gj693dpLfUm
	5DUuRjmtTvos33OQ6I+0qS4jmnL3n/yS+xPXe0mUKSCLHRMCqbnmwQeMdV8P9iL5I8y7X+kJGl72S
	l5xJmpsOIEE5kB7cESgPT2buZPu/PX/QGPP43BTXrUTQCDVMcVchZ3fWdmM71antWMJVr/c/h/5Yb
	bMU1KH0m1z6yqYlb47Al4slk013dMoa3XtG8nGBV8n8x2G5foePbh0JUdC9kaaVecAGPsfVhUZ0sM
	AHWW76IEhEtjpRl4f2j3hvvf9VBt4KrI8giDUH2yx8LekVDCQg52vLSiGLaJ6GMkftVJIz8STJZAX
	Now7+d4+/yj642rhcQXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEfEY-0001q0-B8; Wed, 18 Mar 2020 20:24:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEfEP-0001pN-Vr
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 20:24:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B07F2077A;
 Wed, 18 Mar 2020 20:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584563041;
 bh=8+isRKIpD31NteyXOn+rVN6+vqq+smaVnpeboarmzRc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2J+KYlaa9WCmGtmPy+aN4+DmQ30/aLbe+Vz44pF/bohc88X+K5kdbGYHEJtpSymwo
 rTqUCddn+HabtoBjAR59pFFKFihqJDBCAbBR7ntYTq78f5HRMau2AkgC6xYs4tTa7q
 Jmi23uZGmd8WZhdo/yrGt/nHiYC2Y2Vcg1BL8/YI=
Date: Wed, 18 Mar 2020 20:23:57 +0000
From: Will Deacon <will@kernel.org>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Subject: Re: [PATCH] driver/perf: Add PMU driver for the ARM DMC-620 memory
 controller.
Message-ID: <20200318202356.GB7463@willie-the-truck>
References: <1584491381-31492-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200318160202.0000032c@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318160202.0000032c@Huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_132402_047774_9E5BDE9D 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Tuan Phan <tuanphan@os.amperecomputing.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 04:02:02PM +0000, Jonathan Cameron wrote:
> On Tue, 17 Mar 2020 17:29:38 -0700
> Tuan Phan <tuanphan@os.amperecomputing.com> wrote:
> > +/* User ABI */
> > +#define ATTR_CFG_FLD_mask_CFG		config
> > +#define ATTR_CFG_FLD_mask_LO		0
> > +#define ATTR_CFG_FLD_mask_HI		44
> > +#define ATTR_CFG_FLD_match_CFG		config1
> > +#define ATTR_CFG_FLD_match_LO		0
> > +#define ATTR_CFG_FLD_match_HI		44
> > +#define ATTR_CFG_FLD_invert_CFG		config2
> > +#define ATTR_CFG_FLD_invert_LO		0
> > +#define ATTR_CFG_FLD_invert_HI		0
> > +#define ATTR_CFG_FLD_incr_CFG		config2
> > +#define ATTR_CFG_FLD_incr_LO		1
> > +#define ATTR_CFG_FLD_incr_HI		2
> > +#define ATTR_CFG_FLD_event_CFG		config2
> > +#define ATTR_CFG_FLD_event_LO		3
> > +#define ATTR_CFG_FLD_event_HI		8
> > +
> > +#define __GEN_PMU_FORMAT_ATTR(cfg, lo, hi)			\
> > +	(lo) == (hi) ? #cfg ":" #lo "\n" : #cfg ":" #lo "-" #hi
> > +
> > +#define _GEN_PMU_FORMAT_ATTR(cfg, lo, hi)			\
> > +	__GEN_PMU_FORMAT_ATTR(cfg, lo, hi)
> > +
> > +#define GEN_PMU_FORMAT_ATTR(name)				\
> > +	PMU_FORMAT_ATTR(name,					\
> > +	_GEN_PMU_FORMAT_ATTR(ATTR_CFG_FLD_##name##_CFG,		\
> > +			     ATTR_CFG_FLD_##name##_LO,		\
> > +			     ATTR_CFG_FLD_##name##_HI))
> > +
> > +#define _ATTR_CFG_GET_FLD(attr, cfg, lo, hi)			\
> > +	((((attr)->cfg) >> lo) & GENMASK(hi - lo, 0))
> 
> Hmm. I see this came form SPE pmu.
> 
> Personally I'd argue this makes the code harder to read than doing
> most of it long hand.  Ah well.

I agree that it's harder to read, but I did it this way in the SPE driver
so that the user ABI is always in sync with what the driver thinks, because
the accessors and the sysfs bits are all generated from the same constants.
If you screw that up, then it's really hard to fix without breaking
userspace.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
