Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E271F19D38F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MA7z5Ap4J+dww8wHxgO9ZH/ygRtpSCApjBIKUHgERXM=; b=Js+FI6OfnTYNH6
	lsnuqPiB1BzEHrB5qlXN6V4EcRsPGRkyt8rtenbCxDASxiEpKSIl0oN0ZHpKHbB3as729HK8dqr1Z
	pYNbcqh7Oi70EmMmvNshN0F0LUMCdiamAUR9BGxsvD3NaT6oPqUG+K6mFMxy7CmsWE4Dy9Eb1UIhY
	XmG+6tzpjXoRfV/3ca5TnFOAiy8sHkxCgpJfI4bTPecBqo8iM461ItvbNzBS/Hpp6gU6fQFLvU6Mq
	A0orxS+oVySU+2txzI9ZVoRc+JYkDJZ0JkV8i3l4ZFnRsl/jcUmuVC7oHvI2wDLcJ1iB1sPDxiH8H
	HvkfqT7cG9Tbv5lt+r6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIaG-0005RJ-7a; Fri, 03 Apr 2020 09:25:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIZE-0002H1-3D
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:24:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id z14so1626640wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 02:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UaJ/lm5B5irKRGuIGTcEW0nphrhQofKG2JxuS3fPTck=;
 b=f28+6tql43/Og7YGE8QTKNY9YPKkmPSkA+oKKSYv9PYyJk6WLaNxmW+YlH3qxlDr/Y
 NwnNRpNUWshiEO1F2NA9HHwJlKRUO8nEh+aOlZmS+LrNiLbjIT7ufQZHrX4TvhpHfZkI
 eM6vAJMjRTP2Yw1s7oqpT7/+9L3SokP2UXtfrN9ctVvWISHTB8D+4nQeNDu4HxTCuetr
 t9dBAJLDPx6kxzJNAhM9musdk4HAzpV7+ks6Zk9I3tASV6va7WiUVtiVT29gQvATkI6G
 MbVaLSngt0wG/uPQh8uWWdtqvbBBp397PfEIF8+UldkSINWALAXe/VGA9pJGvL5pD4vy
 neAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=UaJ/lm5B5irKRGuIGTcEW0nphrhQofKG2JxuS3fPTck=;
 b=O3zcsq+bEhZlQcjr89EaVm9F03z6+0+4tO73OsrISEUC7XDZF0aD6HSPDVUvJQ+YyF
 N3LHhq4wbG4s7+yRR/QWMt9IpYUl34ZVP8pbtkXjH8dbOiH2nLT2ZZcxELV5FQPv/X7w
 eopAb6vt3DVHu+eNRzhjxQ0bJDA9x73bjDdQogoRQDCODQU2/DRFLkazztDQj+RVK4t6
 GDICF370yw7gZWMIVSoUk0LKIBreXXqr5Zh1XqBonTy5xhCB8lirlK7X1chBPz70aijx
 RZUm8tIfLugFzXTXBo/M6kqvBYsmavzDeOZMbRCLOtcNQs+FV3/VHMNLifzKiggRwxHy
 yRjw==
X-Gm-Message-State: AGi0PuaHMYpFSFwTUIkVnXgC9ZoOrktBFFVGuiBmHutIDCue+//sZuel
 PoyVGdHqLvMSFYv1C2SmglYpFQ==
X-Google-Smtp-Source: APiQypKIfR0UUqDSY/h923iNyVZubvQ21RncjnJGFJLtdFqhHyi/SNSGNn8LFm3qvKctOPC0FGERzw==
X-Received: by 2002:a1c:c3c3:: with SMTP id t186mr8070012wmf.118.1585905886912; 
 Fri, 03 Apr 2020 02:24:46 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id z3sm10332947wma.22.2020.04.03.02.24.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 02:24:46 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Subject: [PATCH 3/7] Revert "serial: uartps: Fix error path when alloc failed"
Date: Fri,  3 Apr 2020 11:24:32 +0200
Message-Id: <46cd7f039db847c08baa6508edd7854f7c8ff80f.1585905873.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1585905873.git.michal.simek@xilinx.com>
References: <cover.1585905873.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_022448_130868_A9B82368 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 32cf21ac4edd6c0d5b9614368a83bcdc68acb031.

As Johan says, this driver needs a lot more work and these changes are
only going in the wrong direction:
  https://lkml.kernel.org/r/20190523091839.GC568@localhost

Reported-by: Johan Hovold <johan@kernel.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 drivers/tty/serial/xilinx_uartps.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 4e3fefa70b56..412bfc51f546 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -1542,10 +1542,8 @@ static int cdns_uart_probe(struct platform_device *pdev)
 #ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
 	cdns_uart_console = devm_kzalloc(&pdev->dev, sizeof(*cdns_uart_console),
 					 GFP_KERNEL);
-	if (!cdns_uart_console) {
-		rc = -ENOMEM;
-		goto err_out_id;
-	}
+	if (!cdns_uart_console)
+		return -ENOMEM;
 
 	strncpy(cdns_uart_console->name, CDNS_UART_TTY_NAME,
 		sizeof(cdns_uart_console->name));
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
