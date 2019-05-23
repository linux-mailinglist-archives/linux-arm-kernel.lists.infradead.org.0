Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BFD28D4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 00:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jJ6+Prk1Zkd2DND1oOAesn8noAfiY4I+kvZk2IbfpYU=; b=WPAoq/9sT08kG+
	FTwjq6iuBRFRiouoFezRqroLpDeC2Z8DcXW/55ZttCzoYoO+diUUYQtpQ1SuOrPlY5iCF7dS03tno
	V87GRaM4KCHE6ZmVk9A+6BUl5zFvjaMRxhqhO9NOtNdQ0mVes1q5zOsViJKG8FvlDjI7YxIoQeMEo
	g0Z+gwiidU4PZHqhItDJCJuXuYi7EsBnRcSb/DX3St5H/s9/HOe88ZWGB1I+itjeHPmpZHdpruFzE
	x3mMtHvkrVfFLrJsxngM0DSxyyeRt2tBcAyoKdMpvgG0np1TdZQchHrwbA7jiohu+YKyqlqPH8tRK
	InS+owyykJML3wT2hnFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTwO7-0005l5-1k; Thu, 23 May 2019 22:40:39 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTwO0-0005kN-2C
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 22:40:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96C0D374;
 Thu, 23 May 2019 15:40:27 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.30.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 266A83F5AF;
 Thu, 23 May 2019 15:40:27 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64/PPTT ACPI 6.3 thread flag support
Date: Thu, 23 May 2019 17:40:13 -0500
Message-Id: <20190523224015.56270-1-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_154032_111100_667F0676 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: catalin.marinas@arm.com, will.deacon@arm.com, rjw@rjwysocki.net,
 Jeremy Linton <jeremy.linton@arm.com>, linux-acpi@vger.kernel.org,
 sudeep.holla@arm.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACPI 6.3 adds a flag to the CPU node to indicate whether
the given CPU is a thread. Add a function to return that
information for a given linux logical CPU and then utilize
it while building the arm64 topology.

Jeremy Linton (2):
  ACPI/PPTT: Add support for ACPI 6.3 thread flag
  arm64: topology: Use PPTT to determine if PE is a thread

 arch/arm64/kernel/topology.c |  8 ++++--
 drivers/acpi/pptt.c          | 53 +++++++++++++++++++++++++++++++++++-
 include/linux/acpi.h         |  5 ++++
 3 files changed, 62 insertions(+), 4 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
