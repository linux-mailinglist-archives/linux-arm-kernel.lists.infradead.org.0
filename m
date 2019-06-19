Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BAC4BFF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zH8jAP4zQxOhcDzFtK8dJU45o5BvNx49jZPJSsQ5ky8=; b=f3I0HvuqDlbFyCiF4lJKQrzNVf
	z7QW2niK2pFCgxOHYarJ6X/vIEL5dO/z5kwTwyPqoKHT8ggcEDukrQ80cucvWndbt+LYbOJAa3gQK
	6XMMKt40ai9d8A2Ms4UJ5mZEL2nIDL0gZZTcbD4nkM6TzQn9GY/FyvEIhQijBaLDX1cfoBBrLsuln
	4OMdh2Lto6bbSKS06RF8p9CLsBMDM/i6oyyIuUGqjRt4OqW8lXEbWKU26YFrsXwJr8eh4dTRQuZ6N
	6fmmnEdGdivE0FQT+kRcXFsm62Drv21N1lVLNjU9o1XrjJpocuCMyKR7zcxvdMjKN/tXvDM8I0qJz
	eBVPqE6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeb0-0005Z8-II; Wed, 19 Jun 2019 17:42:06 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePh-00009w-1V
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:35 +0000
Received: by mail-pl1-x643.google.com with SMTP id c14so106144plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=f6b6EF22LZj9j5GmFlrz6dxNen9pTHUz+onNfHBegq0=;
 b=ElIPXGxgNK90oGAeKnp1F+vnvFzR095a4S4NoiXEDks3600RRaqzGjWkpRRrfEvbmj
 ha4UARUqJ78/py9st2e1/lEXJR6LBVpIDEHKNcd/YqWKrokRUyX6cd+5D4LE0iy6lM1h
 w9mQGzBDqZCUGDCmwFMVXNZX56BneGXvy64Kiuvwwj4Fa87ibJU63D1S7yp6XERQg8Ay
 L316uCN5SYHweOAaH0WgQkVCsVMNnNpTd+qnXaLXBiJ1GSxbedSJOHmhlEvqg98dLI+W
 SFrLrauH30K+fzW4zgxkd7vPn5i6NdDiJwJ2eFBNIrb7qGQGWSDXdWX+es9W3l4S5wfF
 TgPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=f6b6EF22LZj9j5GmFlrz6dxNen9pTHUz+onNfHBegq0=;
 b=QisoOx0UpGkUy21A+ndv3z+kWK0ZlW6VoNrjmKQxrXkGP9K9VrW9HiLzjeY4IVw4sb
 +I7mcrkhcTgfD4iYD8MaaeyHvzNdskt78VQZFkwXmRONlxbxpcidb5uY8FvaBn9tTy8j
 ++NwzIuKU1jmQ907Jo2PlxGw1ET3kTLf50Rng4aJK7xpwEc2Yjsc5oic6Fd2hIVyjTG/
 tmTZGHPgwyFx3dqpqWrt3xnIt6gWuI0nLXOYIhWtU/o0cFOHru4NHfNlfbDJaQQmqXZM
 uU/YohefduvpU35WJSUoQVHvTW8tXlzu+YObvvnok6+TuEv/OPJ0qVmtojuLv117C3qS
 +50g==
X-Gm-Message-State: APjAAAW5EFZxAqk3ENbouga7woSXWZiv2xyPnGFthl8SPjMecCzWZu8F
 +L4DWiRpUg/3jRhZ9hympX9j4Q==
X-Google-Smtp-Source: APXvYqxXjzug4NAMBjqidGI7fWaxp5Wyur1jEIFE4NwUBFSZN7xr06lmY2dRJ0Dra5jCHSVKuVBhOw==
X-Received: by 2002:a17:902:bb97:: with SMTP id
 m23mr54159476pls.141.1560965424299; 
 Wed, 19 Jun 2019 10:30:24 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:23 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 35/45] coresight: acpi: Support for platform devices
Date: Wed, 19 Jun 2019 11:29:39 -0600
Message-Id: <20190619172949.4522-36-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103025_196722_0FE1D6CD 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
