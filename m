Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF95510CB45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:05:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTEpORgZ0zHBvEqsetHPaYqFuqBlruLD1g23v0e9B68=; b=umI2ITYzVQK+FF
	OcjyO8iBrBnVzseSl4RyqaqRWNjGyOvLbgCQz94D5rCQt08mE1L3u/nYQtBub619+BfHyRowjOURc
	I/n7E0PMpWjdaGIKHibv0sXbZ66k5h4tLM56Gil2DqbPb7pKvronJWRrWxilBbSf5o901BcrQ3hMn
	qe0b946dGl7UDgbZFBU6lYkqMpwXeXdHSbrkdFa6qzJeRDo3fBOORk4+3kXtguXjipW2RGDpsgQI1
	XxXo+Hc/9t48gDUFtHc8l2rLycYCAJIxBJsDOwK0YaoM1jRoWtOrsqtB4PIAIrD/gZ12XHMWpdAvA
	BJz9N2qRVzwVobmZS/sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLLz-0006lh-2a; Thu, 28 Nov 2019 15:05:11 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEu-000105-2k
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:03 +0000
Received: by mail-lf1-x141.google.com with SMTP id r15so17325294lff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0x5wbE3oWhrhZ8xGvXaAjigLpm6RmB7AlwGRCMNCtnI=;
 b=IG7ILqGGC9tpQ8FusycptMBnNxwJXMYm82mpACt/Psiu0vHUsWa927iCp7UiIH/rmb
 9xQ2Zj7lLEDuHO/sqXD1kn010Uz5be6KX9wrm88JYO9gw2lgmO8Swi8EEXMC6ivXbyEl
 kpL465Jo/BdCLfZ4fsLJ9HDEhHnupdiLdWy8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0x5wbE3oWhrhZ8xGvXaAjigLpm6RmB7AlwGRCMNCtnI=;
 b=W4TwbuYufxw1ziICk410sLuXAfOh8LJCgbfn8JTwsYnY9pYDdO6C1iBqEgRYbDveQg
 EKGooOLDXAg/5o2HHhF+nG8aHPWrNV1E+ot5kX2QnQNXxOxqQAMyYPDjU92709DTa4w+
 KvovgEFDjNuBIDKAK6j47IYj+/1n6w4M2o59BIHKIr/BvPgc1DUJV5s65JEmyU1VuXx9
 DBQGMWCW7p88HgIll8//sVRpEZmdxWJwzhcVnrGfp8PedyxZjf9V1tymTGGchWneCpxG
 B4gTfkigSmyGXvhIcf+Rd0+O8LZzoJBfhrpLhKdzi1Ct6of+fN35ZyvueBDz7tx6Y62S
 CT8g==
X-Gm-Message-State: APjAAAU1syOMr3ZqZonIje7R9dERzvtGTXgxCRby8RMy8NedZbv+KpMV
 UwqTwp5az5kgOoqUQbqJSqakP/eInCaIv9cZ
X-Google-Smtp-Source: APXvYqz3m7QVhlf+pIxahJt5XIkNCk58Ecms1+2HgXq/oWJHBU5oMS00KEY4yL0L5WSDwNo3uZhHOw==
X-Received: by 2002:a19:22cc:: with SMTP id
 i195mr32347477lfi.148.1574953070415; 
 Thu, 28 Nov 2019 06:57:50 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:49 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 34/49] serial: ucc_uart: access __be32 field using
 be32_to_cpu
Date: Thu, 28 Nov 2019 15:55:39 +0100
Message-Id: <20191128145554.1297-35-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065752_211275_D9CA670C 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Reviewed-by: Timur Tabi <timur@kernel.org>
Acked-by: Timur Tabi <timur@kernel.org>
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
