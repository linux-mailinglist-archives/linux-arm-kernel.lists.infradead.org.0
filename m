Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E22AEC338
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:52:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMc0kQ4PrTHiCUy8jnCJIWIJJwnzZtWliuKsWHi/qh0=; b=Ne5ajgk4Bjqr56
	RowR67Ju792ywWssPQDN0LtkKr7Dy0LTM6jkU9CHr23OMcxuzFAF4rAj8SUPpVxcLdmAKk8sAnRSQ
	eXGol3Bt+LALduG+S1GnPed6WEKDhFoWniX+5q5xmyUvrjtwcBCWwfaK+nY8bKFVjShUMu60eViCn
	CLmZJFFCHnpJ8bYi3/D4fWcbUEiWsIfvT4PMQDTG67hj7oYfFxWNPCtfwGqzTzcJP6gB4+WrGe8lO
	eQ7hpVA91d8yHFFzu7CGGu5iwjP73oNLaTeTuR7gZSKtTQW+QJM6BfzQqmUysqX0nBlLKSfo8ijvd
	AzBuyZ3FK/qNZWMTa1zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWPk-0001yl-Sn; Fri, 01 Nov 2019 12:52:28 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWGW-0008SQ-OM
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:43:00 +0000
Received: by mail-lj1-x242.google.com with SMTP id v2so10130217lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rl5uwkPm7ODgb0mKXC73DMWhjRD0JTB3vFmrVrN5ZB0=;
 b=f/fMT4qnGn36cfXIZU+9WqU7PKzlWuxSvy4OA9GfJ3DZQNR+X8lpgyBQpBtHZWrDet
 MFY1GEto+tIwTd5AX3zlfaDcUnphDQQLWWrldQasSQxYPGiUvZHz4B4wbzR8n8Thxbg8
 kRKqubck2mt87Sb8mjWd21kRiGkeHA8bc+egg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rl5uwkPm7ODgb0mKXC73DMWhjRD0JTB3vFmrVrN5ZB0=;
 b=uFtnjLJAuA2BhI0jCYiuY7UT1L+GN5yOjKn2eSTCfCdmcCs4jX0W+AqT5mN2bC8N29
 JaSo89CPEYB/ixqOA7iZB9JIHUpvdRamiE/AJiQ0UffDKPeU2A0G2ZycopjIBLRfR3Yz
 cp6vv9QCEX+2HIsaG5VKfLDiLXcIR8nzqbybsJ0Sj12pYiFrCOrkNfsBXNy+GBqVIGYW
 IbDAc2O3H770Is7sTb9S9eOt9nNi/O8rUnVeMNAnCTZYI1sl2QCrmqhjCvw3rlIKSJmz
 U8LEjWrVQkFBGkDj7YfudR5DT0ODn4fDbRS4lBikxHcerCPvBADskUTTLLvD4K/9tBgU
 JUsA==
X-Gm-Message-State: APjAAAVrG7oDqAPeQv4q5Levlu8ZMA1khU5N4gx8rbKP2ZqJzFC1I9Ad
 og33Zg5U3CvOynGBFTzzF3oQ5g==
X-Google-Smtp-Source: APXvYqwmyi32FUjiCLfaeVSLCItzNSl5u5Xct5wycLzlAxgtX29tMH2hvUooRJdJTIIrmknHbE9nxg==
X-Received: by 2002:a2e:b604:: with SMTP id r4mr1067016ljn.134.1572612175328; 
 Fri, 01 Nov 2019 05:42:55 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:54 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 33/36] serial: ucc_uart: access __be32 field using
 be32_to_cpu
Date: Fri,  1 Nov 2019 13:42:07 +0100
Message-Id: <20191101124210.14510-34-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054256_824320_129E5DBD 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linux-serial@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
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
index f5ea84928a3b..a5330582b610 100644
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
