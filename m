Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 712371B24D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 13:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdyv91Ll30SEOBsfZB64ybb6IKxWyWMSDanRPd+5hEI=; b=Ecc9Ge8jD8+tXx
	Sq8U8xihLkue2/aM8Uf1GJmP0EjeYS6GT/Pai2YhjwdUOjacj/Hq6Vhr03+eIYoBRAoGZK/XK02TQ
	zLwcFDc41fJhCVGMVGjeTGiXqZLA3pXBl3TYWoJAOPTfSRSmyCwyzIEe6lmqCMyrm95UZ2DdH5SHm
	LihatdDs7HiR9PrLcRWUnU0aGx15bEUNCQWi333p8qkKzw0RXjwDACBDGFWg2ohFYMdni3mkCUMWd
	uHwwZSowLcwUZkGxghgV/d8LGkIgPsaX1N4qSMhUGU2vqcExovEFRaHFi0XKPQohZyMMmOfY1O9uo
	DlCEOWlPpPiGIjJtXd7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQquB-0002S9-2r; Tue, 21 Apr 2020 11:17:31 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQqtz-0002O8-4F
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 11:17:20 +0000
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id A887EBF23DF29DC07A5F;
 Tue, 21 Apr 2020 12:17:04 +0100 (IST)
Received: from localhost (10.47.92.218) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 21 Apr
 2020 12:17:04 +0100
Date: Tue, 21 Apr 2020 12:16:51 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm32: fix flushcache syscall with device address
Message-ID: <20200421121651.000009f0@Huawei.com>
In-Reply-To: <20200421081239.GA15439@willie-the-truck>
References: <1587456514-61156-1-git-send-email-tiantao6@hisilicon.com>
 <20200421081239.GA15439@willie-the-truck>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.47.92.218]
X-ClientProxiedBy: lhreml729-chm.china.huawei.com (10.201.108.80) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_041719_321676_12F83526 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, allison@lohutok.net, gregkh@linuxfoundation.org,
 Tian Tao <tiantao6@hisilicon.com>, tglx@linutronix.de, info@metux.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 09:12:39 +0100
Will Deacon <will@kernel.org> wrote:

> On Tue, Apr 21, 2020 at 04:08:34PM +0800, Tian Tao wrote:
> > An issue has been observed on our Kungpeng916 systems when using a PCI
> > express GPU. This occurs when a 32 bit application running on a 64 bit
> > kernel issues a cache flush operation to a memory address that is in
> > a PCI BAR of the GPU.The results in an illegal operation and
> > subsequent crash.  
> 
> A kernel crash? If so, please can you include the log here?

Deploying my finest copy typing from the image Tian Tao sent out

      KERNEL: /root/vmlinux-4.19.36-3patch-00228-debuginfo
    DUMPFILE: vmcore [PARTIAL DUMP]
        CPUS: 64
        DATE: Fri Mar 20 06:59:56 2020
      UPTIME: 07:01:01
LOAD AVERAGE: 33.76, 35.45, 35.79
       TASKS: 59447
    NODENAME: cpus-new-ondemand-0509
     RELEASE: 4.19.36-3patch-0228
     VERSION: #4 SMP Fri Feb 28 15:18:51 UTC 2020
     MACHINE: aarch64 (unknown MHz)
      MEMORY: 255.7 GB
       PANIC: "kernel panic - not syncing: Asynchronous SError Interrupt"
         PID: 175108
     COMMAND: "UnityMain"
        TASK: ffff80a96999dd00 [THREAD_INFO: ffff80a96999dd00]
         CPU: 62
       STATE: TASK_RUNNING (PANIC)

crash> bt
PID: 175108 TASK: ffff80a96999dd00 CPU: 62 COMMAND: "UnityMain"
  #0 [ffff000194e1b920] machine_kexec at ffff0000080a265c
  #1 [ffff000194e1b980] __crash_kexec at ffff0000081b3ba8
  #2 [ffff000194e1bb10] panic at ffff0000080ecc98
  #3 [ffff000194e1bbf0] nmi_panic at ffff0000080ec7f4
  #4 [ffff000194e1bc10] arm64_serror_panic at fff00000809019c
  #5 [ffff000194e1bc30] do_serror at ffff00000809039c
  #6 [ffff000194e1bd90] el1_error at ffff000008083e50
  #7 [ffff000194e1bda0] __flush_icache_range at ffff0000080a9ec4
  #8 [ffff000194e1be60] el0_svc_common at fff0000080977d8
  #9 [ffff000194e1bea0] el0_svc_compat_handler at ffff0000080979b4
 #10 [ffff000194e1bff0] el0_svc_compat at ffff0000008083874

     PC: c90fe7f8  LR: c90ff09c  SP: d2afa8e0  PSTATE: 800b0010
    X12: c56e96e4 X11: d2afaa48 X10: d0ff1000  X9: d2afab68
     x8: 000000d6  X7: 000f0002  X6: d3c61840  X5: d3c61001
     X4: d3c03000  X3: 0004d54a  x2: 00000000  x1: d3c61040
     X0: d3c61000


New advanced test for Mavis Beacon teaches typing.

In summary this is all we have to hand...

> 
> Will
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
