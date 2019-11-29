Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E181910D52F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 12:50:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACadysokeUMrJVs6l1B7sFS7w14Y+VcYPbnpbz5mVMI=; b=ly4pI+yOjBSmHx
	UK8OREwXqiHRZURSirtWdnBT8ca5Bjm5xJhKOIRUDKzUjb65v3fF0RMW3VGeDtx0sKP77ub9cMer/
	sSrwOY8uKBp5uY873h6B/3L3rfGcZ1InNbp+MKt0URTbwgOFc7/UTuEViK7x77ZydON+SMBVTVKAz
	+2uT7ulHXMQ+8O57VwuKQs6AcbKkH97aJufF7xO8wLEK8pgD+Kk1V81/A3i42IIXEvsRF/qgoeTm5
	yECWhufWXGQ9GhgKsdr3RFam1xf3/1joYrFyYau0GuaWuKNLnIANYzBYsurxPhyjYX6lrwvclS4RU
	xNHKcJ+AaUa/rkPwHXPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaems-0001RC-Lg; Fri, 29 Nov 2019 11:50:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaemb-0001QV-En
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 11:49:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0FC9D1FB;
 Fri, 29 Nov 2019 03:49:55 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B508D3F52E;
 Fri, 29 Nov 2019 03:49:53 -0800 (PST)
Date: Fri, 29 Nov 2019 11:49:26 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] cpufreq: vexpress-spc: Switch cpumask from topology
 core to OPP sharing
Message-ID: <20191129114926.GA24793@bogus>
References: <20191128101547.519-1-sudeep.holla@arm.com>
 <20191128101547.519-2-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128101547.519-2-sudeep.holla@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_034957_537969_2A5CB7FD 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Liviu Dudau <liviu.dudau@arm.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Morten Rasmussen <morten.rasmussen@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh, Rafael,

On Thu, Nov 28, 2019 at 10:15:47AM +0000, Sudeep Holla wrote:
> Since commit ca74b316df96 ("arm: Use common cpu_topology structure and
> functions.") the core cpumask has to be modified during cpu hotplug
> operations. So using them to set up cpufreq policy cpumask may be
> incorrect as it may contain only cpus that are online at that instance.
>
> Instead, we can use the cpumask setup by OPP library that contains all
> the cpus sharing OPP table using dev_pm_opp_get_sharing_cpus.
>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>

This can go independently via PM tree and I can take 1/2 via SoC tree
(as the file is being moved). The problem will be fixed only after both
lands, but this alone won't break the build. Or if you guys provide
Ack, I can take both together via ARM SoC team. Let me know.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
