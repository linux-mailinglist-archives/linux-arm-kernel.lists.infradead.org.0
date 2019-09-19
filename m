Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9B0B7E13
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLD59D2ontyJLvQbL+ODKx2Q0w021Ww8/I4J4bFllco=; b=n/KVIzlMv4IMJJ
	PV/dTkclWSvrD7B4vYvL+I0bKT3QD8LRpKSUQCB9sltcUBePkagqD0c4DZApRHJ4Qi5iZco1n5wUP
	/LJKadmC836gM+cOEej9IHHLjdOenrGXw9XT2VNVa/mqk2hXKgR6dwBbJw2HwItB15+HtDwmotjhY
	CnxQhkhPdrvWT7Cui02PgkV5yLzTs6qTC0kF1iLZaFWy9xc+NoNIvFMyW8J/JIyj3Y+NGHh2ebtpH
	qzJwU7MaQNYps81aIq9V6fYZy7YenLr71EvuDTyzzA/rjFvbheZzt8zLgFcLD8g83hbnuef2E3RA3
	cdnzYfFX83hjH3hqJvOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAyHF-0003Ip-OD; Thu, 19 Sep 2019 15:23:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAyGz-0003IP-2h
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:23:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2686F28;
 Thu, 19 Sep 2019 08:23:06 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 749903F575;
 Thu, 19 Sep 2019 08:23:05 -0700 (PDT)
Date: Thu, 19 Sep 2019 16:23:00 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
Subject: Re: [EXT] Re: SCMI & Devfreq
Message-ID: <20190919152300.GA11801@bogus>
References: <BYAPR18MB24387C9DDE32067F1763B6DEAFB00@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190913102304.GC2559@bogus>
 <BYAPR18MB2438723658EF1F0586170CDDAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190916101505.GB6109@bogus>
 <BYAPR18MB2438DC4E8CA4E90455F0345BAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
 <BYAPR18MB2438047B622951C6EFE92FABAF8E0@BYAPR18MB2438.namprd18.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR18MB2438047B622951C6EFE92FABAF8E0@BYAPR18MB2438.namprd18.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_082309_166574_77E43E7D 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-pm@vger.kernel.org, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(Adding linux-pm list)

On Wed, Sep 18, 2019 at 10:53:07PM +0000, Sujeet Kumar Baranwal wrote:
> Sudeep, One trivial question wrt SCMI-CPUFREQ framework.
> 
> The SCMI perf protocol would tell what are different frequencies the
> platform support in the beginning.
>
> For example, the command :
> cat  /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies
> shows:
> 280000 560000 840000 1120000 1400000 1820000 1960000 2240000 2520000 2800000
>
> /* Attempt to change the frequency */
> ~ # echo 2240000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
> It works.
>
> But in a scenario, where user tries a number which is not listed, SCP
> applies its own logic to get a nearby value frequency for CPU and returns.
>
> My question is that could we add some print message in kernel that user wish
> is not exactly fulfilled, an approximation has been done so the user
> explicitly knows his command has been partially met.  If this to happen, a
> patch might be needed in kernel. What is your opinion?
>

May be, you need to check with the maintainers ? :)

The path of execution is:
cpufreq_set(policy, freq) [cpufreq_userspace.c]
__cpufreq_driver_target(policy, freq, CPUFREQ_RELATION_L) [cpufreq_userspace.c]
index = cpufreq_frequency_table_target(policy, target_freq, relation) [cpufreq.c]
__target_index(policy, index) [cpufreq.c]

So if you need logs, it needs to be in core file rather than individual
drivers.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
