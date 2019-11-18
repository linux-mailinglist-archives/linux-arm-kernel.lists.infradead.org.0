Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5732100449
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:35:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2gD0/4SdXv7JGv0l8+fpY8o82M2y/O7frE7glO4Z4A=; b=oxIhyqHeHf+J/K
	/iQNHyCs1d3UJ4VaoRzPaADkOMxLPMJT588zSZ82eM0ZbgopoCg2Af1RbZMGbVq10WBnQTVMyWf1T
	uxf63z2+QfwChb36gNxcxKnYKVdk09RkxEfU0n8RIX4ID4RhK2y1B1kPcz06nkUkk2/JUWBz0hEkr
	C3jE0wIoMEMQMgMy5umE0wH3jqPe++9eLuDOBeLCOeVQ/pXmxpsALwHNZUjRDghQIo5hL/mr19zrd
	li0ozE8Z+lzVH0I+LLdbGGyQOqr/BD+OD5p1+Z72brYhGklunx8i+3yGZhhsJ1+D98UiHBALkWu5z
	HG8kFR2qozzf7ioAAWBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfJS-0003sV-6I; Mon, 18 Nov 2019 11:35:22 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8j-0001Vk-Up
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:19 +0000
Received: by mail-wm1-x341.google.com with SMTP id b17so18334763wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IVPif8k5ZIR6D+wGrwJyE64cs7Iq/Iy6NadbSzu369Y=;
 b=WBqyJalM20Pe2+yF9hF7XnXsYtxzLRnMRKlU7/1VgblKEWzSrmyIVbJGD8OkiIg0Vr
 UlmpxFxPN87KDhJ6En8fXOli2Zo44+zz6/W09vpd+Xsqljhn0yhFAzrYHuJflVOyQaS+
 z/1qNFcET4IUJ3z1szwXb0kXhrjHW7ZaUhJrE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IVPif8k5ZIR6D+wGrwJyE64cs7Iq/Iy6NadbSzu369Y=;
 b=CkAoT65OtZN+BJeyhlHlMQf6ZrY4YeTKGovk6Tv0ZvsxmKRaDBM0aT4WdMUdCLNiOX
 whFhVc2YxlcZvouv01en/bB+YNa6FN76rNr/gRiPv/OWQNe3od/0nOYXFIh3fRWlFCZY
 20NASM3KREdFw93K4aefHiyMHLTdKs2n4KT7D+xhuseDIkWrr52r6pksx0f8qxqHOoze
 KPDifDLCsXJBEShjmNzuVxnI+9ApmthH1co6pRXL1i3QyiRzan0k6fevaSgJD6JtGYZz
 Y6LneqWRNrrnhrp4SQlLGHnTsL6/uIwHA9hGjyjgl8D+GacZqstyWmnaw/BlelKA5E9X
 iMsw==
X-Gm-Message-State: APjAAAVso1zk0RA10VDXVaG7ICSCOugJM9hMnPDiTJwp1Q4XuiafSacV
 9Lu03yHFl/Q/1RCH9a6LZ0aTPQ==
X-Google-Smtp-Source: APXvYqwSHGVqPcUA7VYXWlj6j53pgDT3YUvH8UuqMAU+wb80v+JDgc+bHai2XLBSBsbTbd8M19jYXw==
X-Received: by 2002:a7b:c3d6:: with SMTP id t22mr29358315wmj.13.1574076256553; 
 Mon, 18 Nov 2019 03:24:16 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:16 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 34/48] serial: ucc_uart: access __be32 field using
 be32_to_cpu
Date: Mon, 18 Nov 2019 12:23:10 +0100
Message-Id: <20191118112324.22725-35-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032418_052999_E218C4A4 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linux-serial@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The buf member of struct qe_bd is a __be32, so to make this work on
little-endian hosts, use be32_to_cpu when reading it.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/tty/serial/ucc_uart.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/ucc_uart.c b/drivers/tty/serial/ucc_uart.c
index 9436b93d5cfa..afc2a5d69202 100644
--- a/drivers/tty/serial/ucc_uart.c
+++ b/drivers/tty/serial/ucc_uart.c
@@ -343,7 +343,7 @@ static int qe_uart_tx_pump(struct uart_qe_port *qe_port)
 		/* Pick next descriptor and fill from buffer */
 		bdp = qe_port->tx_cur;
 
-		p = qe2cpu_addr(bdp->buf, qe_port);
+		p = qe2cpu_addr(be32_to_cpu(bdp->buf), qe_port);
 
 		*p++ = port->x_char;
 		qe_iowrite16be(1, &bdp->length);
@@ -371,7 +371,7 @@ static int qe_uart_tx_pump(struct uart_qe_port *qe_port)
 	while (!(qe_ioread16be(&bdp->status) & BD_SC_READY) &&
 	       (xmit->tail != xmit->head)) {
 		count = 0;
-		p = qe2cpu_addr(bdp->buf, qe_port);
+		p = qe2cpu_addr(be32_to_cpu(bdp->buf), qe_port);
 		while (count < qe_port->tx_fifosize) {
 			*p++ = xmit->buf[xmit->tail];
 			xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
@@ -491,7 +491,7 @@ static void qe_uart_int_rx(struct uart_qe_port *qe_port)
 		}
 
 		/* get pointer */
-		cp = qe2cpu_addr(bdp->buf, qe_port);
+		cp = qe2cpu_addr(be32_to_cpu(bdp->buf), qe_port);
 
 		/* loop through the buffer */
 		while (i-- > 0) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
