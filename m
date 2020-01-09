Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E166D135E9E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:47:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3e8t7xbLXYvLtzakaYQE+kNIjRbrZ5cuQQjg31fpzE=; b=tw3eu900WyoIl+
	DUMKsuLlbzrGH4Vu7Rl1ApRnmnZShsVRlSfYEI2Bf416cIpW5F+Y/vyS95UPMD/4Dam0xKjShiGZB
	NGBGWYt7fX9GBzYU7+FWl1AmU5j7AQdjcACWhtr+ysr8JfX7hzpS6SayAOx2hgktD4rEoQgZ44mtZ
	qFD7JiQn+s7r0HqeHqE6Xgu6yntQkuAd69YAItBQ33sS1yVOidpK3VtLbMvqT+qNFg9/YAGni36Uv
	n8shy/d1wX6Pz5pQ/Ghf/yJUH6qcAkPVIQx0Aa0xt1uI7SLriY6f0yLUcv6kyn/eGdycEqxEfrVAn
	yWWUXdeY+RAq/ZQmGedA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaxo-0005zV-CP; Thu, 09 Jan 2020 16:47:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaxf-0005ry-CP
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:47:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5215C328;
 Thu,  9 Jan 2020 08:47:06 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B0513F703;
 Thu,  9 Jan 2020 08:47:04 -0800 (PST)
Date: Thu, 9 Jan 2020 16:46:55 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [Question] About handling PMU context loss in the deepest idle
 state where the core is powered down
Message-ID: <20200109164655.GA29943@e121166-lin.cambridge.arm.com>
References: <d62d9ac1-3af9-b692-a84a-aab4582e5eb8@huawei.com>
 <20200109150318.GF12236@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109150318.GF12236@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_084707_462708_3F7F5958 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, wangzhe59@huawei.com,
 Catalin Marinas <catalin.marinas@arm.com>, huawei.libin@huawei.com,
 guohanjun@huawei.com, Xiongfeng Wang <wangxiongfeng2@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 03:03:19PM +0000, Will Deacon wrote:
> [+Lorenzo]
> 
> On Thu, Jan 09, 2020 at 10:43:40AM +0800, Xiongfeng Wang wrote:
> > Sorry to bother you. It's just that we have come across some problems
> > about PMU recently.
> 
> No bother, and thanks for including the mailing list.
> 
> > We are working on deep power state on CPU cores. In the deepest idle
> > state, the core will be powered down. In our implementation, the PMU
> > and the core are in the same power domain, so the PMU will also be
> > powered down. But I didn't find where we saved the PMU context in
> > kernel before entering the deepest idle state.
> > 
> > Before we enter the system sleep state, we update the kernel PMU
> > counter and stop the PMU in 'cpu_pm_pmu_notify()'. But we didn't do
> > that before we enter idle state.

ACPI or DT firmware ? I suspect that's ACPI, with LPI idle state
flags set to 0x0 (3.1.3 - save and restore flags):

http://infocenter.arm.com/help/topic/com.arm.doc.den0048a/DEN0048A_ARM_FFH_Specification.pdf

If that's the case a firmware update is needed (ie currently the kernel
expects the PMU state to be retained).

arch/arm64/kernel/cpuidle.c

ARM64_LPI_IS_RETENTION_STATE()

In DT in the PSCI CPUidle driver we run the notifiers irrespective
of the idle state depth so I don't think this behaviour can happen
in a DT bootstrapped system.

I am just guessing - please let me know if my assumption is correct.

> > I only find some system registers saving in 'psci_cpu_suspend_enter()->cpu_susend()->cpu_do_suspend()'
> 
> I'm not sure what you mean by "system sleep state"

I think they mean suspend-to-RAM - in suspend-to-RAM the notifiers
are run through syscore operations which are decoupled from CPUidle.

Regardless, CPUidle should call the notifiers if instructed by firmware
correctly.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
