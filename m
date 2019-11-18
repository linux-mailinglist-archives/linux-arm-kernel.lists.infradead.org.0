Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3B51002E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 11:48:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2dLI+kimC/HdkcI+Hz0FvLYYIP+onReU7kxZNBQSYI=; b=Au3yM92uJaQykn
	MMIRK6Raid96HpT50d/yFNomfnYzddNzBX2T36WpQ+eGNX8Q6URxHYecAbgrxM7ne21QpFPRVfolq
	E8U9n8bR0wY6F+6nVwRs5P4b+iO0ScnrlbbOEbzsiry8/kGXPE04Fl0O2iWWSSpoDcvXGGHMsv4iD
	9YVR5tIXN9N4IZB+S31s+5yXVJ8fNQ86i8z+Qc/kO07bbXxC8DqGGD+TJvBSUhcTkzVgc5ynfLAhZ
	pZiMQjMXDYR3lPrshmorsXuY2W7mSBWlrcNv8Pump53T6LcQAthtYB8dreNV+ZxYmDTbzibcAN9I7
	1bmLwg1sJ4Yf5v/YNWYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWeZY-00005F-L6; Mon, 18 Nov 2019 10:47:56 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWeYm-0007rf-1b
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 10:47:10 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id DE08042009;
 Mon, 18 Nov 2019 10:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-type:content-type:content-transfer-encoding:mime-version
 :references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mta-01; t=
 1574074023; x=1575888424; bh=bSKf4yCzpgTW+4k8YJNGqWG52QBL9g0Yq7X
 wprxxbYo=; b=MSyJtv3H0hc/7a7+8fs4AkG/hQC5mYiSzv7Fpyz9mY2gPeXz+7t
 x07Dmb/AUmfe6G/J2fbB+vNkP/8idZLRxJVD7F5RnOlUfYd+1zQLKh3oToBlPBuk
 g8M57OOisit/X281ZMyjsHFJD+VaxsuAywzfikcJqVvTTHGZsyxRm3no=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ZXqgD56ahqc; Mon, 18 Nov 2019 13:47:03 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 8B481437F3;
 Mon, 18 Nov 2019 13:47:02 +0300 (MSK)
Received: from localhost.dev.yadro.com (172.17.15.69) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Mon, 18 Nov 2019 13:47:00 +0300
From: Ivan Mikhaylov <i.mikhaylov@yadro.com>
To: 
Subject: [PATCH v3 3/3] mmc: sdhci-of-aspeed: add inversion signal presence
Date: Mon, 18 Nov 2019 13:46:46 +0300
Message-ID: <20191118104646.3838-4-i.mikhaylov@yadro.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191118104646.3838-1-i.mikhaylov@yadro.com>
References: <20191118104646.3838-1-i.mikhaylov@yadro.com>
MIME-Version: 1.0
X-Originating-IP: [172.17.15.69]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_024708_269560_0E6B711D 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Ivan Mikhaylov <i.mikhaylov@yadro.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add read_l callback in sdhci_ops with flipping of SDHCI_CARD_PRESENT
bit in case of inverted card detection signal.

Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>

diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
index 8962f6664381..56912e30c47e 100644
--- a/drivers/mmc/host/sdhci-of-aspeed.c
+++ b/drivers/mmc/host/sdhci-of-aspeed.c
@@ -111,7 +111,19 @@ static void aspeed_sdhci_set_bus_width(struct sdhci_host *host, int width)
 	sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
 }
 
+static u32 aspeed_sdhci_readl(struct sdhci_host *host, int reg)
+{
+	u32 val = readl(host->ioaddr + reg);
+
+	if (unlikely(reg == SDHCI_PRESENT_STATE) &&
+	    (host->mmc->caps2 & MMC_CAP2_CD_ACTIVE_HIGH))
+		val ^= SDHCI_CARD_PRESENT;
+
+	return val;
+}
+
 static const struct sdhci_ops aspeed_sdhci_ops = {
+	.read_l = aspeed_sdhci_readl,
 	.set_clock = aspeed_sdhci_set_clock,
 	.get_max_clock = aspeed_sdhci_get_max_clock,
 	.set_bus_width = aspeed_sdhci_set_bus_width,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
