Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDDF11F31C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 18:55:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LlTkZRE+4HYeT7kuM996Dx2k+sbI/YB8hopbEy8E64s=; b=VV0W7GrrzUC1ykPrcaVnclAlRw
	8qRiAYGj5RC2KDOAnkDa2kiFEwXY13/UDN69E6/yHPSobNkqZLSZ8VcKUr7/In+sMzQlTaF1X7ruo
	bPkEn4z9YujTKeJf55ImG7auRZLotXGNmcusDimmV1oV8k9fkT/fa5Yk+gXntPZ0Jes2nElG7J8vt
	b3RwuIrODWFSPeCrks+JacGd6QmA6Iexqzgm+FNqBLjK8mIOro3OWw8c6P5UDpt7gr30vIDZChQXo
	wM9c54xUiSaMkHviRO++445n2GdAG9EWOllPGpyHUgWzq61Hv5aUaCcqDd7mIRjFJHHSl1J3o3p2B
	Lg49TYow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igBdg-00051j-Kb; Sat, 14 Dec 2019 17:55:36 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igBd2-0003Ok-SP; Sat, 14 Dec 2019 17:54:58 +0000
Received: by mail-pf1-x444.google.com with SMTP id b19so3258372pfo.2;
 Sat, 14 Dec 2019 09:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ndfZOSOPMFzdlsJ4y++gytIs8MeUXglHTS0DvEbmTno=;
 b=IdnEahgWAR9M4ay1p7g7jXGNeleJSN/P4VE30OGOw9nwFkNumcqzoq8i3h9o4rIrUu
 Nurp0p2IiltqBDNFiqIVSHRXRwmvF75PwfIGvhnVdzMvWhV6G8AINxl2D9oEa1D6/pQe
 ytdcI6Wex7iWcRLeDfkXp+Vciij7n77J4rN6sIy1fw+8gTuR7m894EJ5/IyqVEaLOEJ9
 xtPABBFefL/DQZ3qA5wCEinKv2ZWtgxyx4/lRYaZDd5wYVFpm4aDjFQ0AHugNROjJzvb
 WPdwxO4zXX8wVPTvkieEKPZzux9cfO7YuHwXLHEni208k1iAUI8slHYwMcnswHyhf4nG
 ws3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ndfZOSOPMFzdlsJ4y++gytIs8MeUXglHTS0DvEbmTno=;
 b=YljhQaL0LoMaRImO7GBV8k5RcaXwm1khHi025FiJqL2thH/aWh/UEEVRL40l+Kz5KA
 3DnSIwFtykn2igGX4H6MqgqlXUwfrKoauCMH1rePydys6MnA4Q8ClbG5J6mxrblUKn2Q
 oRkUFXweEysPFLI/sEm92giaHe5gJDrk97ppOsZElCkKBL1pFghCNv55uvDLvvaoOo4D
 /lti6hMDVeYEIwaawm40ZrcZsZYyl5JVbEa+fAIqCAnDWyy3GklwaX8nEarBxzjbYiqM
 tzVQkLWb3cZ88nmLeC8oeo2wjCuvflofdhNsmRA4GzGfurI3CqmvfXAcR/kSwAWW5ipa
 8QNw==
X-Gm-Message-State: APjAAAUvMIUQTTInC8G813TL7ZLrvqTHj4s1Z94/Eibda3kDc86DZqKN
 QOvkmPeMbxzlpK5cqRK+G28=
X-Google-Smtp-Source: APXvYqyntHYYzT5XK8Is3T2y43EjL546dQMIWdhxgNlwlneNp8k3SwJP9re1oPWgimXPNxBXbgGHIQ==
X-Received: by 2002:aa7:8d03:: with SMTP id j3mr6687115pfe.162.1576346096173; 
 Sat, 14 Dec 2019 09:54:56 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id k9sm13731248pje.26.2019.12.14.09.54.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Dec 2019 09:54:55 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: khilman@baylibre.com, leoyang.li@nxp.com, khalasa@piap.pl,
 john@phrozen.org, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, kgene@kernel.org, krzk@kernel.org,
 mripard@kernel.org, wens@csie.org, ssantosh@kernel.org, jun.nie@linaro.org,
 shawnguo@kernel.org
Subject: [PATCH 02/10] soc: samsung: convert to devm_platform_ioremap_resource
Date: Sat, 14 Dec 2019 17:54:39 +0000
Message-Id: <20191214175447.25482-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191214175447.25482-1-tiny.windzz@gmail.com>
References: <20191214175447.25482-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_095456_924992_F8FBBB3D 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/soc/samsung/exynos-pmu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/soc/samsung/exynos-pmu.c b/drivers/soc/samsung/exynos-pmu.c
index d34ca201b8b7..7da2701c871a 100644
--- a/drivers/soc/samsung/exynos-pmu.c
+++ b/drivers/soc/samsung/exynos-pmu.c
@@ -110,10 +110,8 @@ EXPORT_SYMBOL_GPL(exynos_get_pmu_regmap);
 static int exynos_pmu_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pmu_base_addr = devm_ioremap_resource(dev, res);
+	pmu_base_addr = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pmu_base_addr))
 		return PTR_ERR(pmu_base_addr);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
