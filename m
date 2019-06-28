Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A808D5A348
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 20:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tieH7Cgg+LmRIlDFZOjQtZpDclpP56rlc0CPyD2R71U=; b=m9QJsNANrIu40C
	DejrfVpqn8fKQFohk7KBGKIPxnSlHa7V9S5hlFADZzaTc/trbxBAGwZphPOyBJzohvRyNxK8hkKKc
	07lomp8eVhnt2JFmNwGVRla4dKS2r8KsEu5shW7lgkcWTZUhYTWd8vRGb5L2WprhuHkJD11tw0vpW
	FFl6b0kII+BukFfMh30e1GpbYhZQc5YYY7o4IgIgXLZy3QNnBRW3hMvlN6CMtcOD7Q5D3P6DQkSrb
	RqMsuTEQbhZFQuWhNNKlWtyWMa8++hMgy3/bX2KIFQ/12wVb9Yn3YSQYn0XIk835XxmHmhkTXB8vn
	v+/FE/SgVsHoCGDH4mTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvP1-0000b3-S3; Fri, 28 Jun 2019 18:15:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvOl-0000Vg-6p
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 18:15:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CC442B;
 Fri, 28 Jun 2019 11:14:57 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.30.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 51FC83F718;
 Fri, 28 Jun 2019 11:14:57 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/2] arm64/PPTT ACPI 6.3 thread flag support
Date: Fri, 28 Jun 2019 13:14:55 -0500
Message-Id: <20190628181457.6609-1-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_111459_289369_DAA74BA5 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lorenzo.pieralisi@arm.com, will.deacon@arm.com, sudeep.holla@arm.com,
 rjw@rjwysocki.net, Jeremy Linton <jeremy.linton@arm.com>,
 linux-acpi@vger.kernel.org, catalin.marinas@arm.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACPI 6.3 adds a flag to the CPU node to indicate whether
the given CPU is a thread. Add a function to return that
information for a given linux logical CPU and then utilize
it while building the arm64 topology.

v2->v3: Clarify and tweak the return from check_acpi_cpu_flag()
	Cache the PPTT table revision to avoid repeat
	      acpi_table_get/put calls in the case of
	      missing or old PPTT tables.

v1->v2:
	Return ENOENT instead on ENONET.

Jeremy Linton (2):
  ACPI/PPTT: Add support for ACPI 6.3 thread flag
  arm64: topology: Use PPTT to determine if PE is a thread

 arch/arm64/kernel/topology.c |  8 +++--
 drivers/acpi/pptt.c          | 62 +++++++++++++++++++++++++++++++++++-
 include/linux/acpi.h         |  5 +++
 3 files changed, 71 insertions(+), 4 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
