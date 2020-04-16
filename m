Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0771AD10D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 22:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HVkuxugqLpfj5zI2saPzEjohMZOYj5ywr4QeWIw+YCY=; b=r2SRiF15iR50Fz
	g06NicnnXncXaGLeiXKcwlVZrzt935+/yhNBxK9eG3D8l6wG0dA998Wa8CZJ78UfMbJnQ4BfpKkC6
	+9FMH6MqansSc19XfcB0o6TTabpNxyF1B3RsTvEr5xUr/82Lg9Y66m+mit+7jlRJufX2SZ3A6CIV9
	FHcy0vxqcMYEyJIxrRzo0l4I0Wo3IKXtPItypRTt6hNdU6N8yBBE1+bTwIlbvIWcRsrfH1pEcRpS5
	VkT1NJqpMN2fuy/lngf6nKPrla5+IXMbSxgELJ5aFCcWCU3GUC8PlEJ8tiNETlYU0jX3/SPjgKNPo
	9tOMw5C2SU3L9onn1DSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPB66-0004Wg-RX; Thu, 16 Apr 2020 20:26:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPB5y-0004W6-MB
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 20:26:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id k1so65241wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 13:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b6MMAjZWva3A98ON/Z211sRWwTT87DwPEC7oQ/eZeGw=;
 b=uXOMna5u2maQ7AyWYbgZEnoMNq0uduKydvcWdPeiVeM1EkUraifp/jClyCIUzoVjeD
 kVwmIUNyNnk3pIs2ipivXAlaUJHABUau73Y8ui5MiSmbzcWNGuuBP3AY1fJhZR5UCT8A
 pkiUVZ1w9TeLxVCNBc94c7gur9tPOq+WaytFoFTR+IHe+/kZaGN3I5HEwKfIwQ6jT7qR
 YtU/EA8euvy4nKbXXLklKQRg+H1NDVqRR79W6YTGZGmu3m+6G7Tgutn4gNybYExtVPtc
 TekN8inBNuNxb0eVyx5Ab3MgJINrpc8u5lWoSoqwcby7mSFHa1EuQ9WrIDCghfDmf6kU
 YdEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b6MMAjZWva3A98ON/Z211sRWwTT87DwPEC7oQ/eZeGw=;
 b=Nsa1aXg5+rHyt51TxJrJilizb/+37AvBervO2FgxYkDD8mlWpFl4qtm0v8iPUYEcCr
 hD9zU/48LfTD/Ok3m71Rn4uCxE1nt/75isQv2bl9g7IaB6YGu6Ly5M5sYhZSGb34AfWE
 XkyiLBQnzyqSl6P+IzrhTycSy69DQun7q9SCjaQct2kZg5TZAxsJBbwsFsehtPB2QRgS
 /coCZpKFeYHtmYqkmT8Cgmn2alv9twl0VDDquVVBM8mH7YJO3SomjoGkDW5uIQ8G3bnl
 1eEyMLrA21elXBbdbhlmFrwa+Pre3r2Cyan/Xge//hhuaJPbRp3phpgTJatH0Pf0AFxa
 5d5w==
X-Gm-Message-State: AGi0PuaSvLyejBBjfueuhmiP+WjY8Au1AozNB455k0+doWYr3GSZ7+zZ
 SoFCYGsJiYMbjU5g7LE/lq4=
X-Google-Smtp-Source: APiQypK/2LFytp0OnGCxAaLRmBVd5I/sDQsicP+Zua5zN/xHb5nMKyNut4ztnD/wjg7dAkWJqSULqA==
X-Received: by 2002:a5d:4d8c:: with SMTP id b12mr35907239wru.35.1587068805111; 
 Thu, 16 Apr 2020 13:26:45 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id t8sm28816937wrq.88.2020.04.16.13.26.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 13:26:44 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] firmware: tegra: Make BPMP a regular driver
Date: Thu, 16 Apr 2020 22:26:36 +0200
Message-Id: <20200416202636.1085884-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_132646_726516_22AF0C5E 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The Tegra BPMP driver typically ends up deferring probe because it wants
to attach to the SMMU, so there's little sense in registering it at the
core init-level.

One side-effect of this is that the driver will be probed later even if
it doesn't want to attach to an SMMU, which means that consumers will
end up deferring probe, which in turn takes care of ordering the suspend
and resume queue in the correct way. Currently since suspend/resume
order depends on instantiation order, and because BPMP is listed at the
very end of the device tree (after most of its consumers), the suspend
and resume queue is ordered wrongly, which can cause issues for drivers
(like I2C) which suspend after and resume before BPMP. In the case of
I2C this typically leads to the clock failing to enable.

Besides fixing this suspend/resume ordering issue, this also has the
added benefit of allowing the driver to be built as a loadable module,
which can help decrease the size of multiplatform kernel.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/firmware/tegra/bpmp.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/firmware/tegra/bpmp.c b/drivers/firmware/tegra/bpmp.c
index 6741fcda0c37..30174f35e896 100644
--- a/drivers/firmware/tegra/bpmp.c
+++ b/drivers/firmware/tegra/bpmp.c
@@ -6,6 +6,7 @@
 #include <linux/clk/tegra.h>
 #include <linux/genalloc.h>
 #include <linux/mailbox_client.h>
+#include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
@@ -872,9 +873,4 @@ static struct platform_driver tegra_bpmp_driver = {
 	},
 	.probe = tegra_bpmp_probe,
 };
-
-static int __init tegra_bpmp_init(void)
-{
-	return platform_driver_register(&tegra_bpmp_driver);
-}
-core_initcall(tegra_bpmp_init);
+module_platform_driver(tegra_bpmp_driver);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
