Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD2311DAD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYOKmTIy+YDCgIG61VwZLqu5K+f81ulroUFD5WuVb/Q=; b=VlrgsvZaDD5CZ5
	xt3vFwtOaELVZfwlb46aSIKxaOTmXJcOCTI7oqN+SX5Iktk6qlXt8TK5o233vmhdecRieDoTnnXIc
	LI3ke3YJqCI5Gv3m49hz/V1HewZF0JWxHphR1o/E0yatlGM5X54c3PeX60hFdM+I+ewTkMFsWAXRy
	JvX1JqyeAWyjuVVz0MlF2kJl+/JaDHegCM5SwC6E9aFXXX87dDi4gr9wu1x4z4Hettevnq31SAJCf
	x8+1IU+WZrSXTllfcGLv+jmBJS7EV9tK5f+rvOvuBnBM3XZgrYiKttEjBpD3Mbvyktca9A9DLcMYx
	gVKHfBXFGuqpzOGIB8Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYXB-0006RD-9u; Fri, 13 Dec 2019 00:10:17 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYWg-0006Cl-I2
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:09:48 +0000
Received: by mail-pl1-x642.google.com with SMTP id x13so380708plr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IJ2E958f/h3TR+z5z75agqEzfHRfr6uCgt8ddQ7s9q0=;
 b=ZjM0WASaUm3158P4aA/qSMiTuTxfZ0g0mnaqn6VQq2A9gp6x/kr2DPY2osBTrCcVOO
 FeYDIGvkRgR0Sy5Q0c1XfmA+b3xVl+ueMcEQh0SoGPRMO6pVb8czVwHzeq7CUyRD+R3K
 lsV9Q19RCUEugmfP4IvdYTo19nBAln4FxkhUGA5wX2vsbw/JmDbXxp01HZ6SDbJzrfU7
 0akXweakNMC1T9n7nvsK5kVEWHoAWNVX4nFsj/KGnM6kYZ2YjiUIuNWQaAVq6mKZuCj2
 Y+EBqOIvzO8p7Yc0T4LHsb5dM9dv2cK30fFPspQT5Tu+lkaIi0WPXm19b4/Z/4nbIFT/
 4QdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IJ2E958f/h3TR+z5z75agqEzfHRfr6uCgt8ddQ7s9q0=;
 b=cSCOZ0+x3SgT4VgQh7NrI4KpS7bsLj5Jx93jpXepZZ7exgbOvbPPeHdy7eT216kFvA
 HJ+OOuGyf9sVbLhSGbjbNTqspKWW4NXRbyw3TJ/tkXM6IDKsp6Lb2D6QRK2vYWji16Wf
 1QLU+ERL8/46Ux7oJjYv5U0w73jO2H0iG8rSy+Y+d+MzfXKM6M0KbRXkRCQo+cUR3PwV
 QlN7+NSV0EHo09yy0zIi+wGEzZ5kC20PG3seaLOOFZgTRkiHEFLGgZTfgsmhNKXfM1AT
 jYJHnSEodKxTgGNlsx+jX4tMWlUmqu6bOhUshrrOfMFvGPhc/Ucj0aX8gq/mYBlbWJn/
 8I3w==
X-Gm-Message-State: APjAAAULJI8Vg+w5bRR8bJWCxlO5WasK6gv2lJVdn15wVmBcPyR+eOzm
 Ds/FSb40iXocxsQjOZk3iKFLpw==
X-Google-Smtp-Source: APXvYqwDYZCTcPhfGFZk4d1JFI8jcLKengT8YOjdiZDuy9hSDm/wiYpEsgokOMWWQd/YlA9PdVg2Rw==
X-Received: by 2002:a17:90b:f06:: with SMTP id
 br6mr13017685pjb.125.1576195785826; 
 Thu, 12 Dec 2019 16:09:45 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id j38sm8317647pgj.27.2019.12.12.16.09.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 16:09:45 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 51/58] tty/serial: Migrate vt8500_serial to use has_sysrq
Date: Fri, 13 Dec 2019 00:06:50 +0000
Message-Id: <20191213000657.931618-52-dima@arista.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213000657.931618-1-dima@arista.com>
References: <20191213000657.931618-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_160946_643872_20FA1C6B 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Vasiliy Khoruzhick <vasilykh@arista.com>, Dmitry Safonov <dima@arista.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Tony Prisk <linux@prisktech.co.nz>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SUPPORT_SYSRQ ifdeffery is not nice as:
- May create misunderstanding about sizeof(struct uart_port) between
  different objects
- Prevents moving functions from serial_core.h
- Reduces readability (well, it's ifdeffery - it's hard to follow)

In order to remove SUPPORT_SYSRQ, has_sysrq variable has been added.
Initialise it in driver's probe and remove ifdeffery.

Cc: Tony Prisk <linux@prisktech.co.nz>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 drivers/tty/serial/vt8500_serial.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/tty/serial/vt8500_serial.c b/drivers/tty/serial/vt8500_serial.c
index 3d58e9b34553..764e992438b2 100644
--- a/drivers/tty/serial/vt8500_serial.c
+++ b/drivers/tty/serial/vt8500_serial.c
@@ -7,10 +7,6 @@
  * Author: Robert Love <rlove@google.com>
  */
 
-#if defined(CONFIG_SERIAL_VT8500_CONSOLE) && defined(CONFIG_MAGIC_SYSRQ)
-# define SUPPORT_SYSRQ
-#endif
-
 #include <linux/hrtimer.h>
 #include <linux/delay.h>
 #include <linux/io.h>
@@ -703,6 +699,7 @@ static int vt8500_serial_probe(struct platform_device *pdev)
 	vt8500_port->uart.line = port;
 	vt8500_port->uart.dev = &pdev->dev;
 	vt8500_port->uart.flags = UPF_IOREMAP | UPF_BOOT_AUTOCONF;
+	vt8500_port->uart.has_sysrq = IS_ENABLED(CONFIG_SERIAL_VT8500_CONSOLE);
 
 	/* Serial core uses the magic "16" everywhere - adjust for it */
 	vt8500_port->uart.uartclk = 16 * clk_get_rate(vt8500_port->clk) /
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
