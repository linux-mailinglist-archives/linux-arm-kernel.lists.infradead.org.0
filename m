Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF987149AFA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 15:10:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okcVTBcPMe82BSh32Fk5ANl94SAB+iPp1mlBDXYmgDg=; b=PZD9M6pNfG8k1i
	ABAt/Cx9cg5yaxLRAjUUw5Vexb4AOAAysjzyCYWDB+dDMdMdDtDNnKJJesFTfdg6aDaECSDEhcUlt
	D0AJccH3ZFXG9/EDWDQVEvNPQw69Y+FsY2qTkY4FPrCsuQFYlM88qGFeO/zlCyp6iOZ1gYhYV9GE6
	I8FLNJfrQs5mEebwddPeO6qEJLb7duMYqHhCPeXrS8BM2yrnqGL3LDVnjdOvfxoO0cYg1P+LSmO48
	wfKjepOfaFmzUPM8tvvnji1jZaBBaUVdCF1E6muC3+gz0Jc3z8bp72/scBi9Bq/200sFzONJNMBhG
	oR9aLGkTJJgt02nkb26A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivicZ-000378-4g; Sun, 26 Jan 2020 14:10:39 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iviba-000164-9m
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 14:09:39 +0000
Received: by mail-yb1-xb44.google.com with SMTP id l197so3627330ybf.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Jan 2020 06:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=daWWos5KtEMJA9FX6DD1ge3+gsTuCafldU15qCzNObg=;
 b=JBg6jHKqCfQ/EPovFt5dmZcVRxMFRPh8xCo34IYw8p/FF56RVql3n/M0SsO4INFDCR
 te2K8GaEWuhx+Ancr5eGaWriyJ72lmhYBW5sAi9WbkZn5KEOw+UgzL/A7MoC+DvaNijP
 izDIGH2klMvbB+ZbGcr+KZydyTsmDuK5VboPPHhXV0nAD6fO57Q+keFVe9yZMYHHpa1b
 EyAPIfHZdRSIfX37fE6fezEJ7jYQeE11WqBzts6+KUapnfFV1EWWMtwBCAaitVCfov5M
 82DrpIgm44Ov44l+bRUeSRJAiJ+/0sOc4DfSU89F+IDqcdOwV/IYx6/Ptq6pnJE0slYF
 qsoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=daWWos5KtEMJA9FX6DD1ge3+gsTuCafldU15qCzNObg=;
 b=TJqJ5sODjiC/kfo6z5y+pumvS1lyccVm8/wpgRoWO09xMjIzIZ5F0urQu6TYewCNMC
 kHjay+NlU4VTwaZnk11dluQHwGGhln/+8o+jP049wcARToUE4zxqy+nJyrCJA3fqjLeq
 UvcJ7S6sehkqVmKXnbXXz+Px2c8aPiDsVUGmQQAUNPQb8agT6rcZ9Lteh7FeW7K+xVrI
 ke5S4M3faQLQNQgdatsd1vBqryp7fnGSLce2f8QPGit+JVbR8SFSNjol8XFhyQgD+p4e
 m0zZ4U9G4Q9dExNnmCYBdIUcS77jZu47hkgbjulnbvncFKWk5WZ6CSYKYQRBH6oZqNpL
 h0yw==
X-Gm-Message-State: APjAAAUjOGlU2rBNXikXgBY64QYOq5Xt+AhQ+roeQDB5dadn/hkdBz9Q
 GWpqeS4qXFY6Rps12b2XTlA=
X-Google-Smtp-Source: APXvYqxbwclW7C7Ka+4RV7Kdv3OLTse91pIEErfd8duwb0LYIXWxyxCJjLGPfw2Do4AwA4IIR6O3pw==
X-Received: by 2002:a25:d4c4:: with SMTP id
 m187mr10061540ybf.109.1580047774540; 
 Sun, 26 Jan 2020 06:09:34 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id a12sm5237214ywa.95.2020.01.26.06.09.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jan 2020 06:09:34 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-spi@vger.kernel.org
Subject: [PATCH 3/5] spi: spi-nxp-fspi: Enable the Octal Mode in MCR0
Date: Sun, 26 Jan 2020 08:09:10 -0600
Message-Id: <20200126140913.2139260-3-aford173@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200126140913.2139260-1-aford173@gmail.com>
References: <20200126140913.2139260-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_060938_380235_C2B91B5E 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, han.xu@nxp.com,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Han Xu <han.xu@nxp.com>

Apply patch from NXP upstream repo to
Enable the octal combination mode in MCR0

Signed-off-by: Adam Ford <aford173@gmail.com>
Signed-off-by: Han Xu <han.xu@nxp.com>

diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
index 23abf5ae318e..019f40e2917c 100644
--- a/drivers/spi/spi-nxp-fspi.c
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -913,8 +913,9 @@ static int nxp_fspi_default_setup(struct nxp_fspi *f)
 	fspi_writel(f, FSPI_DLLBCR_OVRDEN, base + FSPI_DLLBCR);
 
 	/* enable module */
-	fspi_writel(f, FSPI_MCR0_AHB_TIMEOUT(0xFF) | FSPI_MCR0_IP_TIMEOUT(0xFF),
-		 base + FSPI_MCR0);
+	fspi_writel(f, FSPI_MCR0_AHB_TIMEOUT(0xFF) |
+		    FSPI_MCR0_IP_TIMEOUT(0xFF) | (u32) FSPI_MCR0_OCTCOMB_EN,
+		    base + FSPI_MCR0);
 
 	/*
 	 * Disable same device enable bit and configure all slave devices
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
