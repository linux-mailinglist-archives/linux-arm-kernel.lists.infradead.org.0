Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 566FC5015E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 07:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AZdD1gpj6ZmBD65X1jLedn+mt9WniYn0GdNpHgRxUDY=; b=k2/M8dawdWwgCs
	Lkr9aVj1X3/g8XI9rhQWht+45XWzkf2rvFkXWiEVWHNsbvOzFR3Yswwc/gVMEu698R4mUPFB3A1et
	8EXr9z4lH9IMyc0UtizBysZs0NcnQluIK+5WbGBvDjWZ1CTRwuCh8tFAUqMXN+0XO/qGoYn+Ea/Oc
	3qJnz8yro0CgYcWfjqsObxMjOVyYRRYyEqDPNY/NXI6TgwgmWdjB+ruYz4X9wbgEUtDUJuhL8nUVY
	e2sNLoEEsTjF/TScD2GwMsQx/w0EVT2HCbxEgA15xSKOljkXvoSV8wPU+FJbW+NfGbwXMifWLIcPD
	EoWSMzlGulWP+qb6STkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfHpR-0000OI-4f; Mon, 24 Jun 2019 05:47:45 +0000
Received: from 213-225-6-159.nat.highway.a1.net ([213.225.6.159]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfHpD-0000No-1q; Mon, 24 Jun 2019 05:47:31 +0000
From: Christoph Hellwig <hch@lst.de>
To: Oleg Nesterov <oleg@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: remove asm-generic/ptrace.h v3
Date: Mon, 24 Jun 2019 07:47:23 +0200
Message-Id: <20190624054728.30966-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: linux-arch@vger.kernel.org, linux-sh@vger.kernel.org, x86@kernel.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

asm-generic/ptrace.h is a little weird in that it doesn't actually
implement any functionality, but it provided multiple layers of macros
that just implement trivial inline functions.  We implement those
directly in the few architectures and be off with a much simpler
design.

I'm not sure which tree is the right place, but may this can go through
the asm-generic tree since it removes an asm-generic header?


Changes since v2:
 - rebase to latest Linus' tree that added an SPDX tag to
   asm-generic/ptrace.h
 - collected two more Acks from Oleg
Changes since v1:
 - add a missing empty line between functions

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
