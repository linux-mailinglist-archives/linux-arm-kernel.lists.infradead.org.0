Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695EC135C2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 16:03:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvIEH86GVa7GjcM9n574oDYdfmLXkae3YzQIFybxIRc=; b=KSj8gc4fa38q4z
	DsV+F6meczyFXVDmjOKpgvP1QZIdaNelixCRoDK4NAu82t5AVYuifBWS3DKc+Tv8pQTbUjFqBXaYn
	Bhl22rG5pdH4BcYQx9DjvmmqbWropw8nnsqddIylyJabrmq5bhPS4B3sBSkYSzwGscVmjdBJVqUfa
	TF25KRiI2a/XhXfpCIZ8OmD7MrJ5iImCTbccieUzCAgmg5suWr41gftPKqDG5PyLq0GaGjvMIXD4z
	5wuyFgzjEKQcyFGIwTLt22eqjqYWBAzTq04uvDPbHhTX4v367qE1i63Njmg1M/eGjwDRO53a3WNsm
	36Dd4QOLGRDip+V8u3vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZLP-0001Bk-DB; Thu, 09 Jan 2020 15:03:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZLI-0001BF-42
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 15:03:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 571ED2067D;
 Thu,  9 Jan 2020 15:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578582203;
 bh=OQZ2YdOpS1y/7pFJQtE5FBNHy1UBhwGIboxLjUnOO04=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oDNhfyutSYDKCzDauZlMYQG3iP7+gsLXdX6hSIAoqPCma9GK2zK5T7QIAsJPISTlg
 xuy/f1mQS31Erz3szwch7ZiaMYioFi1RS7DsEJC7XMlwwjyaDfoaKa2QfBef0KUfhJ
 WOiu28zXW6M3oS9Dxg2lUO7i/juT4isXOh0i3FHU=
Date: Thu, 9 Jan 2020 15:03:19 +0000
From: Will Deacon <will@kernel.org>
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Subject: Re: [Question] About handling PMU context loss in the deepest idle
 state where the core is powered down
Message-ID: <20200109150318.GF12236@willie-the-truck>
References: <d62d9ac1-3af9-b692-a84a-aab4582e5eb8@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d62d9ac1-3af9-b692-a84a-aab4582e5eb8@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_070324_195402_521FEC47 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, wangzhe59@huawei.com, lorenzo.pieralisi@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>, huawei.libin@huawei.com,
 guohanjun@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Lorenzo]

On Thu, Jan 09, 2020 at 10:43:40AM +0800, Xiongfeng Wang wrote:
> Sorry to bother you. It's just that we have come across some problems
> about PMU recently.

No bother, and thanks for including the mailing list.

> We are working on deep power state on CPU cores. In the deepest idle state, the core will be
> powered down. In our implementation, the PMU and the core are in the same power domain,
> so the PMU will also be powered down. But I didn't find where we saved the PMU context
> in kernel before entering the deepest idle state.
> 
> Before we enter the system sleep state, we update the kernel PMU counter and stop the PMU
> in 'cpu_pm_pmu_notify()'. But we didn't do that before we enter idle state.
> I only find some system registers saving in 'psci_cpu_suspend_enter()->cpu_susend()->cpu_do_suspend()'

I'm not sure what you mean by "system sleep state", but if you're putting
the CPU into a state where register contents is lost, then I think you need
those PM notifiers to run. My understanding was that CPUidle took care of
this. Why is that not sufficient for you?

> Do you have some suggestion about how we can handle this problem ?
> Should we save and restore the PMU context before and after the deepest idle state . I don't know
> if we can take care of the PMU  counters and interrupts properly by saving and restoring
> the PMU registers.
> Or we should update the kernel counter and stop the PMU, like what we did in system sleep situation.
> Or we should let the firmware to handle the saving and restoring problem.

If the idle state is somehow autonomous (i.e. the kernel is not aware of
it), then I suppose firmware has to save/restore the register state that
is not otherwise preserved. However, I'd like to understand if this is
really what's happening and why CPUidle isn't just doing the right thing.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
