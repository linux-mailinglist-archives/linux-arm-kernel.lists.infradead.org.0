Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DD14BFEF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wleYmFdcHrd41WOGLSVfpca3NCayJt4gz22k1/OjGFo=; b=aJHofjXY/zMXFolOdJXKaGn/OC
	OHFE2aurQOjZ1MQoFq/f6xrnihiLFve0jqMCSIIWzITK+noq3WFn76XtQ290UW4g83YUr5y2JC+9k
	wWXSvUcr0zqyDkoMkIP6TOvIQxxaXneZ5D7WwDMP3Ouv/HXe4qczj8ZCQpQXxNk6VpHRNOoscTQ/4
	zstXuJgLXolw4TkkD+5405+GwjQmq8JWMUSJ3bejXvBjdMMYbtCTPJKXO0aUMU/BJCdYBEADZavHr
	NvP5uUSbqSqum2wvxiDq+8aIWAd5DETUMOpTgnqz7gVe2b7yw3e51N5URD/xrOdfLEp7bll9tsxT4
	HqnXrKfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeZr-0004QZ-3E; Wed, 19 Jun 2019 17:40:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePg-000095-06
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id w10so44032pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XhEC8YM9URAom24Z8CuHErk7aYgxQCn+3C30lnGzOD0=;
 b=INO0uopgOi0JgJhTO0TId/Re+Vi3mREAqkuGTw0BkeARuGHwYbfTjBG7eDUoACbb5K
 xiXbNyqM3g/DeBJNXTl8pVyrb6bdZXpo+tIDv/iHKZ3k6VRg15X4eXBHx/Or9mICE8oH
 LdfvjmSO7Yp1kKdUK7O3T+wTOOg7CbdHiBFh5yooxdPgV9WCuMdXs4NeJzJYAWpuCT74
 NR2PphB1s9SvYa1L11dGGV0XqbMLSJtmhyfaWwhh4JoKlAZdWmiRtk35IS0vA1Sx06Ki
 mOWmKxVZdTQZgk2zQRqvFNeYHRe7pJ3WZ0HUitP5vmeyl7gMbILNivUuF8w/cQmyY8GI
 zDPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XhEC8YM9URAom24Z8CuHErk7aYgxQCn+3C30lnGzOD0=;
 b=bOU3Q7PSvBmDQiTqdundpWJ0nqxKKtAUt792N1425Z6RM3WdjWq+IeXQrMj8nx7Zsh
 iupxJATYBhM+XfjCwjATNdsonI/Z+wreywfWn8cXkk4nxrn3AeALsETAStFUzoJAU/Xu
 Xk0iUvlbZuFEDJP2uhgTEzZbtgRM4Rwinyh9GR1iU168VPIuS/h6tJ3LR+xN2yWj2UC5
 FtDvrVBtTJA6TtZuChtbCPXps1nOZTgN+ZCZTpvraK1en0WT7r5H/f6KZlR18+/aCFfB
 6CehJrYArLORCWiWrBBhBOuXifh0YFde/jqwFy+hjfMjMgxqigvy8ry+6exsimAd2FSa
 XGGQ==
X-Gm-Message-State: APjAAAViB9QECZ5cL3JIsn9QFsaUErafCnINJO3uaG3l+E4p5X/0sNH/
 G5bxNaH2ECV8oqqZ8qMtHiCq2CsmFZ+PQQ==
X-Google-Smtp-Source: APXvYqy3F8D65mfy3WqGNn1SEUNv2TTp6VRpdRj7wHXQeBQ9Jw9xAi1OB+qfCmnguBuR38ONiRjNtA==
X-Received: by 2002:aa7:91c5:: with SMTP id z5mr35274878pfa.34.1560965423435; 
 Wed, 19 Jun 2019 10:30:23 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:22 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 34/45] coresight: acpi: Support for AMBA components
Date: Wed, 19 Jun 2019 11:29:38 -0600
Message-Id: <20190619172949.4522-35-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103024_088875_0BCAE8E6 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

All AMBA devices are handled via ACPI AMBA scan notifier
infrastructure. The platform devices get the ACPI id
added to their driver.

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/acpi/acpi_amba.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/acpi/acpi_amba.c b/drivers/acpi/acpi_amba.c
index 7f77c071709a..e2142e3e0ceb 100644
--- a/drivers/acpi/acpi_amba.c
+++ b/drivers/acpi/acpi_amba.c
@@ -24,6 +24,15 @@
 
 static const struct acpi_device_id amba_id_list[] = {
 	{"ARMH0061", 0}, /* PL061 GPIO Device */
+	{"ARMHC500", 0}, /* ARM CoreSight ETM4x */
+	{"ARMHC501", 0}, /* ARM CoreSight ETR */
+	{"ARMHC502", 0}, /* ARM CoreSight STM */
+	{"ARMHC503", 0}, /* ARM CoreSight Debug */
+	{"ARMHC979", 0}, /* ARM CoreSight TPIU */
+	{"ARMHC97C", 0}, /* ARM CoreSight SoC-400 TMC, SoC-600 ETF/ETB */
+	{"ARMHC98D", 0}, /* ARM CoreSight Dynamic Replicator */
+	{"ARMHC9CA", 0}, /* ARM CoreSight CATU */
+	{"ARMHC9FF", 0}, /* ARM CoreSight Dynamic Funnel */
 	{"", 0},
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
