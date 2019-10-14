Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1C0D61DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 13:59:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tWeRlLH8yLM0ctD2Eta8l3dbX9Wt+vX1bjp5ghy/uWg=; b=sUd0ORUAyGUVzG
	zDUb/jHuhBhC1dEK8dbMMhJnBZWdeRWkXY0le0Oa6+iBnUaO7wzyMaUp+YHJPOyIQDKeYE7/rfYrj
	WUb05BQ7HrFuMquA+DQzbLLx2+p47jk/BJm8NaWAOiMUW4zEutDJrnhibD+manoF+LTixH0PgRRzk
	hfBqZxmmv6PNS5X++XEx3aSPXBvkMIcSwb6I/4FLfVeKkd1rv4D/9HIviYZjLlvFYzukhPH52HoeF
	A9uyBJLBdGczLyjwc0GL1DkwdsacDSRLc/hjUPizZsbhGF2yCY39Xp4LXpTTg09MnUZKTavYg4YHW
	S3BFQIYnV4Njl1iGX3dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJz0s-0001aG-RA; Mon, 14 Oct 2019 11:59:46 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJz0M-0001NT-Ns
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 11:59:17 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 646B9771B8439148885A;
 Mon, 14 Oct 2019 19:59:05 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Mon, 14 Oct 2019 19:58:59 +0800
From: John Garry <john.garry@huawei.com>
To: <stable@vger.kernel.org>
Subject: [PATCH for-stable-5.3 0/3] ACPI,
 arm64: Backport for ACPI PPTT 6.3 thread flag
Date: Mon, 14 Oct 2019 19:56:00 +0800
Message-ID: <1571054162-71090-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_045914_954796_83BBCD1A 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: John Garry <john.garry@huawei.com>, gregkh@linuxfoundation.org,
 catalin.marinas@arm.com, guohanjun@huawei.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, rrichter@marvell.com, wanghuiqiang@huawei.com,
 sudeep.holla@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is a backport of the ACPI PPTT 6.3 thread flag feature for
supporting arm64 systems.

The background is that some arm64 implementations are broken, in that they
incorrectly advertise that a CPU is mutli-threaded, when it is not - the
HiSilicon Taishanv110 rev 2, aka tsv110, being an example.

This leads to the system topology being incorrect. The reason being that
arm64 topology code uses a combination of ACPI PPTT (Processor Properties
Topology Table) and the system MPIDR (Multiprocessor Affinity Register) MT
bit to determine the topology.

Until ACPI 6.3, the PPTT did not have any method to determine whether
a CPU was multi-threaded, so only the MT bit is used - hence the
broken topology for some systems.

In ACPI 6.3, a PPTT thread flag was introduced, which - when supported -
would be used by the kernel to determine really if a CPU is multi-threaded
or not, so that we don't get incorrect topology.

RFC originally sent for 4.19: https://lkml.org/lkml/2019/10/10/724
Jeremy Linton (2):
  ACPI/PPTT: Add support for ACPI 6.3 thread flag
  arm64: topology: Use PPTT to determine if PE is a thread

 arch/arm64/kernel/topology.c | 19 ++++++++++---
 drivers/acpi/pptt.c          | 52 ++++++++++++++++++++++++++++++++++++
 include/linux/acpi.h         |  5 ++++
 3 files changed, 72 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
