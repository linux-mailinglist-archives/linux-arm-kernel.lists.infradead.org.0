Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66421128E71
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:12:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Omm/kncpVxLDe69vlbkgwxH8pvCTYrwWGeLyMoDLjwM=; b=fTFoOZFdmTsnC2
	r7p/1GgAM5HqJJwoliR5dEu7aqxbB16Bq3Bm8ckNk7bPQqP9ncd9o2r2QvTKJMdPRtrcyrsahNdS7
	e08Efvw/4xdSWzc/ZfeWbtq4ugcJjrM0vLnCpUAYiIVud5weF5eGE/zsH86Cm60J88srOBhHcy4/a
	iFeuHXWwzDbrArVd7omwXkovopMu4gOfhuWXb7gHi0EmtaRo46UJtDpbsaTbA8zwlRysAlbd/z7Yt
	wB1Ug6Vsnprl+/hSTFX0PyV3gtkNjCcveutSIlQ4uG6SbBe6vcGQCMFIEdRD+FxJfbrD953T++QnK
	ZsXNl8FqM/+jy4j4EAGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1yJ-0002v7-Es; Sun, 22 Dec 2019 14:12:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1wW-0001be-N4
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:10:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id b6so13983717wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4FvfcScGOqGCyba7I+4/EUJ/GDOw2ve0f7wiG+UB+Yk=;
 b=aNPLaEpgXfe75PXfHkh/q2rblg7LM/KyqESWRqdYRdmuOLmibo6GmhKl+N+OoX5chn
 FaN+qnTy/PFcd7Nx8kgqN2T5wCGx7ppknWZiyNaT2uMPNVp+tofRAaERrvOre/lVID3h
 VcDHh1pFqVuy8dVACycHeD9f5j5WFsIE7fqJzuSB+4m18d/2gHuAeCtIHYj+9H8FY8ap
 6ns05TefErVRgvQl/HUuXcg+BHcnPb4kblTVwM2cmbIBtTeGbawO0GXnyKNsnxemNtoi
 cSggQXQHgbV8YsQ8YmrdugrpGbxnOknFh3KMr7B8GwpbvugR+z9g3/B1dc7w3hQTq28O
 LkFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4FvfcScGOqGCyba7I+4/EUJ/GDOw2ve0f7wiG+UB+Yk=;
 b=PB4WF24SeeDeNTyP5WsahPODKzZCZRI/Taz9bpyNyKamrMhMif8ICigarTTY0oZC8a
 Ntumo+Cw+olXh7JJBzUUMXYMhTLQv1S5xYz5SpqTiLFIjyN4BqLyWjNPbLZPjPBcQFQC
 6AntkIhg9JbqW4cbJj0oAPOTMcQZksLdn0yHZR4+JtccMLbbxGuJA3N6vmaZVlA/jEpQ
 ULePZw06/sQBNrAYDvb5aFYSfFu6SOv2r+BQnVCIjMeG8uj+8A98DEctKG8ir9qRct70
 ayG49sREnsu2uF/oqFdRKxmF4THYfMHS2FRr0aqc0PZKx7OjTkyhDUwAT/K+VFm+j1zQ
 HpYQ==
X-Gm-Message-State: APjAAAVjVDnSNmk0ADV536Z5cBD24RzCSPzGGSK/k7CDYtzvzaY8IHwv
 qS6LUQrFBKPIE5hdvFsTTvfhrUSb
X-Google-Smtp-Source: APXvYqwsyfdpXYdEEVQFXEvp0IDzKMoJPOqO6It1AhrUeq0ndIPicJ1AmEY9lzhoj3jt/FLdu3bitg==
X-Received: by 2002:a5d:690e:: with SMTP id t14mr25345611wru.65.1577023847368; 
 Sun, 22 Dec 2019 06:10:47 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id l17sm16860427wro.77.2019.12.22.06.10.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 06:10:46 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 06/13] memory: tegra: Extract memory client SID programming
Date: Sun, 22 Dec 2019 15:10:28 +0100
Message-Id: <20191222141035.1649937-7-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222141035.1649937-1-thierry.reding@gmail.com>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061048_795381_424D71D1 
X-CRM114-Status: GOOD (  12.66  )
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

Move programming of the memory client to SID mapping into a separate
function so that it can be reused from multiple call sites.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/memory/tegra/tegra186.c | 49 ++++++++++++++++++---------------
 1 file changed, 27 insertions(+), 22 deletions(-)

diff --git a/drivers/memory/tegra/tegra186.c b/drivers/memory/tegra/tegra186.c
index ad5c353dba6e..57895116c8e5 100644
--- a/drivers/memory/tegra/tegra186.c
+++ b/drivers/memory/tegra/tegra186.c
@@ -32,6 +32,32 @@ struct tegra186_mc {
 	const struct tegra186_mc_soc *soc;
 };
 
+static void tegra186_mc_program_sid(struct tegra186_mc *mc)
+{
+	unsigned int i;
+
+	for (i = 0; i < mc->soc->num_clients; i++) {
+		const struct tegra186_mc_client *client = &mc->soc->clients[i];
+		u32 override, security;
+
+		override = readl(mc->regs + client->regs.override);
+		security = readl(mc->regs + client->regs.security);
+
+		dev_dbg(mc->dev, "client %s: override: %x security: %x\n",
+			client->name, override, security);
+
+		dev_dbg(mc->dev, "setting SID %u for %s\n", client->sid,
+			client->name);
+		writel(client->sid, mc->regs + client->regs.override);
+
+		override = readl(mc->regs + client->regs.override);
+		security = readl(mc->regs + client->regs.security);
+
+		dev_dbg(mc->dev, "client %s: override: %x security: %x\n",
+			client->name, override, security);
+	}
+}
+
 static const struct tegra186_mc_client tegra186_mc_clients[] = {
 	{
 		.name = "ptcr",
@@ -549,7 +575,6 @@ static int tegra186_mc_probe(struct platform_device *pdev)
 {
 	struct tegra186_mc *mc;
 	struct resource *res;
-	unsigned int i;
 	int err;
 
 	mc = devm_kzalloc(&pdev->dev, sizeof(*mc), GFP_KERNEL);
@@ -565,28 +590,8 @@ static int tegra186_mc_probe(struct platform_device *pdev)
 
 	mc->dev = &pdev->dev;
 
-	for (i = 0; i < mc->soc->num_clients; i++) {
-		const struct tegra186_mc_client *client = &mc->soc->clients[i];
-		u32 override, security;
-
-		override = readl(mc->regs + client->regs.override);
-		security = readl(mc->regs + client->regs.security);
-
-		dev_dbg(&pdev->dev, "client %s: override: %x security: %x\n",
-			client->name, override, security);
-
-		dev_dbg(&pdev->dev, "setting SID %u for %s\n", client->sid,
-			client->name);
-		writel(client->sid, mc->regs + client->regs.override);
-
-		override = readl(mc->regs + client->regs.override);
-		security = readl(mc->regs + client->regs.security);
-
-		dev_dbg(&pdev->dev, "client %s: override: %x security: %x\n",
-			client->name, override, security);
-	}
-
 	platform_set_drvdata(pdev, mc);
+	tegra186_mc_program_sid(mc);
 
 	return err;
 }
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
