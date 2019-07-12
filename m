Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7B86684D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 10:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Hd5cfRqIWjNeS+1u3RbUticbUhN1O9YulFH0K9RFd4=; b=iVIDtOXDbaRFak
	+1dJJJBo6mUmCCkeI5aZWSNUsESi1arxDvtyE3cPwrdYq3HSS/GcbwwqZENgJb5aag9jZHIo5OPYU
	cAniRp85cWVwpRRyAxgvzR4rbiDfRLJyqy5O6vZ3d2INb+YVUVNxI89txKNcTigtmh9tbiFt2tevL
	Qr9uZ9LzVrUSP02JIejpb4RRGUzLN8fFm33P4M/3BVeSynKcYfBeYLHmnVZPSY/HOW9O45p21+2y/
	IZSbNSgqSGcadZU9hOKmCAg9PFcRDaz87nXgqDIDQLhWjmZJ9+LgIzLuxD89beO2psj6CcuJpRfrF
	cGEhBvMJtXEkfVv6h+og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlqfO-0003yy-N5; Fri, 12 Jul 2019 08:12:30 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlqfC-0003xr-1Z
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 08:12:19 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 51D31B171A7986E02C84;
 Fri, 12 Jul 2019 16:12:12 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Fri, 12 Jul 2019
 16:12:10 +0800
Subject: Re: [PATCH v2 0/5] Add NUMA-awareness to qspinlock
To: Jan Glauber <jglauber@marvell.com>, Alex Kogan <alex.kogan@oracle.com>
References: <20190329152006.110370-1-alex.kogan@oracle.com>
 <CAEiAFz238Ywgn6iDAz9gM_3PgPhs-YuAVDptehUBv7MRRPx8Cw@mail.gmail.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <95683b80-f694-cf34-73fc-e6ec05462ee0@huawei.com>
Date: Fri, 12 Jul 2019 16:12:05 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAEiAFz238Ywgn6iDAz9gM_3PgPhs-YuAVDptehUBv7MRRPx8Cw@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_011218_377338_B3D1073E 
X-CRM114-Status: GOOD (  14.11  )
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 "dave.dice@oracle.com" <dave.dice@oracle.com>,
 "x86@kernel.org" <x86@kernel.org>, Will Deacon <will.deacon@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "steven.sistare@oracle.com" <steven.sistare@oracle.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rahul.x.yadav@oracle.com" <rahul.x.yadav@oracle.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "hpa@zytor.com" <hpa@zytor.com>, "longman@redhat.com" <longman@redhat.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "daniel.m.jordan@oracle.com" <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/7/3 19:58, Jan Glauber wrote:
> Hi Alex,
> I've tried this series on arm64 (ThunderX2 with up to SMT=4  and 224 CPUs)
> with the borderline testcase of accessing a single file from all
> threads. With that
> testcase the qspinlock slowpath is the top spot in the kernel.
> 
> The results look really promising:
> 
> CPUs    normal    numa-qspinlocks
> ---------------------------------------------
> 56        149.41          73.90
> 224      576.95          290.31
> 
> Also frontend-stalls are reduced to 50% and interconnect traffic is
> greatly reduced.
> Tested-by: Jan Glauber <jglauber@marvell.com>

Tested this patchset on Kunpeng920 ARM64 server (96 cores,
4 NUMA nodes), and with the same test case from Jan, I can
see 150%+ boost! (Need to add a patch below [1].)

For the real workload such as Nginx I can see about 10%
performance improvement as well.

Tested-by: Hanjun Guo <guohanjun@huawei.com>

Please cc me for new versions and I'm willing to test it.

Thanks
Hanjun

[1]
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 657bbc5..72c1346 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -792,6 +792,20 @@ config NODES_SHIFT
          Specify the maximum number of NUMA Nodes available on the target
          system.  Increases memory reserved to accommodate various tables.

+config NUMA_AWARE_SPINLOCKS
+ bool "Numa-aware spinlocks"
+ depends on NUMA
+ default y
+ help
+   Introduce NUMA (Non Uniform Memory Access) awareness into
+   the slow path of spinlocks.
+
+   The kernel will try to keep the lock on the same node,
+   thus reducing the number of remote cache misses, while
+   trading some of the short term fairness for better performance.
+
+   Say N if you want absolute first come first serve fairness.
+
 config USE_PERCPU_NUMA_NODE_ID
        def_bool y
        depends on NUMA
diff --git a/kernel/locking/qspinlock_cna.h b/kernel/locking/qspinlock_cna.h
index 2994167..be5dd44 100644
--- a/kernel/locking/qspinlock_cna.h
+++ b/kernel/locking/qspinlock_cna.h
@@ -4,7 +4,7 @@
 #endif

 #include <linux/random.h>
-
+#include <linux/topology.h>
 /*
  * Implement a NUMA-aware version of MCS (aka CNA, or compact NUMA-aware lock).
  *
@@ -170,7 +170,7 @@ static __always_inline void cna_init_node(struct mcs_spinlock *node, int cpuid,
                                          u32 tail)
 {
        if (decode_numa_node(node->node_and_count) == -1)
-           store_numa_node(node, numa_cpu_node(cpuid));
+         store_numa_node(node, cpu_to_node(cpuid));
        node->encoded_tail = tail;
 }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
