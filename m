Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752B318EEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 19:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A3aP/l9g8ao/zWzSAAclKbJLBNpfYKcRLomqcKiwu1A=; b=LtLX2IfaCCrgI5nfRyKwxTGe3n
	Y7varW5CMHe4O6BPPTPvxZ9aKw0D2sxpFVApuBhtuxnVWzW/peRvDEGaNSznE3Nv/WRaf6bvY0O0C
	A+Uuh5Yok4b0TQAWCQ/NYNZ33FN+ibbiVAAaMUBhk/oHAMklWK79w35BvJ3tmphF9wZBcNJA6ATbJ
	b5jbiUQHUFjh04Cx+f8yTVQLtrziEpQWwUbZDHXODBNkMk8+Z3X1dvCICPO4YLnfLNP7W1K03NHLK
	OlLJ+ZJRW6Qf8S48XQTsBeOLQr+Q7TfCoUr0NqUDFaHSzDC6b1vveCdm+sw2DjaocaKUZ3P2haSXT
	IW1RlNsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOmmt-00085C-SV; Thu, 09 May 2019 17:24:55 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOmmc-0007vP-4W
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 17:24:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id d31so1545988pgl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 10:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cPBzyUAV50pAnZfXXI85W0FJrR1AmwGO+3Mm+J5Ler8=;
 b=KZymrmgNoadDcCwAw9QgPOqaSR0OLrD5V49mAh1uQt0GgJ3kfSscqL6ofV06PDPlwW
 7JIc+kGuIJRjIpOrvb6N2dADvTRctPUm5ttHOPJ1QG1d5TZIv7631WzfeC7gBsCMTlN1
 fbPaM6gs/seQ3JgTCfuCXd2U0Uj505rmkAGeo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cPBzyUAV50pAnZfXXI85W0FJrR1AmwGO+3Mm+J5Ler8=;
 b=qOfOY/Dul10I3Hag7XqjO4wbrAUNi3SW1bnMAFVIFcpxFcojGbhpBmQZDCV2mxUNHM
 8b0q7tWWHNp/jLSj5LExgWgDKtZboEX6b2199iDi/q1gRoht57N3EMjBCXA+9G7wM6Xs
 yTv+LHjDJvJBp18KBAe0B95xCelpuM0R2BcV+HNi0oL9A+wItFJ34H/2DoB0GBjTWNl+
 x64p6wkclicdWJVqH4RA9d9YAXJTHKcLAEv+L3OlUJ3d2kNDkczzJ0SDX6rqTbutC4jZ
 brJ+HPUqxpZeA97xMi7sigjFT00iV0IZ3oalCUSki9ZUhIqBU8YDGIZeLIGh+0tUAaB5
 OlhQ==
X-Gm-Message-State: APjAAAUyIJ6iAdADKDDr4KUAqomKnRmiXPQI0W8Vg9O/y2PdWuLp3LPc
 A3QfudGnDYKaECn8O5MC0uMo4A==
X-Google-Smtp-Source: APXvYqwltYnMRdytoyt+Gakgvt9eaNw+HtE2WFlXBJvXLOllj4Xdxq3+5a4BOoOCJ7GUUv5cjQ6L4w==
X-Received: by 2002:a62:3892:: with SMTP id f140mr6877728pfa.128.1557422677403; 
 Thu, 09 May 2019 10:24:37 -0700 (PDT)
Received: from lbrmn-lnxub113.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id m8sm3989699pgn.59.2019.05.09.10.24.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 10:24:36 -0700 (PDT)
From: Scott Branden <scott.branden@broadcom.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH v3 1/2] mmc: sdhci-iproc: cygnus: Set NO_HISPD bit to fix HS50
 data hold time problem
Date: Thu,  9 May 2019 10:24:26 -0700
Message-Id: <20190509172427.17835-2-scott.branden@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509172427.17835-1-scott.branden@broadcom.com>
References: <20190509172427.17835-1-scott.branden@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_102438_172985_CB0C7B25 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Scott Branden <scott.branden@broadcom.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Trac Hoang <trac.hoang@broadcom.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Trac Hoang <trac.hoang@broadcom.com>

The iproc host eMMC/SD controller hold time does not meet the
specification in the HS50 mode. This problem can be mitigated
by disabling the HISPD bit; thus forcing the controller output
data to be driven on the falling clock edges rather than the
rising clock edges.

This change applies only to the Cygnus platform.

Stable tag (v4.12+) chosen to assist stable kernel maintainers so that
the change does not produce merge conflicts backporting to older kernel
versions. In reality, the timing bug existed since the driver was first
introduced but there is no need for this driver to be supported in kernel
versions that old.

Cc: stable@vger.kernel.org # v4.12+
Signed-off-by: Trac Hoang <trac.hoang@broadcom.com>
Signed-off-by: Scott Branden <scott.branden@broadcom.com>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-iproc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
index 9d12c06c7fd6..9d4071c41c94 100644
--- a/drivers/mmc/host/sdhci-iproc.c
+++ b/drivers/mmc/host/sdhci-iproc.c
@@ -196,7 +196,8 @@ static const struct sdhci_ops sdhci_iproc_32only_ops = {
 };
 
 static const struct sdhci_pltfm_data sdhci_iproc_cygnus_pltfm_data = {
-	.quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK,
+	.quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK |
+		  SDHCI_QUIRK_NO_HISPD_BIT,
 	.quirks2 = SDHCI_QUIRK2_ACMD23_BROKEN | SDHCI_QUIRK2_HOST_OFF_CARD_ON,
 	.ops = &sdhci_iproc_32only_ops,
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
