Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7971BF252
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:11:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nazjEnuqJHC9dXqFaImE5xWhzi2dI6hkT9Uv9i/SxgE=; b=WQw9rIFPVEh+up
	x5+j9amw6vfTZpvFybk88r+E8vBR6hvp7mOoeNh9OGpYFxq+v3uxa4OEuZanmT8pjWYhOj9Ukh0Fr
	PH21dogO+NuQYn9Xftjx7TYhXRHrZM6QxZ9c7Cw5oNi/o1xK8kSSP7P5QZUz9t4zYJbS3tM2g0Avs
	jYPXZ38wOixrqasVmEvJAo+LX+X+oqNNIKF95K/Sev51vA3u609K35Vl+qgzukjFUJQ/gStxMSCK3
	7d9CH79ED/QjcL7pAT4Xn1CXwPPw/mSOZdSUWWXO+btfLVEX5/JRy6RpiViKhMU2nSaPZEFmpVe+l
	P/DIU6kqnCkj1HJb++IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4IC-0004Dt-H2; Thu, 30 Apr 2020 08:11:36 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4I3-0004Cr-51
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 08:11:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id x17so5687146wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 01:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2o2Fztfk5W//D3bO+bVikVHBouyFoiJ2j9CyC6fkXWQ=;
 b=OU5l9pzjK2RQxM/eLRsv2chYFmymKQ5mxvF6GfOCys0Xtnj05P4pcSm6uR6bGUDa5P
 UTBh9te0UCO3ieR/1G4plJHfDbekvivY22NAHTT4GQGdU5yIZg+Qrfr1ZsZ7iwEyzFyI
 bfsPbs+2NFYLl/hgTX7ixpfR5v1314z90YVHVHBwhAIbk+sEaCbCERIuzQGY+7iMlNRL
 wWH+u4FfSBG6j7/NmbmpJni6XO3kmQlTF1c3kE6lnfVAl9WhWfDj0CaVx8+GeL9Hq/O6
 2owMONvh/MqWiGdeWn/U5Pq+pCVpwFB93zlr3xOg39sX0xVvx8yAAwpeNgMy6x1v/aGv
 MbWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=2o2Fztfk5W//D3bO+bVikVHBouyFoiJ2j9CyC6fkXWQ=;
 b=GqdORZapj22ZZtcxOY/0on7Q9OuoGMeqDtHc1/uKanpxss7OJ2wj74xvHDPsD2g3Wx
 9whFB/EWfpwC+o5mhUhxe/+D60ugkk2ubU6vB+TZcaq8nzzSfkdebB2BnNnf3dmPncGf
 lNdlD7BouBH2EZUCXY3uowKgISKfgPDYw9Tfad5cyLFVgDfAyKLb0597lq7ZT9u7ng5Y
 pUkc/olsS5TqgD69heggSiQAsucEZyr1GVjvL7EnQBKyi/bAK1pbABwOMn7+RQJ8R080
 7b83177gpqHqvO7QKfrV/oO0qqB4jaYeYHBeNMDLULYrRPPlJMPKTt0LXEY3CAOAFta2
 9pjQ==
X-Gm-Message-State: AGi0PuYbR4C46lynMEFQZ8mnLqSJNG7Rh3Kb9Zl3ZJsjkquxfEQJa8nO
 T2l1cgy85j3sq8f/N0vnin2d2WKAWzZ2gYs6
X-Google-Smtp-Source: APiQypILYB6i3OfitZOpjN+VgEPWdREhEKMt8Kth4moHZ+k3RT3PZah4rsctCqNQ9LdsMEwFt0izSw==
X-Received: by 2002:adf:b310:: with SMTP id j16mr2555234wrd.95.1588234282987; 
 Thu, 30 Apr 2020 01:11:22 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id 74sm2992078wrk.30.2020.04.30.01.11.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 Apr 2020 01:11:22 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, stable@vger.kernel.org
Subject: [PATCH] tty: xilinx_uartps: Add the id to the console
Date: Thu, 30 Apr 2020 10:11:21 +0200
Message-Id: <06195dc0effe2fb82e264e4faefcfdd6ebc00516.1588234277.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_011127_248497_FC268EEB 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

Update the console index. Once the serial node is found update it to the
console index.

Fixes: 18cc7ac8a28e ("Revert "serial: uartps: Register own uart console and driver structures"")
Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Cc: stable <stable@vger.kernel.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

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
