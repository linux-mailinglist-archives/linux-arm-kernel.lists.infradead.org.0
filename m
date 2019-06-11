Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CA03C778
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 11:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4LN/FGEc1BQPMOMlrea0sJnljWpqVetlyuK3rdIIPY=; b=NlDS6UjbBpPOKM
	Fxbj+7/iR+8A8t1cKRkeanMO/k5i4FGeYC1fLOC5JKSN5PH/pritsYS1TaQRyNzuAGIjmWqmiaH7S
	QfnUhwHMMdisANKaju9H6A81nTNYA4OlYj5em5N6zjOhr6Z8ivKJdGu0+Dim7uoMinOOahdwvYJaR
	X5/ZJHsk7VXEZaFulCOXPjFNPlQealtoQ1v/GAk6QQt8jnXFoGMlcQuJBxDgeX/+Pi8+s7Hv0JAEw
	3IaIqq2x6HrEzezOfmI8wPaXazOIkpZL/mb+K+PuykTfZ8ISG9v/VfqQOuKaD7q7go5lh4xUrXRIe
	RAExaiMx+fxCX0qFSMDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadJ5-0003pS-SE; Tue, 11 Jun 2019 09:43:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadIk-0003k2-3K
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 09:42:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A8A5337;
 Tue, 11 Jun 2019 02:42:45 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A31DE3F73C;
 Tue, 11 Jun 2019 02:44:26 -0700 (PDT)
Date: Tue, 11 Jun 2019 10:42:29 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Subject: Re: [PATCH v2] firmware/psci: psci_checker: Park kthreads before
 stopping them
Message-ID: <20190611094229.GA6235@e107155-lin>
References: <20190610173829.4741-1-jean-philippe.brucker@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610173829.4741-1-jean-philippe.brucker@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_024246_238694_3B14BEBC 
X-CRM114-Status: GOOD (  10.23  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 06:38:29PM +0100, Jean-Philippe Brucker wrote:
> Since commit 85f1abe0019f ("kthread, sched/wait: Fix kthread_parkme()
> completion issue"), kthreads that are bound to a CPU must be parked
> before being stopped. At the moment the PSCI checker calls
> kthread_stop() directly on the suspend kthread, which triggers the
> following warning:
> 
> [    6.068288] WARNING: CPU: 1 PID: 1 at kernel/kthread.c:398 __kthread_bind_mask+0x20/0x78
>                ...
> [    6.190151] Call trace:
> [    6.192566]  __kthread_bind_mask+0x20/0x78
> [    6.196615]  kthread_unpark+0x74/0x80
> [    6.200235]  kthread_stop+0x44/0x1d8
> [    6.203769]  psci_checker+0x3bc/0x484
> [    6.207389]  do_one_initcall+0x48/0x260
> [    6.211180]  kernel_init_freeable+0x2c8/0x368
> [    6.215488]  kernel_init+0x10/0x100
> [    6.218935]  ret_from_fork+0x10/0x1c
> [    6.222467] ---[ end trace e05e22863d043cd3 ]---
> 
> kthread_unpark() tries to bind the thread to its CPU and aborts with a
> WARN() if the thread wasn't in TASK_PARKED state. Park the kthreads
> before stopping them.
> 

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
