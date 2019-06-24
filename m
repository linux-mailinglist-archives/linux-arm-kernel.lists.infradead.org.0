Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF34F50662
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 11:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LqIF3whFTOJcAbhOpETXB8QgFdy9SlQ9UuCYDjupZ9M=; b=Irj2jt+/FN1x7Hh/BImhITGLty
	v+/NaoZkhu4+Hgc792bNfNPaF+ZiTS5eBV42rD0P7kcXlX35KbEo+Q/6bcgdHzkbtoOIXdHGfIh18
	qe5hGKp2ygez/fOOtvPtCqZzcvWt8xO+vrL4aMeYJFtOGPOlLk+qNT4XTFAssQF1xl0mEEZtizWOI
	0I8kn1afiQ7uKTlIAN83wIWE0znYGMN8ob5J03TwHMobrOtqEDMUIXUQefWkplrw6lZnIa61++/El
	FXGWOOjRNxKrjoFkUlRjJ4FJ4lBuqMnkjNF+MhI6lED5DqpxLv8ahuDWbewUEAOkTKXvZRSgYFj4/
	QCB4KOHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLlQ-0007tg-I5; Mon, 24 Jun 2019 09:59:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLi6-0005L8-HE
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:56:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 164721500;
 Mon, 24 Jun 2019 02:56:26 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC3213F71E;
 Mon, 24 Jun 2019 02:56:24 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC V3 11/18] arm64: alternative: Mark .altinstr_replacement as
 containing executable instructions
Date: Mon, 24 Jun 2019 10:55:41 +0100
Message-Id: <20190624095548.8578-12-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190624095548.8578-1-raphael.gault@arm.com>
References: <20190624095548.8578-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_025626_675302_6BB84594 
X-CRM114-Status: GOOD (  10.43  )
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
Cc: julien.thierry@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 jpoimboe@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Until now, the section .altinstr_replacement wasn't marked as containing
executable instructions on arm64. This patch changes that so that it is
coherent with what is done on x86.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 arch/arm64/include/asm/alternative.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
index b9f8d787eea9..e9e6b81e3eb4 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -71,7 +71,7 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
 	ALTINSTR_ENTRY(feature,cb)					\
 	".popsection\n"							\
 	" .if " __stringify(cb) " == 0\n"				\
-	".pushsection .altinstr_replacement, \"a\"\n"			\
+	".pushsection .altinstr_replacement, \"ax\"\n"			\
 	"663:\n\t"							\
 	newinstr "\n"							\
 	"664:\n\t"							\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
