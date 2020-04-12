Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F801A5F0B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 16:35:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vjlavtdHlcXldbXaE9/KKHy7eOmx16o9JmX6ZuIJkSE=; b=BRe
	Ik/LCdY409TkEl/hb84z48OUuBQdS3ZZgP3pz63l9aeRPRdFcvJxqr64I8uy/jwZYGRRCNPAimkBs
	1tvxlecFRLeQ5MQLkbXGpOVwycur0HCGEAvSewLlt1NFINsOlR66zqWA5mPB7ZsInnBi1qezLFsKY
	xz3rrcvI3CCbp+Ch3DJkVJ251e6e+JaGeNncFYLenIPfkiu/L9aUbV0HgH4ZXVBvyP5UB72x2eUrD
	3l3fjibk/3e2dj0EJZFPoNDwXpwGft8UkROoSS1SGcQ5cvUWmKSIGzAgU5AAy6tTjsCDqaMK0BWP6
	zzwhKsH8sHYn6g1s0/2Pkl0sq24qbPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNdhc-0002sO-Ag; Sun, 12 Apr 2020 14:35:16 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNdhP-0001s8-3d; Sun, 12 Apr 2020 14:35:04 +0000
Received: by mail-pg1-x543.google.com with SMTP id x26so2192389pgc.10;
 Sun, 12 Apr 2020 07:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=t3l/b3BkwVPw7rBu6NQJtxUnkNuDJSDnYtrlNw2pk4E=;
 b=IxklJ81uyWWTUB3x7GnjKq1Z8WTAT5yxkw3HoSMYeizKXA6JQR1jwIVCjhdXgTyrW9
 vBubtKgNEMz/wyls8aL4BIGR5cmmXGLEKqzR3cDdIeKBc7bQvz5szbM5bV5qQnhaxOIF
 8QvtMDe3pG2GHCltB2gXSwzvzguXZZ1ARwgC88wSDLBzW2u5cY9fau5ExmbhAIyKCaOO
 7Fcglc7qUAkL1f/R49785+BSOR465O3C26Of2Ywh24egTAO4OCZqCZvIv+anPE0SuQ48
 SjBkgrF+f1f3vAeGh2badX5ZdfgSQuLsfRAyMELLAxgPJVtkg8P4QR0N7UNJ9vO0MFWp
 crNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=t3l/b3BkwVPw7rBu6NQJtxUnkNuDJSDnYtrlNw2pk4E=;
 b=eKZG7PEYULk8wJRyV+Mx3v3tIdCf0i7u1ziVqW99ZUQQUG5BCzaYgONxR4a2lbVArm
 0aoIW0H6v6Vt3nPUo5iiRd3Ev43gDDs3Gp9gBjxNoZQ6CwLOoxjuZ1bGe8+FCyN4QjSK
 g3YPnaQRq0DefhANCdWMmaiat3Z9WyPsaHRUUMabot/8HQftrRQmBEaMw0QhqXJIymOv
 9Qgy9LdERtHZL2aWz9TjFO1SmSkma483/l1Ycw5+QIpcBrQahSdcDuL+Z4J8l8gmoSll
 Nx906timxYMDnH+Q2BBT2oFFg5vPpnAnRF3l+G+hHICYn401KxKITIVIPdsW17FDSSns
 sQEw==
X-Gm-Message-State: AGi0PuY7cauK6EOC8w+c3fR23paL7PNfO+qf1UcCWz1SUanLZQY77URC
 ehGTtWNmHpFv9Dism43GSEY=
X-Google-Smtp-Source: APiQypL3VozPjhSynVo+qpa75w8IPU8Y+h1fiju2DQtQYj5jvzBcovETWHbuzwmucZVg/c6mu5UKuw==
X-Received: by 2002:a62:5c1:: with SMTP id 184mr1691507pff.68.1586702101288;
 Sun, 12 Apr 2020 07:35:01 -0700 (PDT)
Received: from localhost.localdomain ([106.215.54.38])
 by smtp.gmail.com with ESMTPSA id y13sm6403901pfp.88.2020.04.12.07.34.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 Apr 2020 07:35:00 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, matheus@castello.eng.br,
 manivannan.sadhasivam@linaro.org, afaerber@suse.de,
 linus.walleij@linaro.org
Subject: [PATCH] pinctrl: actions:  fix function group name for i2c0_group
Date: Sun, 12 Apr 2020 20:04:20 +0530
Message-Id: <1586702060-3769-1-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_073503_170101_81AADD24 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
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
Cc: linux-gpio@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Amit Singh Tomar <amittomer25@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After commit 6f87359e8bcaf88381b9c9c038929e0e6872d308("pinctrl: actions: Fix
functions groups names for S700 SoC") following error has been observed
while booting Linux on Cubieboard7-lite(based on S700 SoC).

[    1.206245] pinctrl-s700 e01b0000.pinctrl: invalid group "i2c0_mfp" for function "i2c0"

This commit fixes it by using correct name for i2c0_group.

Fixes: 6f87359 ("pinctrl: actions: Fix functions groups names for S700 SoC")
Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
 drivers/pinctrl/actions/pinctrl-s700.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/actions/pinctrl-s700.c b/drivers/pinctrl/actions/pinctrl-s700.c
index 47a4ccd..f579a65 100644
--- a/drivers/pinctrl/actions/pinctrl-s700.c
+++ b/drivers/pinctrl/actions/pinctrl-s700.c
@@ -1435,7 +1435,7 @@ static const char * const sd2_groups[] = {
 static const char * const i2c0_groups[] = {
 	"uart0_rx_mfp",
 	"uart0_tx_mfp",
-	"i2c0_mfp_mfp",
+	"i2c0_mfp",
 };
 
 static const char * const i2c1_groups[] = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
