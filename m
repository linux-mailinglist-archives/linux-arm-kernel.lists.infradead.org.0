Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4F85630E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jr0sfHn6p+rn52ygVA/O+xu3mls1+NHPUy/w4fND/so=; b=FbYumJMXdLkUMW
	E1COgf22I6j1YVoy98KzN7JrRykFKanZDJFRjk+Wl/bsnQA8E85mPXVQHtfgAkom0hrOu8nr+lpO1
	c09GPgbuXl5NcHSfLFEhWhueBWVNs/Sjp5Y7UZPbF1+WF3v9cXMDYucVwNLcyHBlJoo5Z0OOGzI2+
	rge198ZlTCjfG8UnM1Z1hEqe+iPrMPzNluou+I+44yTBlkGdVusJEwM1JGsfnqWq35Bt0x+NduN2H
	xxrbc+bXOGvsk/adO1Yq1IfWtgmAlBgClXxENpP2F3Yu1d2HH4+oVbarYfliAswzJoXwAaGld83R4
	8JTDu8vv9+7u6Igof1hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2CW-00084I-Qz; Wed, 26 Jun 2019 07:18:41 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg2AC-0006e4-D3
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 07:16:19 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 81BAE1DA9;
 Wed, 26 Jun 2019 03:16:15 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 26 Jun 2019 03:16:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=o/ghzHrj1X7yl
 XihRgJKS1cvGXzCMJPgUc8IsbXlG3Q=; b=R79Ha6g++rC7IaCm+ifBfu9AD4+HS
 v6GGRSKsTtS7ugDI5UdKYaTtDy2gTxtzW+MqbOSpB388R3UsOwQqQR7YFl5T3qMG
 n5D11EUlqlAVPQ6+NEPU+mYIMImldiljtGXCWhL6BtNhHIXSOAvfZQ1biu6EtPat
 WXBcl2bAjlRdSxEDB39omtihY5RItwtAjf5QBh8ac6MgG4DxMNPguF0RU4RfI4Xv
 9hfk9SLrd0P77WmoC8xIkkkjvptur33cFOE/tybPcHzcZL9gx/rX5O6NHGaDrLdz
 TrsxAFTtIOO/Myyb/nLYeh+DYtar7lZfuZVVdsw9m4iejnOPBm7Zn/P7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=o/ghzHrj1X7ylXihRgJKS1cvGXzCMJPgUc8IsbXlG3Q=; b=Diw36Rcy
 C67TKYNy3OGM7AKpQ33NK7XrePCJcMe0hrhWmYWnaHpo6LJZSbGl+93l7U+9GsA3
 gYLP0oAFKzsyPwy/kwkP+8U00bBNoRYTztK94zGnsrW88epl1e9kv9CBR3kZjRh+
 zqX3SuAIFjDrhlKF5CEkxTuJkfwpWJ4fxIOQwLwQ92WerfFsDS9YqssfZesIp/Vq
 f1Tt+OJ4swXssWg+rJXiUSu/PfTn+ApYzFU4hSj7DCp3OkO8aHvFxyVaNUS26tsp
 HkkrHYI3CCXiZqYaakiwM+6f9t4iRKfquq9wXpImxvolDca7NJYBatWWtWKRmm3x
 kE7QkV3IL/sMWw==
X-ME-Sender: <xms:vxsTXWift_nnqs93kIhr5EVsWEIJ7KOvC9n4_6I5ClyO4MQFzQAhNQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehgdduudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrg
 hilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigv
 peeg
X-ME-Proxy: <xmx:vxsTXXNrmy0-aJmKmgvVLp57PdCV-bF8NdAoBE72L3Nd7Fznkoje8w>
 <xmx:vxsTXQt3nSkqVXCzQ7tm-ldhCykfxbc5e8SvN1HJF5uRqsxWwHEAhw>
 <xmx:vxsTXa2Io89txAQTgXj9VAvHcSA3d_VvbYQBtsCZL2_uZ8_xjePkRw>
 <xmx:vxsTXfh2mXauXZfoz-4GdDpMNjstImZDGkmM94TZqM3o26nXnweAdg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id A5594380076;
 Wed, 26 Jun 2019 03:16:11 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 8/8] pinctrl: aspeed: Add implementation-related documentation
Date: Wed, 26 Jun 2019 16:44:30 +0930
Message-Id: <20190626071430.28556-9-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626071430.28556-1-andrew@aj.id.au>
References: <20190626071430.28556-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_001616_707279_40915060 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ryan_chen@aspeedtech.com,
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
