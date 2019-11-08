Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5C2F3FC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:23:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0E8zfZska+hpZeSMliS5LQwp+sOfBHjzWfuCgxHL4Y=; b=DhokJIIBbLYoCK
	Xsc0WCf4hEDLy00RUgxCslW8BsvxY62++mmfyWGKuqVRWdIxGeX2/15roTq+Hwf+OnnBnFZq60roN
	Azs1EmVJHQjI/vRLh6TLg7oUUCwD9H++0EtY5zgi8IUQlS/FY/I9exx0kT2tUga704Si32ikTGZUE
	2YeSp4jbqLxrXMgKYmsAUUHRaJo2dedd6bfzKUAwP/1LsLouI+bkseMjOpypQoHH3k3tZqTPyKe5N
	8VDscZnuokrrpWJRfT5AeVhWRHVtHEvH7hYmLBl5NRU+rpUdvgTRuF9+SEhXrep2vAQ/yw3fYFcdh
	DNBCpUpkG5h1iGQZZkeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwja-0005ZC-TO; Fri, 08 Nov 2019 05:22:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwhb-0003ib-By
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:20:57 +0000
Received: by mail-pl1-x641.google.com with SMTP id s10so3287194plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 21:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BrSCYYt5uv3Xj+d3we2tNppwdrCJ/ZJWLFSrmqcGBRo=;
 b=MhlJ0TKo/+JKtKDsOMJfCvSVaU7SRAI/53zvs21Uxpqd2fVltgOmhUw2wGVXjJrnf4
 XKChYSHwHr+2kYqjTLmrV2R7V7wvvKZ82xO2FPQUX/lWOj0PEjHJ+l0h0aKSNCVK2NSM
 JnShWoTenORutECEwhFeICjZPtHyKCEhNYuIavPPlGvLOoJFPDcupN4gzFccVChzYtdN
 f9dujcWhBvfV47wkYdlnoVYkhF0XoAaqKTtduVudVSLVSqb/SE2skJhfOLEybAub/SYT
 HewfHo12V3FZo/niFBwJ3Qc9IBaq5lvoIoA2DljwZ8UyF3mgEpLx61nJMdFpjmaivl4A
 Htog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=BrSCYYt5uv3Xj+d3we2tNppwdrCJ/ZJWLFSrmqcGBRo=;
 b=kO9pOByYa3iVPUokqSAo1/mIZAZOuxMR/5Wkid2OxeH2Bd28LoEs1nnmosWxhTV9HX
 KtCg/9C6UOPQCJUqpN9QUtFPuS4x6R1RCK6ove2VKX5IEYFGcVnFP1D8gRUNiD/hpXO/
 s1PFDoHNceBsgCV8krSWRRHN5ez3GtmZxerapzzQ8sFy/lU2TSFPZ/2Qv3N49FPUh+M5
 TMW6+tjKT98ybK8L6xiGZqiQniZFM0mZoWMa/SWaxQf45n3mIKJqH6mAMhJZiKmP/eUj
 D6x+rKE1jxZgT4LnNgS3jFoSTAtp0HVWWWXzbY6C8YhB0cz7j1ozKMiGnyYoqi34gWH+
 +6ww==
X-Gm-Message-State: APjAAAVGSeFLSlRudR5nNTHm3eLgdIq5zn2TjVnrK+ZRdx6z0Z3EzsiZ
 xOrnvRtdqIcm38aetezy09XyQ8tW+bfbcQ==
X-Google-Smtp-Source: APXvYqyRzZcn8bDT1qTq02KNEt9UXS/4vlqBy54qzIiyqsiCXJfHND9OOB71hNviccEf9bdv8fJSAw==
X-Received: by 2002:a17:902:a987:: with SMTP id
 bh7mr8100812plb.181.1573190453257; 
 Thu, 07 Nov 2019 21:20:53 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id v19sm3798443pjr.14.2019.11.07.21.20.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 21:20:52 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: [PATCH v2 10/11] fsi: aspeed: Add trace points
Date: Fri,  8 Nov 2019 15:49:44 +1030
Message-Id: <20191108051945.7109-11-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191108051945.7109-1-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_212055_458310_5A908FFC 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Alistar Popple <alistair@popple.id.au>,
 Eddie James <eajames@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These trace points help with debugging the FSI master. They show the low
level reads, writes and error states of the master.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
v2: remove unnecessary semicolon
---
 drivers/fsi/fsi-master-aspeed.c          | 22 +++++++
 include/trace/events/fsi_master_aspeed.h | 77 ++++++++++++++++++++++++
 2 files changed, 99 insertions(+)
 create mode 100644 include/trace/events/fsi_master_aspeed.h

diff --git a/drivers/fsi/fsi-master-aspeed.c b/drivers/fsi/fsi-master-aspeed.c
index d1b83f035483..95e226ac78b9 100644
--- a/drivers/fsi/fsi-master-aspeed.c
+++ b/drivers/fsi/fsi-master-aspeed.c
@@ -77,6 +77,9 @@ static const u32 fsi_base = 0xa0000000;
 #define XFER_HALFWORD	(BIT(0))
 #define XFER_BYTE	(0)
 
+#define CREATE_TRACE_POINTS
+#include <trace/events/fsi_master_aspeed.h>
+
 #define FSI_LINK_ENABLE_SETUP_TIME	10	/* in mS */
 
 #define DEFAULT_DIVISOR			14
@@ -102,6 +105,8 @@ static int __opb_write(struct fsi_master_aspeed *aspeed, u32 addr,
 
 	status = readl(base + OPB0_STATUS);
 
+	trace_fsi_master_aspeed_opb_write(addr, val, transfer_size, status, reg);
+
 	/* Return error when poll timed out */
 	if (ret)
 		return ret;
@@ -149,6 +154,10 @@ static int __opb_read(struct fsi_master_aspeed *aspeed, uint32_t addr,
 
 	result = readl(base + OPB0_FSI_DATA_R);
 
+	trace_fsi_master_aspeed_opb_read(addr, transfer_size, result,
+			readl(base + OPB0_STATUS),
+			reg);
+
 	/* Return error when poll timed out */
 	if (ret)
 		return ret;
@@ -196,6 +205,19 @@ static int check_errors(struct fsi_master_aspeed *aspeed, int err)
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
+	}
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
