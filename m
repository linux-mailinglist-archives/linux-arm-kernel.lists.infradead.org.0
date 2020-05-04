Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 536921C3CF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vQHzPG8oxze5+HKNCz4yQq03YLWxV4eU0vckTr28ITc=; b=Ki5Kx3D3pZ9qYa
	Va6pcez+TOJCQTiHrTvjs/bbMXzhiK6be0COrCLQTCbK3vf1YCwfH/h1U/XK1qcsbaP063iJXA3Zl
	di+q2arJlvYNr+OrLREVNRYHi2MS+Ol0t/JnQK9FAmBIZolwA6H0cpUiTRX2jtOsfYnmh4QKLexb0
	jLh9FaXw8Ofuupp3jtJ+SLiQF6OYP6GtaypI0cMknqUf9cTzBmwpXTwn4uwnD0U6fj7l6JLGBzdb0
	EEqojT8yEJejuEWySsVPMquM2Yl017tIL6V1EZJTkMnttVHzC0H+/vuGyBufUb6JlY4ec2Uc68YMV
	kGVWmpruRpiQJ8eEiQFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVc4J-00045v-By; Mon, 04 May 2020 14:27:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVc4C-00045G-Jd
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:27:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id v8so158686wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 07:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R8hMysgCANDxPI0D+IpQRpi6VaDo+fsmsuFYs+cuTuA=;
 b=sCyOY7cWz+Zih2Gcur3hgcfiu3oSiZBTIp0cZmq5uKEDB6IrRn9BCNvLxR0Y2FnQ75
 J/sWlpL8ZM/H2nEmr1COYKz40Odhyre7AgPfsXQpuO/yVTvFrL7svixV/hPPXLFe76NL
 a5ZxjdqpicIx5Ol0TULum1FfemlP16K3/LeIY6MvaApt2ME7+3l3YC+1xxuqIB3+2AXc
 RgQkc912evPAICrllpKV+xm0uyGmeiHBUw2pviROwFNmFGQMeMlbHDH+To1RM+10fxCp
 PtzF1sTkIAtzaTNVqC2EXQGruoXv5gwMTh5A5y1Jlrv5srccEch/nFZZN7jXn7v8L8r6
 FHpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=R8hMysgCANDxPI0D+IpQRpi6VaDo+fsmsuFYs+cuTuA=;
 b=IaTQjjFfZ0NWVbcfF1QwivbfEGLxvbSIb+9VuTveQBs8iS2n2sYZOPfdKt1w0RGjuu
 Jl0NLorYaCcN4S/dZnvoiCgblQVCpXjB/TLADQpyfsR4nHDcLYhiXzS4PzECggT4Jbyg
 ImmCNSDVCQNNe2zCMXlBpi019TBaJDoFWSjcxCWl92Vi+/3r0+jf9Hu+LJ2GmOgR+WzQ
 Mi4nUa7oSEvLhOODnR860kf+WjETTTjdNkpE6dBuT1wfRSUli4TYWKkQ7zyxPC0IxHRE
 crdkqMGC7GVeI+Lz/mGlx7g5/bfsilqpeO0q8Cyc6XZAUqO804dmVSpzsbyKJxGLmMuf
 kZbQ==
X-Gm-Message-State: AGi0PubaonNk7av/sLaYyzTkGMGx3etrZfJkA94fxa+A4KH68M/uvVoo
 aA5bDhXzBKUi+LxKaPIhVqZi8A==
X-Google-Smtp-Source: APiQypJvPehbbUthQvX9YGeEq+Ipj4rzULCq/PSfWLN7t0/wgJVu4JxunEJ5TD5rohgmepaA63orXw==
X-Received: by 2002:a1c:1bcb:: with SMTP id b194mr15744884wmb.4.1588602450462; 
 Mon, 04 May 2020 07:27:30 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id g6sm19438716wrw.34.2020.05.04.07.27.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 04 May 2020 07:27:29 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, stable@vger.kernel.org
Subject: [PATCH v2] tty: xilinx_uartps: Fix missing id assignment to the
 console
Date: Mon,  4 May 2020 16:27:28 +0200
Message-Id: <ed3111533ef5bd342ee5ec504812240b870f0853.1588602446.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_072732_714568_D3AC6E21 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

When serial console has been assigned to ttyPS1 (which is serial1 alias)
console index is not updated property and pointing to index -1 (statically
initialized) which ends up in situation where nothing has been printed on
the port.

The commit 18cc7ac8a28e ("Revert "serial: uartps: Register own uart console
and driver structures"") didn't contain this line which was removed by
accident.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Cc: stable <stable@vger.kernel.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Do better commit description
- Origin subject was "tty: xilinx_uartps: Add the id to the console"

Greg: Would be good if you can take this patch to 5.7 and also to stable
trees.

---
 drivers/tty/serial/xilinx_uartps.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 672cfa075e28..b9d672af8b65 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -1465,6 +1465,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 		cdns_uart_uart_driver.nr = CDNS_UART_NR_PORTS;
 #ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
 		cdns_uart_uart_driver.cons = &cdns_uart_console;
+		cdns_uart_console.index = id;
 #endif
 
 		rc = uart_register_driver(&cdns_uart_uart_driver);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
