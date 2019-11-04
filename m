Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFDAEDB84
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 10:18:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IFokTS6PZU2i+h3oMQWYUJtSRu9T3w7yeOtErmqu4nY=; b=fqJsDbbJQGwJ/v
	0wBut4HMWUKUaeSqVhJzTy3M/NM6+Y9qEvRN3ua4uraNraz8D4c1BCMdmVFmrc1LdE+YA/JLKNXQC
	TrN3qDjsn6WSbKFDRv1wro9wB8Q6+qALIiOdKs68rwiWxX6gu+7LTyIpJfdK4i9n23wbMqJPsEXQd
	KAA7UYOdYSZUNlMwQ0vsbbaK15mGwwwwhu8yPsjTbLHVbFooq4j4GNlg0rIcgXpIVRly+oIhkLDA4
	6SzxWt9tirziHtX997qlcxmkIh8PnkrWKqNUblMXFcM7UQRdvqcjhHPXOUifAqaLZr+YJhttkEa3Z
	HrkqtMXKOG8eA/JwZ+Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRYVC-0007Df-Go; Mon, 04 Nov 2019 09:18:22 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRYV4-0007Cd-Pq
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 09:18:16 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E9CEA40EDF38CDC4749A;
 Mon,  4 Nov 2019 17:18:09 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Mon, 4 Nov 2019
 17:18:00 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: [RFC] About perf-mem command support on arm64 platform
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Message-ID: <74f8ddb5-13cc-5dce-82a6-ca8bd02f8175@hisilicon.com>
Date: Mon, 4 Nov 2019 17:18:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_011815_013492_E6E88F78 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 john.garry@huawei.com, Arnaldo Carvalho de Melo <acme@kernel.org>,
 liuqi115@hisilicon.com, huangdaode@hisilicon.com,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

perf-mem is used to profile memory access which has been implemented on x86
platform. It needs mem-stores events and mem-loads/load-latency.
For mem-stores events, it is MEM_INST_RETIRED_ALL_STORES whose raw number
is r82d0, and mem-loads/load-latency is from PEBS if I follow its code.

Now, for some arm64 cores, like HiSilicon's tsv110 and ARM's Neoverse N1,
has supported the SPE(Statistical Profiling Extensions), so is it a
possibility that perf-mem is supported on arm64?
https://developer.arm.com/ip-products/processors/neoverse/neoverse-n1

For arm64 PMU, it has 'st_retired' event that the event number is 0x0007
which is equal to mem-stores on x86, if we want support perf-mem, it seems
that 'st_retired' shall be replaced by 'mem-stores'
in arch/arm64/kernel/perf_event.c file. Of course, the cpu core should
support st_retired event. I'm not sure Will/Mark are happy on this.;-)

For mem-loads/load-latency, we can derive them from SPE sampled data which
supports by load_filter and min_latency in SPE driver. and we may do some
work on tools/perf/builtin-mem.c.

From the above conditions, it seems that we may have the opportunity to
support the perf-mem command on arm64.
I'm not very sure about it, so I send this RFC and any comments are welcome.

Thanks,
Shaokun



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
