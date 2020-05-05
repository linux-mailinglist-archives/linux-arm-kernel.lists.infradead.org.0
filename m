Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFDB1C5A9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:09:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ylFS9U7b8O80RCAwxxE7nyaN627j8AEb+rEHyXQn2ig=; b=oYqpI8unPMcPbiR9XYLAsxT6yD
	TgUm/8Rgz1+Km1V2ptxt/+aKz8CZuS2nN0FpMZBiHoRPzDQMwQzC7hP/idvMEOgNQyJs47vL5soZv
	uC8AzuURgOdXJTbJhDlTCUYugYaKQXlj6iXaOn0jwhkz4tFpkEFb7YFwEn+dTrE1fg2E2+V38/NaW
	kWvfzn61qwx+fK4bzOKyDtB5bSNZbce/a48VF615LuMy2jVtpHd2OrEFp5UnkRmVPN04H+qPJ1CsK
	+7OzbDiYVYgD18AvQzlSf12Lz97kB3yPI5gKge0zU8i00xlogMzChbJom2q8T0H4Qp/rn7fj+U+6n
	tE3e08sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzCT-0000A8-EB; Tue, 05 May 2020 15:09:37 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzAW-0006jg-NA
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:07:42 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:bd97:8453:3b10:1832])
 by andre.telenet-ops.be with bizsmtp
 id b37T2200t3VwRR30137TP0; Tue, 05 May 2020 17:07:28 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAN-000282-N4; Tue, 05 May 2020 17:07:27 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAN-0000QZ-Kp; Tue, 05 May 2020 17:07:27 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: soc@kernel.org
Subject: [PATCH v2 04/15] ARM: asm9260: Drop unneeded select of
 GENERIC_CLOCKEVENTS
Date: Tue,  5 May 2020 17:07:11 +0200
Message-Id: <20200505150722.1575-5-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505150722.1575-1-geert+renesas@glider.be>
References: <20200505150722.1575-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_080736_942344_89FFFD1B 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 Oleksij Rempel <linux@rempel-privat.de>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for the Alphascale ASM9260 platform depends on ARCH_MULTI_V5,
and thus on ARCH_MULTIPLATFORM.
As the latter selects GENERIC_CLOCKEVENTS, there is no need for
MACH_ASM9260 to select GENERIC_CLOCKEVENTS.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Oleksij Rempel <linux@rempel-privat.de>
Acked-by: Arnd Bergmann <arnd@arndb.de>
---
v2:
  - Add Acked-by.
---
 arch/arm/mach-asm9260/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-asm9260/Kconfig b/arch/arm/mach-asm9260/Kconfig
index e42dbaa53bc61b20..a2e1d0aaf2529aa5 100644
--- a/arch/arm/mach-asm9260/Kconfig
+++ b/arch/arm/mach-asm9260/Kconfig
@@ -4,6 +4,5 @@ config MACH_ASM9260
 	depends on ARCH_MULTI_V5
 	select CPU_ARM926T
 	select ASM9260_TIMER
-	select GENERIC_CLOCKEVENTS
 	help
 	  Support for Alphascale ASM9260 based platform.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
