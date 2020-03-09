Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D9917E256
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 15:11:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6S+Pa945n54twGsN/9ufZ5iwIIehXnzR/uuWqafK+M=; b=QAMDxoXy5dPPWz
	5NFZbxvfwR5RtDkrmvJiWIzh86ZzCDnm1t+fmrLPefQC8aSUWpjFiFRpIAe27X4lg/MFilyzVYXzs
	6b5irs7dOKBykmSc9cwrQS786evsRvQXvPm4TsiiePPwDxVRxnugQbcD9iOgC4/ZnXwSswhVBGPh2
	+utkeSeTrOzgQzj4aTsgFxeuwdoTUlxqVjBRgFeJaGVYeqniNWJouNrYcK++vOMtpk6c0JVTwOdxg
	jdBlGrKRtHre2gDmJmRrwKUK70DXkhb3OdP9orcRX+JdXSJtcoIo5j1YdIbcjO9v8YuqLr07K+tZw
	7cuIYXAAQQh+VzPsMyUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJ85-0000iL-Mu; Mon, 09 Mar 2020 14:11:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJ7Z-0000Ic-Rl
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 14:11:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C1F830E;
 Mon,  9 Mar 2020 07:11:03 -0700 (PDT)
Received: from localhost (e108754-lin.cambridge.arm.com [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C8F53F67D;
 Mon,  9 Mar 2020 07:11:03 -0700 (PDT)
Date: Mon, 9 Mar 2020 14:11:01 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v6 0/7] arm64: ARMv8.4 Activity Monitors support
Message-ID: <20200309141101.GA13343@arm.com>
References: <20200305090627.31908-1-ionela.voinescu@arm.com>
 <20200306112134.GD2503422@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306112134.GD2503422@arrakis.emea.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_071105_954731_1BCA2EBC 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, pkondeti@codeaurora.org,
 maz@kernel.org, linux-pm@vger.kernel.org, linux-doc@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, dietmar.eggemann@arm.com,
 peterz@infradead.org, mingo@redhat.com, linux-arm-kernel@lists.infradead.org,
 viresh.kumar@linaro.org, will@kernel.org, valentin.schneider@arm.com,
 lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin, Sudeep,

On Friday 06 Mar 2020 at 11:21:34 (+0000), Catalin Marinas wrote:
> Hi Ionela,
> 
> On Thu, Mar 05, 2020 at 09:06:20AM +0000, Ionela Voinescu wrote:
> > v5 -> v6
> >  - v5 can be found at [7]
> >  - The current series is based on arm64/master [8].
> 
> arm64/master is just some random point in the Linus tree, I didn't
> realise people are using it. I moved it to v5.6-rc3 as that's the base
> for the final arm64 for-next/core.
> 
> >  - [1/7] kernel parameter removed as Catalin recommended
> >  - [2/7, 4/7] changelog and documentation changed to remove information
> >    about the removed kernel parameter
> >  - [2/7, 3/7, 6/7] collected reviewed-by and acked-by from James,
> >    Marc and Lukasz.
> 
> The series looks fine. Once Sudeep reviews/acks the arch topology patch,
> I'll queue the patches.
>

Thank you both!

Ionela.

> Thanks.
> 
> -- 
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
