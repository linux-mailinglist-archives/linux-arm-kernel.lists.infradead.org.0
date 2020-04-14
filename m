Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850C31A7549
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 10:00:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLbf5OsPiMbccQm/OnFv4aSsFB5bl6DMKW/tag6oaGY=; b=ZmXQKkPjoeO6oZ
	h3G5eYBMU6Onmm18Kiyf+xfEXgy9Npq0YWuJsyKagJweLAPbwjaBXzAndQh9aG8jG8JjfXqUVASwE
	F36WP99j+oYvD8ZGdnFD6gzErQ+OfVqevD75m5Lj9eCMHwycKXu8GRAxXkdiak44A09KeHCUGfw1g
	lB9Ds/CWSNnTYv4+T3pSVSrmAHihpghQ/+CfBlrs3dKWInBG2BOFYPpwghoyeOG/rD0IzRB07LFi2
	OBLhDFlr4nLwm2hwMfHtOqdRMadn5tcg+OJI/lHutMqE5bngbL4WhmASAVcDYi+BMVZAMAEtPqoLs
	hUPFR08c9k5kth/KWC1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOGU5-0000fc-Tc; Tue, 14 Apr 2020 07:59:53 +0000
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOGTx-0000fB-Fk; Tue, 14 Apr 2020 07:59:47 +0000
Received: by mail-lf1-f67.google.com with SMTP id 131so8594429lfh.11;
 Tue, 14 Apr 2020 00:59:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5TLrB/kqQxRMxzfGHtqwHcPMyhUVMBZD3rIBIrmRccU=;
 b=O3V2iCsW5ODlD4Qy7GzfHA6YcOoNIyPZCuPSgzMAwleaKYXLlwzNxt86TDjw+l4/Ri
 fdC6NnopZcpWYnvumOFuUU4//25Keht+4EODt5lZbuqy9qR8kyP5G0+fWkfy+PPu39nI
 eUp0VCBuce51oJvsRGpfLkWF1T42qu4xG35VsI6JiTa3/Ish17d3C2mei9V1gx4f8ex5
 PieAJT19F8A0ueRaa6N/zr9LGigpX9NZMvveazcCCdTgPqqXJ0cVGQvZonAlVJ6RxE7u
 tSJzGLK1adKIKc+5iBl9rvmsC6vLY81dq/gxQgzjuNXCuOlgnJDYfx7OiCDJfuyiyLiG
 ZWzQ==
X-Gm-Message-State: AGi0PubK4zhWtLjWY0nWLkp/VYUSYziqtUju+oM13Gw+1GRfQmflWot2
 dLENbqJOdfFWUb3ae/fcAnM=
X-Google-Smtp-Source: APiQypIYOzc6Dv2vSE+t+tg1bL00nHB4Y6PfAXOqyoHyv58w7laGUa+s6rC2+M3lVRCsNBtQpeXXMg==
X-Received: by 2002:a19:c8cf:: with SMTP id
 y198mr12350717lff.197.1586851183634; 
 Tue, 14 Apr 2020 00:59:43 -0700 (PDT)
Received: from localhost.localdomain
 (dc7t7ryyyyyyyyyyyyybt-3.rev.dnainternet.fi. [2001:14ba:16e1:b700::3])
 by smtp.gmail.com with ESMTPSA id o21sm8651567ljg.71.2020.04.14.00.59.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 00:59:42 -0700 (PDT)
Date: Tue, 14 Apr 2020 10:59:33 +0300
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH v9 01/10] lib: add linear ranges helpers
Message-ID: <aadd70ad382276e8ccbf6c6b91a596d9898a5afd.1586849281.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1586849281.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1586849281.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_005945_526401_861F80AD 
X-CRM114-Status: GOOD (  26.37  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mazziesaccount[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

Many devices have control registers which control some measurable
property. Often a register contains control field so that change in
this field causes linear change in the controlled property. It is not
a rare case that user wants to give 'meaningful' control values and
driver needs to convert them to register field values. Even more
often user wants to 'see' the currently set value - again in
meaningful units - and driver needs to convert the values it reads
from register to these meaningful units. Examples of this include:

- regulators, voltage/current configurations
- power, voltage/current configurations
- clk(?) NCOs

and maybe others I can't think of right now.

Provide a linear_range helper which can do conversion from user value
to register value 'selector'.

The idea here is stolen from regulator framework and patches refactoring
the regulator helpers to use this are following.

Current implementation does not support inversely proportional ranges
but it might be useful if we could support also inversely proportional
ranges?

Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Reviewed-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---

Changes since v8 - rebased and reordered series.

 include/linux/linear_range.h |  48 +++++++
 lib/Kconfig                  |   3 +
 lib/Makefile                 |   1 +
 lib/linear_ranges.c          | 241 +++++++++++++++++++++++++++++++++++
 4 files changed, 293 insertions(+)
 create mode 100644 include/linux/linear_range.h
 create mode 100644 lib/linear_ranges.c

diff --git a/include/linux/linear_range.h b/include/linux/linear_range.h
new file mode 100644
index 000000000000..17b5943727d5
--- /dev/null
+++ b/include/linux/linear_range.h
@@ -0,0 +1,48 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2020 ROHM Semiconductors */
+
+#ifndef LINEAR_RANGE_H
+#define LINEAR_RANGE_H
+
+#include <linux/types.h>
+
+/**
+ * struct linear_range - table of selector - value pairs
+ *
+ * Define a lookup-table for range of values. Intended to help when looking
+ * for a register value matching certaing physical measure (like voltage).
+ * Usable when increment of one in register always results a constant increment
+ * of the physical measure (like voltage).
+ *
+ * @min:  Lowest value in range
+ * @min_sel: Lowest selector for range
+ * @max_sel: Highest selector for range
+ * @step: Value step size
+ */
+struct linear_range {
+	unsigned int min;
+	unsigned int min_sel;
+	unsigned int max_sel;
+	unsigned int step;
+};
+
+unsigned int linear_range_values_in_range(const struct linear_range *r);
+unsigned int linear_range_values_in_range_array(const struct linear_range *r,
+						int ranges);
+unsigned int linear_range_get_max_value(const struct linear_range *r);
+
+int linear_range_get_value(const struct linear_range *r, unsigned int selector,
+			   unsigned int *val);
+int linear_range_get_value_array(const struct linear_range *r, int ranges,
+				 unsigned int selector, unsigned int *val);
+int linear_range_get_selector_low(const struct linear_range *r,
+				  unsigned int val, unsigned int *selector,
+				  bool *found);
+int linear_range_get_selector_high(const struct linear_range *r,
+				   unsigned int val, unsigned int *selector,
+				   bool *found);
+int linear_range_get_selector_low_array(const struct linear_range *r,
+					int ranges, unsigned int val,
+					unsigned int *selector, bool *found);
+
+#endif
diff --git a/lib/Kconfig b/lib/Kconfig
index 5d53f9609c25..8ec05335426c 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -19,6 +19,9 @@ config RAID6_PQ_BENCHMARK
 	  Benchmark all available RAID6 PQ functions on init and choose the
 	  fastest one.
 
+config LINEAR_RANGES
+	tristate
+
 config PACKING
 	bool "Generic bitfield packing and unpacking"
 	default n
diff --git a/lib/Makefile b/lib/Makefile
index 685aee60de1d..20b9cfdcad69 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -125,6 +125,7 @@ obj-$(CONFIG_DEBUG_LIST) += list_debug.o
 obj-$(CONFIG_DEBUG_OBJECTS) += debugobjects.o
 
 obj-$(CONFIG_BITREVERSE) += bitrev.o
+obj-$(CONFIG_LINEAR_RANGES) += linear_ranges.o
 obj-$(CONFIG_PACKING)	+= packing.o
 obj-$(CONFIG_CRC_CCITT)	+= crc-ccitt.o
 obj-$(CONFIG_CRC16)	+= crc16.o
diff --git a/lib/linear_ranges.c b/lib/linear_ranges.c
new file mode 100644
index 000000000000..d1336c75ccd7
--- /dev/null
+++ b/lib/linear_ranges.c
@@ -0,0 +1,241 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * helpers to map values in a linear range to range index
+ *
+ * Original idea borrowed from regulator framework
+ *
+ * It might be useful if we could support also inversely proportional ranges?
+ * Copyright 2020 ROHM Semiconductors
+ */
+
+#include <linux/errno.h>
+#include <linux/export.h>
+#include <linux/kernel.h>
+#include <linux/linear_range.h>
+
+/**
+ * linear_range_values_in_range - return the amount of values in a range
+ * @r:		pointer to linear range where values are counted
+ *
+ * Compute the amount of values in range pointed by @r. Note, values can
+ * be all equal - range with selectors 0,...,2 with step 0 still contains
+ * 3 values even though they are all equal.
+ *
+ * Return: the amount of values in range pointed by @r
+ */
+unsigned int linear_range_values_in_range(const struct linear_range *r)
+{
+	if (!r)
+		return 0;
+	return r->max_sel - r->min_sel + 1;
+}
+EXPORT_SYMBOL_GPL(linear_range_values_in_range);
+
+/**
+ * linear_range_values_in_range_array - return the amount of values in ranges
+ * @r:		pointer to array of linear ranges where values are counted
+ * @ranges:	amount of ranges we include in computation.
+ *
+ * Compute the amount of values in ranges pointed by @r. Note, values can
+ * be all equal - range with selectors 0,...,2 with step 0 still contains
+ * 3 values even though they are all equal.
+ *
+ * Return: the amount of values in first @ranges ranges pointed by @r
+ */
+unsigned int linear_range_values_in_range_array(const struct linear_range *r,
+						int ranges)
+{
+	int i, values_in_range = 0;
+
+	for (i = 0; i < ranges; i++) {
+		int values;
+
+		values = linear_range_values_in_range(&r[i]);
+		if (!values)
+			return values;
+
+		values_in_range += values;
+	}
+	return values_in_range;
+}
+EXPORT_SYMBOL_GPL(linear_range_values_in_range_array);
+
+/**
+ * linear_range_get_max_value - return the largest value in a range
+ * @r:		pointer to linear range where value is looked from
+ *
+ * Return: the largest value in the given range
+ */
+unsigned int linear_range_get_max_value(const struct linear_range *r)
+{
+	return r->min + (r->max_sel - r->min_sel) * r->step;
+}
+EXPORT_SYMBOL_GPL(linear_range_get_max_value);
+
+/**
+ * linear_range_get_value - fetch a value from given range
+ * @r:		pointer to linear range where value is looked from
+ * @selector:	selector for which the value is searched
+ * @val:	address where found value is updated
+ *
+ * Search given ranges for value which matches given selector.
+ *
+ * Return: 0 on success, -EINVAL given selector is not found from any of the
+ * ranges.
+ */
+int linear_range_get_value(const struct linear_range *r, unsigned int selector,
+			   unsigned int *val)
+{
+	if (r->min_sel > selector || r->max_sel < selector)
+		return -EINVAL;
+
+	*val = r->min + (selector - r->min_sel) * r->step;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(linear_range_get_value);
+
+/**
+ * linear_range_get_value_array - fetch a value from array of ranges
+ * @r:		pointer to array of linear ranges where value is looked from
+ * @ranges:	amount of ranges in an array
+ * @selector:	selector for which the value is searched
+ * @val:	address where found value is updated
+ *
+ * Search through an array of ranges for value which matches given selector.
+ *
+ * Return: 0 on success, -EINVAL given selector is not found from any of the
+ * ranges.
+ */
+int linear_range_get_value_array(const struct linear_range *r, int ranges,
+				 unsigned int selector, unsigned int *val)
+{
+	int i;
+
+	for (i = 0; i < ranges; i++)
+		if (r[i].min_sel <= selector && r[i].max_sel >= selector)
+			return linear_range_get_value(&r[i], selector, val);
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(linear_range_get_value_array);
+
+/**
+ * linear_range_get_selector_low - return linear range selector for value
+ * @r:		pointer to linear range where selector is looked from
+ * @val:	value for which the selector is searched
+ * @selector:	address where found selector value is updated
+ * @found:	flag to indicate that given value was in the range
+ *
+ * Return selector which which range value is closest match for given
+ * input value. Value is matching if it is equal or smaller than given
+ * value. If given value is in the range, then @found is set true.
+ *
+ * Return: 0 on success, -EINVAL if range is invalid or does not contain
+ * value smaller or equal to given value
+ */
+int linear_range_get_selector_low(const struct linear_range *r,
+				  unsigned int val, unsigned int *selector,
+				  bool *found)
+{
+	*found = false;
+
+	if (r->min > val)
+		return -EINVAL;
+
+	if (linear_range_get_max_value(r) < val) {
+		*selector = r->max_sel;
+		return 0;
+	}
+
+	*found = true;
+
+	if (r->step == 0)
+		*selector = r->min_sel;
+	else
+		*selector = (val - r->min) / r->step + r->min_sel;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(linear_range_get_selector_low);
+
+/**
+ * linear_range_get_selector_low_array - return linear range selector for value
+ * @r:		pointer to array of linear ranges where selector is looked from
+ * @ranges:	amount of ranges to scan from array
+ * @val:	value for which the selector is searched
+ * @selector:	address where found selector value is updated
+ * @found:	flag to indicate that given value was in the range
+ *
+ * Scan array of ranges for selector which which range value matches given
+ * input value. Value is matching if it is equal or smaller than given
+ * value. If given value is found to be in a range scanning is stopped and
+ * @found is set true. If a range with values smaller than given value is found
+ * but the range max is being smaller than given value, then the ranges
+ * biggest selector is updated to @selector but scanning ranges is continued
+ * and @found is set to false.
+ *
+ * Return: 0 on success, -EINVAL if range array is invalid or does not contain
+ * range with a value smaller or equal to given value
+ */
+int linear_range_get_selector_low_array(const struct linear_range *r,
+					int ranges, unsigned int val,
+					unsigned int *selector, bool *found)
+{
+	int i;
+	int ret = -EINVAL;
+
+	for (i = 0; i < ranges; i++) {
+		int tmpret;
+
+		tmpret = linear_range_get_selector_low(&r[i], val, selector,
+						       found);
+		if (!tmpret)
+			ret = 0;
+
+		if (*found)
+			break;
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(linear_range_get_selector_low_array);
+
+/**
+ * linear_range_get_selector_high - return linear range selector for value
+ * @r:		pointer to linear range where selector is looked from
+ * @val:	value for which the selector is searched
+ * @selector:	address where found selector value is updated
+ * @found:	flag to indicate that given value was in the range
+ *
+ * Return selector which which range value is closest match for given
+ * input value. Value is matching if it is equal or higher than given
+ * value. If given value is in the range, then @found is set true.
+ *
+ * Return: 0 on success, -EINVAL if range is invalid or does not contain
+ * value greater or equal to given value
+ */
+int linear_range_get_selector_high(const struct linear_range *r,
+				   unsigned int val, unsigned int *selector,
+				   bool *found)
+{
+	*found = false;
+
+	if (linear_range_get_max_value(r) < val)
+		return -EINVAL;
+
+	if (r->min > val) {
+		*selector = r->min_sel;
+		return 0;
+	}
+
+	*found = true;
+
+	if (r->step == 0)
+		*selector = r->max_sel;
+	else
+		*selector = DIV_ROUND_UP(val - r->min, r->step) + r->min_sel;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(linear_range_get_selector_high);
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
