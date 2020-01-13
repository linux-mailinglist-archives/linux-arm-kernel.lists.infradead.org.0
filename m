Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAB3139B35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:09:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LWSB+VSGhxPcjc7JRRSZ2QMoVl9eKjY7xZhnpGo9bz0=; b=hPt7bC8H9yMAk8KzhNxjqwNRH7
	5SHHy7L+20k3xD6Q42Gs2XtH9au9i/VlHSxJ4p9GgTR0KcWSyCVUvt6f9HxuZqiUa9TQ9m+6L+QyA
	ulo0wnOIS+iIQGbIRVOeh/M0OnxNsjxFTgB2FZ4LKtTxMgt8GUk7MFx8ZJ4ehKiHzi4VNCNj9fMh1
	V73jLaK51TnCdBzCSoql1lcAFvPZAFAmOLZAY9QIR8eNVGR4+fStefROHoRhT2C6SLTLGGRn4My2I
	cYwAFHM+r75dJ7kfZvaPe4D0guCOl2VsSRhOXo1z81cyIy3AsshAm+5fZoKWks1zHXXS5S6G5hSJz
	ZGeFtFWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6xS-000822-8k; Mon, 13 Jan 2020 21:09:10 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6wI-00074S-Oy
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:08:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id p14so5466289pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5CAP7vT78sJ7ShUW4RVOxpE+JfJTOO+iEZfiA9Ic9Ok=;
 b=JZ5FNozJHtqB38WQ7SVPzNJy5Il5TQRFnfhZR7yzCDo5bdXPLtP0RUlP6yV7bIzd78
 z1UXKwnP7GfNiP7jt5dAmvY0ZUFg9e4TqhPVx1hO0R2JZE6ZrMtveQCiFJ+7yI/M+gF2
 AM7G9aWjAXLmZIsj4JAxN7LBdrqDyibZW1737i20WPIoQEIfkAUPTlvyMaj1iCkXzxeJ
 8rysh4DomHv8VgdDBWiYQ0dIJhAY9NCwcnd5MxP0aeBeBrT2dHxjTN/n4DrquS/kkj7g
 BxGoxZHBf8JYSH7rAONXfPkZVSK3JebIL7GqtnAtND1EfunK8+4J/Sc5qku+PXA9SLRE
 QU0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5CAP7vT78sJ7ShUW4RVOxpE+JfJTOO+iEZfiA9Ic9Ok=;
 b=eSCHPntbMK3ub2yh2O7dICt+boYd+qnPlOlCweNyYK1TLP61UaSI+QIWyGB3uOA+3+
 xn8HdpMxv0EXEA2tPaa1h5nBJj84BCHdAoZe6puobnQyi75jluhZC8mNCrCGYqRnEM31
 VY2zBskwfvhxN2LqenL7obTTKc+RIrNnZk6ss7OPwPiMdzvB9SMvz8tLQjyUyofe2EJ3
 +WxdTvDiFnM/PkhMy98bEQP0wSugQPKbUEUx2aLQEqdwCGcVPwChcj4FOcdL2nZwV6U1
 gY05jlaBvP4AgPORVvTMxJq9sM6FFM4GOopxn3rsqHwRGvnFjhsR0CtfehtxOPbB/uSI
 fTKA==
X-Gm-Message-State: APjAAAW3CVxpIZKQ+A0NErBKwDzo2pBEhVoUWi5dph4t5FPIRaxdpt8a
 VD7ZIIKvEQOOogL9JuTZqHk=
X-Google-Smtp-Source: APXvYqwk0d1fEyYVDxkLaN2UU1oTmel6YbkzKPFuVHpnNlXMqHO4ed/D6FyMrUyjKuAJus6QcKitpw==
X-Received: by 2002:a63:6704:: with SMTP id b4mr23575633pgc.424.1578949677899; 
 Mon, 13 Jan 2020 13:07:57 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s1sm14195827pgv.87.2020.01.13.13.07.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:07:57 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/6] mmc: sdhci-brcmstb: Add shutdown callback
Date: Mon, 13 Jan 2020 16:07:04 -0500
Message-Id: <20200113210706.11972-5-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113210706.11972-1-alcooperx@gmail.com>
References: <20200113210706.11972-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_130759_218526_D126284D 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Takao Orito <orito.takao@socionext.com>, Andrew Jeffery <andrew@aj.id.au>,
 YueHaibing <yuehaibing@huawei.com>, Al Cooper <alcooperx@gmail.com>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Faiz Abbas <faiz_abbas@ti.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Sowjanya Komatineni <skomatineni@nvidia.com>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Shutdown controller and disable it's clocks to insure max power
savings in S5 on systems that leave power on.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/mmc/host/sdhci-brcmstb.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
index 218176b79b6a..7ea426ba5cbc 100644
--- a/drivers/mmc/host/sdhci-brcmstb.c
+++ b/drivers/mmc/host/sdhci-brcmstb.c
@@ -161,6 +161,15 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
 	return res;
 }
 
+static void sdhci_brcmstb_shutdown(struct platform_device *pdev)
+{
+	int ret;
+
+	ret = sdhci_pltfm_unregister(pdev);
+	if (ret)
+		dev_err(&pdev->dev, "failed to shutdown\n");
+}
+
 MODULE_DEVICE_TABLE(of, sdhci_brcm_of_match);
 
 static struct platform_driver sdhci_brcmstb_driver = {
@@ -171,6 +180,7 @@ static struct platform_driver sdhci_brcmstb_driver = {
 	},
 	.probe		= sdhci_brcmstb_probe,
 	.remove		= sdhci_pltfm_unregister,
+	.shutdown	= sdhci_brcmstb_shutdown,
 };
 
 module_platform_driver(sdhci_brcmstb_driver);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
