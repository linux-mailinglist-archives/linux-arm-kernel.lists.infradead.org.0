Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 160E8DC9D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmjtbiLyInjEvXdytv4AzMclTqeKJOGOYr+3kB6ky6Y=; b=Vp5xQbkXR2bqpR
	rNvDUhce/A+1FxGDwtkLZ5UtdkMxVSBqEbLJTQ1jJXA8sUgpmTAeFNQpl108TT+ZX78QHXb2yVgZ5
	C7fO1IAj4p6gE1sRS6DDG8i6ur5D+LqfaSsQUGoCkbFEzOo2PSDXHxjeli59YX0TJy+ZE+jh1Eqjj
	mel9455xcAfjbDJK6qwFB5dAhyt9ES/miYzvpkhzN5vG+0cGdbdpuKtJtJbE+ZBizq9fHCFdbJBeh
	9zdC7MIHMCZhB4VWqEUSloJtwPqJUmlRIy0q75Pgin6LMvdNS6JQylTt4RDbUBghyTxASj8H8J8km
	WP1QLUg4tjGXwD+c81Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUYJ-0002Av-2L; Fri, 18 Oct 2019 15:52:31 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOr-0008F4-Q3
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:42:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BI3RlCkphMu98LUhkFBqinLvdrWlMTLwyfywYblxDVs=; b=Ix0tGg3n+BrbAP1YFGBjg9aAD4
 EzDkH+tgZwAdiz69Yuaxdlr0B9fTjXx7lGa0gxfG66H08XJFE+2TiRGHpmT0EMtkI5wkGYq40HFFG
 4Kc8bkHspsSQVf1FQt94ZpjSelv3MkArGQbZllvZxoRfMHVoP4Rrp7Xgs9chwbZvBeowZHtCYbc03
 U66HKGnnhchwvKDSlnIDflwF8vd0yPCcvrohdHxtvp7t8Yr6xzdVZoTuS4HIG4Hd5azsRl86rYo5N
 ZS8AraHahb9VJYZQDKp7YnxLyDp3YqyARggorPANk7xXM47Jn/SW1PZMO1aUofWDmJ8s4vGZUI1bE
 zD9C11KA==;
Received: from mout.kundenserver.de ([217.72.192.73])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOk-0007Wq-MQ
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:40 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MLi0U-1id1FP1lhY-00Hit3; Fri, 18 Oct 2019 17:42:31 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 34/46] ARM: pxa: remove get_clk_frequency_khz()
Date: Fri, 18 Oct 2019 17:41:49 +0200
Message-Id: <20191018154201.1276638-34-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ajv1C8WSwVVJwqubsC2bt5cO+b8wc4Y8xW9NXo4JVw9G1bsGrT2
 3+AXPyCmUhlneskgIxrP1/FVZhhyJDOeFVaZ7tzYj8Hstb5oJOuFDu2lJHTSf9417rg3p/w
 dIFCsdSou6O+Hmb7sa7EpVsP80GbrRnJTs+05l0OqYOo5OVAJHAtzYFZhOqsCeEISOScGj+
 DRePXvk5skmsTagbj3WvQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oBYQDQ5NikY=:1/p81ZtOp5BNF6NbpXcMrB
 WDiVRh3sMMuxA/8SaPXIMXYcTsSq2RSlU2NEnaJ1oBFcd1Kdr67kGzkTw9DtdSOLm9EU8T00N
 yNy4vDnSgAYf+Nst43jK8b5rcNPYrcLor1InPRd2v7LhQGd5tJJ7H5wXWKerdgr1DVIlcgEs5
 bcL78VQJdz8tgjyvc6Ip3wcCDqCqpZwsgf8Xb0K6NhE90J/nbilMhQrwR5c6U8y7z8UmEwCkY
 ysXqGzk1UhoCWNI2A988VVCZD5+wYCsOtBBd7DURKWgxjGu/qzgHJvjtN+wmvSSEZwvaPS+8R
 U2DkOy1Z6Z3FDo25RPeY90GmA5hzki5tadDZJ1dNOv/eab1eXMO+PNpYq9mlxKsB+Rr9AwzeT
 HVPaKTfCjgoUzN4Y/VBkzwH9vY6phomuVhXWpQP/KiIE9ASCLOwttKYAzmWl+7qrl7ob/avRB
 ub+NBSNFnvvIb0xaKQzbeE+qmmNiY8SVsY7jL7yxy6ejjFY9XCXWsmum2JunQSJdHAt80IzPB
 OCkfxGEGS2GwuvYQETR/3q01z0XNEN58i8olEcBMv5LunSB4SQqxDdwIS7aIMnO1LW6H/VOTz
 Q+/RDlrQZKJrnciw9X9jrC+hKgtL5b6XvbOh/UjzpDx9k6QhrzDNwWQ+hFmkcBBxF8ZK06ONh
 ascEnK0BRqWh39rYwTTJtjzKxuTnkz271NnQ4jv4lcVIEFxsYh18JX8Q34HA6dexcVaMPz9XQ
 Q7mydkeSFHx73dDypsCDoYuNK5BAQqqlB8Yc2QbiPnf6bYCItRy/AAyQmVkJAy/LvEaaBMq78
 AMuJ8SOiCx1+qzUszz5qFdEKhDQuvw2nCA/Bx6f9eo4MLvxXEb4v04OOXVGzi97Ru5/aPmkGF
 nyCg7GZL1rlZxn1uPhuQ==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

get_clk_frequency_khz() is not a proper name for a global function,
and there is only one caller.

Convert viper to use the properly namespaced
pxa25x_get_clk_frequency_khz() and remove the other references.

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Viresh Kumar <viresh.kumar@linaro.org>
Cc: linux-pm@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/generic.c      | 15 ---------------
 arch/arm/mach-pxa/generic.h      |  1 -
 arch/arm/mach-pxa/viper.c        |  2 +-
 drivers/cpufreq/pxa2xx-cpufreq.c |  2 --
 4 files changed, 1 insertion(+), 19 deletions(-)

diff --git a/arch/arm/mach-pxa/generic.c b/arch/arm/mach-pxa/generic.c
index fe1d55d328e5..2c2c82fcf9cb 100644
--- a/arch/arm/mach-pxa/generic.c
+++ b/arch/arm/mach-pxa/generic.c
@@ -55,21 +55,6 @@ void __init pxa_timer_init(void)
 	pxa_timer_nodt_init(IRQ_OST0, io_p2v(0x40a00000));
 }
 
-/*
- * Get the clock frequency as reflected by CCCR and the turbo flag.
- * We assume these values have been applied via a fcs.
- * If info is not 0 we also display the current settings.
- */
-unsigned int get_clk_frequency_khz(int info)
-{
-	if (cpu_is_pxa25x())
-		return pxa25x_get_clk_frequency_khz(info);
-	else if (cpu_is_pxa27x())
-		return pxa27x_get_clk_frequency_khz(info);
-	return 0;
-}
-EXPORT_SYMBOL(get_clk_frequency_khz);
-
 void pxa_smemc_set_pcmcia_timing(int sock, u32 mcmem, u32 mcatt, u32 mcio)
 {
 	__raw_writel(mcmem, MCMEM(sock));
diff --git a/arch/arm/mach-pxa/generic.h b/arch/arm/mach-pxa/generic.h
index 67925d3ea026..2f706ef97357 100644
--- a/arch/arm/mach-pxa/generic.h
+++ b/arch/arm/mach-pxa/generic.h
@@ -11,7 +11,6 @@
 
 struct irq_data;
 
-extern unsigned int get_clk_frequency_khz(int info);
 extern void __init pxa_dt_irq_init(int (*fn)(struct irq_data *,
 					     unsigned int));
 extern void __init pxa_map_io(void);
diff --git a/arch/arm/mach-pxa/viper.c b/arch/arm/mach-pxa/viper.c
index fe74ee266871..e341e26f7e2a 100644
--- a/arch/arm/mach-pxa/viper.c
+++ b/arch/arm/mach-pxa/viper.c
@@ -852,7 +852,7 @@ static void __init viper_init_vcore_gpios(void)
 		goto err_dir;
 
 	/* c/should assume redboot set the correct level ??? */
-	viper_set_core_cpu_voltage(get_clk_frequency_khz(0), 1);
+	viper_set_core_cpu_voltage(pxa25x_get_clk_frequency_khz(0), 1);
 
 	return;
 
diff --git a/drivers/cpufreq/pxa2xx-cpufreq.c b/drivers/cpufreq/pxa2xx-cpufreq.c
index 0f0e676ff781..e74d36d6f78d 100644
--- a/drivers/cpufreq/pxa2xx-cpufreq.c
+++ b/drivers/cpufreq/pxa2xx-cpufreq.c
@@ -107,8 +107,6 @@ static struct pxa_freqs pxa27x_freqs[] = {
 static struct cpufreq_frequency_table
 	pxa27x_freq_table[NUM_PXA27x_FREQS+1];
 
-extern unsigned get_clk_frequency_khz(int info);
-
 #ifdef CONFIG_REGULATOR
 
 static int pxa_cpufreq_change_voltage(const struct pxa_freqs *pxa_freq)
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
