Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C626CE3857
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C0aL/KvX5Ky1EzNGpnv57aoWUbg+wt5znFFCGBg0MK8=; b=IgpLSM6q8A+HqL1yMoSiIhIFZo
	BuWh5wcVzo8BTk/hYw0qZQg8jKa6UkRLwXz40cLBc8R7hDCyLFM1qpnxwFU2spuswFl65IZ7kh92P
	xK1wmSmqhMpHXZuH3YxXRD7nJMdh4iFD1AwZU0QZECLLp6o0sF1bWUW8s07HigX9u2y/jbrUFvjWD
	SvdHPYvchchg23QYeVZqmu4gDIgnqyh32BB6eJ3NsK4qBRsYpFmZCEbNMOY/OhVvcxIu0qoEEhCQR
	iyhUX57/dCOX2eqAv55L12wj7A+URnkZOrKKeMzqcBQPb2aB6Ckh+Jilspksqxoz1TySRZ4I6Ti2q
	C9irlgSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgAn-0000CT-0a; Thu, 24 Oct 2019 16:41:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg8L-0005ON-02
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:38:46 +0000
Received: by mail-wm1-x344.google.com with SMTP id p21so2134377wmg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y4M/TuR9ElWDWsgab2CwXLXvo0XVpR3zUX6nx046dNY=;
 b=iFgTncfo27OyY3xOrjVf8k+LrQj/b3xCRYWuPYLMMo5ZBf6rQyO+w4OQN+tMw+qOb8
 PU/JI8owfgoVR8WZdCHfhQykvjBV7dSBMopw/8M8qWvolQzu0JP/iCuPwpVmK4ZXMMNx
 6rpHxMtmQGBEKg6By4WPJsLUgEwX95klixjUL2NWyK3JS17vlPYsCntul6yu4PvaKzVK
 1Ea79lATIqchM99hH4HVvRPqSwRUVxm9CkiO+n2uYIGICjFuOxhL1T0nQ5WKqpgSlSDN
 2i830iOga6S8ecjkM/isy9KN4zRSak1bEDGy/KVXxdytiyMJxx4SCpfrQyeXNDBDXg4j
 5I8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y4M/TuR9ElWDWsgab2CwXLXvo0XVpR3zUX6nx046dNY=;
 b=lD7/sCem0I6YL9oBovdy5ZJ4G5NsjplMyrhMphkzQ9KNcNX9eH1d1gi1bC3tYjHzPq
 GCtBa0Xr/m3fScyACwfLO2OyhfhLw82N6xbthS/slCsGdv38tMMA3X1rU5GJM/J4Qvwt
 ewoUYihNdk6kPo03XjuBYXB9qLIVg7UeuHk1C2af35EEH4aETCNpt0XwdFZHjCzWdLeE
 I+ZZjwVX+OCaG+Z0kt8i4Jb0HSB8lw0D+EyjPFTMc4Nh2dwAD27McmF5TOG5MmynaXwz
 meUXNa1GtHI8hCexk1YXmf9PoyYgz8UtlgGlTO+nWgrjVKHlnr/TzraZJSVXVqQ6nzaK
 JmfA==
X-Gm-Message-State: APjAAAVAHwoVmf3PYv5uaCqB1Ff+r/mB1w+QoJf/jStp71uU1sGlIXXn
 E8cb+uyxRCvkdOsuq1KlRCvxdw==
X-Google-Smtp-Source: APXvYqwyF86LO61G6Q/GTjGzQT35oPobFvCsp4KPMM+/nA54QMVhrVGQaJNdT23BlB1qxuMfJ7LVCQ==
X-Received: by 2002:a7b:cc6a:: with SMTP id n10mr5998222wmj.94.1571935123733; 
 Thu, 24 Oct 2019 09:38:43 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id 6sm3446175wmd.36.2019.10.24.09.38.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:38:43 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v3 07/10] x86: olpc-xo1-sci: Remove invocation of MFD's
 .enable()/.disable() call-backs
Date: Thu, 24 Oct 2019 17:38:29 +0100
Message-Id: <20191024163832.31326-8-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024163832.31326-1-lee.jones@linaro.org>
References: <20191024163832.31326-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093845_071076_5A2A0C85 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lee Jones <lee.jones@linaro.org>, baohua@kernel.org, stephan@gerhold.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IO regions are now requested and released by this device's parent.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
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
