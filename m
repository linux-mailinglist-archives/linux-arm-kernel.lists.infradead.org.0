Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 919D5143C45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:48:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R1pIQjphEC1xDmNEf8/zk3pqZq1qTPqq0+MssdjqKoM=; b=hQpWdWRZNBnydwYeT/vFy4m40U
	b71roenK3qCsLuhBO3/eWcBXURbPXer22nnspe/fSRS6TxNkh5Lap4odibwZhQdx0bdPNGQN6UKhr
	MHXEXZ7f1CTgJ1FpjqwgGpy+OcHyIFhPtJtXWoSgkm+p91Dy+DrRuL3coiqWllUuuvHe1Yh3quWOC
	ydrbsgIhmNn8pukH1pCGv7k6DDm7BP6qm8U64Ym49H+97K8dSdvP9SGaOElzcZrAUl87+UNGdEygO
	yYkFCkfbBg1oDnwK3H9rkzhzchGbzElihU3aVKL22HHf4zYzqRes1nrDHr1wflZj3QUi+fqV50MbF
	ImAPl7Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1its18-0006yb-3q; Tue, 21 Jan 2020 11:48:22 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itquY-00027t-O8
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:37:44 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id sydS2100K5USYZQ06ydSyB; Tue, 21 Jan 2020 11:37:26 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-00011N-5r; Tue, 21 Jan 2020 11:37:26 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-0000U2-4L; Tue, 21 Jan 2020 11:37:26 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 07/20] ARM: berlin: Drop unneeded select of HAVE_SMP
Date: Tue, 21 Jan 2020 11:37:09 +0100
Message-Id: <20200121103722.1781-7-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121103722.1781-1-geert+renesas@glider.be>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023730_941221_AAE79A4F 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:110:4:0:0:f00:18 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for Marvell Berlin SoCs depends on ARCH_MULTI_V7.
As the latter selects HAVE_SMP, there is no need for MACH_BERLIN_BG2 to
select HAVE_SMP.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
All patches in this series are independent of each other.
Cover letter at https://lore.kernel.org/r/20200121103413.1337-1-geert+renesas@glider.be

 arch/arm/mach-berlin/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-berlin/Kconfig b/arch/arm/mach-berlin/Kconfig
index 5b1f61fd78780300..01861fa72c9714b7 100644
--- a/arch/arm/mach-berlin/Kconfig
+++ b/arch/arm/mach-berlin/Kconfig
@@ -19,7 +19,6 @@ config MACH_BERLIN_BG2
 	select CPU_PJ4B
 	select HAVE_ARM_SCU if SMP
 	select HAVE_ARM_TWD if SMP
-	select HAVE_SMP
 	select PINCTRL_BERLIN_BG2
 
 config MACH_BERLIN_BG2CD
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
