Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DC7D7B91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 18:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kmRk/GOm6tiE5PV8PJFgTayDjs1u/QG7LnCFYZPKEAA=; b=rwfLqFthMjmCSX
	mCrfohkwTSuE5DMAMGvoAQMY5wSDj4iBwg20jo0ysSpMoT7s1I7+ao5tU23ZQvYiT+n9lZRePP23P
	9A1Gj+XcMTYTdl0/kh/hDetgB9LzFo8zZBsP+zDFD2JcyxsqFcAsOAtfLl0Pv0HTpwEt0IPK2vwdK
	IpguAujpDm6SeFLy9qk+6QQXtaJKC/6adCCH05OtObe0aO3bhlehDz0j761pq/8vF6mMn0DCvIC0o
	/OAmLUxvv5OXkyTHF8V70uDABVdOdW6Nzw04q6FClpQqsfynYrLyKeqOTYCWkJ/4/vxXKnRvRd8Zd
	DRbQ+3ImTjDyqcX9fA4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKPiW-00088X-IP; Tue, 15 Oct 2019 16:30:36 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPhs-0006YT-6B
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 16:29:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id a6so21552538wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 09:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8EjDBNijVRoZjfqMLlXDaOnDwnymZTKSpRUqb0jAneU=;
 b=e4QJXQ4+hWtGPr3XXRL/OH8/hcXhMLaLfbqe37lsaMUbNRHvJMGGZp4XqiMur9ZIIc
 JuCMN1+nF/9t76VBmQ+bJFDSWppF2nOw7LSqfJHA9DEsVgtNBbmcgJpX21co1+0bzS7U
 ZDTmR1lzUv9uuaFF4QThMXFdM66UiBcnmiF11V9n7305SH7gf0aI5yrqgt3T8h/6Hs5m
 rb6AzpQ9daKybqWNfHD7m65mrL/RLjzbaZRoKmHGvth2WUrVbieH1uBum2ttR+uAANMh
 /M1hRnoNbhQiSVPrP+GTWO/Cl9Pg6LvKp9UDmIYDWpuJbB9qQf84cAByW1s9aYp4JZQm
 zfSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8EjDBNijVRoZjfqMLlXDaOnDwnymZTKSpRUqb0jAneU=;
 b=ruDZd12TtJmrzyciDKlcGGkc6gfLFxCoE0liTQaB7Kypgk3J9dZ0N6flQUz5DGc+xR
 bwgOU5nvnhVjj4IrG9spiCRf/zPOt9ryIXbaXrvFjj4HY+Im74gSo8+fK81XwuwfsZ8i
 /TJOnZMC2n4e7IkxXT/nsGpx76jUTiGYZZtUAC/IqBCDSEb6eKCk8YR4p4JGpv3KKsKu
 hptI9SNmPGRHwcD5VzcB73P1rGBNFiX8pZxqhmJmm37UN+zVAuiFQ74seSgm7LaPHwTM
 RQHyc91xifVCDDuMFYDovNJKQUPKFu7FP++rcMgVAp1ZGGHiypVoQyey9BlVsJ7Vx8GK
 Bvaw==
X-Gm-Message-State: APjAAAXBwCE5uwZQPpxAjUvHoSTHZoaiRu/Trt9HS2D4/WyvyufyPL8B
 8BD6PxYRxr5VSn4kYaL1Xd0=
X-Google-Smtp-Source: APXvYqziuZ6APvE5dI6UfqFlO5qrIoevHEqZUCi0rk13IQn0bCyF6RN2yeZd4Q+L34CkWrYJ3uVxGQ==
X-Received: by 2002:a7b:cd83:: with SMTP id y3mr21928223wmj.150.1571156992846; 
 Tue, 15 Oct 2019 09:29:52 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id t123sm37314754wma.40.2019.10.15.09.29.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 09:29:51 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: [RFC 2/3] memory: tegra186: Register as memory controller
Date: Tue, 15 Oct 2019 18:29:44 +0200
Message-Id: <20191015162945.1203736-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015162945.1203736-1-thierry.reding@gmail.com>
References: <20191015162945.1203736-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_092956_254947_868D0A4E 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Will Deacon <will@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 iommu@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
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
 drivers/memory/tegra/tegra186.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/memory/tegra/tegra186.c b/drivers/memory/tegra/tegra186.c
index 441213a35930..e94e960a79f4 100644
--- a/drivers/memory/tegra/tegra186.c
+++ b/drivers/memory/tegra/tegra186.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/io.h>
+#include <linux/memory-controller.h>
 #include <linux/module.h>
 #include <linux/mod_devicetable.h>
 #include <linux/platform_device.h>
@@ -11,6 +12,7 @@
 #include <dt-bindings/memory/tegra186-mc.h>
 
 struct tegra_mc {
+	struct memory_controller base;
 	struct device *dev;
 	void __iomem *regs;
 };
@@ -548,7 +550,7 @@ static int tegra186_mc_probe(struct platform_device *pdev)
 	if (IS_ERR(mc->regs))
 		return PTR_ERR(mc->regs);
 
-	mc->dev = &pdev->dev;
+	mc->base.dev = &pdev->dev;
 
 	for (i = 0; i < ARRAY_SIZE(tegra186_mc_clients); i++) {
 		const struct tegra_mc_client *client = &tegra186_mc_clients[i];
@@ -571,6 +573,10 @@ static int tegra186_mc_probe(struct platform_device *pdev)
 			client->name, override, security);
 	}
 
+	err = memory_controller_register(&mc->base);
+	if (err < 0)
+		return err;
+
 	platform_set_drvdata(pdev, mc);
 
 	return err;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
