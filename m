Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 392E915C884
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:41:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2JV9LqxyX60iVhDqm5ma+qpEYAlnpaDNk2GDLlBj3E=; b=Uypd28rcNuS58H
	z/t1tXwo4W4DqACHmW8MD0qQ+atE1XxkD6OWu2S8J1gVKvWEpMP2qs2G2r5Sovle33U8XlQ3NZZWY
	YvxvCqoKNq+lOuekH7IcqobxskdH2KQFMI18taPOaQ0K9Ut4sscVk4ArAE1MkVJihgcszqhr8M9g+
	+AqEt9zD53kBVdPsnomQjMngKDJmbyDGrYN5fvURiEJgotjBapaVoyHE/cduzdRAHVPYa7j1LwyQu
	H0E5ZdSdtdKkQRWbNlUrgdpeOaOqeXK8uKy1XbjoO5xU2SpTe9s0PafB+EtM1QgS4s5f5jMLQgjeS
	/gBlb59IKq6gkL8b4iCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HYP-0001fL-Qr; Thu, 13 Feb 2020 16:41:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2HXE-0000VJ-RX
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:40:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id w12so7516269wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OYWSVDDbY/UxSIzaZwoEm71Xw+c2/ceHjCKgkFAt7oc=;
 b=LOBGN7F6A+j/KSjmlfWKAL6xYBfzNY6jWq/aJt0gIVfRpWfAdpTomvbazv587FWCH4
 b/jLQO2aILx3cSL6MH6XlveVUiXrJp6WYV6aTNox5A5uYyXlqIVkutunXN7PdA6YJPOM
 i+aDHTC0xR7l5mJ/0q0uMx9lDOtuH3TWZHMCaoCbk66JMPp0T5lUh7rYwEluVoxipwhJ
 2pcEfBwmhfTLC0DSn6OjH7g5Bp4TdoXUJEIVC8r3n+XEZin08tulv6BagQSY7vXyS1TU
 JAKfqoLYunkSTGldInLrCBlTL/PXTyG92O15pRv6cFXwf8qlxemwTUTMZSDK0OTHSMuz
 D5EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OYWSVDDbY/UxSIzaZwoEm71Xw+c2/ceHjCKgkFAt7oc=;
 b=ll/RTHXswHfU3jCr7zaLPy8gbBrQULSFc6DLEMnt4wOAi1j0ok5PVM5QNVE1htpw26
 irCRVBtW/n0/sXrsT/PEIY/I234wn5oj60Ky2/G6e5B9W5RtTJJSARLYIVAw3GBkeX9m
 7vEGx4rDFmD2VIlzlz2KYgiBwh7PjmOUEm9vVUMWDf4ci8jQUzc/qY+JtOkt4K4JgzDS
 nA8RZ7aPhcCTwFkzlsZaawDxodD6CBs4PcTq2SCMadY/rncuYZJ5T5i+rldNAeOxN1SM
 JxC09SRnnwZP0SMMVFkFvyw9LCvpzBrkLVagfNUW5t4W8YwJge23BpHF3U+5sWfjqTLk
 uACA==
X-Gm-Message-State: APjAAAVMJ8zGTBX2zFzBXvsj35XDKLjeZRWArf92g22eiTrmaUqpe6ui
 0lKJZvBG8YGSb9ccSVMPSLY=
X-Google-Smtp-Source: APXvYqwcKc8OQOLbjhzBWeyXihMSClM0SSK/ywAQmwsvkxrLdQEL2WkFxm0wyd0LYcMkdI11IjjTZg==
X-Received: by 2002:a5d:6151:: with SMTP id y17mr22130398wrt.110.1581612015663; 
 Thu, 13 Feb 2020 08:40:15 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id o9sm592460wrw.20.2020.02.13.08.40.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:40:14 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 4/5] memory: tegra186: Register as memory controller
Date: Thu, 13 Feb 2020 17:39:58 +0100
Message-Id: <20200213163959.819733-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213163959.819733-1-thierry.reding@gmail.com>
References: <20200213163959.819733-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_084016_903543_7D642058 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org, iommu@lists.linux-foundation.org,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Registering as memory controller allows other drivers to obtain a
reference to it. This is mostly useful as a way of ordering probe
between devices depending on one another.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/memory/tegra/tegra186.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/memory/tegra/tegra186.c b/drivers/memory/tegra/tegra186.c
index 5d53f11ca7b6..8c43702340e8 100644
--- a/drivers/memory/tegra/tegra186.c
+++ b/drivers/memory/tegra/tegra186.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/io.h>
+#include <linux/memory-controller.h>
 #include <linux/module.h>
 #include <linux/mod_devicetable.h>
 #include <linux/of_device.h>
@@ -32,6 +33,7 @@ struct tegra186_mc_soc {
 };
 
 struct tegra186_mc {
+	struct memory_controller base;
 	struct device *dev;
 	void __iomem *regs;
 
@@ -1532,13 +1534,18 @@ static int tegra186_mc_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	mc->soc = of_device_get_match_data(&pdev->dev);
+	mc->dev = &pdev->dev;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	mc->regs = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(mc->regs))
 		return PTR_ERR(mc->regs);
 
-	mc->dev = &pdev->dev;
+	mc->base.dev = &pdev->dev;
+
+	err = memory_controller_register(&mc->base);
+	if (err < 0)
+		return err;
 
 	err = of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
 	if (err < 0)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
