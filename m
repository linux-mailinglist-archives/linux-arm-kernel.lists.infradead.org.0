Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51300207F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A1AtmwB5zaHvi/iqy38WiXQvn2h+wk8g8cOmRi/kQNE=; b=DwShMPeO9rPsgP+aM/R/Hcjt0L
	pBBQY1ud5xWvmiEpvhM8aJ74m8lsonFbGmRqsqHQObf8SelHz/tfeOc8npy17xAYEsrAg97wMHkbp
	S79fmDF5O1460CRLsVOjbBm7W3iFYQaSPC8S0GNmdKCom4NQcvm5vfziTEz2krv2S4uZ7zlzTDv7S
	QwMRrEhCOsn/bjH1vk++iNU5/CKuQaBCdzz2PkZZsjJGRoO5dDcnsNpb9xUzXdNKaittWnb56WDg3
	zAczCQ5V+saY8g9KqGGD27nngGBzXu/2UQzciWwprLQyu1g4KzMSoOkoTcqlXwUCmCTm8mGNpH8LZ
	bZ+LnJuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGLP-0006tG-PE; Thu, 16 May 2019 13:22:47 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGL3-0006f4-9B
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:22:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C215519F6;
 Thu, 16 May 2019 06:22:24 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.108])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 220783F703;
 Thu, 16 May 2019 06:22:22 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] perf: arm64: Compile tests unconditionally
Date: Thu, 16 May 2019 14:21:43 +0100
Message-Id: <20190516132148.10085-2-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190516132148.10085-1-raphael.gault@arm.com>
References: <20190516132148.10085-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_062225_412282_969AF498 
X-CRM114-Status: UNSURE (   9.91  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, acme@kernel.org, Raphael Gault <raphael.gault@arm.com>,
 mingo@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to subsequently add more tests for the arm64 architecture
we compile the tests target for arm64 systematically.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 tools/perf/arch/arm64/Build       | 2 +-
 tools/perf/arch/arm64/tests/Build | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/perf/arch/arm64/Build b/tools/perf/arch/arm64/Build
index 36222e64bbf7..a7dd46a5b678 100644
--- a/tools/perf/arch/arm64/Build
+++ b/tools/perf/arch/arm64/Build
@@ -1,2 +1,2 @@
 perf-y += util/
-perf-$(CONFIG_DWARF_UNWIND) += tests/
+perf-y += tests/
diff --git a/tools/perf/arch/arm64/tests/Build b/tools/perf/arch/arm64/tests/Build
index 41707fea74b3..a61c06bdb757 100644
--- a/tools/perf/arch/arm64/tests/Build
+++ b/tools/perf/arch/arm64/tests/Build
@@ -1,4 +1,4 @@
 perf-y += regs_load.o
-perf-y += dwarf-unwind.o
+perf-$(CONFIG_DWARF_UNWIND) += dwarf-unwind.o
 
 perf-y += arch-tests.o
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
