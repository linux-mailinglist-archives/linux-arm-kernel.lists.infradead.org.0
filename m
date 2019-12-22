Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E88128E76
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:13:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WUh7CN1ltYuV4kFTb8QIlOVcwZ33cZZAj2MXsSHwcOo=; b=f1PTLX9JdOBFD9
	KchHiRofDU44xw8Pkk60ExzT9Z49dXzjgIDNT+TjTV1J0tAuhPuE/hkaZO2ZWNzpUbZUw6BHcU7fD
	l0OG7LrmLtg2T7vA93Y/9NEeTfXfSIohGVEl0hfo4l6zPy6hiGtLMrXUh2FaDvTlj+8hTmepfY67u
	Rn4ngIokUSGGzOvnPcckBat0//CJ2V99uAgI/NpNCrlET3oNREKTXBPdjeWtUQD6VkYypWFvrB6pl
	aAPDsnVGs4LLlvNmyF1tL31ADCLigiUq/fBcZJW4CaskBUtEXW2YAvlWgNAaMJvzRmZabjFM43LWK
	WvhGHt73YVMvmN/wD8ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1z9-0003gR-5m; Sun, 22 Dec 2019 14:13:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1wc-0001fy-0X
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:10:56 +0000
Received: by mail-wr1-x443.google.com with SMTP id y11so13939630wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aNNkzdmoZGfEvwyeSAAoGpupKiOvMsZG3DgnjeluIjA=;
 b=pqkswmr4T9zR4ih6X3amPK5UcPQzY1rWkOC5jnAbU9sVpVWynAHpbQ1ewIfagmeqtW
 Rkvth87jP3v48uXh0B1Upbytpykih/0pw4aRSF9LMET8zIc0sLSQ6BLdMOejF4qHPQoE
 2n6a+LDLDEEkxCNv93qlxuv+kvn70e9RkMaRQlQCZmzjrzZslKCIazIustcGAaxxaBJE
 fliRE9Y2cN3e9AAFyZq8EcrHbY9X8so4gCRS21okAC8PCg6dmifWg15nHHrRAfvsilGN
 gH8ER+JB522Mp2nHOeZQPMYdFG/7YdzsWoroCAtAkkAnka7BnAntOwX0JxgcUHaDfG8m
 tkmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aNNkzdmoZGfEvwyeSAAoGpupKiOvMsZG3DgnjeluIjA=;
 b=O/sX/1YbGMNohFFCk5Nn2d0nQ61jkGXchQU1r+MFGGQcoCfnqNutbVAjXtSzxHMebQ
 zAIybZkWzy+RRAlL0pZTsw6MYcfKmQgDTxQ35j6pPJ61MopUtcQpXpOyeBR4QkRNYJOn
 V5igkfz5ADiyVRKxysC5F2Ag9EDJXfJjnrOA5uwa6ei+T8/zA0lphENp5Vu9oDlUVxQf
 WJCGwTnO2mGTU4LK802gXwyiT2JGejYf0hvabOmOOXxEvMRG2o+bngZODgUZFaboMOGK
 wjBxco+oXbv8j5nIhjU6wAsRKEY6cYRGDvKGOMJia+jB72+/MrQuYq8mOUIA9PAXZhw+
 rTlA==
X-Gm-Message-State: APjAAAWyXKW7eg7mk0xlLbkB6P0JiTzvO4VwT+b8ZCcoQjh/LJEZN9ZU
 4hLR1F5fYqY/yQEVqzCv8SXQhxkR
X-Google-Smtp-Source: APXvYqxEiakSXD9oiQQ5Wrwmum38SiaGapo+YQu1G840m6nf9h0khaL2V8wnzpS5mqPdFDdSmemqTw==
X-Received: by 2002:a5d:5403:: with SMTP id g3mr25727058wrv.302.1577023852472; 
 Sun, 22 Dec 2019 06:10:52 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id q11sm17308214wrp.24.2019.12.22.06.10.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 06:10:51 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 09/13] memory: tegra: Only include support for enabled SoCs
Date: Sun, 22 Dec 2019 15:10:31 +0100
Message-Id: <20191222141035.1649937-10-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222141035.1649937-1-thierry.reding@gmail.com>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061054_106781_5AA342E7 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The memory client tables can be fairly large and they can easily be
omitted if support for the corresponding SoC is not enabled.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/memory/tegra/tegra186-emc.c | 2 ++
 drivers/memory/tegra/tegra186.c     | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/memory/tegra/tegra186-emc.c b/drivers/memory/tegra/tegra186-emc.c
index a3f275a7b4d6..812a4e152dcb 100644
--- a/drivers/memory/tegra/tegra186-emc.c
+++ b/drivers/memory/tegra/tegra186-emc.c
@@ -267,7 +267,9 @@ static int tegra186_emc_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id tegra186_emc_of_match[] = {
+#if defined(CONFIG_ARCH_TEGRA186_SOC)
 	{ .compatible = "nvidia,tegra186-emc" },
+#endif
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, tegra186_emc_of_match);
diff --git a/drivers/memory/tegra/tegra186.c b/drivers/memory/tegra/tegra186.c
index a727f0925276..9c9a2f54b6fc 100644
--- a/drivers/memory/tegra/tegra186.c
+++ b/drivers/memory/tegra/tegra186.c
@@ -9,7 +9,9 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 
+#if defined(CONFIG_ARCH_TEGRA_186_SOC)
 #include <dt-bindings/memory/tegra186-mc.h>
+#endif
 
 struct tegra186_mc_client {
 	const char *name;
@@ -58,6 +60,7 @@ static void tegra186_mc_program_sid(struct tegra186_mc *mc)
 	}
 }
 
+#if defined(CONFIG_ARCH_TEGRA_186_SOC)
 static const struct tegra186_mc_client tegra186_mc_clients[] = {
 	{
 		.name = "ptcr",
@@ -570,6 +573,7 @@ static const struct tegra186_mc_soc tegra186_mc_soc = {
 	.num_clients = ARRAY_SIZE(tegra186_mc_clients),
 	.clients = tegra186_mc_clients,
 };
+#endif
 
 static int tegra186_mc_probe(struct platform_device *pdev)
 {
@@ -615,7 +619,9 @@ static int tegra186_mc_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id tegra186_mc_of_match[] = {
+#if defined(CONFIG_ARCH_TEGRA_186_SOC)
 	{ .compatible = "nvidia,tegra186-mc", .data = &tegra186_mc_soc },
+#endif
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, tegra186_mc_of_match);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
