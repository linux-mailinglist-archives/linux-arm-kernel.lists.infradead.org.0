Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B6DDEAB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kj76LY8YCTTl2RHb9ZqC1WypMj6QhPC/YNhcCz12KgU=; b=ATkGQbY8CiNnrU
	oiZZfgvT7haVCRQ6Q2IDmpZ0z1X1IVGshTCTIZay5HTzjkEB12+NkByJ+osn4wL3IhIhrfi89319i
	CmhQORN00yL5ko9b5Lo/XueNjMG3XZvOi+84O3tjjBR7A7zg4z++MyQsHKHiuwM1YcxttF22Lb0S5
	deCmRSxvJeudP3uIVhtSWRvWcgWLfNYy+v2xa3KoqWkJMhKr/i7Foodmyq5UIbAgwVt9M6WdwI54e
	eB1OtesULHRm7NhI47QrgYb75G42Q43qMQN2rO3CVt+GULVGV2JxJstEC8JaFW4FU54uh6/xCRk3E
	VXgbeR9fvaeptAyZplSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVkp-0005ak-CA; Mon, 21 Oct 2019 11:21:39 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVkg-0005Zm-SV
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:21:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 77069EBD;
 Mon, 21 Oct 2019 04:21:18 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8F10E3F718;
 Mon, 21 Oct 2019 04:21:16 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:21:14 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: Re: [PATCH v5] arm64: psci: Reduce the waiting time for
 cpu_psci_cpu_kill()
Message-ID: <20191021112114.GC21581@bogus>
References: <710429cc-4d88-b7c3-b068-5459cf8133b5@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <710429cc-4d88-b7c3-b068-5459cf8133b5@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_042130_966435_1B338F6B 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: kstewart@linuxfoundation.org, mark.rutland@arm.com,
 lorenzo.pieralisi@arm.com, hushiyuan@huawei.com, catalin.marinas@arm.com,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linfeilong@huawei.com, David.Laight@ACULAB.COM, gregkh@linuxfoundation.org,
 tglx@linutronix.de, wuyun.wu@huawei.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 06:52:16PM +0800, Yunfeng Ye wrote:
> In cases like suspend-to-disk and suspend-to-ram, a large number of CPU
> cores need to be shut down. At present, the CPU hotplug operation is
> serialised, and the CPU cores can only be shut down one by one. In this
> process, if PSCI affinity_info() does not return LEVEL_OFF quickly,
> cpu_psci_cpu_kill() needs to wait for 10ms. If hundreds of CPU cores
> need to be shut down, it will take a long time.
> 
> Normally, there is no need to wait 10ms in cpu_psci_cpu_kill(). So
> change the wait interval from 10 ms to max 1 ms and use usleep_range()
> instead of msleep() for more accurate timer.
> 
> In addition, reducing the time interval will increase the messages
> output, so remove the "Retry ..." message, instead, track time and
> output to the the successful message.

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
