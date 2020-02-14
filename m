Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DF715DC90
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:54:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLF414v1Ep50wHUmz44ANglLsH/v68PUvLETm4535xk=; b=Izb0la20ugYt1g
	VoGQ0w8GmkU5Qb50O5tKkfAHJXc+373ChrXcTuXfnVjbwe5Vto3Ay1/1t6hyf6zkipioXZEQrVSAg
	KD+vsvm6NOHCwKG/dXDA4CqGNKG1y3B4Qb73PrprIV79Q91/mHdFKKmtuJhloQUiva+w7laW502vE
	WsLl+mXej0JrpcTdROREXIyg+V7AToVmkQ5ZQ+qVTDunCLxAu3GQHYfvviSXF55/XT3CD8Q2/NRa2
	tVJOExpPled58b4zvI/VOrWKhdzq3TJ+zNximJ3JWlz9ccjaafafTy9I2NSWFteNVI6CZGZk+lugp
	9tN0eTryZ90O11htxYfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dIW-0007G2-9p; Fri, 14 Feb 2020 15:54:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dFH-0004DX-1S
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:51:12 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01CC824682;
 Fri, 14 Feb 2020 15:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695470;
 bh=YHz7O6G/jmkaVCvMuEpPsNeQD/iCyedN0ScyPG8tI5s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ml+pGZkWvBexceUZ2azyw9+5UOmMu6+rhY8Y/EkqY1sDwokk5HHQBK+OnBW2rm91F
 +cbkKknvKWYr4munvYRmO7B7tusDlTfSzy2/I3KUTs3fThcAZ3o6SUVNc2bpSMXkij
 3AZQl45fq9CU4VTeVYLW5cLpnBJwl0zi2Ki7ctnM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 105/542] ARM: 8952/1: Disable kmemleak on XIP
 kernels
Date: Fri, 14 Feb 2020 10:41:37 -0500
Message-Id: <20200214154854.6746-105-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075111_134301_F44329E4 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vincenzo Frascino <vincenzo.frascino@arm.com>

[ Upstream commit bc420c6ceefbb86cbbc8c00061bd779c17fa6997 ]

Kmemleak relies on specific symbols to register the read only data
during init (e.g. __start_ro_after_init).
Trying to build an XIP kernel on arm results in the linking error
reported below because when this option is selected read only data
after init are not allowed since .data is read only (.rodata).

  arm-linux-gnueabihf-ld: mm/kmemleak.o: in function `kmemleak_init':
  kmemleak.c:(.init.text+0x148): undefined reference to `__end_ro_after_init'
  arm-linux-gnueabihf-ld: kmemleak.c:(.init.text+0x14c):
     undefined reference to `__end_ro_after_init'
  arm-linux-gnueabihf-ld: kmemleak.c:(.init.text+0x150):
     undefined reference to `__start_ro_after_init'
  arm-linux-gnueabihf-ld: kmemleak.c:(.init.text+0x156):
     undefined reference to `__start_ro_after_init'
  arm-linux-gnueabihf-ld: kmemleak.c:(.init.text+0x162):
     undefined reference to `__start_ro_after_init'
  arm-linux-gnueabihf-ld: kmemleak.c:(.init.text+0x16a):
     undefined reference to `__start_ro_after_init'
  linux/Makefile:1078: recipe for target 'vmlinux' failed

Fix the issue enabling kmemleak only on non XIP kernels.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 96dab76da3b39..2c3a9fd05f571 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -74,7 +74,7 @@ config ARM
 	select HAVE_CONTEXT_TRACKING
 	select HAVE_COPY_THREAD_TLS
 	select HAVE_C_RECORDMCOUNT
-	select HAVE_DEBUG_KMEMLEAK
+	select HAVE_DEBUG_KMEMLEAK if !XIP_KERNEL
 	select HAVE_DMA_CONTIGUOUS if MMU
 	select HAVE_DYNAMIC_FTRACE if !XIP_KERNEL && !CPU_ENDIAN_BE32 && MMU
 	select HAVE_DYNAMIC_FTRACE_WITH_REGS if HAVE_DYNAMIC_FTRACE
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
