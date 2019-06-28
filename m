Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2161759165
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 04:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vmwk8w/LelfR0Ph5oNAohbKyiSwMD4AqPvziZGLbyA=; b=l1ULXH1PGG2jeT
	znjLph+yHjwSmqCU+yiXPYpXf/xZ/b5my0fyDT/SPWP47lUlm6FX96e5cHncm1OEiRWgig67wOwv9
	OQqbsZD7K8XBEPy43t1yBRK8VrxpS2OxjnFFESXKelovxX3ajupI3bl5FZ1zdFGA1pUdoIkj2S2St
	U7DmZ72y64ZQ3hMTdniD5Wd2amprBVI5WfomahCQ1xoRiHGoWXT0vwi4hWVsOlIa10G/C8A/Ua+j1
	5qaJCDhi37QbH00BT6SoGyZeArmNKXyZ4D0pF2dEYLlWKkHC8NT1DiL6Nfd0gMuIMQv+DlLTDnXlY
	3GoxFn35fjW+BjL1SADw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hggq9-0005af-8d; Fri, 28 Jun 2019 02:42:17 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hggnn-0002qM-KJ
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 02:39:54 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id E2CEE2CC1;
 Thu, 27 Jun 2019 22:39:50 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 27 Jun 2019 22:39:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=MPFfXAMopBJpR
 ZjirOncY4gwnFS+WGjHM5WJUlUs384=; b=AGj08IWZ4q+WD4X2r3GZK+/4U3lio
 r56CeKOrCH3vhoTjHATI01NjJxvcHPDFygBTNyM7y2UnJu5okOx3e5usgYSmDaIG
 oay+66a2C3IN0Iq6vqTfD4QjmAUGFZeu0oLjnbJ9jm6RGNjuHCbvwFZvZ7dg3y2s
 SiyBp1kqwJCohFndwhawCrSkaUMJKgpd7N8mxWJ61W4hA8QMbF1PaciRpGyeq/Tf
 N1orKJ8Cca9nv9gT5eUaPLUJ/nnb8uNmZdfDCaTQhxdNNzzks4UwJdS0c3G6yqaC
 R95r8cSleNc//nEsaIlKkYWBgg5iiknhi2+zIVkn6thb17lOzWURtu99w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=MPFfXAMopBJpRZjirOncY4gwnFS+WGjHM5WJUlUs384=; b=ZsB2OOfD
 Y4Z4bkzmXybMoaD3WsbGx6CNdngxCbI1bWfmdQbGSS4+yb+F4zDjvRRQZGpn2Tpx
 b8X0Y/CcXNjNvQPxT3i8/Qtoz3oKxJV0urUbnVSK0JJ/1dqIR2TGEkQBoicQn4Zo
 k9LpC4xiBOybGFPa8I1Kz3M5NtOY3VVNC04xiXiKsjlFIiEHR+wlB6HiqM5JBeTk
 sFLoN0ml9RNCmtKnj90eQBOPOkZm6D/Hwkg6EAqpYxmYb/Htkok7b+74tbAVxgKK
 dErMZt7ipbKrPRRoE1ZDdDySQsBGSnH2RFG46IpJxx6FdoqEJ6221NU5gbdZpgxJ
 VwRZ57u4S+5R4Q==
X-ME-Sender: <xms:9n0VXf5RL1HypWlRYf9Fe0m8_dBqvIuGDSgVyosjpvjHdMKPlYv5yA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudelgdeiudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpeeg
X-ME-Proxy: <xmx:9n0VXa0-6GtiG57O3Bk4ckXJU_8MGQE8swGioFrnBlz-IUugmAoysg>
 <xmx:9n0VXTm9G83pI6y_wn_Xyig2XHS54tJOCI3xZFA7oSsnakR4yjbfaQ>
 <xmx:9n0VXQ7SRriP-WaKm9HSkU2x72vrwvU4t3muWoAOSEStFsMLaKE2hA>
 <xmx:9n0VXX_5Lqyry0tnKgnVBj8m9CQAmHo4r_AzxavwIlQvwsqLgIg1Ug>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id A1FA3380075;
 Thu, 27 Jun 2019 22:39:46 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 8/8] pinctrl: aspeed: Add implementation-related
 documentation
Date: Fri, 28 Jun 2019 12:08:38 +0930
Message-Id: <20190628023838.15426-9-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190628023838.15426-1-andrew@aj.id.au>
References: <20190628023838.15426-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_193952_261231_1F709C89 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Johnny Huang <johnny_huang@aspeedtech.com>, ryan_chen@aspeedtech.com,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ASPEED pinctrl driver implementations make heavy use of macros to
minimise tedium of implementation and maximise the chance that the
compiler will catch errors in defining signal and pin configurations.
While the goal of minimising errors is achieved, it is at the cost of
the complexity of the macros.

Document examples of the expanded form of pin declarations to
demonstrate the operation of the macros.

Cc: Johnny Huang <johnny_huang@aspeedtech.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinmux-aspeed.h | 204 ++++++++++++++++++++++++-
 1 file changed, 200 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinmux-aspeed.h b/drivers/pinctrl/aspeed/pinmux-aspeed.h
index a036ce8f1571..329d54d48667 100644
--- a/drivers/pinctrl/aspeed/pinmux-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinmux-aspeed.h
@@ -18,7 +18,8 @@
  * priority level are frequently not the same (i.e. cannot just flip a bit to
  * change from a high to low priority signal), or even in the same register.
  * Further, not all signals can be unmuxed, as some expressions depend on
- * values in the hardware strapping register (which is treated as read-only).
+ * values in the hardware strapping register (which may be treated as
+ * read-only).
  *
  * SoC Multi-function Pin Expression Examples
  * ------------------------------------------
@@ -172,9 +173,9 @@
  * * A signal expression is the smallest set of signal descriptors whose
  *   comparisons must evaluate 'true' for a signal to be enabled on a pin.
  *
- * * A function's signal is active on a pin if evaluating all signal
- *   descriptors in the pin's signal expression for the function yields a 'true'
- *   result
+ * * A signal participating in a function is active on a pin if evaluating all
+ *   signal descriptors in the pin's signal expression for the function yields
+ *   a 'true' result
  *
  * * A signal at a given priority on a given pin is active if any of the
  *   functions in which the signal participates are active, and no higher
@@ -221,6 +222,201 @@
  * well as pins) required for the group's configuration will already be in use,
  * likely in a way that's inconsistent with the requirements of the failed
  * group.
+ *
+ * Implementation
+ * --------------
+ *
+ * Beyond the documentation below the various structures and helper macros that
+ * allow the implementation to hang together are defined. The macros are fairly
+ * dense, so below we walk through some raw examples of the configuration
+ * tables in an effort to clarify the concepts.
+ *
+ * The complexity of configuring the mux combined with the scale of the pins
+ * and functions was a concern, so the table design along with the macro jungle
+ * is an attempt to address it. The rough principles of the approach are:
+ *
+ * 1. Use a data-driven solution rather than embedding state into code
+ * 2. Minimise editing to the specifics of the given mux configuration
+ * 3. Detect as many errors as possible at compile time
+ *
+ * Addressing point 3 leads to naming of symbols in terms of the four
+ * properties associated with a given mux configuration: The pin, the signal,
+ * the group and the function. In this way copy/paste errors cause duplicate
+ * symbols to be defined, which prevents successful compilation. Failing to
+ * properly parent the tables leads to unused symbol warnings, and use of
+ * designated initialisers and additional warnings ensures that there are
+ * no override errors in the pin, group and function arrays.
+ *
+ * Addressing point 2 drives the development of the macro jungle, as it
+ * centralises the definition noise at the cost of taking some time to
+ * understand.
+ *
+ * Here's a complete, concrete "pre-processed" example of the table structures
+ * used to describe the D6 ball from the examples above:
+ *
+ * ```
+ * static const struct aspeed_sig_desc sig_descs_MAC1LINK_MAC1LINK[] = {
+ *     {
+ *         .ip = ASPEED_IP_SCU,
+ *         .reg = 0x80,
+ *         .mask = BIT(0),
+ *         .enable = 1,
+ *         .disable = 0
+ *     },
+ * };
+ *
+ * static const struct aspeed_sig_expr sig_expr_MAC1LINK_MAC1LINK = {
+ *     .signal = "MAC1LINK",
+ *     .function = "MAC1LINK",
+ *     .ndescs = ARRAY_SIZE(sig_descs_MAC1LINK_MAC1LINK),
+ *     .descs = &(sig_descs_MAC1LINK_MAC1LINK)[0],
+ * };
+ *
+ * static const struct aspeed_sig_expr *sig_exprs_MAC1LINK_MAC1LINK[] = {
+ *     &sig_expr_MAC1LINK_MAC1LINK,
+ *     NULL,
+ * };
+ *
+ * static const struct aspeed_sig_desc sig_descs_GPIOA0_GPIOA0[] = { };
+ *
+ * static const struct aspeed_sig_expr sig_expr_GPIOA0_GPIOA0 = {
+ *     .signal = "GPIOA0",
+ *     .function = "GPIOA0",
+ *     .ndescs = ARRAY_SIZE(sig_descs_GPIOA0_GPIOA0),
+ *     .descs = &(sig_descs_GPIOA0_GPIOA0)[0],
+ * };
+ *
+ * static const struct aspeed_sig_expr *sig_exprs_GPIOA0_GPIOA0[] = {
+ *     &sig_expr_GPIOA0_GPIOA0,
+ *     NULL
+ * };
+ *
+ * static const struct aspeed_sig_expr **pin_exprs_0[] = {
+ *     sig_exprs_MAC1LINK_MAC1LINK,
+ *     sig_exprs_GPIOA0_GPIOA0,
+ *     NULL
+ * };
+ *
+ * static const struct aspeed_pin_desc pin_0 = { "0", (&pin_exprs_0[0]) };
+ * static const int group_pins_MAC1LINK[] = { 0 };
+ * static const char *func_groups_MAC1LINK[] = { "MAC1LINK" };
+ *
+ * static struct pinctrl_pin_desc aspeed_g4_pins[] = {
+ *     [0] = { .number = 0, .name = "D6", .drv_data = &pin_0 },
+ * };
+ *
+ * static const struct aspeed_pin_group aspeed_g4_groups[] = {
+ *     {
+ *         .name = "MAC1LINK",
+ *         .pins = &(group_pins_MAC1LINK)[0],
+ *         .npins = ARRAY_SIZE(group_pins_MAC1LINK),
+ *     },
+ * };
+ *
+ * static const struct aspeed_pin_function aspeed_g4_functions[] = {
+ *     {
+ *         .name = "MAC1LINK",
+ *         .groups = &func_groups_MAC1LINK[0],
+ *         .ngroups = ARRAY_SIZE(func_groups_MAC1LINK),
+ *     },
+ * };
+ * ```
+ *
+ * At the end of the day much of the above code is compressed into the
+ * following two lines:
+ *
+ * ```
+ * #define D6 0
+ * SSSF_PIN_DECL(D6, GPIOA0, MAC1LINK, SIG_DESC_SET(SCU80, 0));
+ * ```
+ *
+ * The two examples below show just the differences from the example above.
+ *
+ * Ball E18 demonstrates a function, EXTRST, that requires multiple descriptors
+ * be set for it to be muxed:
+ *
+ * ```
+ * static const struct aspeed_sig_desc sig_descs_EXTRST_EXTRST[] = {
+ *     {
+ *         .ip = ASPEED_IP_SCU,
+ *         .reg = 0x3C,
+ *         .mask = BIT(3),
+ *         .enable = 1,
+ *         .disable = 0
+ *     },
+ *     {
+ *         .ip = ASPEED_IP_SCU,
+ *         .reg = 0x80,
+ *         .mask = BIT(15),
+ *         .enable = 1,
+ *         .disable = 0
+ *     },
+ *     {
+ *         .ip = ASPEED_IP_SCU,
+ *         .reg = 0x90,
+ *         .mask = BIT(31),
+ *         .enable = 0,
+ *         .disable = 1
+ *     },
+ * };
+ *
+ * static const struct aspeed_sig_expr sig_expr_EXTRST_EXTRST = {
+ *     .signal = "EXTRST",
+ *     .function = "EXTRST",
+ *     .ndescs = ARRAY_SIZE(sig_descs_EXTRST_EXTRST),
+ *     .descs = &(sig_descs_EXTRST_EXTRST)[0],
+ * };
+ * ...
+ * ```
+ *
+ * For ball E19, we have multiple functions enabling a single signal, LPCRST#.
+ * The data structures look like:
+ *
+ * static const struct aspeed_sig_desc sig_descs_LPCRST_LPCRST[] = {
+ *     {
+ *         .ip = ASPEED_IP_SCU,
+ *         .reg = 0x80,
+ *         .mask = BIT(12),
+ *         .enable = 1,
+ *         .disable = 0
+ *     },
+ * };
+ *
+ * static const struct aspeed_sig_expr sig_expr_LPCRST_LPCRST = {
+ *     .signal = "LPCRST",
+ *     .function = "LPCRST",
+ *     .ndescs = ARRAY_SIZE(sig_descs_LPCRST_LPCRST),
+ *     .descs = &(sig_descs_LPCRST_LPCRST)[0],
+ * };
+ *
+ * static const struct aspeed_sig_desc sig_descs_LPCRST_LPCRSTS[] = {
+ *     {
+ *         .ip = ASPEED_IP_SCU,
+ *         .reg = 0x70,
+ *         .mask = BIT(14),
+ *         .enable = 1,
+ *         .disable = 0
+ *     },
+ * };
+ *
+ * static const struct aspeed_sig_expr sig_expr_LPCRST_LPCRSTS = {
+ *     .signal = "LPCRST",
+ *     .function = "LPCRSTS",
+ *     .ndescs = ARRAY_SIZE(sig_descs_LPCRST_LPCRSTS),
+ *     .descs = &(sig_descs_LPCRST_LPCRSTS)[0],
+ * };
+ *
+ * static const struct aspeed_sig_expr *sig_exprs_LPCRST_LPCRST[] = {
+ *     &sig_expr_LPCRST_LPCRST,
+ *     &sig_expr_LPCRST_LPCRSTS,
+ *     NULL,
+ * };
+ * ...
+ * ```
+ *
+ * Both expressions listed in the sig_exprs_LPCRST_LPCRST array need to be set
+ * to disabled for the associated GPIO to be muxed.
+ *
  */
 
 #define ASPEED_IP_SCU		0
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
