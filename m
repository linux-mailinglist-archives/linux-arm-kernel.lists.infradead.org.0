Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C342D2B72
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uC50eq7ztLfuypvO3AGpt1wIE1ICVUvomDyIw/VA1dU=; b=EI28Xoo0FGvbDd
	r4s4GPyaGulJ3ESkTzjmS/ZaeJ6+Dzc+WQIglv3b6JwVzcSHU4gj0LjPaFE9YANMIoj6sTDxAwEvM
	fxxYuQr3o9ZyVOGRJXwPbN9CL55PQx7O0m9a8iLRSX2kU73aVgZeqMeTvo2CRlX1WnGkKSsUk01Yy
	nFzoQ0LvkRWeiTCz9qdw5lHbWffH4ZVjtOONfKZm9x2bqGmYKgvRL5bFivvHcERE1MKWjjib6l8kC
	8EFRzTQkyQQcrWvR20uCejC9fXmPhyMvu00jgdRkXLjc2VLMc0HTqfkvbY6INmZbslNMdfoTqBwwp
	wqo/Fb5Rh03i1DLttW8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYaH-0000cx-G9; Thu, 10 Oct 2019 13:34:25 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYZW-0008Mg-DX
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 13:33:39 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 62C01F00E599A21331DA;
 Thu, 10 Oct 2019 21:33:26 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.439.0; Thu, 10 Oct 2019 21:33:18 +0800
From: John Garry <john.garry@huawei.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>, <rjw@rjwysocki.net>,
 <lenb@kernel.org>, <robert.moore@intel.com>, <erik.schmauss@intel.com>,
 <sudeep.holla@arm.com>, <rrichter@marvell.com>, <jeremy.linton@arm.com>
Subject: [RFC PATCH 0/3] ACPI,
 arm64: Backport for ACPI PPTT 6.3 thread flag for stable 4.19.x
Date: Thu, 10 Oct 2019 21:29:49 +0800
Message-ID: <1570714192-236724-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_063338_651342_FD10179C 
X-CRM114-Status: GOOD (  11.44  )
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
Cc: gregkh@linuxfoundation.org, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com, linux-acpi@vger.kernel.org,
 wanghuiqiang@huawei.com, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
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

Note: I'm sending this as an RFC before sending to stable proper. I also
have a 5.2 and 5.3 backport which are almost the same, and only
significant change being that the ACPICA patch is not required.

Erik Schmauss (1):
  ACPICA: ACPI 6.3: PPTT add additional fields in Processor Structure
    Flags

Jeremy Linton (2):
  ACPI/PPTT: Add support for ACPI 6.3 thread flag
  arm64: topology: Use PPTT to determine if PE is a thread

 arch/arm64/kernel/topology.c | 19 ++++++++++---
 drivers/acpi/pptt.c          | 52 ++++++++++++++++++++++++++++++++++++
 include/acpi/actbl2.h        |  7 +++--
 include/linux/acpi.h         |  5 ++++
 4 files changed, 77 insertions(+), 6 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
