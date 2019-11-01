Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10428EC1DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 12:30:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7jyfGBQBibjTvLzYDHzFJWH/SxoN2ilvujyzCWJWpU=; b=iCM/erP+adtfXj
	/KVhqVs2E8si6ALXvXyMZIxzn07Xg7qEGzeZbMUkx+BvfD+AGgqfjkqwCixpDVQB3y+IeXcz+3ecU
	1welc1MeGRwzHmtVv/cxSK00Z+FxARCJZavA572F5/hu/hzVzYgf46VOFxpmPAm8u4ZjDhyN4xNQn
	azhymC9YIuzy+21qmQPRFpr14ipCSAoE4fNod3Ewiv/BHs9X6mimGbu6lShr7WAJCEugFIK7c0VyL
	+Azh3aFcK9wixxGiM0iOogFFdWR/trKga52nAJ3hYHzKGBe9sot0FREQYsgVhH7w1kAzgg1daeGNT
	SVJQ2WWh9Jc8t2XgQGBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQV8W-0008II-0Y; Fri, 01 Nov 2019 11:30:36 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQV7i-0006SX-Ei
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 11:29:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id j22so6315476pgh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 04:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8wEKLy/QbmIjTepBa+G0u56b2IMWWIVu+NxyDN5fxcI=;
 b=ObaO68GwYx/JIeZLc8UXrIbi4TERM6qSHLrZCLweBh6KlOozKXYgHCfXJyDYDTI0NB
 yf+B2S8MuFhcAlHxAmLNgsRoh6u+FwZwqeO9meHAJTJxQqyLkELLkK9gybKelOZgdI2B
 sNsPCIE7HYZguWCJAH5FA1+/Imq254FgIAd16I+4lp5waL/aQDlYz7edJRQeTNB3TURj
 HulQShN//6UflrZMHykGRKpvrXxOLY7+JSTYMdKoVA5lXwNoUG96LiWDApO2Vdu6QKmI
 0n0RvNnGUvyOQtUgaAiD/C47GhiLZWZPKBqBzH0vVCiC4j9oef8k4F+1sHHqOr8Q3Rva
 2qjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=8wEKLy/QbmIjTepBa+G0u56b2IMWWIVu+NxyDN5fxcI=;
 b=Itl6xrrHxTjg1UupmjuBRVUR2O61t2dMUslWst3bML8x2e3P9KgdV3Cex0Z2vweens
 uZ+ayInDOLZ+nKnbHdTblYSq8p0dEx/mu8dbLV3hmHb2to0CKKgLIE8E44o21g6xS603
 l3GYVPGHfiF+bk6ESbWJSvJTNXVmNmRx5JnEJhnoxMHS5hpvy0wdkN10c8BxoJ5bFmym
 48gc1EooUr+GlPaUrkX/9vLLclDnX29DUsSvcmNMCdFEah9QfaxQZ8vbVW+7kjMKzaHA
 i0Db70/CTcNBLQTtVhJpkxHicPqSYr69UufszwRe95Ofzs1A1krDIrRbwwaik+HlOfyU
 89Nw==
X-Gm-Message-State: APjAAAUqvNc4ebFPQNFTfesFAYbXipaip0WIGO/XQ45ha45RciR4KLBm
 EtlwcMK5RR9BdS4ZfUBjzs8=
X-Google-Smtp-Source: APXvYqyvhS3Wws16gOvM1xFxkNNJYkqWEvO4Bbi80yrpJ+HfvspUT2zid2VwN/75hHGE4n7zVdzrZQ==
X-Received: by 2002:a65:63cf:: with SMTP id n15mr13218245pgv.314.1572607785116; 
 Fri, 01 Nov 2019 04:29:45 -0700 (PDT)
Received: from voyager.lan ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id w12sm1369427pfn.105.2019.11.01.04.29.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 04:29:44 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Jeremy Kerr <jk@ozlabs.org>, Alistar Popple <alistair@popple.id.au>,
 Eddie James <eajames@linux.ibm.com>, Steven Rostedt <rostedt@goodmis.org>,
 Ingo Molnar <mingo@redhat.com>
Subject: [PATCH 3/3] fsi: aspeed: Add trace points
Date: Fri,  1 Nov 2019 21:59:05 +1030
Message-Id: <20191101112905.7282-5-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191101112905.7282-1-joel@jms.id.au>
References: <20191101112905.7282-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_042946_525258_8B007FE8 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-fsi@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These trace points help with debugging the FSI master. They show the low
level reads, writes and error states of the master.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/fsi/fsi-master-aspeed.c          | 22 +++++++
 include/trace/events/fsi_master_aspeed.h | 77 ++++++++++++++++++++++++
 2 files changed, 99 insertions(+)
 create mode 100644 include/trace/events/fsi_master_aspeed.h

diff --git a/drivers/fsi/fsi-master-aspeed.c b/drivers/fsi/fsi-master-aspeed.c
index 5bb7a778075e..be1f2449b77a 100644
--- a/drivers/fsi/fsi-master-aspeed.c
+++ b/drivers/fsi/fsi-master-aspeed.c
@@ -67,6 +67,9 @@ static const u32 fsi_base = 0xa0000000;
 #define XFER_HALFWORD	(BIT(0))
 #define XFER_BYTE	(0)
 
+#define CREATE_TRACE_POINTS
+#include <trace/events/fsi_master_aspeed.h>
+
 #define FSI_LINK_ENABLE_SETUP_TIME	10	/* in mS */
 
 #define DEFAULT_DIVISOR			14
@@ -92,6 +95,8 @@ static int __opb_write(struct fsi_master_aspeed *aspeed, u32 addr,
 
 	status = readl(base + OPB0_STATUS);
 
+	trace_fsi_master_aspeed_opb_write(addr, val, transfer_size, status, reg);
+
 	/* Return error when poll timed out */
 	if (ret)
 		return ret;
@@ -139,6 +144,10 @@ static int __opb_read(struct fsi_master_aspeed *aspeed, uint32_t addr,
 
 	result = readl(base + OPB0_FSI_DATA_R);
 
+	trace_fsi_master_aspeed_opb_read(addr, transfer_size, result,
+			readl(base + OPB0_STATUS),
+			reg);
+
 	/* Return error when poll timed out */
 	if (ret)
 		return ret;
@@ -186,6 +195,19 @@ static int check_errors(struct fsi_master_aspeed *aspeed, int err)
 {
 	int ret;
 
+	if (trace_fsi_master_aspeed_opb_error_enabled()) {
+		__be32 mresp0, mstap0, mesrb0;
+
+		opb_readl(aspeed, ctrl_base + FSI_MRESP0, &mresp0);
+		opb_readl(aspeed, ctrl_base + FSI_MSTAP0, &mstap0);
+		opb_readl(aspeed, ctrl_base + FSI_MESRB0, &mesrb0);
+
+		trace_fsi_master_aspeed_opb_error(
+				be32_to_cpu(mresp0),
+				be32_to_cpu(mstap0),
+				be32_to_cpu(mesrb0));
+	};
+
 	if (err == -EIO) {
 		/* Check MAEB (0x70) ? */
 
diff --git a/include/trace/events/fsi_master_aspeed.h b/include/trace/events/fsi_master_aspeed.h
new file mode 100644
index 000000000000..a355ceacc33f
--- /dev/null
+++ b/include/trace/events/fsi_master_aspeed.h
@@ -0,0 +1,77 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM fsi_master_aspeed
+
+#if !defined(_TRACE_FSI_MASTER_ASPEED_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_FSI_MASTER_ASPEED_H
+
+#include <linux/tracepoint.h>
+
+TRACE_EVENT(fsi_master_aspeed_opb_read,
+	TP_PROTO(uint32_t addr, size_t size, uint32_t result, uint32_t status, uint32_t irq_status),
+	TP_ARGS(addr, size, result, status, irq_status),
+	TP_STRUCT__entry(
+		__field(uint32_t,  addr)
+		__field(size_t,    size)
+		__field(uint32_t,  result)
+		__field(uint32_t,  status)
+		__field(uint32_t,  irq_status)
+		),
+	TP_fast_assign(
+		__entry->addr = addr;
+		__entry->size = size;
+		__entry->result = result;
+		__entry->status = status;
+		__entry->irq_status = irq_status;
+		),
+	TP_printk("addr %08x size %zu: result %08x sts: %08x irq_sts: %08x",
+		__entry->addr, __entry->size, __entry->result,
+		__entry->status, __entry->irq_status
+	   )
+);
+
+TRACE_EVENT(fsi_master_aspeed_opb_write,
+	TP_PROTO(uint32_t addr, uint32_t val, size_t size, uint32_t status, uint32_t irq_status),
+	TP_ARGS(addr, val, size, status, irq_status),
+	TP_STRUCT__entry(
+		__field(uint32_t,    addr)
+		__field(uint32_t,    val)
+		__field(size_t,    size)
+		__field(uint32_t,  status)
+		__field(uint32_t,  irq_status)
+		),
+	TP_fast_assign(
+		__entry->addr = addr;
+		__entry->val = val;
+		__entry->size = size;
+		__entry->status = status;
+		__entry->irq_status = irq_status;
+		),
+	TP_printk("addr %08x val %08x size %zu status: %08x irq_sts: %08x",
+		__entry->addr, __entry->val, __entry->size,
+		__entry->status, __entry->irq_status
+		)
+	);
+
+TRACE_EVENT(fsi_master_aspeed_opb_error,
+	TP_PROTO(uint32_t mresp0, uint32_t mstap0, uint32_t mesrb0),
+	TP_ARGS(mresp0, mstap0, mesrb0),
+	TP_STRUCT__entry(
+		__field(uint32_t,  mresp0)
+		__field(uint32_t,  mstap0)
+		__field(uint32_t,  mesrb0)
+		),
+	TP_fast_assign(
+		__entry->mresp0 = mresp0;
+		__entry->mstap0 = mstap0;
+		__entry->mesrb0 = mesrb0;
+		),
+	TP_printk("mresp0 %08x mstap0 %08x mesrb0 %08x",
+		__entry->mresp0, __entry->mstap0, __entry->mesrb0
+		)
+	);
+
+#endif
+
+#include <trace/define_trace.h>
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
