Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CADEE17B5B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 05:34:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuZjb9itzlnCnYG63kimSha6PzSL1ejSewb8V327sTs=; b=hWcX4T61osq8uB
	tTUH9lApvZhD11yRjJg678KTkKc1lUBibN3MQ7S7vtQqc6jfigCR2tWf4b1vKP4JPDr3nYsGdX24z
	ljfrARm1nhKZE3LwPQhKsIsohkADnGPozy/Uq1XAoapowbWz5iFIDzQhcxhY0B+ooMjnGnr9rgiob
	/I4nHf9JyjPKDrPjELsPnYN0JMNLE0O2Fjz8aERslrXdLu08cmiWUD65Ei2EYHd+wgYQLiv1+1l3J
	xlVELOpw1gnxssxn3v6h+DHAG3iWTQ+iGkzmLBCklb5AX3HfjTsngnVGLAzQcNRGSLSxov9JZC0Bf
	HabTHNyFUiwTkQ9HWfsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA4gH-00077X-Eu; Fri, 06 Mar 2020 04:33:49 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA4bb-0002rg-F9
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 04:29:13 +0000
Received: by mail-yw1-xc41.google.com with SMTP id g206so1101909ywb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 20:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JjeH9m4qgkWZXplsg1h97DYvGGWmb9nEGzu4XNBBl/I=;
 b=bB0hNbdUoLtgtevamEs7Y9rRoSCPY+FgD8I+ERJ03onobS9rtxhle6y99Qzdzl94hb
 peLHTAqs6zovUhzUS60CZUB7HqvTSyK/DD3HUuOWk3iTS1Wf34h5iV0NL1mEtPyoMJ1f
 81ml0FJ55TjnWqyeg3w+0wUkmlqm2lvttcTsLZ28TkCpU0/MsrPMt1yiuR+aWGJcvx+V
 A4hwFnd8tlxMDw3vzIMNj+vMDqKWSG5pmLXhziov/50KCndlHRWbEiBoJlYkM71tfN61
 PftvaxWHahMxtoYt8o1OhgvdudaR+CtGPx3b6Rd+eYeaLu0fyan9msFAQDUduMt+R9I4
 X9ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JjeH9m4qgkWZXplsg1h97DYvGGWmb9nEGzu4XNBBl/I=;
 b=Fpk9Te9CT9SAP5w/4FpYI/+dtb8S08M3dQ0RFbA2BwA/EPPOX76UQDsZI9Gr8fc5HT
 1cngijtw3O1GA3S9d13jt6E1Cmfs0n5zRv5e9zU9ayoDDCX/+HbP83yC0mSJMr2tTawH
 XkeTpuraKq5L6Y4GkZgvosx2nUot83Xfij7Feh6DK0V6QMZZ3FA8TB59sdcjPl/+tzIm
 4SmV2tCOJSSWFjJEufPitxdlRvdAHph3GLNFzxPstVyoSdSEsFSbRVnUmuaOh1BY5ulL
 MTXGGsBNYt4v25I7xsGYEKk6qPSJ1lgiv04Wz5sBcB5LeHGyXIoxVII9OS3WpP4kQHUF
 OU/Q==
X-Gm-Message-State: ANhLgQ0DEIWctvaAOHTQDbYdi/981LDXGAH/apkWP5AY5libtElvEY4V
 rYp+Sdj5vsJwxnHxP1LuDZvVPg==
X-Google-Smtp-Source: ADFU+vueAFjaBsSuI7/v0OjnVlU3UkhMtu7Zf2SG4BOuUFeeUG37juzfa62HWdxD5JZwztbDCbSpnA==
X-Received: by 2002:a0d:d106:: with SMTP id t6mr2074868ywd.211.1583468938087; 
 Thu, 05 Mar 2020 20:28:58 -0800 (PST)
Received: from presto.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id x2sm12581836ywa.32.2020.03.05.20.28.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 20:28:57 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: David Miller <davem@davemloft.net>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 11/17] soc: qcom: ipa: filter and routing tables
Date: Thu,  5 Mar 2020 22:28:25 -0600
Message-Id: <20200306042831.17827-12-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200306042831.17827-1-elder@linaro.org>
References: <20200306042831.17827-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_202859_620220_5B4407FE 
X-CRM114-Status: GOOD (  27.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, devicetree@vger.kernel.org,
 Dan Williams <dcbw@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch contains code implementing filter and routing tables for
the IPA.  A filter table allows rules to be used for filtering
packets that depart the AP at an endpoint.  A filter table entry
contains the address of a set of rules to apply for each endpoint
that supports filtering.

A routing table allows packets to be routed to an endpoint based
on packet metadata.  It is also a table whose entries each contain
the address of a set of routing rules to apply.

Neither filtering nor routing is supported by the current driver.
All table entries refer to rules that mean "no filtering" and "no
routing."

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ipa/ipa_table.c | 700 ++++++++++++++++++++++++++++++++++++
 drivers/net/ipa/ipa_table.h | 103 ++++++
 2 files changed, 803 insertions(+)
 create mode 100644 drivers/net/ipa/ipa_table.c
 create mode 100644 drivers/net/ipa/ipa_table.h

diff --git a/drivers/net/ipa/ipa_table.c b/drivers/net/ipa/ipa_table.c
new file mode 100644
index 000000000000..9df2a3e78c98
--- /dev/null
+++ b/drivers/net/ipa/ipa_table.c
@@ -0,0 +1,700 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2018-2020 Linaro Ltd.
+ */
+
+#include <linux/types.h>
+#include <linux/kernel.h>
+#include <linux/bits.h>
+#include <linux/bitops.h>
+#include <linux/bitfield.h>
+#include <linux/io.h>
+#include <linux/build_bug.h>
+#include <linux/device.h>
+#include <linux/dma-mapping.h>
+
+#include "ipa.h"
+#include "ipa_version.h"
+#include "ipa_endpoint.h"
+#include "ipa_table.h"
+#include "ipa_reg.h"
+#include "ipa_mem.h"
+#include "ipa_cmd.h"
+#include "gsi.h"
+#include "gsi_trans.h"
+
+/**
+ * DOC: IPA Filter and Route Tables
+ *
+ * The IPA has tables defined in its local shared memory that define filter
+ * and routing rules.  Each entry in these tables contains a 64-bit DMA
+ * address that refers to DRAM (system memory) containing a rule definition.
+ * A rule consists of a contiguous block of 32-bit values terminated with
+ * 32 zero bits.  A special "zero entry" rule consisting of 64 zero bits
+ * represents "no filtering" or "no routing," and is the reset value for
+ * filter or route table rules.  Separate tables (both filter and route)
+ * used for IPv4 and IPv6.  Additionally, there can be hashed filter or
+ * route tables, which are used when a hash of message metadata matches.
+ * Hashed operation is not supported by all IPA hardware.
+ *
+ * Each filter rule is associated with an AP or modem TX endpoint, though
+ * not all TX endpoints support filtering.  The first 64-bit entry in a
+ * filter table is a bitmap indicating which endpoints have entries in
+ * the table.  The low-order bit (bit 0) in this bitmap represents a
+ * special global filter, which applies to all traffic.  This is not
+ * used in the current code.  Bit 1, if set, indicates that there is an
+ * entry (i.e. a DMA address referring to a rule) for endpoint 0 in the
+ * table.  Bit 2, if set, indicates there is an entry for endpoint 1,
+ * and so on.  Space is set aside in IPA local memory to hold as many
+ * filter table entries as might be required, but typically they are not
+ * all used.
+ *
+ * The AP initializes all entries in a filter table to refer to a "zero"
+ * entry.  Once initialized the modem and AP update the entries for
+ * endpoints they "own" directly.  Currently the AP does not use the
+ * IPA filtering functionality.
+ *
+ *                    IPA Filter Table
+ *                 ----------------------
+ * endpoint bitmap | 0x0000000000000048 | Bits 3 and 6 set (endpoints 2 and 5)
+ *                 |--------------------|
+ * 1st endpoint    | 0x000123456789abc0 | DMA address for modem endpoint 2 rule
+ *                 |--------------------|
+ * 2nd endpoint    | 0x000123456789abf0 | DMA address for AP endpoint 5 rule
+ *                 |--------------------|
+ * (unused)        |                    | (Unused space in filter table)
+ *                 |--------------------|
+ *                          . . .
+ *                 |--------------------|
+ * (unused)        |                    | (Unused space in filter table)
+ *                 ----------------------
+ *
+ * The set of available route rules is divided about equally between the AP
+ * and modem.  The AP initializes all entries in a route table to refer to
+ * a "zero entry".  Once initialized, the modem and AP are responsible for
+ * updating their own entries.  All entries in a route table are usable,
+ * though the AP currently does not use the IPA routing functionality.
+ *
+ *                    IPA Route Table
+ *                 ----------------------
+ * 1st modem route | 0x0001234500001100 | DMA address for first route rule
+ *                 |--------------------|
+ * 2nd modem route | 0x0001234500001140 | DMA address for second route rule
+ *                 |--------------------|
+ *                          . . .
+ *                 |--------------------|
+ * Last modem route| 0x0001234500002280 | DMA address for Nth route rule
+ *                 |--------------------|
+ * 1st AP route    | 0x0001234500001100 | DMA address for route rule (N+1)
+ *                 |--------------------|
+ * 2nd AP route    | 0x0001234500001140 | DMA address for next route rule
+ *                 |--------------------|
+ *                          . . .
+ *                 |--------------------|
+ * Last AP route   | 0x0001234500002280 | DMA address for last route rule
+ *                 ----------------------
+ */
+
+/* IPA hardware constrains filter and route tables alignment */
+#define IPA_TABLE_ALIGN			128	/* Minimum table alignment */
+
+/* Assignment of route table entries to the modem and AP */
+#define IPA_ROUTE_MODEM_MIN		0
+#define IPA_ROUTE_MODEM_COUNT		8
+
+#define IPA_ROUTE_AP_MIN		IPA_ROUTE_MODEM_COUNT
+#define IPA_ROUTE_AP_COUNT \
+		(IPA_ROUTE_COUNT_MAX - IPA_ROUTE_MODEM_COUNT)
+
+/* Filter or route rules consist of a set of 32-bit values followed by a
+ * 32-bit all-zero rule list terminator.  The "zero rule" is simply an
+ * all-zero rule followed by the list terminator.
+ */
+#define IPA_ZERO_RULE_SIZE		(2 * sizeof(__le32))
+
+#ifdef IPA_VALIDATE
+
+/* Check things that can be validated at build time. */
+static void ipa_table_validate_build(void)
+{
+	/* IPA hardware accesses memory 128 bytes at a time.  Addresses
+	 * referred to by entries in filter and route tables must be
+	 * aligned on 128-byte byte boundaries.  The only rule address
+	 * ever use is the "zero rule", and it's aligned at the base
+	 * of a coherent DMA allocation.
+	 */
+	BUILD_BUG_ON(ARCH_DMA_MINALIGN % IPA_TABLE_ALIGN);
+
+	/* Filter and route tables contain DMA addresses that refer to
+	 * filter or route rules.  We use a fixed constant to represent
+	 * the size of either type of table entry.  Code in ipa_table_init()
+	 * uses a pointer to __le64 to initialize table entriews.
+	 */
+	BUILD_BUG_ON(IPA_TABLE_ENTRY_SIZE != sizeof(dma_addr_t));
+	BUILD_BUG_ON(sizeof(dma_addr_t) != sizeof(__le64));
+
+	/* A "zero rule" is used to represent no filtering or no routing.
+	 * It is a 64-bit block of zeroed memory.  Code in ipa_table_init()
+	 * assumes that it can be written using a pointer to __le64.
+	 */
+	BUILD_BUG_ON(IPA_ZERO_RULE_SIZE != sizeof(__le64));
+
+	/* Impose a practical limit on the number of routes */
+	BUILD_BUG_ON(IPA_ROUTE_COUNT_MAX > 32);
+	/* The modem must be allotted at least one route table entry */
+	BUILD_BUG_ON(!IPA_ROUTE_MODEM_COUNT);
+	/* But it can't have more than what is available */
+	BUILD_BUG_ON(IPA_ROUTE_MODEM_COUNT > IPA_ROUTE_COUNT_MAX);
+
+}
+
+static bool
+ipa_table_valid_one(struct ipa *ipa, bool route, bool ipv6, bool hashed)
+{
+	struct device *dev = &ipa->pdev->dev;
+	const struct ipa_mem *mem;
+	u32 size;
+
+	if (route) {
+		if (ipv6)
+			mem = hashed ? &ipa->mem[IPA_MEM_V6_ROUTE_HASHED]
+				     : &ipa->mem[IPA_MEM_V6_ROUTE];
+		else
+			mem = hashed ? &ipa->mem[IPA_MEM_V4_ROUTE_HASHED]
+				     : &ipa->mem[IPA_MEM_V4_ROUTE];
+		size = IPA_ROUTE_COUNT_MAX * IPA_TABLE_ENTRY_SIZE;
+	} else {
+		if (ipv6)
+			mem = hashed ? &ipa->mem[IPA_MEM_V6_FILTER_HASHED]
+				     : &ipa->mem[IPA_MEM_V6_FILTER];
+		else
+			mem = hashed ? &ipa->mem[IPA_MEM_V4_FILTER_HASHED]
+				     : &ipa->mem[IPA_MEM_V4_FILTER];
+		size = (1 + IPA_FILTER_COUNT_MAX) * IPA_TABLE_ENTRY_SIZE;
+	}
+
+	if (!ipa_cmd_table_valid(ipa, mem, route, ipv6, hashed))
+		return false;
+
+	/* mem->size >= size is sufficient, but we'll demand more */
+	if (mem->size == size)
+		return true;
+
+	/* Hashed table regions can be zero size if hashing is not supported */
+	if (hashed && !mem->size)
+		return true;
+
+	dev_err(dev, "IPv%c %s%s table region size 0x%02x, expected 0x%02x\n",
+		ipv6 ? '6' : '4', hashed ? "hashed " : "",
+		route ? "route" : "filter", mem->size, size);
+
+	return false;
+}
+
+/* Verify the filter and route table memory regions are the expected size */
+bool ipa_table_valid(struct ipa *ipa)
+{
+	bool valid = true;
+
+	valid = valid && ipa_table_valid_one(ipa, false, false, false);
+	valid = valid && ipa_table_valid_one(ipa, false, false, true);
+	valid = valid && ipa_table_valid_one(ipa, false, true, false);
+	valid = valid && ipa_table_valid_one(ipa, false, true, true);
+	valid = valid && ipa_table_valid_one(ipa, true, false, false);
+	valid = valid && ipa_table_valid_one(ipa, true, false, true);
+	valid = valid && ipa_table_valid_one(ipa, true, true, false);
+	valid = valid && ipa_table_valid_one(ipa, true, true, true);
+
+	return valid;
+}
+
+bool ipa_filter_map_valid(struct ipa *ipa, u32 filter_map)
+{
+	struct device *dev = &ipa->pdev->dev;
+	u32 count;
+
+	if (!filter_map) {
+		dev_err(dev, "at least one filtering endpoint is required\n");
+
+		return false;
+	}
+
+	count = hweight32(filter_map);
+	if (count > IPA_FILTER_COUNT_MAX) {
+		dev_err(dev, "too many filtering endpoints (%u, max %u)\n",
+			count, IPA_FILTER_COUNT_MAX);
+
+		return false;
+	}
+
+	return true;
+}
+
+#else /* !IPA_VALIDATE */
+static void ipa_table_validate_build(void)
+
+{
+}
+
+#endif /* !IPA_VALIDATE */
+
+/* Zero entry count means no table, so just return a 0 address */
+static dma_addr_t ipa_table_addr(struct ipa *ipa, bool filter_mask, u16 count)
+{
+	u32 skip;
+
+	if (!count)
+		return 0;
+
+/* assert(count <= max_t(u32, IPA_FILTER_COUNT_MAX, IPA_ROUTE_COUNT_MAX)); */
+
+	/* Skip over the zero rule and possibly the filter mask */
+	skip = filter_mask ? 1 : 2;
+
+	return ipa->table_addr + skip * sizeof(*ipa->table_virt);
+}
+
+static void ipa_table_reset_add(struct gsi_trans *trans, bool filter,
+				u16 first, u16 count, const struct ipa_mem *mem)
+{
+	struct ipa *ipa = container_of(trans->gsi, struct ipa, gsi);
+	dma_addr_t addr;
+	u32 offset;
+	u16 size;
+
+	/* Nothing to do if the table memory regions is empty */
+	if (!mem->size)
+		return;
+
+	if (filter)
+		first++;	/* skip over bitmap */
+
+	offset = mem->offset + first * IPA_TABLE_ENTRY_SIZE;
+	size = count * IPA_TABLE_ENTRY_SIZE;
+	addr = ipa_table_addr(ipa, false, count);
+
+	ipa_cmd_dma_shared_mem_add(trans, offset, size, addr, true);
+}
+
+/* Reset entries in a single filter table belonging to either the AP or
+ * modem to refer to the zero entry.  The memory region supplied will be
+ * for the IPv4 and IPv6 non-hashed and hashed filter tables.
+ */
+static int
+ipa_filter_reset_table(struct ipa *ipa, const struct ipa_mem *mem, bool modem)
+{
+	u32 ep_mask = ipa->filter_map;
+	u32 count = hweight32(ep_mask);
+	struct gsi_trans *trans;
+	enum gsi_ee_id ee_id;
+
+	if (!mem->size)
+		return 0;
+
+	trans = ipa_cmd_trans_alloc(ipa, count);
+	if (!trans) {
+		dev_err(&ipa->pdev->dev,
+			"no transaction for %s filter reset\n",
+			modem ? "modem" : "AP");
+		return -EBUSY;
+	}
+
+	ee_id = modem ? GSI_EE_MODEM : GSI_EE_AP;
+	while (ep_mask) {
+		u32 endpoint_id = __ffs(ep_mask);
+		struct ipa_endpoint *endpoint;
+
+		ep_mask ^= BIT(endpoint_id);
+
+		endpoint = &ipa->endpoint[endpoint_id];
+		if (endpoint->ee_id != ee_id)
+			continue;
+
+		ipa_table_reset_add(trans, true, endpoint_id, 1, mem);
+	}
+
+	gsi_trans_commit_wait(trans);
+
+	return 0;
+}
+
+/* Theoretically, each filter table could have more filter slots to
+ * update than the maximum number of commands in a transaction.  So
+ * we do each table separately.
+ */
+static int ipa_filter_reset(struct ipa *ipa, bool modem)
+{
+	int ret;
+
+	ret = ipa_filter_reset_table(ipa, &ipa->mem[IPA_MEM_V4_FILTER], modem);
+	if (ret)
+		return ret;
+
+	ret = ipa_filter_reset_table(ipa, &ipa->mem[IPA_MEM_V4_FILTER_HASHED],
+				     modem);
+	if (ret)
+		return ret;
+
+	ret = ipa_filter_reset_table(ipa, &ipa->mem[IPA_MEM_V6_FILTER], modem);
+	if (ret)
+		return ret;
+	ret = ipa_filter_reset_table(ipa, &ipa->mem[IPA_MEM_V6_FILTER_HASHED],
+				     modem);
+
+	return ret;
+}
+
+/* The AP routes and modem routes are each contiguous within the
+ * table.  We can update each table with a single command, and we
+ * won't exceed the per-transaction command limit.
+ * */
+static int ipa_route_reset(struct ipa *ipa, bool modem)
+{
+	struct gsi_trans *trans;
+	u16 first;
+	u16 count;
+
+	trans = ipa_cmd_trans_alloc(ipa, 4);
+	if (!trans) {
+		dev_err(&ipa->pdev->dev,
+			"no transaction for %s route reset\n",
+			modem ? "modem" : "AP");
+		return -EBUSY;
+	}
+
+	if (modem) {
+		first = IPA_ROUTE_MODEM_MIN;
+		count = IPA_ROUTE_MODEM_COUNT;
+	} else {
+		first = IPA_ROUTE_AP_MIN;
+		count = IPA_ROUTE_AP_COUNT;
+	}
+
+	ipa_table_reset_add(trans, false, first, count,
+			    &ipa->mem[IPA_MEM_V4_ROUTE]);
+	ipa_table_reset_add(trans, false, first, count,
+			    &ipa->mem[IPA_MEM_V4_ROUTE_HASHED]);
+
+	ipa_table_reset_add(trans, false, first, count,
+			    &ipa->mem[IPA_MEM_V6_ROUTE]);
+	ipa_table_reset_add(trans, false, first, count,
+			    &ipa->mem[IPA_MEM_V6_ROUTE_HASHED]);
+
+	gsi_trans_commit_wait(trans);
+
+	return 0;
+}
+
+void ipa_table_reset(struct ipa *ipa, bool modem)
+{
+	struct device *dev = &ipa->pdev->dev;
+	const char *ee_name;
+	int ret;
+
+	ee_name = modem ? "modem" : "AP";
+
+	/* Report errors, but reset filter and route tables */
+	ret = ipa_filter_reset(ipa, modem);
+	if (ret)
+		dev_err(dev, "error %d resetting filter table for %s\n",
+				ret, ee_name);
+
+	ret = ipa_route_reset(ipa, modem);
+	if (ret)
+		dev_err(dev, "error %d resetting route table for %s\n",
+				ret, ee_name);
+}
+
+int ipa_table_hash_flush(struct ipa *ipa)
+{
+	u32 offset = ipa_reg_filt_rout_hash_flush_offset(ipa->version);
+	struct gsi_trans *trans;
+	u32 val;
+
+	/* IPA version 4.2 does not support hashed tables */
+	if (ipa->version == IPA_VERSION_4_2)
+		return 0;
+
+	trans = ipa_cmd_trans_alloc(ipa, 1);
+	if (!trans) {
+		dev_err(&ipa->pdev->dev, "no transaction for hash flush\n");
+		return -EBUSY;
+	}
+
+	val = IPV4_FILTER_HASH_FLUSH | IPV6_FILTER_HASH_FLUSH;
+	val |= IPV6_ROUTER_HASH_FLUSH | IPV4_ROUTER_HASH_FLUSH;
+
+	ipa_cmd_register_write_add(trans, offset, val, val, false);
+
+	gsi_trans_commit_wait(trans);
+
+	return 0;
+}
+
+static void ipa_table_init_add(struct gsi_trans *trans, bool filter,
+			       enum ipa_cmd_opcode opcode,
+			       const struct ipa_mem *mem,
+			       const struct ipa_mem *hash_mem)
+{
+	struct ipa *ipa = container_of(trans->gsi, struct ipa, gsi);
+	dma_addr_t hash_addr;
+	dma_addr_t addr;
+	u16 hash_count;
+	u16 hash_size;
+	u16 count;
+	u16 size;
+
+	/* The number of filtering endpoints determines number of entries
+	 * in the filter table.  The hashed and non-hashed filter table
+	 * will have the same number of entries.  The size of the route
+	 * table region determines the number of entries it has.
+	 */
+	if (filter) {
+		count = hweight32(ipa->filter_map);
+		hash_count = hash_mem->size ? count : 0;
+	} else {
+		count = mem->size / IPA_TABLE_ENTRY_SIZE;
+		hash_count = hash_mem->size / IPA_TABLE_ENTRY_SIZE;
+	}
+	size = count * IPA_TABLE_ENTRY_SIZE;
+	hash_size = hash_count * IPA_TABLE_ENTRY_SIZE;
+
+	addr = ipa_table_addr(ipa, filter, count);
+	hash_addr = ipa_table_addr(ipa, filter, hash_count);
+
+	ipa_cmd_table_init_add(trans, opcode, size, mem->offset, addr,
+			       hash_size, hash_mem->offset, hash_addr);
+}
+
+int ipa_table_setup(struct ipa *ipa)
+{
+	struct gsi_trans *trans;
+
+	trans = ipa_cmd_trans_alloc(ipa, 4);
+	if (!trans) {
+		dev_err(&ipa->pdev->dev, "no transaction for table setup\n");
+		return -EBUSY;
+	}
+
+	ipa_table_init_add(trans, false, IPA_CMD_IP_V4_ROUTING_INIT,
+			   &ipa->mem[IPA_MEM_V4_ROUTE],
+			   &ipa->mem[IPA_MEM_V4_ROUTE_HASHED]);
+
+	ipa_table_init_add(trans, false, IPA_CMD_IP_V6_ROUTING_INIT,
+			   &ipa->mem[IPA_MEM_V6_ROUTE],
+			   &ipa->mem[IPA_MEM_V6_ROUTE_HASHED]);
+
+	ipa_table_init_add(trans, true, IPA_CMD_IP_V4_FILTER_INIT,
+			   &ipa->mem[IPA_MEM_V4_FILTER],
+			   &ipa->mem[IPA_MEM_V4_FILTER_HASHED]);
+
+	ipa_table_init_add(trans, true, IPA_CMD_IP_V6_FILTER_INIT,
+			   &ipa->mem[IPA_MEM_V6_FILTER],
+			   &ipa->mem[IPA_MEM_V6_FILTER_HASHED]);
+
+	gsi_trans_commit_wait(trans);
+
+	return 0;
+}
+
+void ipa_table_teardown(struct ipa *ipa)
+{
+	/* Nothing to do */	/* XXX Maybe reset the tables? */
+}
+
+/**
+ * ipa_filter_tuple_zero() - Zero an endpoint's hashed filter tuple
+ * @endpoint_id:	Endpoint whose filter hash tuple should be zeroed
+ *
+ * Endpoint must be for the AP (not modem) and support filtering. Updates
+ * the filter hash values without changing route ones.
+ */
+static void ipa_filter_tuple_zero(struct ipa_endpoint *endpoint)
+{
+	u32 endpoint_id = endpoint->endpoint_id;
+	u32 offset;
+	u32 val;
+
+	offset = IPA_REG_ENDP_FILTER_ROUTER_HSH_CFG_N_OFFSET(endpoint_id);
+
+	val = ioread32(endpoint->ipa->reg_virt + offset);
+
+	/* Zero all filter-related fields, preserving the rest */
+	u32_replace_bits(val, 0, IPA_REG_ENDP_FILTER_HASH_MSK_ALL);
+
+	iowrite32(val, endpoint->ipa->reg_virt + offset);
+}
+
+static void ipa_filter_config(struct ipa *ipa, bool modem)
+{
+	enum gsi_ee_id ee_id = modem ? GSI_EE_MODEM : GSI_EE_AP;
+	u32 ep_mask = ipa->filter_map;
+
+	/* IPA version 4.2 has no hashed route tables */
+	if (ipa->version == IPA_VERSION_4_2)
+		return;
+
+	while (ep_mask) {
+		u32 endpoint_id = __ffs(ep_mask);
+		struct ipa_endpoint *endpoint;
+
+		ep_mask ^= BIT(endpoint_id);
+
+		endpoint = &ipa->endpoint[endpoint_id];
+		if (endpoint->ee_id == ee_id)
+			ipa_filter_tuple_zero(endpoint);
+	}
+}
+
+static void ipa_filter_deconfig(struct ipa *ipa, bool modem)
+{
+	/* Nothing to do */
+}
+
+static bool ipa_route_id_modem(u32 route_id)
+{
+	return route_id >= IPA_ROUTE_MODEM_MIN &&
+		route_id <= IPA_ROUTE_MODEM_MIN + IPA_ROUTE_MODEM_COUNT - 1;
+}
+
+/**
+ * ipa_route_tuple_zero() - Zero a hashed route table entry tuple
+ * @route_id:	Route table entry whose hash tuple should be zeroed
+ *
+ * Updates the route hash values without changing filter ones.
+ */
+static void ipa_route_tuple_zero(struct ipa *ipa, u32 route_id)
+{
+	u32 offset = IPA_REG_ENDP_FILTER_ROUTER_HSH_CFG_N_OFFSET(route_id);
+	u32 val;
+
+	val = ioread32(ipa->reg_virt + offset);
+
+	/* Zero all route-related fields, preserving the rest */
+	u32_replace_bits(val, 0, IPA_REG_ENDP_ROUTER_HASH_MSK_ALL);
+
+	iowrite32(val, ipa->reg_virt + offset);
+}
+
+static void ipa_route_config(struct ipa *ipa, bool modem)
+{
+	u32 route_id;
+
+	/* IPA version 4.2 has no hashed route tables */
+	if (ipa->version == IPA_VERSION_4_2)
+		return;
+
+	for (route_id = 0; route_id < IPA_ROUTE_COUNT_MAX; route_id++)
+		if (ipa_route_id_modem(route_id) == modem)
+			ipa_route_tuple_zero(ipa, route_id);
+}
+
+static void ipa_route_deconfig(struct ipa *ipa, bool modem)
+{
+	/* Nothing to do */
+}
+
+void ipa_table_config(struct ipa *ipa)
+{
+	ipa_filter_config(ipa, false);
+	ipa_filter_config(ipa, true);
+	ipa_route_config(ipa, false);
+	ipa_route_config(ipa, true);
+}
+
+void ipa_table_deconfig(struct ipa *ipa)
+{
+	ipa_route_deconfig(ipa, true);
+	ipa_route_deconfig(ipa, false);
+	ipa_filter_deconfig(ipa, true);
+	ipa_filter_deconfig(ipa, false);
+}
+
+/*
+ * Initialize a coherent DMA allocation containing initialized filter and
+ * route table data.  This is used when initializing or resetting the IPA
+ * filter or route table.
+ *
+ * The first entry in a filter table contains a bitmap indicating which
+ * endpoints contain entries in the table.  In addition to that first entry,
+ * there are at most IPA_FILTER_COUNT_MAX entries that follow.  Filter table
+ * entries are 64 bits wide, and (other than the bitmap) contain the DMA
+ * address of a filter rule.  A "zero rule" indicates no filtering, and
+ * consists of 64 bits of zeroes.  When a filter table is initialized (or
+ * reset) its entries are made to refer to the zero rule.
+ *
+ * Each entry in a route table is the DMA address of a routing rule.  For
+ * routing there is also a 64-bit "zero rule" that means no routing, and
+ * when a route table is initialized or reset, its entries are made to refer
+ * to the zero rule.  The zero rule is shared for route and filter tables.
+ *
+ * Note that the IPA hardware requires a filter or route rule address to be
+ * aligned on a 128 byte boundary.  The coherent DMA buffer we allocate here
+ * has a minimum alignment, and we place the zero rule at the base of that
+ * allocated space.  In ipa_table_init() we verify the minimum DMA allocation
+ * meets our requirement.
+ *
+ *	     +-------------------+
+ *	 --> |     zero rule     |
+ *	/    |-------------------|
+ *	|    |     filter mask   |
+ *	|\   |-------------------|
+ *	| ---- zero rule address | \
+ *	|\   |-------------------|  |
+ *	| ---- zero rule address |  |	IPA_FILTER_COUNT_MAX
+ *	|    |-------------------|   >	or IPA_ROUTE_COUNT_MAX,
+ *	|	      ...	    |	whichever is greater
+ *	 \   |-------------------|  |
+ *	  ---- zero rule address | /
+ *	     +-------------------+
+ */
+int ipa_table_init(struct ipa *ipa)
+{
+	u32 count = max_t(u32, IPA_FILTER_COUNT_MAX, IPA_ROUTE_COUNT_MAX);
+	struct device *dev = &ipa->pdev->dev;
+	dma_addr_t addr;
+	__le64 le_addr;
+	__le64 *virt;
+	size_t size;
+
+	ipa_table_validate_build();
+
+	size = IPA_ZERO_RULE_SIZE + (1 + count) * IPA_TABLE_ENTRY_SIZE;
+	virt = dma_alloc_coherent(dev, size, &addr, GFP_KERNEL);
+	if (!virt)
+		return -ENOMEM;
+
+	ipa->table_virt = virt;
+	ipa->table_addr = addr;
+
+	/* First slot is the zero rule */
+	*virt++ = 0;
+
+	/* Next is the filter table bitmap.  The "soft" bitmap value
+	 * must be converted to the hardware representation by shifting
+	 * it left one position.  (Bit 0 repesents global filtering,
+	 * which is possible but not used.)
+	 */
+	*virt++ = cpu_to_le64((u64)ipa->filter_map << 1);
+
+	/* All the rest contain the DMA address of the zero rule */
+	le_addr = cpu_to_le64(addr);
+	while (count--)
+		*virt++ = le_addr;
+
+	return 0;
+}
+
+void ipa_table_exit(struct ipa *ipa)
+{
+	u32 count = max_t(u32, 1 + IPA_FILTER_COUNT_MAX, IPA_ROUTE_COUNT_MAX);
+	struct device *dev = &ipa->pdev->dev;
+	size_t size;
+
+	size = IPA_ZERO_RULE_SIZE + (1 + count) * IPA_TABLE_ENTRY_SIZE;
+
+	dma_free_coherent(dev, size, ipa->table_virt, ipa->table_addr);
+	ipa->table_addr = 0;
+	ipa->table_virt = NULL;
+}
diff --git a/drivers/net/ipa/ipa_table.h b/drivers/net/ipa/ipa_table.h
new file mode 100644
index 000000000000..64ea0221441a
--- /dev/null
+++ b/drivers/net/ipa/ipa_table.h
@@ -0,0 +1,103 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019-2020 Linaro Ltd.
+ */
+#ifndef _IPA_TABLE_H_
+#define _IPA_TABLE_H_
+
+#include <linux/types.h>
+
+struct ipa;
+
+/* The size of a filter or route table entry */
+#define IPA_TABLE_ENTRY_SIZE	sizeof(__le64)	/* Holds a physical address */
+
+/* The maximum number of filter table entries (IPv4, IPv6; hashed or not) */
+#define IPA_FILTER_COUNT_MAX	14
+
+/* The maximum number of route table entries (IPv4, IPv6; hashed or not) */
+#define IPA_ROUTE_COUNT_MAX	15
+
+#ifdef IPA_VALIDATE
+
+/**
+ * ipa_table_valid() - Validate route and filter table memory regions
+ * @ipa:	IPA pointer
+
+ * @Return:	true if all regions are valid, false otherwise
+ */
+bool ipa_table_valid(struct ipa *ipa);
+
+/**
+ * ipa_filter_map_valid() - Validate a filter table endpoint bitmap
+ * @ipa:	IPA pointer
+ *
+ * @Return:	true if all regions are valid, false otherwise
+ */
+bool ipa_filter_map_valid(struct ipa *ipa, u32 filter_mask);
+
+#else /* !IPA_VALIDATE */
+
+static inline bool ipa_table_valid(struct ipa *ipa)
+{
+	return true;
+}
+
+static inline bool ipa_filter_map_valid(struct ipa *ipa, u32 filter_mask)
+{
+	return true;
+}
+
+#endif /* !IPA_VALIDATE */
+
+/**
+ * ipa_table_reset() - Reset filter and route tables entries to "none"
+ * @ipa:	IPA pointer
+ * @modem:	Whether to reset modem or AP entries
+ */
+void ipa_table_reset(struct ipa *ipa, bool modem);
+
+/**
+ * ipa_table_hash_flush() - Synchronize hashed filter and route updates
+ * @ipa:	IPA pointer
+ */
+int ipa_table_hash_flush(struct ipa *ipa);
+
+/**
+ * ipa_table_setup() - Set up filter and route tables
+ * @ipa:	IPA pointer
+ */
+int ipa_table_setup(struct ipa *ipa);
+
+/**
+ * ipa_table_teardown() - Inverse of ipa_table_setup()
+ * @ipa:	IPA pointer
+ */
+void ipa_table_teardown(struct ipa *ipa);
+
+/**
+ * ipa_table_config() - Configure filter and route tables
+ * @ipa:	IPA pointer
+ */
+void ipa_table_config(struct ipa *ipa);
+
+/**
+ * ipa_table_deconfig() - Inverse of ipa_table_config()
+ * @ipa:	IPA pointer
+ */
+void ipa_table_deconfig(struct ipa *ipa);
+
+/**
+ * ipa_table_init() - Do early initialization of filter and route tables
+ * @ipa:	IPA pointer
+ */
+int ipa_table_init(struct ipa *ipa);
+
+/**
+ * ipa_table_exit() - Inverse of ipa_table_init()
+ * @ipa:	IPA pointer
+ */
+void ipa_table_exit(struct ipa *ipa);
+
+#endif /* _IPA_TABLE_H_ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
