Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA123135192
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 03:44:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mzbMjsxii7hU2m59njrNrb0I2rUF9H6gS6upineo2Bs=; b=XE/6HXeCbU259b
	mIJLfPrt7TcKF6RhR9uj1D7DdQQfsuaAvd5cj73YSbDv3pzQilEtPCp+Vg17R3RGvGWi2Pb9lk+sx
	IlELZqx0/2bLsa1t1t/POKH5hJGXZABPf90CIatScw7hy7eF9jsoPKTxOXmuyIlhnZx21H/udTztd
	D1lWrajcrHyt18Rr1WA9gCxxmGuaHm0J15fJGNuAg5th6vemAzwU2Wom+hZlFu/yxKq22ba9EGIZ3
	wvyP5z0caeZXL55FgfiOanIx5Eu/gt9wJTTcFuDN3f4yVAdWchcWcWt7k25DeL2yELncwhtkSDtzv
	WodOSTAQkx6Z65nqFfag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipNnt-0001Ci-IR; Thu, 09 Jan 2020 02:44:09 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipNni-0001BG-2H
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 02:43:59 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4BE1D6694D10E423C6C8;
 Thu,  9 Jan 2020 10:43:51 +0800 (CST)
Received: from [127.0.0.1] (10.184.52.56) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Thu, 9 Jan 2020
 10:43:42 +0800
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
To: <will@kernel.org>, <mark.rutland@arm.com>
Subject: [Question] About handling PMU context loss in the deepest idle state
 where the core is powered down
Message-ID: <d62d9ac1-3af9-b692-a84a-aab4582e5eb8@huawei.com>
Date: Thu, 9 Jan 2020 10:43:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.184.52.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_184358_273042_0C0BB67A 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: wangzhe59@huawei.com, Catalin Marinas <catalin.marinas@arm.com>,
 huawei.libin@huawei.com, guohanjun@huawei.com, wangxiongfeng2@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will, Mark,

Sorry to bother you. It's just that we have come across some problems about PMU recently.

We are working on deep power state on CPU cores. In the deepest idle state, the core will be
powered down. In our implementation, the PMU and the core are in the same power domain,
so the PMU will also be powered down. But I didn't find where we saved the PMU context
in kernel before entering the deepest idle state.

Before we enter the system sleep state, we update the kernel PMU counter and stop the PMU
in 'cpu_pm_pmu_notify()'. But we didn't do that before we enter idle state.
I only find some system registers saving in 'psci_cpu_suspend_enter()->cpu_susend()->cpu_do_suspend()'

Do you have some suggestion about how we can handle this problem ?
Should we save and restore the PMU context before and after the deepest idle state . I don't know
if we can take care of the PMU  counters and interrupts properly by saving and restoring
the PMU registers.
Or we should update the kernel counter and stop the PMU, like what we did in system sleep situation.
Or we should let the firmware to handle the saving and restoring problem.

Thanks,
Xiongfeng


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
