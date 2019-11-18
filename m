Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA15FFE8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 07:34:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFaPZvHxpBP/UNiu6DLfgVGIsB/o5qCvxf0bC8/lZHg=; b=b7NH55qgqXhsk7
	lBKmPaFglEpDT8RxBFh5BQlABqQdO3X5N1WbR429OU4FA99UYm7bM2DtZ+Wu+QZUQgijtCcTcq/pr
	LBvUs6YTx7iWxeb5Hgny++KhCQXYAXQPXIVftaXjvggqnB6pAq9HHmBMD9rmd87U4lHy6PlCbk+zv
	33zedAj3di/mNDCX18+b1LmRNmEHFqz8jNsLdnTXKGJolsunGklP45XsY2vVYNXXiShSypZo6xBfZ
	cPuJNGRr3XZ1le8EZlEqPBYYL8FTBe603HHKnOlsiR7amT0f+6Xq6WfdsSYW7XK+lewW5k6nMB0Rm
	RQse20ZSd++XVQTXVrgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWac9-0005sS-AJ; Mon, 18 Nov 2019 06:34:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWabi-0005hi-PU
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 06:33:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id 8so17407385wmo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 Nov 2019 22:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XNC2rG8gGXEQf4LCM3KTSpNqUdh+je7EpE8ph64yiAs=;
 b=M8Zk4T+WOvGqLEmQ6/7hg18700RiB8I81KMmKpualEHu3kjd+ah3Qr0mYSvqGkoVGK
 wG/kxfQzjLZfcNED0eE89lzRlY1BCSQApYUEGP+mzqmrCBCeqHsrUyao5C1Ek92MFOBf
 dzGYUBu/3KKIng8wz/PjGHq81GqTkKACEYUXZYBqLcHyaR4N0TkiAMJLIOUdulBrweoi
 chqIKqULMipBAoeF5I1WkikYtQSY9vOHycwpXvsnJXBDeD+L0U+Gfaiv1ZidLTjOFGXT
 mhEgcFzP3UAMkVprAZgbIyTKuzK+cQ2VzWc30dD/IEgTcFm7uJkrbw9n4Vyf3f1MXFbM
 Qxbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XNC2rG8gGXEQf4LCM3KTSpNqUdh+je7EpE8ph64yiAs=;
 b=jnHkrGpRS4bvAmtHsIhWga/ZFL8ECeMWXTUeCitTfVBkboCVhumrvV0Xu0YFLiwT6f
 h2KirSr1XNP9TtOivX6N2CxgruVksjtEnutpXH+qEpWqBVwYzgJNxVh7KlNXRFMFphV3
 ZsG3Ypf7qlATm00vtIH530jxIBBLqig76F/bJb7ftYtY/aEnRBxBJVe5tgKoJRou9gby
 0+uFO4mjePEIwSUQbStZwsmGwF4TYuqluJAV6bxD2+PudS2iRaA7WvhFw5zCo2vxvwLX
 CzJNb7iFOBsNIiH/ccAYwQIenFjDY838GCcbggoHme1ied/YzlU+G5P9U6DK7i1L7HRR
 uscA==
X-Gm-Message-State: APjAAAWyckxuvzngGcKssawLI2fe8+Hze3Bcy72F5lADuucfjhpbSynI
 mTFuto+tPt/0m3PYtuQxcLA=
X-Google-Smtp-Source: APXvYqwdGY+HNOq7NFjKGy5aoM5P3FBocaP00aMYBlygoQxnmvWhJNhcpioHF7oyQmiGbnNyXw4KJw==
X-Received: by 2002:a7b:ce86:: with SMTP id q6mr26488418wmj.20.1574058833107; 
 Sun, 17 Nov 2019 22:33:53 -0800 (PST)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id a26sm10976908wmm.14.2019.11.17.22.33.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 22:33:52 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 2/3] soc/tegra: pmc: Add missing IRQ callbacks on Tegra194
Date: Mon, 18 Nov 2019 07:33:47 +0100
Message-Id: <20191118063348.1816857-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118063348.1816857-1-thierry.reding@gmail.com>
References: <20191118063348.1816857-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_223354_823549_2B3D0216 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Vidya Sagar <vidyas@nvidia.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Reuse the IRQ callbacks from Tegra186 on Tegra194. This fixes failures
to request interrupts on Tegra194 due to the missing callbacks.

Cc: Sowjanya Komatineni <skomatineni@nvidia.com>
Fixes: aba19827fced ("soc/tegra: pmc: Support wake events on more Tegra SoCs")
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/pmc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index 927eeecd34e5..32b3e8d9155f 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -2947,6 +2947,8 @@ static const struct tegra_pmc_soc tegra194_pmc_soc = {
 	.regs = &tegra186_pmc_regs,
 	.init = NULL,
 	.setup_irq_polarity = tegra186_pmc_setup_irq_polarity,
+	.irq_set_wake = tegra186_pmc_irq_set_wake,
+	.irq_set_type = tegra186_pmc_irq_set_type,
 	.num_wake_events = ARRAY_SIZE(tegra194_wake_events),
 	.wake_events = tegra194_wake_events,
 };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
