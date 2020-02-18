Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3F316301F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ejVT4686RAvtv6VkDuSvu7JiGMtoBiKHwZSj9aaG7v0=; b=K7VsQ8IUoO2eNokBvjjT+sT1Wj
	tCu/Q3410pJvVc85OkbAEc8FDST1Jmy0b3GrlXQ9eLrWFgBeYRnhqZu0Jjo3QhlJUXJvySOgAvzZM
	CYwtWDVABhk3mIsGGMLOtgpif73M+tqUCCfBLa8aj5CblkqkL0tnpfnE/1BYjffROF++TZi2oEuFg
	cwYF+acbRGBLzBRY3g4dvKFFZiU/FQNPE8fmMuSje/6+8n1an66WfyCoG2H6q+KrAYC4LEyCwVDrY
	yGGm/z5r+kkINi7176FVW716f+/MEHZeqfAOa9M5sNobVYC5YOxkgzltb5UsDfAaUaOx3r08feE/f
	GfSSIonw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48dN-0008KP-4b; Tue, 18 Feb 2020 19:34:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cQ-0007ma-OI
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:21 +0000
Received: by mail-wm1-x344.google.com with SMTP id s10so3975365wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GIsVr9Du1tvwTcb5uCrDYvsZclteV5H/OmCi1XkJbsI=;
 b=2O7QCmf9iFPFkRv0VE4t1kzuscHCsPiDVYzPZdeRD/9yAPEt88zBVFrmtSMmlZ3421
 rsxYMRWVL65/PAVSI+vSUD4Mc5D6Q71LrCBmrFVh6CoqVkFk9c3CPvosbjK7rSBUbtzg
 x+J0N0FjpraNAXztDPn6ZHeBPGRkfGD+mJZrT3LOlUMtdJVb4THClxuIne79PZiKtf+p
 Axb1FxrlwfXgmNaVy7zxMnu5Q9ueOgmTV01D2AX1SHUrRlJsXeBZN0BcRyLyeZdghWF5
 wx7bviISHxlfdi0b8mECPUKlhhT99egizBIh0rpqYep8hAgoOE9ZcK0pS/38Pb6BzwN0
 Q2oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GIsVr9Du1tvwTcb5uCrDYvsZclteV5H/OmCi1XkJbsI=;
 b=CKVJ6hQXLJGTDHpveCxYu+SLiGNnjAfekmLC5Bx+8MUCb7ANaERWB9JyRfyW5zu+1R
 geRR/G3qFjehgk47y4b5EWxS9nlfvULKvmbu9jmlkC+SqQ9BurO4+IChJHulbO4fhzZb
 jKuUshQpvR7jk98f3CfFOQ0dS0+vXrtVEIcEMJtgudneqxmlKnWv2K4kGEJlqrvurNtV
 xG9Ve+ej06xnLp87q4Ezy99QfUexofB3iS8nDMA0q8pgwykqIc7wiSFZmmxIEUJX/qzK
 MhiEk0bBPprgz52pc62GQpdiSHr6feL8Bjcgve2aMrZjpvCoZMTXyFd5+0sAeVjNWRmq
 dIjw==
X-Gm-Message-State: APjAAAUEuZ2zTRy9be/r74nMkA8iJxJvJA0C0zgPLdj/vn6VksFL40ak
 DL3ivKdLM6iUW9sg+1FCUkJceg==
X-Google-Smtp-Source: APXvYqxR5PXmj0VVyv0YT2k0zGTYVu+qYbvCaTD7nmPRrFBNPj3tgodO+1GzG5jCiyAA9mno7qDhuw==
X-Received: by 2002:a1c:1fc5:: with SMTP id f188mr4899137wmf.55.1582054396803; 
 Tue, 18 Feb 2020 11:33:16 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:16 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 02/20] usb: gadget: legacy: inode: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:32:45 +0000
Message-Id: <1582054383-35760-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113318_795762_B1786CD0 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

device_driver name is const char pointer, so it not useful to cast
shortname (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/gadget/legacy/inode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/legacy/inode.c b/drivers/usb/gadget/legacy/inode.c
index b47938dff1a2..e3dfc2180555 100644
--- a/drivers/usb/gadget/legacy/inode.c
+++ b/drivers/usb/gadget/legacy/inode.c
@@ -1736,7 +1736,7 @@ static struct usb_gadget_driver gadgetfs_driver = {
 	.suspend	= gadgetfs_suspend,
 
 	.driver	= {
-		.name		= (char *) shortname,
+		.name		= shortname,
 	},
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
