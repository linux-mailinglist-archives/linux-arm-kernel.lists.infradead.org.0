Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94871114176
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 14:30:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooKnwbDVoErWMI42DuMUjkETOIeu7wpHrji7brqwKuc=; b=JyahIN9bUz7DAk
	Cvm6OLXLVXZy92gno7V+/BHzCQkaHft7GSw4rdiB7alSTvC9WJkiiwfuhvUNqe2GulzKZRrRhv516
	yhd+5sCsca1SrOJoyRreeZNlv7TqxHmqlzoSkOnvtcd9j4mlzCjkmFf5hfwbzrb6OZMBn3HGmUIzV
	hFaDYNrMWs2WluQX0eTRZ54+BQQgfIEYvqimzx6up48rePgHJKHfFeZFdrDiCPkCKODzylKI9KGCw
	y/qnhGTvuRs8JJQcZKABPBcmbGuhZwLfn8lE8r0K8yv6/kHidfWGMxEYsbK5yoDSPjS+ti3qKoWqr
	t6JxBB7Mw3zw2QRh8cUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icrDR-0006Sm-J2; Thu, 05 Dec 2019 13:30:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icrDG-0006SN-PU
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 13:30:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6282131B;
 Thu,  5 Dec 2019 05:30:31 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F25A3F68E;
 Thu,  5 Dec 2019 05:30:30 -0800 (PST)
Date: Thu, 5 Dec 2019 13:30:20 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: PSCI checker query
Message-ID: <20191205133020.GA20398@bogus>
References: <5c3c69bf-cae9-8ad5-9da2-c0af7a5932e7@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c3c69bf-cae9-8ad5-9da2-c0af7a5932e7@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_053034_920017_2CD27BAB 
X-CRM114-Status: GOOD (  14.46  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Linuxarm <linuxarm@huawei.com>,
 wanghuiqiang <wanghuiqiang@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 12:38:25PM +0000, John Garry wrote:
> Hi guys,
>
> I enabled the kernel PSCI checker and it kills my Huawei D05:
>

[...]

> [   18.042122] psci_checker: PSCI checker started using 64 CPUs
> [   18.047774] psci_checker: Starting hotplug tests
> [   18.052387] psci_checker: Trying to turn off and on again all CPUs
> [   18.059082] CPU0: shutdown
> [   18.061777] psci: CPU0 killed.
> [   18.069140] CPU1: shutdown
> [   18.071844] psci: CPU1 killed.
> [   18.078530] CPU2: shutdown
> [   18.081227] psci: CPU2 killed.
> [   18.087874] CPU3: shutdown
> [   18.090605] psci: CPU3 killed.
> [   18.097415] CPU4: shutdown
> [   18.100119] psci: CPU4 killed.
> [   18.105989] usb 1-2: new high-speed USB device number 3 using
> ehci-platform
> [   18.113286] CPU5: shutdown
> [   18.116007] psci: CPU5 killed.
> [   18.122432] CPU6: shutdown
> [   18.125130] psci: CPU6 killed.
> [   18.131525] CPU7: shutdown
> [   18.134243] psci: CPU7 killed.
> [   18.140625] CPU8: shutdown
> [   18.143335] psci: CPU8 killed.
> [   18.149755] CPU9: shutdown
> [   18.152465] psci: CPU9 killed.
> [   18.158867] CPU10: shutdown
>
> [snip]
>
> [   18.521459] CPU52: shutdown
> [   18.524256] psci: CPU52 killed.
> [   18.528634] CPU53: shutdown
> [   18.531461] psci: CPU53 killed.
> [   18.535847] CPU54: shutdown
> [   18.538645] psci: CPU54 killed.
> [   18.542977] CPU55: shutdown
> [   18.545761] psci: CPU55 killed.
> [   18.550050] CPU56: shutdown
> [   18.552836] psci: CPU56 killed.
> [   18.557059] CPU57: shutdown
> [   18.559855] psci: CPU57 killed.
> [   18.564012] CPU58: shutdown
> [   18.566809] psci: CPU58 killed.
> [   18.570941] CPU59: shutdown
> [   18.573725] psci: CPU59 killed.
> [   18.577778] CPU60: shutdown
> [   18.580576] psci: CPU60 killed.
> [   18.584592] CPU61: shutdown
> [   18.587400] psci: CPU61 killed.
> [   18.591351] CPU62: shutdown
> [   18.594148] psci: CPU62 killed.
> [   18.597997] usb 1-2.1: new full-speed USB device number 4 using ehci-platform
>
> The console is unresponsive at this point.
>
> My D06 does not have this issue and the test completes successfully:
>
> D06:
>
> root@(none)$ dmesg | grep -i psci
> [    0.000000] psci: probing for conduit method from ACPI.
> [    0.000000] psci: PSCIv1.1 detected in firmware.
> [    0.000000] psci: Using standard PSCI v0.2 function IDs
> [    0.000000] psci: MIGRATE_INFO_TYPE not supported.
> [    0.000000] psci: SMC Calling Convention v1.1
> [   24.252657] psci_checker: PSCI checker started using 96 CPUs
> [   24.258305] psci_checker: Starting hotplug tests
> [   24.262914] psci_checker: Trying to turn off and on again all CPUs
> [   24.277545] psci: CPU0 killed.
> [   24.298682] psci: CPU1 killed.
> [   24.318704] psci: CPU2 killed.
> [   24.343580] psci: CPU3 killed.
>
> [snip]
>
> [   46.053433] psci_checker: cpuidle not available on CPU 92, ignoring
> [   46.059690] psci_checker: cpuidle not available on CPU 93, ignoring
> [   46.065946] psci_checker: cpuidle not available on CPU 94, ignoring
> [   46.072203] psci_checker: cpuidle not available on CPU 95, ignoring
> [   46.078465] psci_checker: Could not start suspend tests on any CPU
> [   46.084635] psci_checker: PSCI checker completed
> root@(none)$
>
> Is there anything we can check to know what's going wrong?
>

Both use the same firmware(or at-least the baseline) ? Are there any
significant hardware or firmware changes around CPU power-off sequence ?
If you are running same kernel image on both, firmware becomes easy
target to start with. Have you run some tests on PSCI firmware ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
