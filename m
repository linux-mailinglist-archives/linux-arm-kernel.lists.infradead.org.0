Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BECC1409E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 13:45:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWfnwk9mNrBTECg45arW+AIMRIsR/lb1jdD5VrZvVAA=; b=sT+hxDhhVvaRf0
	M+vPWfhpbrhVx20t5OTHDo22rfhcln1apDmpJiZ55JBuXqD2I2REftVRAp/AdTfWYpVfq7K8VLnhu
	mI2MUOtpJLqCLVLWa+7uc5L5EkPMcwdSTpQZTwvdVq4tvBFeIsYjUlLhHLu57kS4tBXwHv68HBgvF
	5xp7AwHSQJxmSwkdBTWlBbnUmzsck5ANErKHO+E5/XUwrS+JhRcoKtwnQQhCg3cKa1ORVgYsZW1Pp
	olfGya9AbS5TEbfOa70RL3T6NeTqhOqhR2GJevIHzdqFaCbJ+TGjHHqH1KXT7Txns//ur+PJg+WZe
	CLH5X1rK8xIbKXZIvSsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isQzp-0007M2-IW; Fri, 17 Jan 2020 12:45:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isQzb-0007La-29
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 12:44:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5503120730;
 Fri, 17 Jan 2020 12:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579265090;
 bh=zPwtUVW8q+p3YGHy4YZsdaGNdFuKXjOFb6ZDNggBGM4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dkfq2y9na1BRPh97ABqmiHjVIOABPVUMPl12zX8yYbN/6KPKN1dbvK/W3HV5VRfnQ
 UxaiXtYNrJv7axoB1b77/YJ/Jvr4M1DJxpw/ye3umkf9deT6kPdh0ThpoZMPAi8QAv
 nibITdBqQU1f7UUnt/wp+eOE4prYJrXkvU3IF7ME=
Date: Fri, 17 Jan 2020 12:44:45 +0000
From: Will Deacon <will@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH v2] ACPI/IORT: Fix 'Number of IDs' handling in
 iort_id_map()
Message-ID: <20200117124444.GC8199@willie-the-truck>
References: <1579004051-48797-1-git-send-email-guohanjun@huawei.com>
 <20200117121448.GA8199@willie-the-truck>
 <20200117123226.GA9918@e121166-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117123226.GA9918@e121166-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_044451_124361_0F40C486 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: John Garry <john.garry@huawei.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 linuxarm@huawei.com,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-acpi@vger.kernel.org,
 Tyler Baicar <baicar@os.amperecomputing.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 12:32:26PM +0000, Lorenzo Pieralisi wrote:
> On Fri, Jan 17, 2020 at 12:14:49PM +0000, Will Deacon wrote:
> > On Tue, Jan 14, 2020 at 08:14:11PM +0800, Hanjun Guo wrote:
> > > Reported-by: Pankaj Bansal <pankaj.bansal@nxp.com>
> > > Link: https://lore.kernel.org/linux-acpi/20191215203303.29811-1-pankaj.bansal@nxp.com/
> > > Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> > > Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Cc: Pankaj Bansal <pankaj.bansal@nxp.com>
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > Cc: Robin Murphy <robin.murphy@arm.com>
> > > ---
> > 
> > I'm a bit confused about the SoB chain here and which tree this is
> > targetting.
> > 
> > Lorenzo?
> 
> sorry about that. It targets arm64 - previously wasn't addressed
> to you and Catalin:
> 
> https://lore.kernel.org/linux-arm-kernel/1577708824-4873-1-git-send-email-guohanjun@huawei.com/
> 
> I rewrote the commit log and asked Hanjun to repost it to target an arm64
> merge.

No need to apologise, just trying to figure out what's going on. Thanks for
the explanation.

> Having said that, this patch makes me nervous, it can break on platforms
> that have non-compliant firmware, I wonder whether it is best to leave
> it in -next for a whole cycle (I can send it to -next) to catch any
> fall-out rather than targeting v5.6 given that technically is _not_ a
> fix (we may even have to revert it - it requires coverage on all ARM64
> ACPI systems).
> 
> What do you think ?

My experience with linux-next is that it doesn't get tonnes of runtime
testing but rather lots of build testing, so I'd be inclined to queue
this for 5.6 (i.e. for the upcoming merge window) and revert it the moment
it causes a problem.

I'll stick it on its own branch so we can also drop it if something comes
up before then.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
