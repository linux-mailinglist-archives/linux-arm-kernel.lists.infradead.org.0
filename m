Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B07DF9B49F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 18:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ki+edQLRD9ALBDYuHDZ+f4GG5TQdQJIimJZeP33ZdXk=; b=G3Gdj7bet3rN67
	McnSvFtETT89lGnc+cg/FzpCQC03NR4ZnDPHdS5s6nQtRFoNgworh1k1GzHB6T6M6tOy8iBSeoTXI
	SqGsztO1uFg5bat7inXRQLRaROE8KLCvQXaX+fEweeZfr1ppOA07NEjX7Qa5JoY8Py9xGGu2Hyg9Q
	VJmSMLTI9wsEFaI0oHyytd4d8pLrYFrKt6aeOP4ro2s7a15ZsFVyh6fAjYB7T05FpvHWORG9+oCsY
	XIyk64nKiDp72W7TVPssrlwQ8j1NNXq352gEd9miCDPnpN1BqxbieoKc8yOZuwRNPL4RCAkJ9HHK4
	SpAYiKIpgyJMySnWJgRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1CZL-0003gs-G2; Fri, 23 Aug 2019 16:37:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1CZ2-0003Xx-TB
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 16:37:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 40C0C28;
 Fri, 23 Aug 2019 09:37:22 -0700 (PDT)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 865353F246;
 Fri, 23 Aug 2019 09:37:20 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-mm@kvack.org
Subject: [PATCH v10 0/1] arm64 tagged address ABI
Date: Fri, 23 Aug 2019 17:37:16 +0100
Message-Id: <20190823163717.19569-1-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_093724_981181_A03040E6 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Dave Hansen <dave.hansen@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Minor update to the arm64 tagged address ABI documentation since v9,
posted here:

http://lkml.kernel.org/r/20190821164730.47450-1-catalin.marinas@arm.com

The mmap/mremap/... patch (1/3) has been queued in the -mm tree and
removed from this series. The tagged-address-abi.rst patch (2/3) has
been queued in the arm64 for-next/core tree. There is only one patch
left in this series (keeping the cover letter for consistency).

Changes in v10:

- Remove the tag preservation paragraph since the new ABI does not
  change the behaviour we already have. The only difference is that now
  the kernel can access tagged addresses (e.g. delivering a signal on a
  tagged alternate stack).

Vincenzo Frascino (1):
  arm64: Relax Documentation/arm64/tagged-pointers.rst

 Documentation/arm64/tagged-pointers.rst | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
