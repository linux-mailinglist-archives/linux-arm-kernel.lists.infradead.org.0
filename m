Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E07DB1DF345
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOYoevn1UgYD/M0utux6NQMTtyJWNpwXXuK7GPZVtlg=; b=quRNk25cB4Ycl4
	j44dMWJ1lBZuya+fgw21P8EjDABF17nPJbSYLgNtavscg0EZ1o+4n6hzrtuaxYU/gjHUAmEdANu9/
	L5s7/KieHVQTHH99JY1aj6KhdWMoU16U0BZuTQgGVsXe671f6/OYtkey3tok0+57tTcMC5NpSuyLN
	xAU/Q1ilC1qKuK2HofAmEdfR48h/6ZUi7U2eU2+KLhJ6xAI+B+veGO1en42qsEJ38WYJJN7h97O8f
	0mQ99zmHpOPhOanbBllPFlfW7YOQSmWEXPm6rXg/GA/3YawAND0NmTPFb9+iG8qYhK+DvClqY7JxX
	GF4lhS9V4V+EWs/19otQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHRc-0007PM-UH; Fri, 22 May 2020 23:51:16 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHP8-0003QJ-Ja
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:44 +0000
Received: by mail-io1-f65.google.com with SMTP id d7so13359464ioq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J45nDshYNcYrGRYkIpqQuCHqEq06Xr5wTtd6CkH1TKQ=;
 b=h5I1OPwKJsfMRO6eUPQf4aUijpUZnWP3PENQlTH/KwCGFnAmmQ4hXeFvoCVanUS/wq
 FLbahfayyns/yKW/yCATaqrm1xQILDTAvGYBDfwOART3rJpEUtpPX/N8KeyZvL17T1nB
 08alk/zGf3Lu8PfF8qo1lCNC1KNtaX4HRhpj2IOoH5ngJearBL5/qmhEIJk6YfAeD+sg
 R4MKpTfhA8GcatQleH9l4/6LYQSwV2oI9YSXtq9MLEh2Z8giHzJXdm6EF8xoJ443snd8
 2UZw8aqISSKpGJdWHKDsSo/ZOs5xHqVFOBErnEPS3bIar82G73Zmenga0roMqL5w52nH
 jYRg==
X-Gm-Message-State: AOAM53337lQr9+NyTmxNzRS1R2fiMCmv/sG33GhPwj8UwzIivlz/7+83
 xxR8b2VEO28AhCM57AFrXQ==
X-Google-Smtp-Source: ABdhPJwvpizplNylsZ+mOBoLddCdqOsvUiQzZKpGEl+BV1UIE2Xf70za28p9484+5NSevVTlVtJ7jw==
X-Received: by 2002:a5e:cb4d:: with SMTP id h13mr5172992iok.141.1590191321380; 
 Fri, 22 May 2020 16:48:41 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:40 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 07/15] PCI: v3: Use pci_host_probe() to register host
Date: Fri, 22 May 2020 17:48:24 -0600
Message-Id: <20200522234832.954484-8-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164842_658899_B4AA5728 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The v3 host driver does the same host registration and bus scanning
calls as pci_host_probe, so let's use it instead.

Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-v3-semi.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
index 3681e5af3878..198cf2c6ed92 100644
--- a/drivers/pci/controller/pci-v3-semi.c
+++ b/drivers/pci/controller/pci-v3-semi.c
@@ -239,7 +239,6 @@ struct v3_pci {
 	struct device *dev;
 	void __iomem *base;
 	void __iomem *config_base;
-	struct pci_bus *bus;
 	u32 config_mem;
 	u32 non_pre_mem;
 	u32 pre_mem;
@@ -904,17 +903,7 @@ static int v3_pci_probe(struct platform_device *pdev)
 	val |= V3_SYSTEM_M_LOCK;
 	writew(val, v3->base + V3_SYSTEM);
 
-	ret = pci_scan_root_bus_bridge(host);
-	if (ret) {
-		dev_err(dev, "failed to register host: %d\n", ret);
-		return ret;
-	}
-	v3->bus = host->bus;
-
-	pci_bus_assign_resources(v3->bus);
-	pci_bus_add_devices(v3->bus);
-
-	return 0;
+	return pci_host_probe(host);
 }
 
 static const struct of_device_id v3_pci_of_match[] = {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
