Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFF111DABC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:10:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gq44Jj7oox79KLFbhy2cKLgRBQroOMC4bE0xsF4cDcg=; b=MVQZ94Bw8T/ioJ
	ID46nlc+xXryrUcr/QDlBcEv0mUMsNKsug1EYCa5gWVmwavdSGPt6uldRkpxShwzUz2REnKkVrJgf
	lalD4ZgQxquPC3th9AGIqhjhtklrBoT9nfOJvgxmq++KzPo5VDNUoMvzncY+TkfW3FLNYTn27ea+g
	EzdIBpWiWXf/4+rHZWjWogshcDOP13g4CXYQRPFAq5BRO4gIolEReZSEjxEVa4MtQUi0pfvilwmxr
	NlKwyBjkeieFY7KH+TyxmyoQgour/wTvTeFtn5UNj+gn3hy9cUUudcs1TetYaIN78dvYx+3Jg6YWC
	2WirL2gzaPSO77jGxQeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYWr-0006AV-Rv; Fri, 13 Dec 2019 00:09:57 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYWL-0005qc-Qo
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:09:27 +0000
Received: by mail-pj1-x1044.google.com with SMTP id o11so337533pjp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k2sVyEICGfKf72nEjPqSRaSmfvJt+VQfuvvM6oc7m9s=;
 b=MwyEdNtFfmjQZoB27Q0dIhnKa/eRsscBYXgN6mThQHZ0xuN2ZLNKi6ckLFpOQcPk+I
 NEzKUZY20I58iWtE45s2LmQvI8w3hNRVu//WpT5ZtNqDzUOxrG64HmkEASgMeCHQTYsF
 BERyiqKnSCv+Ntjq+29FADDKOnA7VRMDTnxpTxarc8+nLThS9SCFZDQDKEgOxRraWxtc
 mDUv5ABTRatRqAX5ufBfjct3CXHzkTHAAHIy1M6tlMHU59duHo5mn7JSUfcm8cmLplf2
 wmacPO5wGfnv2SXChdmY0aR2WF1f1/LIscRo2PIXHQtebaWsP6SCeTlACqAjfLxoowH2
 7pmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k2sVyEICGfKf72nEjPqSRaSmfvJt+VQfuvvM6oc7m9s=;
 b=h1pYh7cwpWbKFOtv/YcpwJkyEtKjEqZ35IsnKSP9tlROgkJv5gPDhQnqNIqepHn9+a
 mbOW5a8IG08fctyLRll4QOIskL//0r4WBajDNfiiyh4lP70lww+b8LVfwoG8HFFsZ1Ye
 iju+PwdIIQFyna57ragghI6pnFC3h1k2AEJ0I7HvsJLn2fq+/luvJuPmubwWCWVqpTIt
 Cw1tesYW5yo1E+jQTz7Sx7ZQyILCLnPDvSDtnOo4QDOQtNcqAkzpWHIUT54EUdTTdekZ
 BgzJavUxf1A3gdX13SUyRzAaP0oveCk5XZwBzKtopbg0QmlBe3p2gMs2liETNeqEknT9
 LcAg==
X-Gm-Message-State: APjAAAWfIwf8JyJAK/582wEVu87syDtyNc/AUCeJd00B+jcfiFSeMNzF
 fMq025DpobhRhZEqu8c/JNfYPw==
X-Google-Smtp-Source: APXvYqyKleyWMddswHphitVEN0hVZKzYGZZEyMMWwvlQN495NyB0mhwoFp63U+7Ic280YNH9xNzNyQ==
X-Received: by 2002:a17:90a:e291:: with SMTP id
 d17mr13557645pjz.116.1576195764822; 
 Thu, 12 Dec 2019 16:09:24 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id j38sm8317647pgj.27.2019.12.12.16.09.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 16:09:23 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 44/58] tty/serial: Migrate stm32-usart to use has_sysrq
Date: Fri, 13 Dec 2019 00:06:43 +0000
Message-Id: <20191213000657.931618-45-dima@arista.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213000657.931618-1-dima@arista.com>
References: <20191213000657.931618-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_160925_879353_574C4672 
X-CRM114-Status: GOOD (  11.13  )
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vasiliy Khoruzhick <vasilykh@arista.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Dmitry Safonov <dima@arista.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-stm32@st-md-mailman.stormreply.com,
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

Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 drivers/tty/serial/stm32-usart.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index 2f72514d63ed..5e93e8d40f59 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -8,10 +8,6 @@
  * Inspired by st-asc.c from STMicroelectronics (c)
  */
 
-#if defined(CONFIG_SERIAL_STM32_CONSOLE) && defined(CONFIG_MAGIC_SYSRQ)
-#define SUPPORT_SYSRQ
-#endif
-
 #include <linux/clk.h>
 #include <linux/console.h>
 #include <linux/delay.h>
@@ -926,6 +922,7 @@ static int stm32_init_port(struct stm32_port *stm32port,
 	port->ops	= &stm32_uart_ops;
 	port->dev	= &pdev->dev;
 	port->fifosize	= stm32port->info->cfg.fifosize;
+	port->has_sysrq = IS_ENABLED(CONFIG_SERIAL_STM32_CONSOLE);
 
 	ret = platform_get_irq(pdev, 0);
 	if (ret <= 0)
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
