Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9B71A754D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 10:00:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vY8l8pTEtR95iPe43o4TmkKVr1P/Oww6SFzVDyd3okw=; b=PhbXx7fzp7SbCL
	xDOaLO4rOLHT2thKnXfIoT0JfDD4phvm3xibQ52w/AUHYjOY+bVF4/DrsvgbKoRPrCipU0kfGzY2w
	MAHDSCa7TI3GzNjhEPLzDnNMUJl7BUyKz+X72zh8BYlqnRpmHjhDAiU5MmGvHyAH+rdady0qDrD67
	A3MxHr/EhL+JfGQDnpMHGkej5NkcW3S3yEEizF5gUK8n10LVGYGrJGrxbnIQcKuvf82Is+iw+2O+7
	Az+oTzMbBsjmWHknwf4eKX5IK4mXnOiYy041mCLxNk6p5MxIjNysfEzts3cSGBirpO1GJSsIXxAT6
	DD4UM1wELDjIPyBWEkGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOGUe-0003QR-3X; Tue, 14 Apr 2020 08:00:28 +0000
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOGUN-00024o-3z; Tue, 14 Apr 2020 08:00:16 +0000
Received: by mail-lf1-f67.google.com with SMTP id 198so8634992lfo.7;
 Tue, 14 Apr 2020 01:00:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KfqSa8hJ6RD1/ExxDm3iNmq2hbab+YzEEGFkSshIf1M=;
 b=oQrlsBg+QjoD1BUZgiyBInfaWBSFbesEb5V2nDq70mUsnjaDaDlpF8X3Uupx0WcU1V
 6h4zJGpjlxy6atyxcwI4Sz6mStLZTi/WiAAAbEmkVD0CwqS7yU+IvEZ55QtQ/WLWCkVS
 BZVRX1qNAjpyiBSsz72bwmO82XdExfZnVClxFVyn+AMkjXwLlPELUkT32U95pJ2L3fQH
 2h6ejNUwbir7Z7TtobTtUZ/1E+cmWj0Pg9IVlV5OREknSlcc+Pddh5iCKU6uo+WSXY8P
 A2ZsnJT5H7UHaRXxXK/Jx8x5cttWMNQ89S+a/D6oIE5iv5PvvLORqwOJPcBc9+nurEKK
 FO9Q==
X-Gm-Message-State: AGi0Pua18jDk8VUNQVdN8YBMr1us6JOsjORglWHrfRKnH6tyT2EDV/8v
 f+ux5K3PEBJ2OTsfKt45eas=
X-Google-Smtp-Source: APiQypK/d3InYLobDaNJoUMBgRxLYPw49AJCgCTI5a8oKKyVwgTS0g+ehuhUqwadNkx0HxZGiJc6Pw==
X-Received: by 2002:a19:c194:: with SMTP id r142mr13165061lff.7.1586851209465; 
 Tue, 14 Apr 2020 01:00:09 -0700 (PDT)
Received: from localhost.localdomain
 (dc7t7ryyyyyyyyyyyyybt-3.rev.dnainternet.fi. [2001:14ba:16e1:b700::3])
 by smtp.gmail.com with ESMTPSA id a26sm8549930ljn.22.2020.04.14.01.00.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 01:00:08 -0700 (PDT)
Date: Tue, 14 Apr 2020 11:00:01 +0300
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH v9 02/10] lib/test_linear_ranges: add a test for the
 'linear_ranges'
Message-ID: <8290db0984a1c64f478d8b00f7e9ae2bffde8fb7.1586849281.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1586849281.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1586849281.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_010011_195401_73F69360 
X-CRM114-Status: GOOD (  25.24  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.67 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mazziesaccount[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.0 TO_NO_BRKTS_PCNT       To: lacks brackets + percentage
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Andrei Stefanescu <andrei.stefanescu@microchip.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Linus Walleij <linus.walleij@linaro.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Sebastian Reichel <sre@kernel.org>, Andreas Kemnade <andreas@kemnade.info>,
 "Angelo G. Del Regno" <kholk11@gmail.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-samsung-soc@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Axel Lin <axel.lin@ingics.com>, Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, markus.laine@fi.rohmeurope.com,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>, devicetree@vger.kernel.org,
 Charles Keepax <ckeepax@opensource.cirrus.com>, linux-omap@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-arm-msm@vger.kernel.org, Richard Fitzgerald <rf@opensource.cirrus.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Baolin Wang <baolin.wang@linaro.org>, Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 mikko.mutanen@fi.rohmeurope.com, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, patches@opensource.cirrus.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

    Add a KUnit test for the linear_ranges helper.

Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Reviewed-by: Brendan Higgins <brendanhiggins@google.com>
---

Changes since v8 - rebased and reordered series.

 lib/Kconfig.debug        |  11 ++
 lib/Makefile             |   1 +
 lib/test_linear_ranges.c | 228 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 240 insertions(+)
 create mode 100644 lib/test_linear_ranges.c

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 50c1f5f08e6f..a4bfa80dc8a3 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -2090,6 +2090,17 @@ config LIST_KUNIT_TEST
 
 	  If unsure, say N.
 
+config LINEAR_RANGES_TEST
+	tristate "KUnit test for linear_ranges"
+	depends on KUNIT
+	help
+	  This builds the linear_ranges unit test, which runs on boot.
+	  Tests the linear_ranges logic correctness.
+	  For more information on KUnit and unit tests in general please refer
+	  to the KUnit documentation in Documentation/dev-tools/kunit/.
+
+	  If unsure, say N.
+
 config TEST_UDELAY
 	tristate "udelay test driver"
 	help
diff --git a/lib/Makefile b/lib/Makefile
index 20b9cfdcad69..cd548bfa8df9 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -310,3 +310,4 @@ obj-$(CONFIG_OBJAGG) += objagg.o
 
 # KUnit tests
 obj-$(CONFIG_LIST_KUNIT_TEST) += list-test.o
+obj-$(CONFIG_LINEAR_RANGES_TEST) += test_linear_ranges.o
diff --git a/lib/test_linear_ranges.c b/lib/test_linear_ranges.c
new file mode 100644
index 000000000000..676e0b8abcdd
--- /dev/null
+++ b/lib/test_linear_ranges.c
@@ -0,0 +1,228 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * KUnit test for the linear_ranges helper.
+ *
+ * Copyright (C) 2020, ROHM Semiconductors.
+ * Author: Matti Vaittinen <matti.vaittien@fi.rohmeurope.com>
+ */
+#include <kunit/test.h>
+
+#include <linux/linear_range.h>
+
+/* First things first. I deeply dislike unit-tests. I have seen all the hell
+ * breaking loose when people who think the unit tests are "the silver bullet"
+ * to kill bugs get to decide how a company should implement testing strategy...
+ *
+ * Believe me, it may get _really_ ridiculous. It is tempting to think that
+ * walking through all the possible execution branches will nail down 100% of
+ * bugs. This may lead to ideas about demands to get certain % of "test
+ * coverage" - measured as line coverage. And that is one of the worst things
+ * you can do.
+ *
+ * Ask people to provide line coverage and they do. I've seen clever tools
+ * which generate test cases to test the existing functions - and by default
+ * these tools expect code to be correct and just generate checks which are
+ * passing when ran against current code-base. Run this generator and you'll get
+ * tests that do not test code is correct but just verify nothing changes.
+ * Problem is that testing working code is pointless. And if it is not
+ * working, your test must not assume it is working. You won't catch any bugs
+ * by such tests. What you can do is to generate a huge amount of tests.
+ * Especially if you were are asked to proivde 100% line-coverage x_x. So what
+ * does these tests - which are not finding any bugs now - do?
+ *
+ * They add inertia to every future development. I think it was Terry Pratchet
+ * who wrote someone having same impact as thick syrup has to chronometre.
+ * Excessive amount of unit-tests have this effect to development. If you do
+ * actually find _any_ bug from code in such environment and try fixing it...
+ * ...chances are you also need to fix the test cases. In sunny day you fix one
+ * test. But I've done refactoring which resulted 500+ broken tests (which had
+ * really zero value other than proving to managers that we do do "quality")...
+ *
+ * After this being said - there are situations where UTs can be handy. If you
+ * have algorithms which take some input and should produce output - then you
+ * can implement few, carefully selected simple UT-cases which test this. I've
+ * previously used this for example for netlink and device-tree data parsing
+ * functions. Feed some data examples to functions and verify the output is as
+ * expected. I am not covering all the cases but I will see the logic should be
+ * working.
+ *
+ * Here we also do some minor testing. I don't want to go through all branches
+ * or test more or less obvious things - but I want to see the main logic is
+ * working. And I definitely don't want to add 500+ test cases that break when
+ * some simple fix is done x_x. So - let's only add few, well selected tests
+ * which ensure as much logic is good as possible.
+ */
+
+/*
+ * Test Range 1:
+ * selectors:	2	3	4	5	6
+ * values (5):	10	20	30	40	50
+ *
+ * Test Range 2:
+ * selectors:	7	8	9	10
+ * values (4):	100	150	200	250
+ */
+
+#define RANGE1_MIN 10
+#define RANGE1_MIN_SEL 2
+#define RANGE1_STEP 10
+
+/* 2, 3, 4, 5, 6 */
+static const unsigned int range1_sels[] = { RANGE1_MIN_SEL, RANGE1_MIN_SEL + 1,
+					    RANGE1_MIN_SEL + 2,
+					    RANGE1_MIN_SEL + 3,
+					    RANGE1_MIN_SEL + 4 };
+/* 10, 20, 30, 40, 50 */
+static const unsigned int range1_vals[] = { RANGE1_MIN, RANGE1_MIN +
+					    RANGE1_STEP,
+					    RANGE1_MIN + RANGE1_STEP * 2,
+					    RANGE1_MIN + RANGE1_STEP * 3,
+					    RANGE1_MIN + RANGE1_STEP * 4 };
+
+#define RANGE2_MIN 100
+#define RANGE2_MIN_SEL 7
+#define RANGE2_STEP 50
+
+/*  7, 8, 9, 10 */
+static const unsigned int range2_sels[] = { RANGE2_MIN_SEL, RANGE2_MIN_SEL + 1,
+					    RANGE2_MIN_SEL + 2,
+					    RANGE2_MIN_SEL + 3 };
+/* 100, 150, 200, 250 */
+static const unsigned int range2_vals[] = { RANGE2_MIN, RANGE2_MIN +
+					    RANGE2_STEP,
+					    RANGE2_MIN + RANGE2_STEP * 2,
+					    RANGE2_MIN + RANGE2_STEP * 3 };
+
+#define RANGE1_NUM_VALS (ARRAY_SIZE(range1_vals))
+#define RANGE2_NUM_VALS (ARRAY_SIZE(range2_vals))
+#define RANGE_NUM_VALS (RANGE1_NUM_VALS + RANGE2_NUM_VALS)
+
+#define RANGE1_MAX_SEL (RANGE1_MIN_SEL + RANGE1_NUM_VALS - 1)
+#define RANGE1_MAX_VAL (range1_vals[RANGE1_NUM_VALS - 1])
+
+#define RANGE2_MAX_SEL (RANGE2_MIN_SEL + RANGE2_NUM_VALS - 1)
+#define RANGE2_MAX_VAL (range2_vals[RANGE2_NUM_VALS - 1])
+
+#define SMALLEST_SEL RANGE1_MIN_SEL
+#define SMALLEST_VAL RANGE1_MIN
+
+static struct linear_range testr[] = {
+	{
+		.min = RANGE1_MIN,
+		.min_sel = RANGE1_MIN_SEL,
+		.max_sel = RANGE1_MAX_SEL,
+		.step = RANGE1_STEP,
+	}, {
+		.min = RANGE2_MIN,
+		.min_sel = RANGE2_MIN_SEL,
+		.max_sel = RANGE2_MAX_SEL,
+		.step = RANGE2_STEP
+	},
+};
+
+static void range_test_get_value(struct kunit *test)
+{
+	int ret, i;
+	unsigned int sel, val;
+
+	for (i = 0; i < RANGE1_NUM_VALS; i++) {
+		sel = range1_sels[i];
+		ret = linear_range_get_value_array(&testr[0], 2, sel, &val);
+		KUNIT_EXPECT_EQ(test, 0, ret);
+		KUNIT_EXPECT_EQ(test, val, range1_vals[i]);
+	}
+	for (i = 0; i < RANGE2_NUM_VALS; i++) {
+		sel = range2_sels[i];
+		ret = linear_range_get_value_array(&testr[0], 2, sel, &val);
+		KUNIT_EXPECT_EQ(test, 0, ret);
+		KUNIT_EXPECT_EQ(test, val, range2_vals[i]);
+	}
+	ret = linear_range_get_value_array(&testr[0], 2, sel + 1, &val);
+	KUNIT_EXPECT_NE(test, 0, ret);
+}
+
+static void range_test_get_selector_high(struct kunit *test)
+{
+	int ret, i;
+	unsigned int sel;
+	bool found;
+
+	for (i = 0; i < RANGE1_NUM_VALS; i++) {
+		ret = linear_range_get_selector_high(&testr[0], range1_vals[i],
+						     &sel, &found);
+		KUNIT_EXPECT_EQ(test, 0, ret);
+		KUNIT_EXPECT_EQ(test, sel, range1_sels[i]);
+		KUNIT_EXPECT_TRUE(test, found);
+	}
+
+	ret = linear_range_get_selector_high(&testr[0], RANGE1_MAX_VAL + 1,
+					     &sel, &found);
+	KUNIT_EXPECT_LE(test, ret, 0);
+
+	ret = linear_range_get_selector_high(&testr[0], RANGE1_MIN - 1,
+					     &sel, &found);
+	KUNIT_EXPECT_EQ(test, 0, ret);
+	KUNIT_EXPECT_FALSE(test, found);
+	KUNIT_EXPECT_EQ(test, sel, range1_sels[0]);
+}
+
+static void range_test_get_value_amount(struct kunit *test)
+{
+	int ret;
+
+	ret = linear_range_values_in_range_array(&testr[0], 2);
+	KUNIT_EXPECT_EQ(test, (int)RANGE_NUM_VALS, ret);
+}
+
+static void range_test_get_selector_low(struct kunit *test)
+{
+	int i, ret;
+	unsigned int sel;
+	bool found;
+
+	for (i = 0; i < RANGE1_NUM_VALS; i++) {
+		ret = linear_range_get_selector_low_array(&testr[0], 2,
+							  range1_vals[i], &sel,
+							  &found);
+		KUNIT_EXPECT_EQ(test, 0, ret);
+		KUNIT_EXPECT_EQ(test, sel, range1_sels[i]);
+		KUNIT_EXPECT_TRUE(test, found);
+	}
+	for (i = 0; i < RANGE2_NUM_VALS; i++) {
+		ret = linear_range_get_selector_low_array(&testr[0], 2,
+							  range2_vals[i], &sel,
+							  &found);
+		KUNIT_EXPECT_EQ(test, 0, ret);
+		KUNIT_EXPECT_EQ(test, sel, range2_sels[i]);
+		KUNIT_EXPECT_TRUE(test, found);
+	}
+
+	/*
+	 * Seek value greater than range max => get_selector_*_low should
+	 * return Ok - but set found to false as value is not in range
+	 */
+	ret = linear_range_get_selector_low_array(&testr[0], 2,
+					range2_vals[RANGE2_NUM_VALS - 1] + 1,
+					&sel, &found);
+
+	KUNIT_EXPECT_EQ(test, 0, ret);
+	KUNIT_EXPECT_EQ(test, sel, range2_sels[RANGE2_NUM_VALS - 1]);
+	KUNIT_EXPECT_FALSE(test, found);
+}
+
+static struct kunit_case range_test_cases[] = {
+	KUNIT_CASE(range_test_get_value_amount),
+	KUNIT_CASE(range_test_get_selector_high),
+	KUNIT_CASE(range_test_get_selector_low),
+	KUNIT_CASE(range_test_get_value),
+	{},
+};
+
+static struct kunit_suite range_test_module = {
+	.name = "linear-ranges-test",
+	.test_cases = range_test_cases,
+};
+
+kunit_test_suites(&range_test_module);
+
+MODULE_LICENSE("GPL");
-- 
2.21.0


-- 
Matti Vaittinen, Linux device drivers
ROHM Semiconductors, Finland SWDC
Kiviharjunlenkki 1E
90220 OULU
FINLAND

~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
Simon says - in Latin please.
~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
Thanks to Simon Glass for the translation =] 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
