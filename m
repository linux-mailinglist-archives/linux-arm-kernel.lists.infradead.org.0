Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01231881E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 12:21:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LRcc0lqcanxbkPf8VWO9CRFHIIwDnR0xOVOe4d9FCY=; b=Zx3bUqzgNjPi4T
	QK+ktfU8BX7TO3ssiJ6cMqNDmqhNnJfz+406yCxjy4RIa/NyBMNpeIjmCIeuqZajPZTgPSqANsyXU
	AErytkeoYT2S06QADi2aJGR1RRoUWqb51hnn8r4DiqWbNaK1fnIeL4h+B/Z6WQfbHS3uhyMQNQgdR
	ObWISrC+T2RWrpbFy/xvaixXAe3QPGGiQ7FfXowSFvXqkmjmvyoWJ8a/e0p1Z+nimzqRBMV27Hf4c
	1Zv5LlWJh44y0Jn3DOC9zVOrxy1DxXg3VRB5ITA/mqguMB6HYMRHdNeYfmm6k1uI21k+3XCPbpp2/
	gYY89bOkgrYkJfgqHGUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEAHz-0007zn-50; Tue, 17 Mar 2020 11:21:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEAHr-0007zP-5B
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 11:21:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2DB121FB;
 Tue, 17 Mar 2020 04:21:30 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 48B033F534; Tue, 17 Mar 2020 04:21:29 -0700 (PDT)
Date: Tue, 17 Mar 2020 11:21:27 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Qais Yousef <qais.yousef@arm.com>
Subject: Re: [PATCH v3 05/15] arm64: Don't use disable_nonboot_cpus()
Message-ID: <20200317112127.GA632169@arrakis.emea.arm.com>
References: <20200223192942.18420-1-qais.yousef@arm.com>
 <20200223192942.18420-6-qais.yousef@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223192942.18420-6-qais.yousef@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_042131_240301_173AA265 
X-CRM114-Status: GOOD (  11.61  )
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, "Paul E . McKenney" <paulmck@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 07:29:32PM +0000, Qais Yousef wrote:
> disable_nonboot_cpus() is not safe to use when doing machine_down(),
> because it relies on freeze_secondary_cpus() which in turn is
> a suspend/resume related freeze and could abort if the logic detects any
> pending activities that can prevent finishing the offlining process.
> 
> Beside disable_nonboot_cpus() is dependent on CONFIG_PM_SLEEP_SMP which
> is an othogonal config to rely on to ensure this function works
> correctly.
> 
> Use `reboot_cpu` variable instead of hardcoding 0 as the reboot cpu.
> 
> Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> CC: Catalin Marinas <catalin.marinas@arm.com>
> CC: Will Deacon <will@kernel.org>
> CC: linux-arm-kernel@lists.infradead.org
> CC: linux-kernel@vger.kernel.org

I'm not sure whether these patches have been queued already (still
unread in my inbox), so here it is:

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
