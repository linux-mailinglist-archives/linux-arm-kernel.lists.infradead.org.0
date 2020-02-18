Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F27D163048
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6eE5nCqaiIi3h0ivsopZgqZFOX1lqWR+5MXYD/FInpk=; b=Mqd4IZQ0g3S6A6OXtsXi4I8fQz
	neaTeH0Ac55hyA7cKueT7/HUCEUbfcGUmdVQpA9ANs1SnLR3NDtzXJGAOOVDr4nHxy7JLyr/rXEzW
	ssj83Qn9WHze9I5Woa4oWPjA8UGsScZ39GMZz9b9+C0i1vk8a9qKYS+TxypMv3LGD0+QstbUlkZlz
	qd0oasDx8+la0rkViSmpbtwU76rkmImqgK5vOeylONqdQG1apQ2K3S3insbzaTspZykFtNu+zClHt
	pYw6mES5o9taGM8PMTOGGm/mBKo4lZaGC6iXOL9DdwIAKm04x8q7qa6DamRKhzauhPBp0fU7+rHEK
	2yZ9ZrVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48go-0004gL-D5; Tue, 18 Feb 2020 19:37:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cf-0007xh-39
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id m16so25358714wrx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kXwAGZwN4heqrm+yisZqSC1971kXzW7z7pJvBg5a/VA=;
 b=WXbdgkRzz5bJUy/h9WLUJEoNOZR/kJIuqcw8w2abFn6go/1ZB6+eLoDZIhb7ewUiWM
 437/g3AnYe/8BatYTAt1Npl6AlTSuHbHeV5fIky9gyMf45x3EKU/eO3ujlo3rIFRBjt3
 8RiafI6Khpn7vQWe39P71bMeZj0ZndEtYNEWgQnCswKehQpa7cBrhiA/sMm/VyLJAOh5
 aUzf36wvBk2vWJ6SQO6vQSqFu5d1P2k2GhCLLKhvQnbn7JPwOm5cyWWAU7PZca4plUzy
 7hnc8gmWXooxeFHIo5vduWgn2tHBbfg39iCWhn/F6BH1Ky9P4VFTVcnoAqZkT4v1SaEj
 hsTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kXwAGZwN4heqrm+yisZqSC1971kXzW7z7pJvBg5a/VA=;
 b=Zrg/KFFDAl7RXKcqxs2BgeOUVhQpo2klCsPKlZL6JY1HxmjezQHdcpPbUvuVRvT5az
 MlXJOuuh6erhGqfVDCabwRP8N7qm9lTBk2r+Ul5HlonN+J7558tpWC0amK7+QrGOdIT1
 dXYa13vrryBqFPTBURLbeacQz9jI1htgT5UBspJWVDZKl9WaN4c54WJGNrWNFfBVDa9Y
 cFGSllxdA8bzb3UTDKCy1QTQfCA6Izj4f4lWfWXeyvHf4AxcG1gw7VO2z9PUEhrRNYjU
 yNXOQ1D21R/fIzp/b76rshdmXuBSm1gqxYUwIvxRrrewLqtlyAPPi1mSyOGHLGx/0IQh
 sKgQ==
X-Gm-Message-State: APjAAAUgG+2XFaz9Nar/Rg90HzO5WkWnXbUP7r8sfbhdCa8uwy1nLxgP
 QG/+jq7kVwRIt7NNoHOCWPqinQ==
X-Google-Smtp-Source: APXvYqz9QEapK+rHVfxz1jZEt08EcWoid6BWixbA5raOfT1UtuZhp2XypMaSFN4hipm9DH7zI+zXkA==
X-Received: by 2002:a5d:4d04:: with SMTP id z4mr33060983wrt.157.1582054410617; 
 Tue, 18 Feb 2020 11:33:30 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:30 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 17/20] usb: host: sl811-hcd: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:33:00 +0000
Message-Id: <1582054383-35760-18-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113333_329544_5E87FE80 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
hcd_name (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/host/sl811-hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/sl811-hcd.c b/drivers/usb/host/sl811-hcd.c
index 72a34a1eb618..adaf4063690a 100644
--- a/drivers/usb/host/sl811-hcd.c
+++ b/drivers/usb/host/sl811-hcd.c
@@ -1792,7 +1792,7 @@ struct platform_driver sl811h_driver = {
 	.suspend =	sl811h_suspend,
 	.resume =	sl811h_resume,
 	.driver = {
-		.name =	(char *) hcd_name,
+		.name =	hcd_name,
 	},
 };
 EXPORT_SYMBOL(sl811h_driver);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
