Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 519DBD5F99
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 12:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=THTSK1SG7xfSH845wZJmRwVLssHvfUnGd59NygAfMVY=; b=ocSFLqrVvDMEtX
	QVZ8fVg9eaw8NgD0fGV3NaKIo7ga2Q4ZXFIKTrItGyROuGqd0wu4yBVLAl07X2wAV7cfM8GKwKfLK
	ZexEgvuqb3Tfah0VOhdHPugPaODw27zo7qB4Swuc+i3UuKUrNbmyNHsRVZJePMTCWUb3mJYN3aJ63
	TXk3NZ9jLACLhMUmYl+kaUxRUCaBtICG87SrPMp+r4plvhGL0CjWMJfym770duIM+dp+lOy4Q6GET
	tnPHaBiqJVDLD1cTrORjXI+7otkuB/idHz2zX+DArz7lCcL/nPhf3FD5VEWGjMcp+JvJnCkootIZ0
	Wc8vRwsnK1t1+A8UHGaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJx9r-0001V7-Uw; Mon, 14 Oct 2019 10:00:55 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJx8z-0008FC-8a
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 10:00:04 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 0A314F38F338664DE634;
 Mon, 14 Oct 2019 17:59:51 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.439.0; Mon, 14 Oct 2019 17:59:42 +0800
From: John Garry <john.garry@huawei.com>
To: <stable@vger.kernel.org>
Subject: [PATCH for-stable-4.19 0/3] ACPI,
 arm64: Backport for ACPI PPTT 6.3 thread flag
Date: Mon, 14 Oct 2019 17:56:23 +0800
Message-ID: <1571046986-231263-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_030001_927387_15726D4D 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: John Garry <john.garry@huawei.com>, erik.schmauss@intel.com,
 catalin.marinas@arm.com, guohanjun@huawei.com, rjw@rjwysocki.net,
 robert.moore@intel.com, jeremy.linton@arm.com, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, gregkh@linuxfoundation.org, rrichter@marvell.com,
 linuxarm@huawei.com, wanghuiqiang@huawei.com, sudeep.holla@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, lenb@kernel.org
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

RFC originally sent: https://lkml.org/lkml/2019/10/10/724

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
