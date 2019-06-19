Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A02824C1F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zH8jAP4zQxOhcDzFtK8dJU45o5BvNx49jZPJSsQ5ky8=; b=iyiegbVoHvnq9UsWO8iXo01jhc
	So43i3MLqM02np8EBLGU8JjMa/jH1OcHmJHLWq4JSKqO63ZyikYVRgDZx7lyGopvl7qayX4J6Rq7P
	VcrWQfkGYuhwwesqDPcx8oiFKcwidKuzEtnwhPVz+YnGiDZ3CgrDFhX4rC12meYQ2MnG3Ka5vYeRi
	b5q2G5rb83fuvIGAgnFDaVr5jLtBd0L0IAe9q1tR+n7SwqV7dCvV9aSqzBVrHeZ/VyXHVQyP8mfCh
	1WVZVh9niQviiRwFJ7ytt1OC6sJvaP13x4suXEXPpfMeA7uPsS+ZyPOp9mpfuuIKwYgn+iCDK3xl9
	+eR6uDiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgkE-00049J-GM; Wed, 19 Jun 2019 19:59:46 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeL-0006bs-0V
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:44 +0000
Received: by mail-pl1-x644.google.com with SMTP id e5so246320pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=f6b6EF22LZj9j5GmFlrz6dxNen9pTHUz+onNfHBegq0=;
 b=DId1sXSGsw89mvIIWoRwx/HMcLA1qMoX5POzFyXcmBnUjdzDylQjXd9ddsKNZXLN46
 u6NbQw02KnQivurlX1TE4QJfgpvaXC/uZ6B+D4riNte5r5FLFSHjVk4WSdNfJxq9y2Su
 fYg6mIoQ2vwHfcOLya8ae41UNdkNuJCL1Igzh914FudaBxcaZVu0V5SHfz5wB2eHGW5Y
 5pFSIASAwjIuESw/FKFTcxKlsAJUsO+IlEmH84YKCFmn6+/meyhYH6a1RNU9c8bly5NS
 A0I92606AxD0rvcEs4ZHU/IGq8JvlgMBv4roArlH1TI0KrbZR/CWEbcLNAe38tSKZ5Z7
 2ozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=f6b6EF22LZj9j5GmFlrz6dxNen9pTHUz+onNfHBegq0=;
 b=b2AWc0I08G9GlpsXK8LFUhO7J4LqTT6ducJ4Mp0y5XgmYg4FLY85mCOp7thfvkFGau
 FQi7Fvh7L50BirJ7VlomUMQP5yGY9yi4m02Ei6UPdGJNvy64A48UL1C1pBJrTxUXgOpA
 VwQUFXONJ2OfxcJOCdBihZ7QzcaunpDi3ICAYmMLQP9b10pkQ6oG8AVuY5+IqQ5geKE0
 rkvh/bJk0656MpDLtnoAid4hxIDx47fFA4ifE0paWWXYRz4RugdaZiY2ZJ4OMDFFEVy/
 ++FjW0P00hTGM8SFgOUEI51zsj378cRdigmFn3E7u7/yfVHdxFdXcqbUZeKK9dlhx3kr
 i/1Q==
X-Gm-Message-State: APjAAAXm6gnXqcR0NP66uaT+HHMjbLWYNI8aH6yDU+xz4C1XjWKyfYcb
 fvO57/lFUjruTHJ/dtpxr2AZIg==
X-Google-Smtp-Source: APXvYqwPTpk5fFIN8pw4fTsGW/IOsx6H2CyqkUsXyjsVmXquem1b432aBmnFFLETTxKeCIN333O5YQ==
X-Received: by 2002:a17:902:d916:: with SMTP id
 c22mr97426363plz.195.1560974018805; 
 Wed, 19 Jun 2019 12:53:38 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:37 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 18/28] coresight: acpi: Support for platform devices
Date: Wed, 19 Jun 2019 13:53:08 -0600
Message-Id: <20190619195318.19254-19-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125341_283515_8C7ED553 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Add support for platform devices which do not appear on the AMBA
bus.

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-replicator.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index c0e42253dfe7..542952759941 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -5,6 +5,7 @@
  * Description: CoreSight Replicator driver
  */
 
+#include <linux/acpi.h>
 #include <linux/amba/bus.h>
 #include <linux/kernel.h>
 #include <linux/device.h>
@@ -296,11 +297,18 @@ static const struct of_device_id static_replicator_match[] = {
 	{}
 };
 
+#ifdef CONFIG_ACPI
+static const struct acpi_device_id static_replicator_acpi_ids[] = {
+	{"ARMHC985", 0}, /* ARM CoreSight Static Replicator */
+};
+#endif
+
 static struct platform_driver static_replicator_driver = {
 	.probe          = static_replicator_probe,
 	.driver         = {
 		.name   = "coresight-static-replicator",
-		.of_match_table = static_replicator_match,
+		.of_match_table = of_match_ptr(static_replicator_match),
+		.acpi_match_table = ACPI_PTR(static_replicator_acpi_ids),
 		.pm	= &replicator_dev_pm_ops,
 		.suppress_bind_attrs = true,
 	},
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
