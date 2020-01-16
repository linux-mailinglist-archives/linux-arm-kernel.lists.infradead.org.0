Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74598140048
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 00:57:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+aL5A7W0LjMhwZVxIoUdVChiCqULOqvvmvbBbmn8ktE=; b=dAf
	tAwcEnMbautJSyzr0E2jNer0xREtu+hHoVQvr8Y2XepYQhARQ5ZQUx0YDngSWjsgfXr4Jcpa+lMX9
	DicF1K/bL5DeiPPLJXkA7BQyDdb/JXB3mkoQ0jkMDh5qNw9W2KRQCHP0C1wN0c4cxBqGo+TxdacWe
	SLwGgRiO/UxP8oMV8Wk2Cd1EIe4fp9gU31vTYxbJ13kzGlpcPzy5vtYl3QfELg/RIi4BDJ/ou8k+o
	5shx4dU98+LzhIRAFKhzSCSs06CKIaov8Ilptb86Q/LrdFFZFJkNKQ+2b/czo7xU8tkYhNWTcSPo/
	/mgfjI7cFrfxEsuwxU+LKJcph7hNFqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isF1G-0000fD-Hb; Thu, 16 Jan 2020 23:57:46 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isF18-0000eS-16
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 23:57:39 +0000
Received: by mail-pf1-x444.google.com with SMTP id x6so11027037pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 15:57:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=zIS6PSbeU0Wk5Q/And2tq+93kIpjsUkkTCKLRvCiki4=;
 b=Fnws+Sn0kkXZ4n9FciZTKf3Yu5z3m9VwlmkPyxOe1BU9rO07SDB+XzIMcctAjdU+HL
 NVzmD23WbCDhQvjuhMuVzZt9KoSjL9B800UQ+9Ihu0XpSxR/fwSqMFQUGTGHxbwjHVbG
 24MZ0NJVwGIBIpFxYAb/sVJ2sU/C03FWbqSzCM2fRr1NsSFxXKhz4t18Y0ua1zZA4xHL
 SDZ92fNsjrssP/WgQ0wHux8MMRJLx+4uA7mpoWR8mF6cavbTf6X7pTWRQIyTFyGCeT/G
 vWydtMY8Er0smbLPQZw4ZOu29ffVqKQAaTBok/eNvbAwI8Ie2eqHSMTPhvDiG/HGbqhq
 1/2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=zIS6PSbeU0Wk5Q/And2tq+93kIpjsUkkTCKLRvCiki4=;
 b=MSMDwoOtT+wMb0PHAFLLCGMw0U1llR7JMY6Icwqu7JJrAsZ0xwvjwpdGjtu3HNeJbE
 Pt0JgGM4hpZuI0h8qtQgafA8KcfTm9Vt/V8ywnTbr5ad0tA5/E46G2aFUEkY0UxBFfBz
 8T5C7fn7PwYWJzLK/hvnOrA7IJpA2lO8pCB4Lo4VUisMUt4H3McjzC9H8Bql7IF/trFF
 lj7YzkxdX8G9KLuY+kSm545Sgt0FzywJyP289RrwcsGu47p17ZhTkdqgvypST9mcpm8e
 Zc98iIgl3x4GB8B0vJxoI/BArahcRDqo8lpgYGCuVOXBoiQo94B5Ji02Y5lLilbR0arU
 uJ5Q==
X-Gm-Message-State: APjAAAV6Vy2Q+XjoGG9U8tbCAUzIFxgLWKu3mJd8tDvWa6r8iZfrfeI3
 ATfsfnMl4pQ0bcJwaqlOe8hXoNkW
X-Google-Smtp-Source: APXvYqx79kLh+JxQCON/MUilEwjbnvyw8aTXnF7x7+R8Ar8YnsYuAHnKFEKROTLAwKrGPvKGI0LRTg==
X-Received: by 2002:a62:1b4d:: with SMTP id b74mr73763pfb.59.1579219056792;
 Thu, 16 Jan 2020 15:57:36 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id t137sm24915148pgb.40.2020.01.16.15.57.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 15:57:36 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: VDSO: Match ARMv8 timer in cntvct_functional()
Date: Thu, 16 Jan 2020 15:57:28 -0800
Message-Id: <20200116235731.22395-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_155738_097131_0F1EF261 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nathan Lynch <nathan_lynch@mentor.com>,
 open list <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Alexios Zavras <alexios.zavras@intel.com>, opendmb@gmail.com,
 bcm-kernel-feedback-list@broadcom.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Enrico Weigelt <info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is possible for a system with an ARMv8 timer to run a 32-bit kernel.
When this happens we will unconditionally have the vDSO code remove the
__vdso_gettimeofday and __vdso_clock_gettime symbols because
cntvct_functional() returns false since it does not match that
compatibility string.

Fixes: ecf99a439105 ("ARM: 8331/1: VDSO initialization, mapping, and synchronization")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Hi all,

This was found by one of our customers and the following test program
below can be used to find whether the "bug" is fixed or not.

The Fixes tag is much after the arm_arch_timer.c gained support for the
ARMv8 timers, which is why it is being referenced.

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <dlfcn.h>

#define ARM_LDSO_NAME   "linux-vdso.so.1"

int main(int argc, char **argv)
{
        void *h, *sym[2];

        h = dlopen(ARM_LDSO_NAME, RTLD_NOW);
        if (!h) {
                fprintf(stderr, "failed top dlopen\n");
                return 1;
        }

        sym[0] = dlsym(h, "__vdso_gettimeofday");
        sym[1] = dlsym(h, "__vdso_clock_gettime");
        if (!sym[0] && !sym[1]) {
                fprintf(stderr, "Kernel does not provide symbols, check DT!\n");
        } else {
                fprintf(stdout, "Kernel provides vDSO symbols!\n");
        }

out:
        return dlclose(h);
}


 arch/arm/kernel/vdso.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/kernel/vdso.c b/arch/arm/kernel/vdso.c
index c89ac1b9d28b..e0330a25e1c6 100644
--- a/arch/arm/kernel/vdso.c
+++ b/arch/arm/kernel/vdso.c
@@ -94,6 +94,8 @@ static bool __init cntvct_functional(void)
 	 * this.
 	 */
 	np = of_find_compatible_node(NULL, NULL, "arm,armv7-timer");
+	if (!np)
+		np = of_find_compatible_node(NULL, NULL, "arm,armv8-timer");
 	if (!np)
 		goto out_put;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
