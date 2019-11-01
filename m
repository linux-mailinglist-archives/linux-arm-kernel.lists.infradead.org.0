Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A451AEBEA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 08:47:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=chdSPjqTZUM87vfLzLqQkZrn2aqpBQEqYy2CSpug8Jg=; b=h+uOdho5lP55C/9kZWtFUpMEU+
	Q38S2ZZD9LgcEWdX90PFO3VGIJx4zdV+x7Q7PDZA7ylw5r5sJW6gsG6m39gmFQ4AVgmf5XI/muKZ0
	XRNTqJST3jMxufjRhCBSf6hLi98xDU9Tj84wsjr0SAphnHGShKw6PzQYYKK8y3vg5YdcJBI4+0DeR
	5xNMvlp2Fzoru0HolWHIwUciPDYR3+04CZWhFSZIiojuxLEB2u6m3KU1vFo4FbUfefvQhEsVc5v3f
	IKUY8Ou9L0wUgzHuqHF5XvL2uKqu47hoAYd7a1mnqXmSHwD9FA2jE9I1Bg/5LWZG26Hs/NqNYa6II
	4MDmb4uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQReh-0001UJ-3m; Fri, 01 Nov 2019 07:47:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRch-00088a-UF
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 07:45:33 +0000
Received: by mail-wr1-x441.google.com with SMTP id v9so8814114wrq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 00:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BF4ZzyUEGnGEiyqA1v3l5l4pjBuYXhzsNNXXOYP8w+o=;
 b=qbHXVYhy5UqqBLj8qTiPohKa/wHistzi1bos518nV9bTNsteO8GyV6wzqHtSV3HuDM
 L2SOVq0KsobRYwXQzm6Dhi9BtAveaD3ISRF3m6M/ZDS1J3WuAV64hWlBbBsnoNjOkCUK
 Nbr2QDhq21lEZDWQWAPGh8ymfd/spSRc11zEeIX+Rd5tJknLhiLYpw156XiJc7n9nob1
 UX1ZwMymHYKPyB61tOF9yGHL4CSezawT6ynfWSJpnXp2HLYjFprBeL49Q/4snQusirgI
 akUFjZspQxQTHfoDAbT/W+7pHIOCA9CqSmwWBDFOAxYLMeuANTYzqIQkUvKDJjjyGIvP
 e+EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BF4ZzyUEGnGEiyqA1v3l5l4pjBuYXhzsNNXXOYP8w+o=;
 b=PfZ6usNsbvK02hJeTr0P6/7rUQm9g4z1256Nfyl0PrWAQ0PDBJs7PPEAh0cY/IsU0r
 c56O0jWwZquq6qHSB36ne8RhyOwejPd4tsY0YNPIhpOX9SA1rJAMN2E1JLz1i8dovgq4
 viD5GhCFD7i2BsD1McnWUW5ml4bDi53F7PO7elzVweg9kh0SX1l5ZYLT0OpxyfsN0BgA
 teD5YvvV/kA9jTn4TZw7Kv2WE/HmBwCEal90Qu8QCfmm/FL/fBYIALn+uAP7NrisJFwf
 CG4zW2srfkg/os62V5sI4YsHV9hBaszbnJxFPQf3fWA+4SdeaOM1RuCMx+ubqHVvoZg2
 ElHw==
X-Gm-Message-State: APjAAAVe6eDnY1oLTnxdo6tO0gUst5klAnQfJVWH6eOeAI93Rkj+plhF
 rKSWww7LzjKHpzHM5dyfolevS6Mc1gM=
X-Google-Smtp-Source: APXvYqwvChONErf1MGvp3rwWM4e47/N3o1hXnkEwYm9gxhom71/bEau2KdWY0ksYlxUM0IhOu12U4g==
X-Received: by 2002:a05:6000:1601:: with SMTP id
 u1mr9321793wrb.214.1572594330472; 
 Fri, 01 Nov 2019 00:45:30 -0700 (PDT)
Received: from localhost.localdomain ([2.31.163.64])
 by smtp.gmail.com with ESMTPSA id b1sm576215wrw.77.2019.11.01.00.45.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 00:45:29 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org,
	broonie@kernel.org
Subject: [PATCH v4 08/10] x86: olpc-xo1-sci: Remove invocation of MFD's
 .enable()/.disable() call-backs
Date: Fri,  1 Nov 2019 07:45:16 +0000
Message-Id: <20191101074518.26228-9-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101074518.26228-1-lee.jones@linaro.org>
References: <20191101074518.26228-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_004532_017534_71ABEA3B 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IO regions are now requested and released by this device's parent.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
---
 arch/x86/platform/olpc/olpc-xo1-sci.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/x86/platform/olpc/olpc-xo1-sci.c b/arch/x86/platform/olpc/olpc-xo1-sci.c
index 99a28ce2244c..933dd4fe3a97 100644
--- a/arch/x86/platform/olpc/olpc-xo1-sci.c
+++ b/arch/x86/platform/olpc/olpc-xo1-sci.c
@@ -15,7 +15,6 @@
 #include <linux/platform_device.h>
 #include <linux/pm.h>
 #include <linux/pm_wakeup.h>
-#include <linux/mfd/core.h>
 #include <linux/power_supply.h>
 #include <linux/suspend.h>
 #include <linux/workqueue.h>
@@ -537,10 +536,6 @@ static int xo1_sci_probe(struct platform_device *pdev)
 	if (!machine_is_olpc())
 		return -ENODEV;
 
-	r = mfd_cell_enable(pdev);
-	if (r)
-		return r;
-
 	res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 	if (!res) {
 		dev_err(&pdev->dev, "can't fetch device resource info\n");
@@ -605,7 +600,6 @@ static int xo1_sci_probe(struct platform_device *pdev)
 
 static int xo1_sci_remove(struct platform_device *pdev)
 {
-	mfd_cell_disable(pdev);
 	free_irq(sci_irq, pdev);
 	cancel_work_sync(&sci_work);
 	free_ec_sci();
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
