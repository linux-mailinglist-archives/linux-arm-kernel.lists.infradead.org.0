Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4E3582D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 14:49:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Hy9cwZmVWgckUW4EisZ5loe+gzDlZdxzCz+eFYhnDQw=; b=gls
	HuLKY2JEH9PH+3yzH5Y+H3s7KZKfzC4w0ahXx4f4ruO3FWiTsJBvzE23Qdb0P3TJZE8luD2l0DLLt
	pp89v7ezFZlhaTjmOsMAdaqIQKhSPBcbfSq4q5aiQ+guAJMQuZjXXKo4qeEgyyE2LQ7yc8CR3DT84
	yBhz0hTHo4HPsCB3Lwjeo7AOt3XHHZ3DHYtS5VcSR+N4C7b4xg6kJ1QIA192lNFVTQgA+zcZLlxsg
	A1UK0y5sc8rDEpUsCOljj6/Q4qA4mSxQHwV88jpZz6AOXsZBHI3PctKESn48kPLq2MVtJk9yv/DOb
	73MXj66zSFDWpU7SYPMeXlHPvf03ISQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgTph-0001Z0-6t; Thu, 27 Jun 2019 12:48:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgTpV-0001YE-Cp
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 12:48:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF6942B;
 Thu, 27 Jun 2019 05:48:41 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9656E3F718;
 Thu, 27 Jun 2019 05:48:38 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [RFC 0/2] arm64/mm: Enable THP migration
Date: Thu, 27 Jun 2019 18:18:14 +0530
Message-Id: <1561639696-16361-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_054845_476129_3AE7B331 
X-CRM114-Status: UNSURE (   8.73  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables THP migration without split on arm64 by subscribing
to ARCH_ENABLE_THP_MIGRATION. Before that it modifies arm64 platform THP
helpers like pmd_present() and pmd_trans_huge() to comply with expected
generic MM semantics as concluded from a previous discussion [1].

Initial THP migration and stress tests look good for various THP sizes. I
will continue testing this further. But meanwhile looking for some early
reviews, feedbacks and suggestions on the approach.

This is based on linux-next tree (next-20190626).

Question:

Instead of directly using PTE_SPECIAL, would it be better to override the
same bit as PMD_SPLITTING and create it's associated helpers to make this
more clear and explicit ?

[1] https://lkml.org/lkml/2018/10/9/220

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Suzuki Poulose <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Anshuman Khandual (2):
  arm64/mm: Change THP helpers to comply with generic MM semantics
  arm64/mm: Enable THP migration without split

 arch/arm64/Kconfig               |  4 ++++
 arch/arm64/include/asm/pgtable.h | 32 +++++++++++++++++++++++++++++---
 2 files changed, 33 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
