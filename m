Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 801EA13F40D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NZiGGhNYwS4CwOvKGU9khK9c0cf4gzdmSc34eOPZGLM=; b=dL2WzAHk+vKwaPeM2jYxXUyf0Q
	vAy2feZUWWClfa8UoJn1I69CckDvuIws0i5li/ue4SUbPzOBnlCMnSK/CaMg99O7cn6/MLzogxCsE
	NhGQ/RFmJ7j1dFbDeF0AwALHzAYAU76+i+8zVTedcACcVd48VKJu7QAnofAtr11Da2ZE3UceAYl5x
	xYS8G2lYpV6HaG5eCdhQIUcQgTfjdU90UuhjxZcd3nip/p8WEcIr2jTcEbu5e+FvqH+k8phVY3H9x
	4XIFo6xELyemcMDdHXg+MGSP2PDDyC+QKShwWe/9jyE4vsxHbNf6gcQ5c7nIQnmlmSoKNrfVCIWzM
	dKvFW+2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAAm-0001pz-Rh; Thu, 16 Jan 2020 18:47:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9nz-0000Kx-O9
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:23:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id z3so20193123wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 10:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jVFQAPxxxKh7BrL4PuCJstmTo/0eDvZwSXWF/c8o6TQ=;
 b=kZSr6tlxSDSMnhpEyb/7zL0zkHF/eQHJsSEZIjt4kMNTn7yeMUkfCQpBlCmhqiVs0L
 kaQsclQziov1CuI4PtdACm3Stz1bhl1yRQ9gXYmGBaTuV3kAw3+mqueisvUv5m6jYlRM
 TOznzUPgDAw/04lwlnAJ8Un+fydTco+kDdceRwDBWYW/kfHaJzDRyHAaRE8hPZUg/aWv
 Abj21FQ1ZpKllu317NhyxkQ124z8T0IygtlzAfjl8QEhVndCYngUlMc06TDR38ePDr1y
 rg9o7NOx8WEKf247RbRlmP/oskQ5yjD8QEy82KwbWIDJldVzkKQ1wPXiZL477W9kNEdh
 TLYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jVFQAPxxxKh7BrL4PuCJstmTo/0eDvZwSXWF/c8o6TQ=;
 b=WiI7bE583uYixjFGeNYbJhUKhvfsQIKaVklpjOLBy4X7yOMiTuRTQ1AYBI2rYELUIk
 Ex8z6BhHeMcwdbo/wbrDROxm01QZHOyLisWQrxXEKK1Fl3GO1fWx+ddr9Llt7OHguXXq
 ZpgkJBMzrH0cDn4kD/xnc1WGEJEsAc74YkLjb0OSou0xGbsHx1kdneicYjGOH9pI6zF9
 +zotVLJl0mhbb09zeOjCEbioeGspl8ZFEvetSKKeaWeKlNqtXZHQBGl1Kl9oSfurTfpq
 L3WvsYcLPGXqgJ5DYxh/JIxzD5AKmJ5ZjHt0Q7+r7dNaOjJDiUH/mmOekvB4+Zk34LCn
 i0iA==
X-Gm-Message-State: APjAAAUTv0NLftzdOiKHfmKknV7EWsikuk2rK3DIZasO2hAQEYhM//GE
 5JR8IJxgl35e5uw7DjWYpB4tfg==
X-Google-Smtp-Source: APXvYqxYBVzqX3/EddcHNcmwFI/IL+L51NjyXmq8HQM5xvfKCgh/wFpBEMU1Qnog3sNzqLpphKL6Lw==
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr4719536wro.128.1579199022086; 
 Thu, 16 Jan 2020 10:23:42 -0800 (PST)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:6c63:1b50:1156:7f0f])
 by smtp.gmail.com with ESMTPSA id b137sm1087920wme.26.2020.01.16.10.23.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 10:23:41 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 14/17] clocksource/drivers/exynos_mct: Rename Exynos to
 lowercase
Date: Thu, 16 Jan 2020 19:23:01 +0100
Message-Id: <20200116182304.4926-14-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200116182304.4926-1-daniel.lezcano@linaro.org>
References: <74bf7170-401f-2962-ea5a-1e21431a9349@linaro.org>
 <20200116182304.4926-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_102343_812115_4F3EED2A 
X-CRM114-Status: GOOD (  12.41  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Krzysztof Kozlowski <krzk@kernel.org>

Fix up inconsistent usage of upper and lowercase letters in "Exynos"
name.

"EXYNOS" is not an abbreviation but a regular trademarked name.
Therefore it should be written with lowercase letters starting with
capital letter.

The lowercase "Exynos" name is promoted by its manufacturer Samsung
Electronics Co., Ltd., in advertisement materials and on website.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Link: https://lore.kernel.org/r/20200104152107.11407-12-krzk@kernel.org
---
 drivers/clocksource/exynos_mct.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clocksource/exynos_mct.c b/drivers/clocksource/exynos_mct.c
index 74cb299f5089..a267fe31ef13 100644
--- a/drivers/clocksource/exynos_mct.c
+++ b/drivers/clocksource/exynos_mct.c
@@ -4,7 +4,7 @@
  * Copyright (c) 2011 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
  *
- * EXYNOS4 MCT(Multi-Core Timer) support
+ * Exynos4 MCT(Multi-Core Timer) support
 */
 
 #include <linux/interrupt.h>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
