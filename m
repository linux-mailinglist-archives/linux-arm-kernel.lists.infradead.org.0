Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1484D7937
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jOwYtREjZUcA6evZfUXJ2QepwV45mwt298Bw3mK3jTQ=; b=UC+P/HmxAkTsnO
	zA25Vkg9W9LesDen7tmvrLZP2Bp2qBaqHmBKvmfx1Rh7I6pCqQPNn9GsBOXFyWeGSIiqNup/JMp9v
	YAgAdIaJpG6sc25YWnJVEWoPMXHdgWrXEPiNlEATrWDFElVF8zR34hVeA79jLmxtNg4u/9mCyB060
	ZxopXOMuHP3E4TtSPWb/1lHY9h2Uo+ubxlPN0s/MSevuIE4NG1F85CqCRWcXYPF1GS2QiUtbpkK8R
	4TBxhPz8gpqDDjdVP3d3gem84Z0ny7pMZzcN2TrjrJTM3gCb2c0FRzf95HhirmwyN/oh5hMt46jDW
	51UxIsFln+0OperyAe5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOCQ-0003El-E0; Tue, 15 Oct 2019 14:53:22 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOB9-0002Eh-Qt
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:52:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id v17so20582788wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 07:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yEZBP16nHW2RPcRxavfdMwmjl1huY8K+6hT/6zFfEzs=;
 b=ZUjtyZ4ZeuWmh4zTLAG2FyIShRg7/OsCE25XJV+7YoQUzX6v3dSVaLIW6XVZQhKp2o
 afgFeVzkwjFJRFFqoyIvnX7/7PrQglJLmyZHy8cxnlw2kafXEyBpO4z+kFoOLG0dAxkY
 H40uVdG4/mJFb3dNs8LRX2fXFx1bHGDFoD9DbJ6Oly9r9gHXzQ8zpLhhfb+GhnSTBvaN
 /hzuZIhsgNFHQYUY/Ppu8Aqw2rYzXiq16RX91ShOfv/kXEK+3a1Nv7Ld8bPPJa7de+mG
 lcrAT7bLioSA4ZPUUrwLI9nWR4X/p1EEhZyuQ8blUWlUnsQwuXu0D/xHff5FQDC6uIDu
 ZcRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yEZBP16nHW2RPcRxavfdMwmjl1huY8K+6hT/6zFfEzs=;
 b=VF63wMO6dn+Qxfrl7+nmaV2wvegWJlmVDKxHOlRYMoOQsHJXrTx/3juCaSGVjUTidI
 0PB096c2pKS6NkHuW1ARfi9wtj1GgOr9J8N5+ZMlxTtahwiHeCMyNn4uuuIIoIL+P84T
 4Ov99us4w1njqiBhUaN/6/VG/0Q+K9RSRFHwE89iGrGIVB31YG7fWtFTRthFS2C7/8/N
 B9NRjJjWOG84r7YCM/XnPo3JEM6XB4tHsVmVav2KkUbEfYjAMQIKElXjhUYhm0OKv/a6
 FVjSvuNG9U3XNa0Yy1bm48UZOfgwCSsLuog6Bbw/fy9c2Yzv7OcO3roIt9wvgMuJnFlv
 jzkA==
X-Gm-Message-State: APjAAAV+qT2FDZiFn7MDKN/uMPSPovAgabA4h2rqRF+Lf8L/wJg647nW
 nGa3swqDG7+B0yyLfv2H5mY=
X-Google-Smtp-Source: APXvYqyJfag8Rywn8xKOzMaRcnGItNxyVt4QbdJ54reFHlzPLxgGyeV667E9ugpTZWtOcXSEEOS8lw==
X-Received: by 2002:a7b:cb0b:: with SMTP id u11mr19511255wmj.125.1571151121269; 
 Tue, 15 Oct 2019 07:52:01 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id r10sm24764805wml.46.2019.10.15.07.51.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 07:52:00 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Russell King <linux@armlinux.org.uk>,
	arm@kernel.org
Subject: [PATCH 4/6] ARM: Register with kernel restart handler
Date: Tue, 15 Oct 2019 16:51:45 +0200
Message-Id: <20191015145147.1106247-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015145147.1106247-1-thierry.reding@gmail.com>
References: <20191015145147.1106247-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_075203_915893_BE1DAC82 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Stefano Stabellini <stefano.stabellini@eu.citrix.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Guenter Roeck <linux@roeck-us.net>

By making use of the kernel restart handler, board specific restart
handlers can be prioritized amongst available mechanisms for a particular
board or system.

Select the default priority of 128 to indicate that the restart callback
in the machine description is the default restart mechanism.

Acked-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/kernel/setup.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/setup.c b/arch/arm/kernel/setup.c
index d0a464e317ea..d403648195de 100644
--- a/arch/arm/kernel/setup.c
+++ b/arch/arm/kernel/setup.c
@@ -1073,6 +1073,20 @@ void __init hyp_mode_check(void)
 #endif
 }
 
+static void (*__arm_pm_restart)(enum reboot_mode reboot_mode, const char *cmd);
+
+static int arm_restart(struct notifier_block *nb, unsigned long action,
+		       void *data)
+{
+	__arm_pm_restart(action, data);
+	return NOTIFY_DONE;
+}
+
+static struct notifier_block arm_restart_nb = {
+	.notifier_call = arm_restart,
+	.priority = 128,
+};
+
 void __init setup_arch(char **cmdline_p)
 {
 	const struct machine_desc *mdesc;
@@ -1132,8 +1146,10 @@ void __init setup_arch(char **cmdline_p)
 	paging_init(mdesc);
 	request_standard_resources(mdesc);
 
-	if (mdesc->restart)
-		arm_pm_restart = mdesc->restart;
+	if (mdesc->restart) {
+		__arm_pm_restart = mdesc->restart;
+		register_restart_handler(&arm_restart_nb);
+	}
 
 	unflatten_device_tree();
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
