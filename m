Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC1016FBEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 11:22:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eApWE6XNoiGr8s157GFf5iF/AzwNr2T6k/Z3YAtunGE=; b=V0IAUb2NFhNOLI
	lVHOBEZkCMIIbaSwlkYHK9gkLALbxchaLNRzQYjCBiX/AsEnAVoLU5s/OkbqSs16+RsDBowWHkNKJ
	TLBj9uywfJALV12eMNRVC2sy8WwwuQACmf4M8xF9bULS/enP+xEchJt1PL53F9xRKd1sw3/oy36uT
	3DVfzIsJe+zvTxTKgQBR8zCOPXxR/bsbeBxPrgQ1kxOxcqh4lrgdXXUnAQzsNmT1FdgEAynpelUMQ
	btTRy7NLAX2VFErFzfREEyLvm25yKg5rQcjR0pzIacBw8Lygrc9G6DGLPQRXN2z0/QQY0MISdhWsK
	Re4FCJd7r5MTCFmroIsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tpg-0004du-2p; Wed, 26 Feb 2020 10:22:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tpV-0004dT-RR
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 10:22:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 891421FB;
 Wed, 26 Feb 2020 02:22:12 -0800 (PST)
Received: from localhost (unknown [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A7F23F9E6;
 Wed, 26 Feb 2020 02:22:12 -0800 (PST)
Date: Wed, 26 Feb 2020 10:22:10 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Pavan Kondeti <pkondeti@codeaurora.org>
Subject: Re: [PATCH v4 6/7] arm64: use activity monitors for frequency
 invariance
Message-ID: <20200226102210.GB19513@arm.com>
References: <20200224141142.25445-1-ionela.voinescu@arm.com>
 <20200224141142.25445-7-ionela.voinescu@arm.com>
 <20200226095134.GM28029@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226095134.GM28029@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_022213_946928_1E0D3A58 
X-CRM114-Status: GOOD (  13.34  )
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 dietmar.eggemann@arm.com, mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com, will@kernel.org,
 valentin.schneider@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavan,

On Wednesday 26 Feb 2020 at 15:21:34 (+0530), Pavan Kondeti wrote:
> On Mon, Feb 24, 2020 at 02:11:41PM +0000, Ionela Voinescu wrote:
> 
> [...]
> 
> > +static int __init init_amu_fie(void)
> > +{
> > +	cpumask_var_t valid_cpus;
> > +	bool have_policy = false;
> > +	int cpu;
> > +
> > +	if (!zalloc_cpumask_var(&valid_cpus, GFP_KERNEL) ||
> > +	    !zalloc_cpumask_var(&amu_fie_cpus, GFP_KERNEL))
> > +		return -ENOMEM;
> 
> The patch looks good to me. one minor comment here. In an unlikely
> scenario, valid_cpus which is a temporary mask can get allocated
> but amu_fie_cpus may not. In that case, we have to free valid_cpus
> here. I have seen some static code inspection tools catching these
> type of errors. If you happen to rebase this series, fix this.
> 

Thank you for the review!

I am just about to push v5 and I'll add this fix as well.

Thank you,
Ionela.

> Thanks,
> Pavan
> 
> -- 
> Qualcomm India Private Limited, on behalf of Qualcomm Innovation Center, Inc.
> Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
