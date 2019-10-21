Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EF1DEA43
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a64uE9tVJYnAPSEx9SMBlUO2g03tlul8UkWqZ7nHnYU=; b=LYJMNBKYSCghKbvPh/t5GAawC0
	5WR29OzfSMFwLhnd9lFw/DRwTR42C+ce+jB+JoxyGsbx68NjXQ+0F8f5/i1evrm8BLSgLm9JtifmP
	7OrXm/NcquZqPoQ0dDBC46feYIpGLAEVHz5hrWopt6+xQF2R25ScXYDBRo1Gik2x0Z8LfBmefBcZ/
	Hq/d6YXTyUe2vcO/WeikVihNSx57lg2JfRVLuJJW+4CNfhEtmhJdZV871+LiBh3MnkexfQXArLlhD
	GFFdv0Bnrv7oTcZYZGQsVLcDstOMBVYSMm0bW9zxV/OKwO5cqtgFZGexrLpEYeBn4oLT51dDq6zh1
	FFMs+ziQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVPb-0001Es-Hf; Mon, 21 Oct 2019 10:59:43 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVOS-0000HI-Rq
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:58:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id l10so12992571wrb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=N1QWSWmQ9Z196IzSFBZAn5l+uyQZbYxA5PcE8j0aOpM=;
 b=iVJ355dx/uAdqxNtz28IemMGbVKdAZvYRt4leY2T4v9S/sVKuTNbBWEXGYb7MZQCCX
 bEMWit0rElAZ3UzowGiYzAR4vfkkAmBx3y8kVbey82j9a06PIQ6GTbSiUzbDTjIsE+Bv
 2ZMWAnxzQUrV7IilCxBkdlNYVRT+P5Ws2aMb8Zu935IT1F4HYuuIDnRI4O7xVZ+L2d57
 ff6UR1t6nLVlBSenVOD5qWq2MDiCJuJvhJEZSVaCHLRxc7WD/mjIKPB2RloQse8mdFef
 WDnRAh1VS5BhGhAG1h3QykJIzwhm38VrNRNRsL76fsaSmdR/HU5o619gIDhf5FzS5WaF
 kkvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=N1QWSWmQ9Z196IzSFBZAn5l+uyQZbYxA5PcE8j0aOpM=;
 b=r1ShhW1Pe8j2gX/qZbONKG6c8HtGhTlbaTmnkY0zB6f9Z9lpGWMinbfHtasGIplXRH
 bBL/GWs6ZVvtRP4e/OuOLEDZBGcG30YDEtW3f6fk6QDAX9oMnNwgdtZZsPzTkQRfEmS7
 vy0wMbhQw4CxtJzhxE/zM4QtsE6TsEZc9JFL0wbdnUiKYm/QLsM7NpfizAetFboWy42U
 Bik5mQ7u1z4Dcw+P/1ipiha4yXup0DXnZx1qEJMADbneNLUisID5hjKDw5UOk6MMyra5
 enC6AthE2Gc3fVDlPUffQTEA+1EATyxgfXlHqbuZwQlYWR0KZGeRk2VYgBBBA2P0fA9G
 GbBA==
X-Gm-Message-State: APjAAAWSiYuZB4qcQeVSGJZDQhbqgSt0aZyiBMScyVFr0ZYe2/a2k59b
 qu4DgwrALv6/KW395zydDN7acQ==
X-Google-Smtp-Source: APXvYqy2hUAWHMhpqsswzADUSS5WFevWYnrpG1oaM5tqejj4eu069CKd6dTBOzUh36UABsHZOBvqWg==
X-Received: by 2002:adf:f343:: with SMTP id e3mr19104359wrp.315.1571655511574; 
 Mon, 21 Oct 2019 03:58:31 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id q22sm12544289wmj.31.2019.10.21.03.58.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:58:31 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v2 6/9] x86: olpc: Remove invocation of MFD's
 .enable()/.disable() call-backs
Date: Mon, 21 Oct 2019 11:58:19 +0100
Message-Id: <20191021105822.20271-7-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021105822.20271-1-lee.jones@linaro.org>
References: <20191021105822.20271-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_035832_948132_C422B51E 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 arch/x86/platform/olpc/olpc-xo1-pm.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/x86/platform/olpc/olpc-xo1-pm.c b/arch/x86/platform/olpc/olpc-xo1-pm.c
index e1a32062a375..0fc57b59743c 100644
--- a/arch/x86/platform/olpc/olpc-xo1-pm.c
+++ b/arch/x86/platform/olpc/olpc-xo1-pm.c
@@ -126,10 +126,6 @@ static int xo1_pm_probe(struct platform_device *pdev)
 	if (!machine_is_olpc())
 		return -ENODEV;
 
-	err = mfd_cell_enable(pdev);
-	if (err)
-		return err;
-
 	res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 	if (!res) {
 		dev_err(&pdev->dev, "can't fetch device resource info\n");
@@ -152,8 +148,6 @@ static int xo1_pm_probe(struct platform_device *pdev)
 
 static int xo1_pm_remove(struct platform_device *pdev)
 {
-	mfd_cell_disable(pdev);
-
 	if (strcmp(pdev->name, "cs5535-pms") == 0)
 		pms_base = 0;
 	else if (strcmp(pdev->name, "olpc-xo1-pm-acpi") == 0)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
