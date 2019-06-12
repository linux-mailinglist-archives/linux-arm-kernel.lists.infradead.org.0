Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1309423CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4U8esPvKfCfUD3Rx7MzlPHELDrWtSJ+EEk8+XtkqogU=; b=e+/uVEZyw9cLwmvbxaxQDW1hmw
	zJLmk13nJrDtSSquv1R99iNwqNZzjnPqgVhbCdPr/+GZHTL9rXkDrgUUzMAtrjK0pf3Kv4F8xkmg6
	+FNGyVIqYZYHA9LaCpdgwPgJoUeHHmiJsY/fVICN+ISqznAyCHWu5vadRrXgtT8Qb9MvZmZX/kpeI
	ESskFoELsztCqz/0YGz1lUG6vG/mTM+rUbkEzYKelwfpnLneKWsYfwctkEwrw4bW3x5QnU+JLDGuu
	d3QIqep6cBO0gPena5gcZfo+cNNz1S/RmFaG2m+K/DJrR2FzCYKmisU0tb/6k5yy0wPz0doWbHXHI
	wOsmt57Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1Ef-0008SV-Gk; Wed, 12 Jun 2019 11:16:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1DT-0006BA-4w
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:14:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id c6so6119054wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=RX9kf328gim4qTbNApKo0P/QFvgZZ5niZju8LY4fMbw=;
 b=RlNbC4v8AQPmlZyHhHsjf3AqOF0nCui8MGbGfB153yQHQOxseZbCxE0QMP/j/ohMQx
 ubuXlfJE9JC6bcuD7MXezh0pcQ9Vxvbse8B6PBLdLZeik3ydqmdEVYWByfIegFIug0JI
 2rytqyr3HAgqTNiaQSFhmbVXFtGd22lz/fONwnA+eHCGfIiuyqEqvDSVy7e+kJ9asdDf
 /OkIFO7eGS9K6+12vteUCFt3vOWn1M003QCmhSkU4icWAQXTY3ntEVUrviQ3UVLencga
 yXXSpsfU13FjIDGHaTwCcvTsWo06MtZqUXWmyFM2XPRxdL0wub+wZXIWCVaWWlBQo9yc
 /img==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:in-reply-to:references;
 bh=RX9kf328gim4qTbNApKo0P/QFvgZZ5niZju8LY4fMbw=;
 b=Mz++5VBZbePlAHfNacqe0T9UdxK+4gEmscP+LpK6NokYd5FWz1ZrYhADAy+QuhqhX8
 Lb6NSRL8ev9PdVRUAmq4l0M5n+pJwasz0bhkQxAxrujyWCejF/Ry7OFacyS11nd22SbX
 m1KjvY38WKfsGvGHbC/hmbTdJQGzFC/lNKax122jaI3U3OvZDgISYMnYetE7viG7rxUr
 xn/L0w+h9fJ4k7Ik2l6Bqb2nEOK41HWWT2YqTIH5VSeXbS8puhsIZYHQvKZy+Os116Fx
 TeG5WbqVXzPF7PiTa+TLCaq+aB2MyAN6ZfLtcYMhzmsbKnD48CacXS8bAwM8PQQjvXEj
 IRPA==
X-Gm-Message-State: APjAAAWKPEcHsBl0zieFcNEJMkNpw/f6TAG7h5Y9/O0V//o8cV/7ktWZ
 SqaJtosp4OmyDunDdFzGqmSzXw==
X-Google-Smtp-Source: APXvYqxfSaq6CTixvYxa76VBxtjwsDr/CJ8DUniRUVH+idG29OzBqKzhBE3pa8Y9Mws4pqelMSUz8A==
X-Received: by 2002:a1c:e0c4:: with SMTP id
 x187mr20735822wmg.177.1560338093505; 
 Wed, 12 Jun 2019 04:14:53 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id u23sm5055140wmj.33.2019.06.12.04.14.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 04:14:52 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com
Subject: [PATCH v2 3/6] serial: uartps: Fix multiple line dereference
Date: Wed, 12 Jun 2019 13:14:40 +0200
Message-Id: <3a5b27987c5b4fc5ec7dc7f58485db63057edbfe.1560338079.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_041455_883582_AC2ACB16 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nava kishore Manne <nava.manne@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nava kishore Manne <nava.manne@xilinx.com>

Trivial patch which fixes this checkpatch warning:
WARNING: Avoid multiple line dereference - prefer 'port->state->xmit.tail'
+				port->state->xmit.buf[port->state->xmit.
+				tail], port->membase + CDNS_UART_FIFO);

Fixes: c8dbdc842d30 ("serial: xuartps: Rewrite the interrupt handling logic")
Signed-off-by: Nava kishore Manne <nava.manne@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Split patch from v1
- Add Fixes tag

 drivers/tty/serial/xilinx_uartps.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index c84db82bdaab..4cd20c036750 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -319,8 +319,8 @@ static void cdns_uart_handle_tx(void *dev_id)
 			 * register.
 			 */
 			writel(
-				port->state->xmit.buf[port->state->xmit.
-				tail], port->membase + CDNS_UART_FIFO);
+				port->state->xmit.buf[port->state->xmit.tail],
+					port->membase + CDNS_UART_FIFO);
 
 			port->icount.tx++;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
