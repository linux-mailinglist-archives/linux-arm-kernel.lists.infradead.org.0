Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BDC13E564
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:14:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbfraR6CpaV7lSkevUF5ewgjiNzXTiA9yc5vt1aikDM=; b=kgcG9irD7DhHDv
	wHxSC7yIX/7sbX860ZUx1zRZ7God5T86sjb/Kjf88jeRPI2vFmK3BhPsAPjNAMbnNdd4lpTf4NIWU
	43gaDLvOrDLzEMlPPXD1JgOoF2942LUMU6Y9cpZE1j3pqP/6CNWbgiTx8ujcohvvqyQStsCfvTAgu
	YWxc17oz3cyckhbXublsj+xOFpjNtR+YC8tVsz/YLloGM/BjSP7OxCSZEUceytVTuasq+lRzcLhGY
	FJTCxgmSmTjek8xvyYpXTXIj8ndzKaF3qOrCkh820pZln6OQVPO5Rr1p87r9hG2F3oeQHIg+X174M
	HVyw/ur46vOrzABEzPnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8j2-0007k9-Ig; Thu, 16 Jan 2020 17:14:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8X7-0002G1-Nb
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:02:17 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E9FC2073A;
 Thu, 16 Jan 2020 17:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194132;
 bh=pOkluVnHUm+ELhjKzSD++0rgASEdiCKf2x3XTdb8Res=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q1nfaltul760cPgg8VJtXsxkPdbBE4H/6pEQ6OfBkPjQPwrOlv3xtCfH/7SxhCbNF
 Z2ATpoVEiWFYm8s6aKTOeLEYata1f+Vn+vEWL7ibqpZsTILx/hQBfiJBUjHWSHkz0q
 Am9H8eJxuXQu3agEyYA1PAYIcO5vD+G0VzjzWcgk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 222/671] ARM: 8849/1: NOMMU: Fix encodings for
 PMSAv8's PRBAR4/PRLAR4
Date: Thu, 16 Jan 2020 11:52:11 -0500
Message-Id: <20200116165940.10720-105-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090213_818043_562E442A 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vladimir Murzin <vladimir.murzin@arm.com>

[ Upstream commit d410a8a49e3e00e07d43037e90f776d522b25a6a ]

To access PRBARn, where n is referenced as a binary number:

MRC p15, 0, <Rt>, c6, c8+n[3:1], 4*n[0] ; Read PRBARn into Rt
MCR p15, 0, <Rt>, c6, c8+n[3:1], 4*n[0] ; Write Rt into PRBARn

To access PRLARn, where n is referenced as a binary number:

MRC p15, 0, <Rt>, c6, c8+n[3:1], 4*n[0]+1 ; Read PRLARn into Rt
MCR p15, 0, <Rt>, c6, c8+n[3:1], 4*n[0]+1 ; Write Rt into PRLARn

For PR{B,L}AR4, n is 4, n[0] is 0, n[3:1] is 2, while current encoding
done with n[0] set to 1 which is wrong. Use proper encoding instead.

Fixes: 046835b4aa22b9ab6aa0bb274e3b71047c4b887d ("ARM: 8757/1: NOMMU: Support PMSAv8 MPU")
Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/kernel/head-nommu.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/head-nommu.S b/arch/arm/kernel/head-nommu.S
index 326a97aa3ea0..22efcf48604c 100644
--- a/arch/arm/kernel/head-nommu.S
+++ b/arch/arm/kernel/head-nommu.S
@@ -441,8 +441,8 @@ M_CLASS(str	r6, [r12, #PMSAv8_RLAR_A(3)])
 	str	r5, [r12, #PMSAv8_RBAR_A(0)]
 	str	r6, [r12, #PMSAv8_RLAR_A(0)]
 #else
-	mcr	p15, 0, r5, c6, c10, 1			@ PRBAR4
-	mcr	p15, 0, r6, c6, c10, 2			@ PRLAR4
+	mcr	p15, 0, r5, c6, c10, 0			@ PRBAR4
+	mcr	p15, 0, r6, c6, c10, 1			@ PRLAR4
 #endif
 #endif
 	ret	lr
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
