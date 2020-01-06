Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939A81318FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:06:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MjfMaCrpDoO9rxdby1WsAATMCtrlg4qs1nzvgJLEjGQ=; b=nfuL+zYNIu1Pjq
	z9gPm48LKe9p6UW9yaXr5J6fYRWmgpYGMcpFBADvyskmkUptgUjhfdDjKzo91BcTj/dWxmbnQ4G/h
	PCU3ILDzbslX5tuXoECnkVDe8ugin7H+J9QJDYT5DoMnnoq+Kfr8wU5Timb3SQNG9jAKhbAQuCTR7
	eON8EsjUCql4S0wTr5ZJd7vk4prYJGgCnirlDhm8DqYSzwqPtqdPZI7B4lYwC4NI4Myhpem+WR5w2
	aWYs6fAYS7ynu3O2nW5I47fvh/piiABf31LB+Rb0N7G/t/67rcrQPAQOemsRUfQf2XRCx6TBL4vxy
	yiGmrcVyYd2GaaOP7++A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioYdz-0004Sw-Jz; Mon, 06 Jan 2020 20:06:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioYdt-0004S6-04
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 20:06:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F1DF328;
 Mon,  6 Jan 2020 12:06:21 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C76A63F534;
 Mon,  6 Jan 2020 12:06:20 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 0/3] arm64: Conversions to modern assembly annotations
Date: Mon,  6 Jan 2020 19:58:15 +0000
Message-Id: <20200106195818.56351-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_120625_080625_0A11C8ED 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As part of an effort to make the annotations in assembly code clearer and
more consistent new macros have been introduced.  This series of patches
converts some more of the arm64 assembly code to these annotations,
patch 1 introduces modern equivalents of the arm64 specific ENDPIPROC()
which are then used by conversions of the lib and mm directories in the
other two patches.

Mark Brown (3):
  arm64: asm: Add new-style position independent function annotations
  arm64: lib: Use modern annotations for assembly functions
  arm64: mm: Use modern annotations for assembly functions

 arch/arm64/include/asm/linkage.h | 16 ++++++++++
 arch/arm64/lib/clear_page.S      |  4 +--
 arch/arm64/lib/clear_user.S      |  4 +--
 arch/arm64/lib/copy_from_user.S  |  4 +--
 arch/arm64/lib/copy_in_user.S    |  4 +--
 arch/arm64/lib/copy_page.S       |  4 +--
 arch/arm64/lib/copy_to_user.S    |  4 +--
 arch/arm64/lib/crc32.S           |  8 ++---
 arch/arm64/lib/memchr.S          |  4 +--
 arch/arm64/lib/memcmp.S          |  4 +--
 arch/arm64/lib/memcpy.S          |  8 ++---
 arch/arm64/lib/memmove.S         |  8 ++---
 arch/arm64/lib/memset.S          |  8 ++---
 arch/arm64/lib/strchr.S          |  4 +--
 arch/arm64/lib/strcmp.S          |  4 +--
 arch/arm64/lib/strlen.S          |  4 +--
 arch/arm64/lib/strncmp.S         |  4 +--
 arch/arm64/lib/strnlen.S         |  4 +--
 arch/arm64/lib/strrchr.S         |  4 +--
 arch/arm64/lib/tishift.S         | 12 ++++----
 arch/arm64/mm/cache.S            | 52 ++++++++++++++++----------------
 arch/arm64/mm/proc.S             | 24 +++++++--------
 22 files changed, 104 insertions(+), 88 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
