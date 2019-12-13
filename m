Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003CA11DABA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:09:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eD4PDPxbcY0tZGKp4NC1r3ELwHvChRXDsAi/MRrmXts=; b=qD/QIQIPkNr4xf
	2CX8meVVYyFcZUrM3tJudvYXmeMBQGj+5nEVaBOXUkRGS1bhaU/wqgpIPUxJD+cvBno9ohXOFQ+z6
	6vUEJqwNWlpTW8nYNSgewFuVkGdWo41eZQNqQRqhndRrfx1OJA2GAXUxJZhHY/1QIoH60Pmzy/tkj
	fVb/pkiwIfv79K4yBwQ5wGXp3b5qZylF73hUnYKsk7zKjgBI4FUn4+dQL1sLnf6g9yn1R6kY45ZsG
	sbmyqiEyNgpA69XOpmBMkJcbXCRWps95LFkbZyHwLqrIqx1IMOSE+2ulpKEOIX6zuq/pewNA+CcKD
	mVT2fiNUKhxw8sOLkQpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYWe-0005xW-Kd; Fri, 13 Dec 2019 00:09:44 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYWI-0005mW-4V
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:09:23 +0000
Received: by mail-pj1-x1041.google.com with SMTP id w5so334117pjh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q6Z6h55fqcKu/1XdEPBrCCQZqpAqK/dlHyYZRu6yk0A=;
 b=XF2rsfp6S8eVpNAwetphzdMntNRfleo8sRWtjge/7tZNQ00G6D+xDWInIppahrgaVP
 56NMUvPSH2EP7N0FdLt7Ve9GX2Ow5BwokuTIs/7QmH5OuaOObM07n0rTevRAkVOsN1eB
 uRvdkEL83YmHbC4hH8sbKzbm40UaJHO/CO1bz1f5qfJqVJmrZ3j+wxV95kM95LLSlrsF
 bpAY3+MTgrkQ1t12PDoKlijBzwBbfGbZcCmy9w1qVsEeg8M6TOJ5y5fQI/HV6aXO3ksH
 t8bodtXGK2fCSZcgJSEidF++iq4gbEzVvOwNlntWLZXF+s6M7gk/HuXXKLqM1011bMb3
 urUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q6Z6h55fqcKu/1XdEPBrCCQZqpAqK/dlHyYZRu6yk0A=;
 b=igCaTEXDJM5t05BPmwG3doOyxZUQS1VUcWtGEUP3cmw+1IstlSVFpNTXz4jlZfAGvi
 9h/stTuDUt7hGNp8rJazjCoqUXHw8D6FXT+VLS2Z45ImgqNhirY5P4BZWO8TmWa6l56/
 sPcOFaFyNpT6iTtcdo2gILrOw4IQSLNm9nC7FyXMtFSp1RJ5hvS55IA9rxofbx1Md6jb
 kcmpjP+OnzXN7XmATyIDyoo3QU4K1hW1JhQmu7vecDEeAjXsbvrNpcKlVPaPMq9OrHSI
 QxDUCi1mphn4RcUej6h6TqEytctnEILPrD1qSRd3HL6SoeH4BKuozLqgFjxwP91wo7T2
 Cbug==
X-Gm-Message-State: APjAAAWF21wDtlpFgngq3qMmevL9msaWWWwNnC4iVxHCLfp/D0lakGOl
 DVZLOjPSf5x7yO3GNz+d2zGS/w==
X-Google-Smtp-Source: APXvYqwlkJz/Si2OVsRDCRLc+xPb5dEar6sDzFHhlOaQ2a+RW7qzAwTJAfBum3Dn/5w7f+5voW+Utg==
X-Received: by 2002:a17:902:aa95:: with SMTP id
 d21mr12764749plr.263.1576195761332; 
 Thu, 12 Dec 2019 16:09:21 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id j38sm8317647pgj.27.2019.12.12.16.09.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 16:09:20 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 43/58] tty/serial: Migrate st-asc to use has_sysrq
Date: Fri, 13 Dec 2019 00:06:42 +0000
Message-Id: <20191213000657.931618-44-dima@arista.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213000657.931618-1-dima@arista.com>
References: <20191213000657.931618-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_160922_240896_D8D408D1 
X-CRM114-Status: GOOD (  10.79  )
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
Cc: Vasiliy Khoruzhick <vasilykh@arista.com>, Dmitry Safonov <dima@arista.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>,
 Patrice Chotard <patrice.chotard@st.com>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
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

Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 drivers/tty/serial/st-asc.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/tty/serial/st-asc.c b/drivers/tty/serial/st-asc.c
index 7971997cdead..fb6bbb5e2234 100644
--- a/drivers/tty/serial/st-asc.c
+++ b/drivers/tty/serial/st-asc.c
@@ -5,10 +5,6 @@
  * Copyright (C) 2003-2013 STMicroelectronics (R&D) Limited
  */
 
-#if defined(CONFIG_SERIAL_ST_ASC_CONSOLE) && defined(CONFIG_MAGIC_SYSRQ)
-#define SUPPORT_SYSRQ
-#endif
-
 #include <linux/module.h>
 #include <linux/serial.h>
 #include <linux/console.h>
@@ -730,6 +726,7 @@ static int asc_init_port(struct asc_port *ascport,
 	port->fifosize	= ASC_FIFO_SIZE;
 	port->dev	= &pdev->dev;
 	port->irq	= platform_get_irq(pdev, 0);
+	port->has_sysrq = IS_ENABLED(CONFIG_SERIAL_ST_ASC_CONSOLE);
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	port->membase = devm_ioremap_resource(&pdev->dev, res);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
