Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B4411BE22
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 21:44:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95K5RtNqNd/2vZe7EEY5/GIl4oXN8ndIOFoLy+8dslk=; b=spem3d3AO3WkoW
	Fjrdz9Eaq2epmou7Bx4TaAfHesswVL6r7UUooreDYJ85Om5a/LHvd0vwtExJ/18130rSjbyzEhJVt
	Egn9+7xX8QbceQBlXE4sEY5yRmdJRtAWQ9c3bNd215BU9a9W7KwV0BssCi/X2wtKrJJlWxpSyNZnM
	xE1p0dWYxL8c6D3eV8ig/Icg5OV5WmZRj6n9aqfn/XlxtHMHc2xQ3gAqmBB2d3ACW9O4sI/avGvWA
	7EUoPcEx6rDHBjRuCl/nlQ9LNTH8jS+5QhEoNqwDqEEEBKFMZH03iQp0JyXfgufL0TqKBSzvsVv20
	5dDtGpmMS1VLoPbnFdTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if8qT-0005GC-GO; Wed, 11 Dec 2019 20:44:29 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8qM-0005Fm-C2
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 20:44:23 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M8hR1-1iaRs43tkf-004kEW; Wed, 11 Dec 2019 21:44:06 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Jens Axboe <axboe@kernel.dk>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 01/24] compat: ARM64: always include asm-generic/compat.h
Date: Wed, 11 Dec 2019 21:42:35 +0100
Message-Id: <20191211204306.1207817-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191211204306.1207817-1-arnd@arndb.de>
References: <20191211204306.1207817-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:mz5wMeP1mI7KLnX+L9TZUVo6MIfdhwfA5AkmOs+OaphdklUbCnv
 X7MrRZI2R9VJWf66NRTLnVoMD6/5RMLHE3sUWVfolxdjEhWoRD3hstmd5OvxofRbJrFFUNM
 U0inFOTcxWdr9e0WR63XsUOuZLnDnhZ1/cLHTwAuxz2imLLI2AkfpqGZDH2tXHJueqlDJrw
 WzwJOQaA0tpR0khCs2klQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5jcoHq9nJuQ=:BcHub+UBDAq7thiTpDno2w
 hSkCw8JTpuGlDJ57SmOUvV7vYHfSYEnIJSeWHWCp+bdDSoMCLrwMoJ7odEpI7WPtvB/ScsCvX
 VeNcQSKHIGcbiNr6/sqYv0LUIPEo7hppvFJSEtqOF37EVMjvgPUKUtF4HBXCpk0Qv2gnFmh91
 Q5AnpgUNMu7WOZYqE9pKT2CGY1GEijsATykSiXwT1JyYR87rhdQZcEhx1tuppOD1KC0MDCJK5
 x1wrBONVLyazD0Q/wnklpJPW2Mms4LzT3Ort5hQVmp/MItiaBcxs85dOHOFiDvuob622PfNOV
 PEDjts6WgUADfTCBpFPWOcw7WwWbSDqRM3PmRgqEGkxmu5bKOMfVqbq6n9+3N4dptgwE6fDOn
 /A4T6BKSblu+oPkGFGBZQjDyC1SMwpWBPHvrOdyPnIPMfIs5ULnIkxOJBty5xLKC0e0meDH9+
 b4tf89eeCRcctW9EV6YKAfobJs2SwCW83Tslrp46TVUCeQz4qUEPW3KwdgALLQ5tSZRT2r2hK
 Tbsc9JsabSWTA+wBNM/jL/actcRW5K9G+qn2EDyqMD4Xkf57Y0GRmBpmX+YUXOr5//J6q5O3P
 i8mzTH1iwJ78Ki3iKyPadTRxzutFG4fEZc9C9WpSjQSU9PGBW9Wdd+YaY565zaJFLYICgy/IG
 sYzvlRm9IEK780kxN1oEFgawAcIXTryC1iAO4mWE1E+146mOi7CPZOufM4oztTZtaRV0Q7HHr
 /LiW6o/Juxdn0noEDDvQ3Br5nYMzuo6xUUfowN5iAd8VF+A3ACDBsRdAgeWsRBDRdCwDTjHr2
 wDcgxTwXMlZAe8sjLiqZVYp2RC5Krc9DwXkwsg1nmKODL7eO+4vgb38hZWP/qBtq1KbRCaAit
 lAicoBqmZ4Snql/Awy/Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_124422_701479_47BD016E 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: y2038@lists.linaro.org, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to use compat_* type defininitions in device drivers
outside of CONFIG_COMPAT, move the inclusion of asm-generic/compat.h
ahead of the #ifdef.

All other architectures already do this.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm64/include/asm/compat.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/compat.h b/arch/arm64/include/asm/compat.h
index b0d53a265f1d..7b4172ce497c 100644
--- a/arch/arm64/include/asm/compat.h
+++ b/arch/arm64/include/asm/compat.h
@@ -4,6 +4,9 @@
  */
 #ifndef __ASM_COMPAT_H
 #define __ASM_COMPAT_H
+
+#include <asm-generic/compat.h>
+
 #ifdef CONFIG_COMPAT
 
 /*
@@ -13,8 +16,6 @@
 #include <linux/sched.h>
 #include <linux/sched/task_stack.h>
 
-#include <asm-generic/compat.h>
-
 #define COMPAT_USER_HZ		100
 #ifdef __AARCH64EB__
 #define COMPAT_UTS_MACHINE	"armv8b\0\0"
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
