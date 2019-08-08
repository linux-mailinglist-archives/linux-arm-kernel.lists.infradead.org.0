Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4714186CA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ft8UoI6KQm/HeHswdhSPZ8iMnLvluSymR7eEirUJzQE=; b=OXOyYaFK6rm0PS
	otU9lUCBI/bC3k6TAydVQyyrKlN5LS7el6Zl0Blv3dUqy5WGXpNmYC2HcBV3ooWH3h9y62l6k2wvX
	lLEe2Zy8H5+iIzr4Se7LPpHIdByN/ousvPd4xA8dCJozK5y/JK0+ILS2n/XgmzsPF4EF0BAmNhvxA
	2sil268So6z3Kvb9ofOu8BSqeHlmx5iPnVcuusB7iqsU4RuWD7KQ1Yq4T01zPeKkxi3y+4yr9vZH/
	E04G5ry7qvhyrYZ8DW6lJWZUiz8bIkeRP9EV/iZgqROEn2mLT2Pj75sYKVo/DsRCUvF4c0aaFh21v
	x43BG51Dhd+sa83wSpKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqCu-0006Zr-AL; Thu, 08 Aug 2019 21:44:24 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqCB-0005VD-8y
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:43:43 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MMFdY-1hdko81SK6-00JGNw; Thu, 08 Aug 2019 23:43:14 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Tony Lindgren <tony@atomide.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Paul Walmsley <paul@pwsan.com>
Subject: [PATCH 17/22] ARM: omap1: remove some dead clock code
Date: Thu,  8 Aug 2019 23:41:27 +0200
Message-Id: <20190808214232.2798396-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190808214232.2798396-1-arnd@arndb.de>
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808214232.2798396-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:KdAcg2K45cxcjuD+1lFeNverRo4wXC0I14A27oYzWwByGkUvdgD
 vgZ+L0u5wbdpPGYYDwPJ/H40AlNMGIz1ibgpmA8P3fTW5xOoYQKmUQSupknlxbIsUtWhSnJ
 nNxplpZBZZP33tRvr15RIKPraRMb3EU1cX89bVwOIHnjowCrv/f64BcUojWaeUd6Q4Qs+dj
 z2ttP+fjjsWmXBTnruKaQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3M7oiyDqC7s=:PEtu9MAbpidC5/3nYSU/0H
 5sIq4f/RRmodYDyj6F21P5UzP2rI6LzKX6i+wtRm1Sqns2piFrCI/SRERZU9S84gUD09RaOrE
 e46PaujwKyjD1INZ62xn9/ngq3XN++6L1gukUkGncyzDs2SW624dpFvaXS6v4PZ34qcvtuPgh
 U+dy7GLGrAWlNr4xwyZDGcTdPF1cktO7zMQ3qds6P2L3A+DPqPGzBo9mGZI4eRemm3R6KWb/d
 41kLB1/7nygfK1o220NvQdf/7+RT0wtEbNNgSXF+sBRfzCCQZwVGW9ZHjcomM9osmAR76+7+A
 DX7CKj3okGq5ixUxsB3coUQgiNARBh6LU8hvBy+30k+T/GnyioB3oTgp1itapERzoNZpsYtL4
 Wdp2MTM3dOgsD75YFGZ7oJxqEYvOmKjqfoN/NXMoh4OYdk/d484ZG8ZLaDcicew/49yF8GE8S
 A+o992UxQQCAm8aSoJTyPKHW+pei3qKuNAIHRN6vI32qqJCsFo2TuGqGRMdwV5YILnKMILnLO
 Gjtb0CpBiIo7nug/p/mqkmgLepK0FmJc0xVycmAQQHImn9DlgUELEvkWJRoDsFWdiv68yU0Cj
 zmvY10tVXYDqg7a9uIXzR0VKVWwzttR6ZW64IlA6yEiWoeVglUrmi4h5BSneu/Hmvfcr+XBK1
 ttMRFdmz1gJhFAOAbu4+PoI9Rr9pERtmOKEfZ7eXMLM7ZC0H6X7wvfATNmGrHXImYRwDVI57J
 GalzMQGefyoEyaguKsivjffAWvz6pVkDt/Y6Qw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_144339_801853_57470E17 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark all internal functions as 'static', remove forward declarations
and those functions that have no caller, as well as any unused
macros or struct fields.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-omap1/clock.c | 409 +++++++++---------------------------
 1 file changed, 96 insertions(+), 313 deletions(-)

diff --git a/arch/arm/mach-omap1/clock.c b/arch/arm/mach-omap1/clock.c
index bc51d5e24a9e..b2b0355fae4c 100644
--- a/arch/arm/mach-omap1/clock.c
+++ b/arch/arm/mach-omap1/clock.c
@@ -28,7 +28,6 @@
 #include "sram.h"
 #include "usb.h"
 
-struct module;
 struct clk;
 
 struct omap_clk {
@@ -53,25 +52,14 @@ struct omap_clk {
 #define CK_16XX		(1 << 3)	/* 16xx, 17xx, 5912 */
 #define CK_1710		(1 << 4)	/* 1710 extra for rate selection */
 
-
-/* Temporary, needed during the common clock framework conversion */
-#define __clk_get_name(clk)	(clk->name)
-#define __clk_get_parent(clk)	(clk->parent)
-#define __clk_get_rate(clk)	(clk->rate)
-
 /**
  * struct clkops - some clock function pointers
  * @enable: fn ptr that enables the current clock in hardware
  * @disable: fn ptr that enables the current clock in hardware
- * @find_idlest: function returning the IDLEST register for the clock's IP blk
- * @find_companion: function returning the "companion" clk reg for the clock
- * @allow_idle: fn ptr that enables autoidle for the current clock in hardware
- * @deny_idle: fn ptr that disables autoidle for the current clock in hardware
  *
  * A "companion" clk is an accompanying clock to the one being queried
  * that must be enabled for the IP module connected to the clock to
  * become accessible by the hardware.  Neither @find_idlest nor
- * @find_companion should be needed; that information is IP
  * block-specific; the hwmod code has been created to handle this, but
  * until hwmod data is ready and drivers have been converted to use PM
  * runtime calls in place of clk_enable()/clk_disable(), @find_idlest and
@@ -80,12 +68,6 @@ struct omap_clk {
 struct clkops {
 	int			(*enable)(struct clk *);
 	void			(*disable)(struct clk *);
-	void			(*find_idlest)(struct clk *, void __iomem **,
-					       u8 *, u8 *);
-	void			(*find_companion)(struct clk *, void __iomem **,
-						  u8 *);
-	void			(*allow_idle)(struct clk *);
-	void			(*deny_idle)(struct clk *);
 };
 
 /*
@@ -93,19 +75,10 @@ struct clkops {
  *
  * XXX document the rest of the clock flags here
  *
- * CLOCK_CLKOUTX2: (OMAP4 only) DPLL CLKOUT and CLKOUTX2 GATE_CTRL
- *     bits share the same register.  This flag allows the
- *     omap4_dpllmx*() code to determine which GATE_CTRL bit field
- *     should be used.  This is a temporary solution - a better approach
- *     would be to associate clock type-specific data with the clock,
- *     similar to the struct dpll_data approach.
  */
 #define ENABLE_REG_32BIT	(1 << 0)	/* Use 32-bit access */
 #define CLOCK_IDLE_CONTROL	(1 << 1)
 #define CLOCK_NO_IDLE_PARENT	(1 << 2)
-#define ENABLE_ON_INIT		(1 << 3)	/* Enable upon framework init */
-#define INVERT_ENABLE		(1 << 4)	/* 0 enables, 1 disables */
-#define CLOCK_CLKOUTX2		(1 << 5)
 
 /**
  * struct clk - OMAP struct clk
@@ -126,9 +99,8 @@ struct clkops {
  * @fixed_div: when > 0, this clock's rate is its parent's rate / @fixed_div
  * @flags: see "struct clk.flags possibilities" above
  * @rate_offset: bitshift for rate selection bitfield (OMAP1 only)
- * @src_offset: bitshift for source selection bitfield (OMAP1 only)
  *
- * XXX @rate_offset, @src_offset should probably be removed and OMAP1
+ * XXX @rate_offset, should probably be removed and OMAP1
  * clock code converted to use clksel.
  *
  * XXX @usecount is poorly named.  It should be "enable_count" or
@@ -166,67 +138,11 @@ struct clk {
 	u8			fixed_div;
 	u8			flags;
 	u8			rate_offset;
-	u8			src_offset;
 #if defined(CONFIG_PM_DEBUG) && defined(CONFIG_DEBUG_FS)
 	struct dentry		*dent;	/* For visible tree hierarchy */
 #endif
 };
 
-struct clk_functions {
-	int		(*clk_enable)(struct clk *clk);
-	void		(*clk_disable)(struct clk *clk);
-	long		(*clk_round_rate)(struct clk *clk, unsigned long rate);
-	int		(*clk_set_rate)(struct clk *clk, unsigned long rate);
-	int		(*clk_set_parent)(struct clk *clk, struct clk *parent);
-	void		(*clk_allow_idle)(struct clk *clk);
-	void		(*clk_deny_idle)(struct clk *clk);
-	void		(*clk_disable_unused)(struct clk *clk);
-};
-
-extern int clk_init(struct clk_functions *custom_clocks);
-extern void clk_preinit(struct clk *clk);
-extern int clk_register(struct clk *clk);
-extern void clk_reparent(struct clk *child, struct clk *parent);
-extern void clk_unregister(struct clk *clk);
-extern void propagate_rate(struct clk *clk);
-extern void recalculate_root_clocks(void);
-extern unsigned long followparent_recalc(struct clk *clk);
-extern void clk_enable_init_clocks(void);
-unsigned long omap_fixed_divisor_recalc(struct clk *clk);
-extern struct clk *omap_clk_get_by_name(const char *name);
-extern int omap_clk_enable_autoidle_all(void);
-extern int omap_clk_disable_autoidle_all(void);
-
-extern const struct clkops clkops_null;
-
-extern struct clk dummy_ck;
-
-extern int omap1_clk_enable(struct clk *clk);
-extern void omap1_clk_disable(struct clk *clk);
-extern long omap1_clk_round_rate(struct clk *clk, unsigned long rate);
-extern int omap1_clk_set_rate(struct clk *clk, unsigned long rate);
-extern unsigned long omap1_ckctl_recalc(struct clk *clk);
-extern int omap1_set_sossi_rate(struct clk *clk, unsigned long rate);
-extern unsigned long omap1_sossi_recalc(struct clk *clk);
-extern unsigned long omap1_ckctl_recalc_dsp_domain(struct clk *clk);
-extern int omap1_clk_set_rate_dsp_domain(struct clk *clk, unsigned long rate);
-extern int omap1_set_uart_rate(struct clk *clk, unsigned long rate);
-extern unsigned long omap1_uart_recalc(struct clk *clk);
-extern int omap1_set_ext_clk_rate(struct clk *clk, unsigned long rate);
-extern long omap1_round_ext_clk_rate(struct clk *clk, unsigned long rate);
-extern void omap1_init_ext_clk(struct clk *clk);
-extern int omap1_select_table_rate(struct clk *clk, unsigned long rate);
-extern long omap1_round_to_table_rate(struct clk *clk, unsigned long rate);
-extern int omap1_clk_set_rate_ckctl_arm(struct clk *clk, unsigned long rate);
-extern long omap1_clk_round_rate_ckctl_arm(struct clk *clk, unsigned long rate);
-extern unsigned long omap1_watchdog_recalc(struct clk *clk);
-
-#ifdef CONFIG_OMAP_RESET_CLOCKS
-extern void omap1_clk_disable_unused(struct clk *clk);
-#else
-#define omap1_clk_disable_unused	NULL
-#endif
-
 struct uart_clk {
 	struct clk	clk;
 	unsigned long	sysc_addr;
@@ -286,16 +202,9 @@ struct arm_idlect1_clk {
 #define SOFT_REQ_REG2		0xfffe0880
 
 extern __u32 arm_idlect1_mask;
-extern struct clk *api_ck_p, *ck_dpll1_p, *ck_ref_p;
-
-extern const struct clkops clkops_dspck;
-extern const struct clkops clkops_dummy;
-extern const struct clkops clkops_uart_16xx;
-extern const struct clkops clkops_generic;
 
 /* used for passing SoC type to omap1_{select,round_to}_table_rate() */
-extern u32 cpu_mask;
-
+static u32 cpu_mask;
 
 /* Some ARM_IDLECT1 bit shifts - used in struct arm_idlect1_clk */
 #define IDL_CLKOUT_ARM_SHIFT			12
@@ -337,9 +246,8 @@ extern u32 cpu_mask;
 #define SOFT_COM_REQ_SHIFT		1	/* sys_ck gate for com proc? */
 #define SOFT_DPLL_REQ_SHIFT		0
 
-
 __u32 arm_idlect1_mask;
-struct clk *api_ck_p, *ck_dpll1_p, *ck_ref_p;
+static struct clk *api_ck_p, *ck_dpll1_p, *ck_ref_p;
 
 static LIST_HEAD(clocks);
 static DEFINE_MUTEX(clocks_mutex);
@@ -349,13 +257,13 @@ static DEFINE_SPINLOCK(clockfw_lock);
  * Omap1 specific clock functions
  */
 
-unsigned long omap1_uart_recalc(struct clk *clk)
+static unsigned long omap1_uart_recalc(struct clk *clk)
 {
 	unsigned int val = __raw_readl(clk->enable_reg);
 	return val & clk->enable_bit ? 48000000 : 12000000;
 }
 
-unsigned long omap1_sossi_recalc(struct clk *clk)
+static unsigned long omap1_sossi_recalc(struct clk *clk)
 {
 	u32 div = omap_readl(MOD_CONF_CTRL_1);
 
@@ -472,7 +380,7 @@ static int calc_dsor_exp(struct clk *clk, unsigned long rate)
 	return dsor_exp;
 }
 
-unsigned long omap1_ckctl_recalc(struct clk *clk)
+static unsigned long omap1_ckctl_recalc(struct clk *clk)
 {
 	/* Calculate divisor encoded as 2-bit exponent */
 	int dsor = 1 << (3 & (omap_readw(ARM_CKCTL) >> clk->rate_offset));
@@ -480,24 +388,6 @@ unsigned long omap1_ckctl_recalc(struct clk *clk)
 	return clk->parent->rate / dsor;
 }
 
-unsigned long omap1_ckctl_recalc_dsp_domain(struct clk *clk)
-{
-	int dsor;
-
-	/* Calculate divisor encoded as 2-bit exponent
-	 *
-	 * The clock control bits are in DSP domain,
-	 * so api_ck is needed for access.
-	 * Note that DSP_CKCTL virt addr = phys addr, so
-	 * we must use __raw_readw() instead of omap_readw().
-	 */
-	omap1_clk_enable(api_ck_p);
-	dsor = 1 << (3 & (__raw_readw(DSP_CKCTL) >> clk->rate_offset));
-	omap1_clk_disable(api_ck_p);
-
-	return clk->parent->rate / dsor;
-}
-
 /*-------------------------------------------------------------------------
  * Omap1 MPU rate table
  *-------------------------------------------------------------------------*/
@@ -510,7 +400,7 @@ struct mpu_rate {
 	u32			flags;
 };
 
-struct mpu_rate omap1_rate_table[] = {
+static struct mpu_rate omap1_rate_table[] = {
 	/* MPU MHz, xtal MHz, dpll1 MHz, CKCTL, DPLL_CTL
 	 * NOTE: Comment order here is different from bits in CKCTL value:
 	 * armdiv, dspdiv, dspmmu, tcdiv, perdiv, lcddiv
@@ -547,7 +437,7 @@ struct mpu_rate omap1_rate_table[] = {
 };
 
 /* MPU virtual clock functions */
-int omap1_select_table_rate(struct clk *clk, unsigned long rate)
+static int omap1_select_table_rate(struct clk *clk, unsigned long rate)
 {
 	/* Find the highest supported frequency <= rate and switch to it */
 	struct mpu_rate * ptr;
@@ -582,7 +472,7 @@ int omap1_select_table_rate(struct clk *clk, unsigned long rate)
 	return 0;
 }
 
-int omap1_clk_set_rate_dsp_domain(struct clk *clk, unsigned long rate)
+static int omap1_clk_set_rate_dsp_domain(struct clk *clk, unsigned long rate)
 {
 	int dsor_exp;
 	u16 regval;
@@ -602,7 +492,7 @@ int omap1_clk_set_rate_dsp_domain(struct clk *clk, unsigned long rate)
 	return 0;
 }
 
-long omap1_clk_round_rate_ckctl_arm(struct clk *clk, unsigned long rate)
+static long omap1_clk_round_rate_ckctl_arm(struct clk *clk, unsigned long rate)
 {
 	int dsor_exp = calc_dsor_exp(clk, rate);
 	if (dsor_exp < 0)
@@ -612,7 +502,7 @@ long omap1_clk_round_rate_ckctl_arm(struct clk *clk, unsigned long rate)
 	return clk->parent->rate / (1 << dsor_exp);
 }
 
-int omap1_clk_set_rate_ckctl_arm(struct clk *clk, unsigned long rate)
+static int omap1_clk_set_rate_ckctl_arm(struct clk *clk, unsigned long rate)
 {
 	int dsor_exp;
 	u16 regval;
@@ -632,7 +522,7 @@ int omap1_clk_set_rate_ckctl_arm(struct clk *clk, unsigned long rate)
 	return 0;
 }
 
-long omap1_round_to_table_rate(struct clk *clk, unsigned long rate)
+static long omap1_round_to_table_rate(struct clk *clk, unsigned long rate)
 {
 	/* Find the highest supported frequency <= rate */
 	struct mpu_rate * ptr;
@@ -683,7 +573,7 @@ static unsigned calc_ext_dsor(unsigned long rate)
 }
 
 /* XXX Only needed on 1510 */
-int omap1_set_uart_rate(struct clk *clk, unsigned long rate)
+static int omap1_set_uart_rate(struct clk *clk, unsigned long rate)
 {
 	unsigned int val;
 
@@ -701,7 +591,7 @@ int omap1_set_uart_rate(struct clk *clk, unsigned long rate)
 }
 
 /* External clock (MCLK & BCLK) functions */
-int omap1_set_ext_clk_rate(struct clk *clk, unsigned long rate)
+static int omap1_set_ext_clk_rate(struct clk *clk, unsigned long rate)
 {
 	unsigned dsor;
 	__u16 ratio_bits;
@@ -719,7 +609,7 @@ int omap1_set_ext_clk_rate(struct clk *clk, unsigned long rate)
 	return 0;
 }
 
-int omap1_set_sossi_rate(struct clk *clk, unsigned long rate)
+static int omap1_set_sossi_rate(struct clk *clk, unsigned long rate)
 {
 	u32 l;
 	int div;
@@ -742,12 +632,12 @@ int omap1_set_sossi_rate(struct clk *clk, unsigned long rate)
 	return 0;
 }
 
-long omap1_round_ext_clk_rate(struct clk *clk, unsigned long rate)
+static long omap1_round_ext_clk_rate(struct clk *clk, unsigned long rate)
 {
 	return 96000000 / calc_ext_dsor(rate);
 }
 
-void omap1_init_ext_clk(struct clk *clk)
+static void omap1_init_ext_clk(struct clk *clk)
 {
 	unsigned dsor;
 	__u16 ratio_bits;
@@ -765,7 +655,19 @@ void omap1_init_ext_clk(struct clk *clk)
 	clk-> rate = 96000000 / dsor;
 }
 
-int omap1_clk_enable(struct clk *clk)
+static void omap1_clk_disable(struct clk *clk)
+{
+	if (clk->usecount > 0 && !(--clk->usecount)) {
+		clk->ops->disable(clk);
+		if (likely(clk->parent)) {
+			omap1_clk_disable(clk->parent);
+			if (clk->flags & CLOCK_NO_IDLE_PARENT)
+				omap1_clk_allow_idle(clk->parent);
+		}
+	}
+}
+
+static omap1_clk_enable(struct clk *clk)
 {
 	int ret = 0;
 
@@ -793,18 +695,6 @@ int omap1_clk_enable(struct clk *clk)
 	return ret;
 }
 
-void omap1_clk_disable(struct clk *clk)
-{
-	if (clk->usecount > 0 && !(--clk->usecount)) {
-		clk->ops->disable(clk);
-		if (likely(clk->parent)) {
-			omap1_clk_disable(clk->parent);
-			if (clk->flags & CLOCK_NO_IDLE_PARENT)
-				omap1_clk_allow_idle(clk->parent);
-		}
-	}
-}
-
 static int omap1_clk_enable_generic(struct clk *clk)
 {
 	__u16 regval16;
@@ -848,11 +738,29 @@ static void omap1_clk_disable_generic(struct clk *clk)
 	}
 }
 
-const struct clkops clkops_generic = {
+static const struct clkops clkops_generic = {
 	.enable		= omap1_clk_enable_generic,
 	.disable	= omap1_clk_disable_generic,
 };
 
+static unsigned long omap1_ckctl_recalc_dsp_domain(struct clk *clk)
+{
+	int dsor;
+
+	/* Calculate divisor encoded as 2-bit exponent
+	 *
+	 * The clock control bits are in DSP domain,
+	 * so api_ck is needed for access.
+	 * Note that DSP_CKCTL virt addr = phys addr, so
+	 * we must use __raw_readw() instead of omap_readw().
+	 */
+	omap1_clk_enable(api_ck_p);
+	dsor = 1 << (3 & (__raw_readw(DSP_CKCTL) >> clk->rate_offset));
+	omap1_clk_disable(api_ck_p);
+
+	return clk->parent->rate / dsor;
+}
+
 static int omap1_clk_enable_dsp_domain(struct clk *clk)
 {
 	int retval;
@@ -874,7 +782,7 @@ static void omap1_clk_disable_dsp_domain(struct clk *clk)
 	}
 }
 
-const struct clkops clkops_dspck = {
+static const struct clkops clkops_dspck = {
 	.enable		= omap1_clk_enable_dsp_domain,
 	.disable	= omap1_clk_disable_dsp_domain,
 };
@@ -909,12 +817,12 @@ static void omap1_clk_disable_uart_functional_16xx(struct clk *clk)
 }
 
 /* XXX SYSC register handling does not belong in the clock framework */
-const struct clkops clkops_uart_16xx = {
+static const struct clkops clkops_uart_16xx = {
 	.enable		= omap1_clk_enable_uart_functional_16xx,
 	.disable	= omap1_clk_disable_uart_functional_16xx,
 };
 
-long omap1_clk_round_rate(struct clk *clk, unsigned long rate)
+static long omap1_clk_round_rate(struct clk *clk, unsigned long rate)
 {
 	if (clk->round_rate != NULL)
 		return clk->round_rate(clk, rate);
@@ -922,7 +830,7 @@ long omap1_clk_round_rate(struct clk *clk, unsigned long rate)
 	return clk->rate;
 }
 
-int omap1_clk_set_rate(struct clk *clk, unsigned long rate)
+static int omap1_clk_set_rate(struct clk *clk, unsigned long rate)
 {
 	int  ret = -EINVAL;
 
@@ -931,40 +839,21 @@ int omap1_clk_set_rate(struct clk *clk, unsigned long rate)
 	return ret;
 }
 
-/*
- * Omap1 clock reset and init functions
- */
-
-#ifdef CONFIG_OMAP_RESET_CLOCKS
-
-void omap1_clk_disable_unused(struct clk *clk)
+/* Propagate rate to children */
+static void propagate_rate(struct clk *tclk)
 {
-	__u32 regval32;
+	struct clk *clkp;
 
-	/* Clocks in the DSP domain need api_ck. Just assume bootloader
-	 * has not enabled any DSP clocks */
-	if (clk->enable_reg == DSP_IDLECT2) {
-		pr_info("Skipping reset check for DSP domain clock \"%s\"\n",
-			clk->name);
-		return;
+	list_for_each_entry(clkp, &tclk->children, sibling) {
+		if (clkp->recalc)
+			clkp->rate = clkp->recalc(clkp);
+		propagate_rate(clkp);
 	}
-
-	/* Is the clock already disabled? */
-	if (clk->flags & ENABLE_REG_32BIT)
-		regval32 = __raw_readl(clk->enable_reg);
-	else
-		regval32 = __raw_readw(clk->enable_reg);
-
-	if ((regval32 & (1 << clk->enable_bit)) == 0)
-		return;
-
-	printk(KERN_INFO "Disabling unused clock \"%s\"... ", clk->name);
-	clk->ops->disable(clk);
-	printk(" done\n");
 }
 
-#endif
-
+/*
+ * Omap1 clock reset and init functions
+ */
 
 int clk_enable(struct clk *clk)
 {
@@ -1077,7 +966,7 @@ EXPORT_SYMBOL(clk_get_parent);
  */
 
 /* Used for clocks that always have same value as the parent clock */
-unsigned long followparent_recalc(struct clk *clk)
+static unsigned long followparent_recalc(struct clk *clk)
 {
 	return clk->parent->rate;
 }
@@ -1086,56 +975,13 @@ unsigned long followparent_recalc(struct clk *clk)
  * Used for clocks that have the same value as the parent clock,
  * divided by some factor
  */
-unsigned long omap_fixed_divisor_recalc(struct clk *clk)
+static unsigned long omap_fixed_divisor_recalc(struct clk *clk)
 {
 	WARN_ON(!clk->fixed_div);
 
 	return clk->parent->rate / clk->fixed_div;
 }
 
-void clk_reparent(struct clk *child, struct clk *parent)
-{
-	list_del_init(&child->sibling);
-	if (parent)
-		list_add(&child->sibling, &parent->children);
-	child->parent = parent;
-
-	/* now do the debugfs renaming to reattach the child
-	   to the proper parent */
-}
-
-/* Propagate rate to children */
-void propagate_rate(struct clk *tclk)
-{
-	struct clk *clkp;
-
-	list_for_each_entry(clkp, &tclk->children, sibling) {
-		if (clkp->recalc)
-			clkp->rate = clkp->recalc(clkp);
-		propagate_rate(clkp);
-	}
-}
-
-static LIST_HEAD(root_clks);
-
-/**
- * recalculate_root_clocks - recalculate and propagate all root clocks
- *
- * Recalculates all root clocks (clocks with no parent), which if the
- * clock's .recalc is set correctly, should also propagate their rates.
- * Called at init.
- */
-void recalculate_root_clocks(void)
-{
-	struct clk *clkp;
-
-	list_for_each_entry(clkp, &root_clks, sibling) {
-		if (clkp->recalc)
-			clkp->rate = clkp->recalc(clkp);
-		propagate_rate(clkp);
-	}
-}
-
 /**
  * clk_preinit - initialize any fields in the struct clk before clk init
  * @clk: struct clk * to initialize
@@ -1143,12 +989,12 @@ void recalculate_root_clocks(void)
  * Initialize any struct clk fields needed before normal clk initialization
  * can run.  No return value.
  */
-void clk_preinit(struct clk *clk)
+static void clk_preinit(struct clk *clk)
 {
 	INIT_LIST_HEAD(&clk->children);
 }
 
-int clk_register(struct clk *clk)
+static int clk_register(struct clk *clk)
 {
 	if (clk == NULL || IS_ERR(clk))
 		return -EINVAL;
@@ -1162,8 +1008,6 @@ int clk_register(struct clk *clk)
 	mutex_lock(&clocks_mutex);
 	if (clk->parent)
 		list_add(&clk->sibling, &clk->parent->children);
-	else
-		list_add(&clk->sibling, &root_clks);
 
 	list_add(&clk->node, &clocks);
 	if (clk->init)
@@ -1172,87 +1016,6 @@ int clk_register(struct clk *clk)
 
 	return 0;
 }
-EXPORT_SYMBOL(clk_register);
-
-void clk_unregister(struct clk *clk)
-{
-	if (clk == NULL || IS_ERR(clk))
-		return;
-
-	mutex_lock(&clocks_mutex);
-	list_del(&clk->sibling);
-	list_del(&clk->node);
-	mutex_unlock(&clocks_mutex);
-}
-EXPORT_SYMBOL(clk_unregister);
-
-void clk_enable_init_clocks(void)
-{
-	struct clk *clkp;
-
-	list_for_each_entry(clkp, &clocks, node)
-		if (clkp->flags & ENABLE_ON_INIT)
-			clk_enable(clkp);
-}
-
-/**
- * omap_clk_get_by_name - locate OMAP struct clk by its name
- * @name: name of the struct clk to locate
- *
- * Locate an OMAP struct clk by its name.  Assumes that struct clk
- * names are unique.  Returns NULL if not found or a pointer to the
- * struct clk if found.
- */
-struct clk *omap_clk_get_by_name(const char *name)
-{
-	struct clk *c;
-	struct clk *ret = NULL;
-
-	mutex_lock(&clocks_mutex);
-
-	list_for_each_entry(c, &clocks, node) {
-		if (!strcmp(c->name, name)) {
-			ret = c;
-			break;
-		}
-	}
-
-	mutex_unlock(&clocks_mutex);
-
-	return ret;
-}
-
-int omap_clk_enable_autoidle_all(void)
-{
-	struct clk *c;
-	unsigned long flags;
-
-	spin_lock_irqsave(&clockfw_lock, flags);
-
-	list_for_each_entry(c, &clocks, node)
-		if (c->ops->allow_idle)
-			c->ops->allow_idle(c);
-
-	spin_unlock_irqrestore(&clockfw_lock, flags);
-
-	return 0;
-}
-
-int omap_clk_disable_autoidle_all(void)
-{
-	struct clk *c;
-	unsigned long flags;
-
-	spin_lock_irqsave(&clockfw_lock, flags);
-
-	list_for_each_entry(c, &clocks, node)
-		if (c->ops->deny_idle)
-			c->ops->deny_idle(c);
-
-	spin_unlock_irqrestore(&clockfw_lock, flags);
-
-	return 0;
-}
 
 /*
  * Low level helpers
@@ -1266,7 +1029,7 @@ static void clkll_disable_null(struct clk *clk)
 {
 }
 
-const struct clkops clkops_null = {
+static const struct clkops clkops_null = {
 	.enable		= clkll_enable_null,
 	.disable	= clkll_disable_null,
 };
@@ -1276,7 +1039,7 @@ const struct clkops clkops_null = {
  *
  * Used for clock aliases that are needed on some OMAPs, but not others
  */
-struct clk dummy_ck = {
+static struct clk dummy_ck = {
 	.name	= "dummy",
 	.ops	= &clkops_null,
 };
@@ -1289,6 +1052,32 @@ struct clk dummy_ck = {
 /*
  * Disable any unused clocks left on by the bootloader
  */
+static void omap1_clk_disable_unused(struct clk *clk)
+{
+	__u32 regval32;
+
+	/* Clocks in the DSP domain need api_ck. Just assume bootloader
+	 * has not enabled any DSP clocks */
+	if (clk->enable_reg == DSP_IDLECT2) {
+		pr_info("Skipping reset check for DSP domain clock \"%s\"\n",
+			clk->name);
+		return;
+	}
+
+	/* Is the clock already disabled? */
+	if (clk->flags & ENABLE_REG_32BIT)
+		regval32 = __raw_readl(clk->enable_reg);
+	else
+		regval32 = __raw_readw(clk->enable_reg);
+
+	if ((regval32 & (1 << clk->enable_bit)) == 0)
+		return;
+
+	printk(KERN_INFO "Disabling unused clock \"%s\"... ", clk->name);
+	clk->ops->disable(clk);
+	printk(" done\n");
+}
+
 static int __init clk_disable_unused(void)
 {
 	struct clk *ck;
@@ -1311,7 +1100,6 @@ static int __init clk_disable_unused(void)
 	return 0;
 }
 late_initcall(clk_disable_unused);
-late_initcall(omap_clk_enable_autoidle_all);
 #endif
 
 #if defined(CONFIG_PM_DEBUG) && defined(CONFIG_DEBUG_FS)
@@ -1414,8 +1202,7 @@ static struct arm_idlect1_clk ck_dpll1out = {
 		.name		= "ck_dpll1out",
 		.ops		= &clkops_generic,
 		.parent		= &ck_dpll1,
-		.flags		= CLOCK_IDLE_CONTROL | ENABLE_REG_32BIT |
-				  ENABLE_ON_INIT,
+		.flags		= CLOCK_IDLE_CONTROL | ENABLE_REG_32BIT,
 		.enable_reg	= OMAP1_IO_ADDRESS(ARM_IDLECT2),
 		.enable_bit	= EN_CKOUT_ARM,
 		.recalc		= &followparent_recalc,
@@ -1468,7 +1255,6 @@ static struct clk arm_gpio_ck = {
 	.name		= "ick",
 	.ops		= &clkops_generic,
 	.parent		= &ck_dpll1,
-	.flags		= ENABLE_ON_INIT,
 	.enable_reg	= OMAP1_IO_ADDRESS(ARM_IDLECT2),
 	.enable_bit	= EN_GPIOCK,
 	.recalc		= &followparent_recalc,
@@ -1638,7 +1424,6 @@ static struct clk tc2_ck = {
 	.name		= "tc2_ck",
 	.ops		= &clkops_generic,
 	.parent		= &tc_ck.clk,
-	.flags		= ENABLE_ON_INIT,
 	.enable_reg	= OMAP1_IO_ADDRESS(ARM_IDLECT3),
 	.enable_bit	= EN_TC2_CK,
 	.recalc		= &followparent_recalc,
@@ -2079,8 +1864,6 @@ static void __init omap1_show_rates(void)
 		  arm_ck.rate / 1000000, (arm_ck.rate / 100000) % 10);
 }
 
-u32 cpu_mask;
-
 int __init omap1_clk_init(void)
 {
 	struct omap_clk *c;
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
