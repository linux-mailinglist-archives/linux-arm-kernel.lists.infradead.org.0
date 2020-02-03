Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F88815086A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 15:31:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eIz5JCzZmrD2nbyr5WJXD18FWY2pdLT/iPbv94Uvgec=; b=Qrv1jNBPOFLcSi
	3C/jqJk7t6C1vBkmfemODZUNIm4z2jhyjlZ7Vyc+FZ59yT0A0vPqrBkSMIlqDMvz4wteaKw7BdLgv
	er7u0LNoSHvHRrnUHHb5IySzek+KNWC06C321k7w2dVBTFDgxhaZbSaYi1riGEmr7TrQiypIOMCM9
	gNpEzR/LmJPjWswdJY/xM2EdNNmYhZQwbeADznwV+XI3P4XqnNfNSDzYYINpaI4eeY0zQks0qEnWl
	ukaEJyyUfjJSa/L5spBq5zd+PSOhIbvsYXhv+iM4Ux0n4LiuTlzJ3S0+SBzcRnmTEq5T7DQl38rwf
	ES2FNqR7bVmFW9A6rChg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iycl7-0003hY-Lb; Mon, 03 Feb 2020 14:31:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iycl0-0003hF-4w
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 14:31:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id k11so18417095wrd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 06:31:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nNoMOwJeW8EgketgclxMAlr5i9qU0i3JZKIs7PFn1Vg=;
 b=EtSDrviMMBX4kOtDykNCJ03p8JV1PS7RyBaz9tvnNPoHM4IbRcZhBtzcuYPpVwB0rY
 aj2SjTWyf3pKQ7KeX87hGLmuV6UZl9SFp8/BTqqQLkmPn31mj3ZYlAV9rl43fGlcIFT9
 UcNLBLF150Z559N5By6kgLzLUwPaZjs3aNH+VwRntQKSaswBlrGHpXMjVzBdw/fCK7Sm
 BR3z3y9l8AmKrY6rdgrfR1DWU7t7lBOYjZYE7PwWsvMkV236FMtapVFKwGfFAcG+Rd+t
 LTV7R65HwngGvuqo+4HUH1AHh3UK7U620h+VHzaHie0avbUfbglWOv7I+A85bP9gdxE7
 UnSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nNoMOwJeW8EgketgclxMAlr5i9qU0i3JZKIs7PFn1Vg=;
 b=MxuGS71xtCoLixtGhz09RS/1HHMW41QlgJ+BdaTKGiiXhRrtKe0dcDBakZJ8sZBrfh
 T0u0xFhT06y0vLkdxXEI6KmL+YSxqMIXe+x3UxqWTclHUiOfwxlqvyKzgfTX/gff9b9b
 og6aJAjeLqCG08AFIxDHy2yeZnAcyi2Sio3T1L3ScfoLyfi+j9W4aANUgwihvW0NNEyD
 qYbWYvijZONVQwJaafuCyBKkPd8FbvWlV1vC9f2ScDv4noHviyfktdMZdfEkwfQjFHqf
 UN1uxZELwHwnlHkw1yeMWEjVzb9zEWOjXmMofVX/jpNkMGfkD4bovE8GS9Ham4RkHV5P
 w0Fg==
X-Gm-Message-State: APjAAAUmrzu7PeTxcnr++jcljUcV04VGb62v6YkWqi2A67sYzoKSP7tw
 Fu6EFZ8vyqi0APmCzkR/lO6o6Xcp
X-Google-Smtp-Source: APXvYqxlS8OBilqfV+m5qHqprzhR41Tb/xT/mrBGW7vYc5+COIwBydhOl3a+0mEeu4J7356ynIiytQ==
X-Received: by 2002:a5d:56ca:: with SMTP id m10mr16714227wrw.313.1580740279846; 
 Mon, 03 Feb 2020 06:31:19 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id r6sm26388213wrq.92.2020.02.03.06.31.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 06:31:18 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] soc/tegra: fuse: Fix build with Tegra194 configuration
Date: Mon,  3 Feb 2020 15:31:14 +0100
Message-Id: <20200203143114.3967295-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_063122_460873_375397BF 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-tegra@vger.kernel.org, kbuild test robot <lkp@intel.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

If only Tegra194 support is enabled, the tegra30_fuse_read() and
tegra30_fuse_init() function are not declared and cause a build failure.
Add Tegra194 to the preprocessor guard to make sure these functions are
available for Tegra194-only builds as well.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/fuse/fuse-tegra30.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/tegra/fuse/fuse-tegra30.c b/drivers/soc/tegra/fuse/fuse-tegra30.c
index f68f4e1c215d..e6037f900fb7 100644
--- a/drivers/soc/tegra/fuse/fuse-tegra30.c
+++ b/drivers/soc/tegra/fuse/fuse-tegra30.c
@@ -36,7 +36,8 @@
     defined(CONFIG_ARCH_TEGRA_124_SOC) || \
     defined(CONFIG_ARCH_TEGRA_132_SOC) || \
     defined(CONFIG_ARCH_TEGRA_210_SOC) || \
-    defined(CONFIG_ARCH_TEGRA_186_SOC)
+    defined(CONFIG_ARCH_TEGRA_186_SOC) || \
+    defined(CONFIG_ARCH_TEGRA_194_SOC)
 static u32 tegra30_fuse_read_early(struct tegra_fuse *fuse, unsigned int offset)
 {
 	if (WARN_ON(!fuse->base))
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
