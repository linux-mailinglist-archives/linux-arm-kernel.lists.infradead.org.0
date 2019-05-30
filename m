Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 709D530527
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 01:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PJZHsbz68bW1I1lr1i5i48meraLPqGhae5t+JV6205U=; b=O6h6uQ9rrLAxiyYPvFZX51WX0Y
	CTfZcsyzgo7LxSvdQzYgn4/csAnJXfYoauvqWPHh3nhgIGwAXWPgqD1nUj3sSWgP3nj46dxO1/YEQ
	WxEmcvHsGtlO/q8empUS7hbRzLOwX0g0NupjSuCAR5DGpcCkCYAWp4vknPcokVaZoKmRfSN9iK0aX
	tLXkE4ZI1jlCtts41vVs2kEFzFWKQiRhUho4dlrbxxonx6f54uhJHf5AldWix85N/Ah7Bc7YvMnfW
	VfR64t8hgP0m17ObFfPS+iomNUj0oYjA8U+UJNJjgA/d0shXs6cbmpGgQhgqnx85WfjJScETOhOiy
	l6d6cmlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWU7W-0002qe-FM; Thu, 30 May 2019 23:06:02 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWU76-0002TN-Me
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 23:05:39 +0000
Received: by mail-ed1-x543.google.com with SMTP id p26so11535249edr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 16:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bEA2mYeJh1shNIcIboFF9URy4voSeyylYAUKZKzKyCc=;
 b=uIMjGKPWOclW1HWwRpjqFG7vuh+7BmMDAbLxgbO+aASJ1r4MaADqE6zXZaHYJ3IHFh
 E110AA4Ur+2oVLceRmV/Q0VnjTgRZL8qAgk/YluPZvJuvdYvp2dkfWgHST+QhiWb7sBY
 wrzd6HoXDkwu6ZNL8ONrXsVD2OpHUfet42AYkwmIHjyyqd44Mk+abhaOxTgMJozLZCnd
 AqjZKy0YgswlFKsSljYdC2mCiIqZKb5qQK4q5a7b4K3WsCBxexBCG/y5DXVCk+8kbf4Q
 XOz7tLxyyzASqTfyUkejrZogSYKWgwpCtmPjUQzTBqqA3o7GWQSJV8Cbp5aDqTVbDGYg
 WONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bEA2mYeJh1shNIcIboFF9URy4voSeyylYAUKZKzKyCc=;
 b=X7HqeNt2wo/XGOyUNZmgofV3u1dMgY3mfkFWjsJ/qFaB1bCEQP+1rl5ctGWNkqQjtC
 DAFQpLcCoLUlVWpsxvm+Y/k1u9U7GIVYnJZ5VvYGWgAKYduCN8IyK7UOKJhtJhDrlrfW
 6kpLI2QiQdA+Xn4Z2FNI7zZF1CHMpWZR5bjt7QGO7L48ivY3NKghPSaXNN40sp/wLW5Z
 ucobNypZIbS//cgvg7vmZQjGsNJ1XM2f99zS9ocYYSkxDpiUluYN0jT96FUdfjR5if7D
 vReC2j40ZpoeDs/zXjFzonUEGA+hQiqovuVeiMuobQcyvluAGLywsW6mmx2CMMkpbKMs
 pecg==
X-Gm-Message-State: APjAAAV3UjTzcKwi2k11HRuJ6mr5resIT3tltH9Pwu583tlqeBqU19TX
 uZkMDQlxler4u80BYaFwLSm4bnDE
X-Google-Smtp-Source: APXvYqxJGSRpr46y3oRaHd59PLhsy4TMgmhKM69B2vIO1cLZXB1Sqy5XBHTKzSkICe8Hh/CuI9zlEQ==
X-Received: by 2002:a17:906:b743:: with SMTP id
 fx3mr6151335ejb.208.1559257534866; 
 Thu, 30 May 2019 16:05:34 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d22sm640338ejm.83.2019.05.30.16.05.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 16:05:34 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: Enable BCM7038_L1_IRQ for ARCH_BRCMSTB
Date: Thu, 30 May 2019 16:05:18 -0700
Message-Id: <20190530230518.4334-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190530230518.4334-1-f.fainelli@gmail.com>
References: <20190530230518.4334-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_160537_198859_503D8655 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Florian Fainelli <f.fainelli@gmail.com>, marc.zyngier@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARCH_BRCMSTB makes use of the irq-bcm7038-l1.c irqchip driver, enable
it.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index c7ad684926c3..b9128f245d2a 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -66,6 +66,7 @@ config ARCH_BITMAIN
 
 config ARCH_BRCMSTB
 	bool "Broadcom Set-Top-Box SoCs"
+	select BCM7038_L1_IRQ
 	select BRCMSTB_L2_IRQ
 	select GENERIC_IRQ_CHIP
 	help
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
