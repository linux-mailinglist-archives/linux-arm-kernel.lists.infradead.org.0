Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464DB16A5EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:18:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=thRVvfY11H7asEIqngj0HnaDK71fGK/mghxB7mkq2Ao=; b=mGp7oR0tqj3+alzuqyPlNR+Q4S
	rViMNbYQ7SxRCYZYIJ9EhOASAsolIera3+eRKX0mBunjgfVO1CjLV7KRAGI6Y1x+mRThLRCGgUBed
	gfL04R1SZiA+ebZ/s4j+ZX5f/OcULi/zbyzniLZCeuJpdZyYcYuU0JmGMUawmzrzs3pS3Pk2sM6BG
	UTMk/yfChhVnAM9WDtr8XtP9f+34YFUkUten3SC5zqmnfgWre51cUnRg7dYQF630Yd75Gz2ufNNiT
	XnuHdgkK78f77yMRQMrC/lONJrohTCdapweXY3sZHxMS4tw3/k4+2I1jDDe77kMWOcHYm5igbQ2r9
	7tJyTk0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Cgo-00080I-MW; Mon, 24 Feb 2020 12:18:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CgC-0007a6-AF
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:17:45 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 444EF20866;
 Mon, 24 Feb 2020 12:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582546664;
 bh=4sZ0PYKHHFjGjhnZonEyKKQjDJ4zZiNH+ld8nAMN3p8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ABtroxQbAhO6jWfeqWHPUB9Aa5LO4JbUnmNLihBq1KiGRVT70/pQJeyj3keVwr/U0
 pY8WrcJiW0piT3f+k3YnZrD83NwOf6jPTJhQe1j7B2dbLBzxvaU/1auHo1GPXEJRep
 CWh0FWUxoJGyF+pne+BEEQKGRPh81FfigtFBk2UA=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v3 2/5] efi/arm: Pass start and end addresses to
 cache_clean_flush()
Date: Mon, 24 Feb 2020 13:17:30 +0100
Message-Id: <20200224121733.2202-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200224121733.2202-1-ardb@kernel.org>
References: <20200224121733.2202-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_041744_381743_032F2E06 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Tony Lindgren <tony@atomide.com>,
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for turning the decompressor's cache clean/flush
operations into proper by-VA maintenance for v7 cores, pass the
start and end addresses of the regions that need cache maintenance
into cache_clean_flush in registers r0 and r1.

Currently, all implementations of cache_clean_flush ignore these
values, so no functional change is expected as a result of this
patch.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 39f7071d47c7..8487221bedb0 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1460,6 +1460,12 @@ ENTRY(efi_stub_entry)
 
 		@ Preserve return value of efi_entry() in r4
 		mov	r4, r0
+		add	r1, r4, #SZ_2M			@ DT end
+		bl	cache_clean_flush
+
+		ldr	r0, [sp]			@ relocated zImage
+		ldr	r1, =_edata			@ size of zImage
+		add	r1, r1, r0			@ end of zImage
 		bl	cache_clean_flush
 
 		@ The PE/COFF loader might not have cleaned the code we are
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
