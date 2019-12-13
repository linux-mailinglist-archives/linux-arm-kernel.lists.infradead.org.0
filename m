Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FB711DA73
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:07:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gjh/62o+lWlQ9i2g+QtsaIZzo/KHPx8QDuYDsPKY5Lo=; b=sc7H7xBInnxKBN
	FyquP9SPhfXl6MUWmQzRjWeP6h7QLwQW5xASeZQdPP4aRvqvcu10A9TX2viBk38Fb83PBzW+6HrLE
	cjqkAGTuwbbDnhro2D/PaCi6qLOjS7q83R3L4Aja42nGz3fV6sb8T1Lod9rLaZFsil2ksYE9XiBfF
	mDRUr09bxCcfV2qvXv0jcwrWKLdAuN/CQqlufCMBohs2pqkH+cEcS1JNQAtbxJ8FxMlPCjepgX2z+
	lkx2moBRawDCVbfJyMahoFHmOssaLC+0Senup/kG0Nuqr5yr3wgLPZ08gMrBZJP4Pl4anX/yq6zov
	wnP8DwEclrWDlcthvC3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYUY-0003q1-3P; Fri, 13 Dec 2019 00:07:34 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYUQ-0003gp-M4
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:07:28 +0000
Received: by mail-pj1-x1041.google.com with SMTP id o11so333609pjp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6mNnjO8v1tpl9yqVUOmaWfH9cLoEm7aFdIH5BtFh2r4=;
 b=dgyveXe++pvbZzQRfBmAF/BV57WQgKW8tFS6uvjxmvo976OQWCi2hyt+Xte32scieT
 fDYObp4UGB+chOn+KLJ0V3caJWWZMV+4OUuk9iELuQHxkso4dEwadxwKIK27SZOY7JEv
 rOIDZhb3i4lGeATobG9gOF0HbRsMf67n1t0XAnXWUyKmK9dni9LrbMJUrTfBe/Pa8HAT
 qr9EeeafSMpWp11LvOPlgnBKi5xlBn19dQ/Y8qRyf6rxUZfQzjrPeKf5g13cbNqB6Y57
 5VxBUNfl4MMdR/wZwE7VQLsab5VacSajatAHncx5Cx9LWx+yROBw3gs8rN8bUc1xMmwz
 Zuqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6mNnjO8v1tpl9yqVUOmaWfH9cLoEm7aFdIH5BtFh2r4=;
 b=PeOIYi7ZRmWpjuv/T+LkORSLqIx+r9TjriAlLohPuexRhLSko90Ga6wOA8LedGgBT7
 I+nfFomVoNLzXGLL+Vznd0fhPExIv8wPcUahKSRidUPPxqHBy/HRIt9Nt7MC6+D+HRXA
 ZvTyRCL2tjWc9/NA8aHn+z+31JiEqJEoiyBcZ5l9u9ErKlodtAdjiXNvsThRhoG38IHf
 kJOju0ugZrD/anP1o5ImE7sfYmAy4O36NWD1CyO1I78vtcuCCB00qbh2sPTisT8jzeQZ
 u6IR17oOwqixymJtbd8zeP45SR+rf89IGB4WXFGCPUGCsNscdtExXW1Shcb5K/cEecN7
 Jtyg==
X-Gm-Message-State: APjAAAWPs6F65lwPMSRDMX0FyXvtNn2r5DifAz1r5Gg6QjBrt6qfQvWA
 I98w+wP8qcwwZ1nZ/mTtPK9ONw==
X-Google-Smtp-Source: APXvYqy/yq33aCSkTVokTTb3YtsIWtq/9olFkGeixr9RtIQxE27PiPzHCSj/k0+5f3lTD5yC44fofw==
X-Received: by 2002:a17:90a:b010:: with SMTP id
 x16mr13564458pjq.130.1576195646097; 
 Thu, 12 Dec 2019 16:07:26 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id j38sm8317647pgj.27.2019.12.12.16.07.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 16:07:25 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 04/58] tty/serial: Migrate aspeed_vuart to use has_sysrq
Date: Fri, 13 Dec 2019 00:06:03 +0000
Message-Id: <20191213000657.931618-5-dima@arista.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213000657.931618-1-dima@arista.com>
References: <20191213000657.931618-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_160726_721050_8B44CAE2 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Vasiliy Khoruzhick <vasilykh@arista.com>, linux-aspeed@lists.ozlabs.org,
 Dmitry Safonov <dima@arista.com>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Joel Stanley <joel@jms.id.au>,
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

Cc: Andrew Jeffery <andrew@aj.id.au>
Cc: Joel Stanley <joel@jms.id.au>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-aspeed@lists.ozlabs.org
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 drivers/tty/serial/8250/8250_aspeed_vuart.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_aspeed_vuart.c b/drivers/tty/serial/8250/8250_aspeed_vuart.c
index 6e67fd89445a..d657aa14c3e4 100644
--- a/drivers/tty/serial/8250/8250_aspeed_vuart.c
+++ b/drivers/tty/serial/8250/8250_aspeed_vuart.c
@@ -5,10 +5,6 @@
  *    Copyright (C) 2016 Jeremy Kerr <jk@ozlabs.org>, IBM Corp.
  *    Copyright (C) 2006 Arnd Bergmann <arnd@arndb.de>, IBM Corp.
  */
-#if defined(CONFIG_SERIAL_8250_CONSOLE) && defined(CONFIG_MAGIC_SYSRQ)
-#define SUPPORT_SYSRQ
-#endif
-
 #include <linux/device.h>
 #include <linux/module.h>
 #include <linux/of_address.h>
@@ -406,6 +402,7 @@ static int aspeed_vuart_probe(struct platform_device *pdev)
 	port.port.unthrottle = aspeed_vuart_unthrottle;
 	port.port.status = UPSTAT_SYNC_FIFO;
 	port.port.dev = &pdev->dev;
+	port.port.has_sysrq = IS_ENABLED(CONFIG_SERIAL_8250_CONSOLE);
 
 	rc = sysfs_create_group(&vuart->dev->kobj, &aspeed_vuart_attr_group);
 	if (rc < 0)
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
