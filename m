Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAB4EC315
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:45:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diBAa16x9XPdDUp0A1KYxeZFBMXsO4TuOMF+ipKjFZw=; b=D/e5kMc/+KALJo
	U3qdPaGgUitbsAO6QxWTSo7WrEWV0CeMhbH5ZvAaZTDcYzraEFgFV7kuDKsoc1PD/d0kvG9XifJCG
	DWYmHmeBur+g1jMbXPRuVHFU4n+zAl3nMq9eohv96jNgTiuqNKnmQbp6fFw5avT3XTEYbTAzT0GiO
	aoAKIKS/JBHjAEtyHqDu1XJozYPpigGiHyJygzb/6VjjMbd4eWlYdETWW73TjymKJxCYa5i1btqBi
	0++Bf2lXW5v7ohkI1/eCc8H1+G47DoFD7kcfOrrQ2tJvN4byHdhMwwhfP3eIr2W2pT6BOyu9/ZLYW
	VwWGN+fUItSe6rLwqSTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWJD-0003Ob-In; Fri, 01 Nov 2019 12:45:43 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWG5-0007wt-6w
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:42:30 +0000
Received: by mail-lj1-x243.google.com with SMTP id g3so4004370ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c6cX64DMSTf/KsycxtOgXNPxmcIGKLx/O+3SoX0LMUM=;
 b=XtQv6hzC1U+vzqZPXhtnK5wDiw0aTGiJYCEnTf65KPvrk4UY5M9sJwCqFKgiobocI/
 hAfxqoOu2Ima3hHsEMZqPsg7LwHpsm2+xBRM3tjXq5e+WJX0j4QjO1jL734LqJEs3nyo
 TixuIj9tTS9U2vmA6C9bXfo9jIjl0g0hcmZD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c6cX64DMSTf/KsycxtOgXNPxmcIGKLx/O+3SoX0LMUM=;
 b=ffOKkI2kRgbGfQXIO/vT/3gBoSOsMnymN+eXVRQcVETHFUsVIfb8iLZyeXv7ziyYL4
 FJuNej/9RY3I9gGlU7bPsajpzCG/dlNZ2QA/Fut8iLgi607EysMh2sfRmakj8rU5crA0
 b+bcVtrtboE3GxB5dOX9VjwQUHk5Dj+JdMEHuVaf1/wO3VLUWmuFmU8UsQAEWCRQkHAd
 z2w2pzceTHORT8DmEKBbTZrRuo6TTZi/l732qrwep3XC0L489619uYgGXiUV6fNTLnpT
 VndSR3H+vDlqjHNtmcw174/1oxwp6FwfrN/jZpJU0jeysXQxr4G1g1WZ26JfnMKKexmw
 XI6w==
X-Gm-Message-State: APjAAAUv4WSFW6mEuDzMWUEIwwsDOzJsBXzguD2WkSzJ4VAVwabQgAjB
 SXIwmvSOagEse7s9KXiPPdyhLQ==
X-Google-Smtp-Source: APXvYqzjbp/ByJUEKerNFbC/nOacfNTYZA/W3sWiOomBHxR5ClzLXNdj5H8XcCg9tYS2+f2kyz5z4g==
X-Received: by 2002:a05:651c:1103:: with SMTP id
 d3mr2524158ljo.159.1572612147787; 
 Fri, 01 Nov 2019 05:42:27 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:27 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 10/36] soc: fsl: qe: remove pointless sysfs registration in
 qe_ic.c
Date: Fri,  1 Nov 2019 13:41:44 +0100
Message-Id: <20191101124210.14510-11-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054229_266385_EDB158AC 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's no point in registering with sysfs when that doesn't actually
allow any interaction with the device or driver (no uevents, no sysfs
files that provide information or allow configuration, no nothing).

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 31 -------------------------------
 1 file changed, 31 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 4b03060d8079..f170926ce4d1 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -474,34 +474,3 @@ int qe_ic_set_high_priority(unsigned int virq, unsigned int priority, int high)
 
 	return 0;
 }
-
-static struct bus_type qe_ic_subsys = {
-	.name = "qe_ic",
-	.dev_name = "qe_ic",
-};
-
-static struct device device_qe_ic = {
-	.id = 0,
-	.bus = &qe_ic_subsys,
-};
-
-static int __init init_qe_ic_sysfs(void)
-{
-	int rc;
-
-	printk(KERN_DEBUG "Registering qe_ic with sysfs...\n");
-
-	rc = subsys_system_register(&qe_ic_subsys, NULL);
-	if (rc) {
-		printk(KERN_ERR "Failed registering qe_ic sys class\n");
-		return -ENODEV;
-	}
-	rc = device_register(&device_qe_ic);
-	if (rc) {
-		printk(KERN_ERR "Failed registering qe_ic sys device\n");
-		return -ENODEV;
-	}
-	return 0;
-}
-
-subsys_initcall(init_qe_ic_sysfs);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
