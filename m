Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB15A15230
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 19:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mQdqgjXOItuPjAyr+CTeto0t7i1NixLKNfGZKlPTn2M=; b=CVQCD3XAGOKJanGGsD9n9KDdeA
	yFRea1QjeFDA+UMVm/mBPVgmJXKz6fG7qqn7iRRt0wdBgUeiatd+SMyx1mjq1xplT4CT5Ee/f9XRI
	P4xLnQyIL2+X2NUk9a9ODvSA1wTMVPSJY0n5YczF8MWsrN/vFd5AkIeGpG/0mOrAF2D+861lFgqdm
	9eGrdpZiBZh1DtP1pPJD0YGtqT7DyDo7CYeXxlOdKRL+Ya+yt0e2HsD7jJbL0XeHMif3c7BGfQu2V
	ojxNVN4nSoBflBHh7EJsOOYMl9pDwvoi+VPctK3kChye0x77fmfNgTSYCogrWM7TRSkoxKEQhRHPf
	vYZpaEGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgzu-000792-Gh; Mon, 06 May 2019 17:01:50 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgzf-00071U-UN
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 17:01:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id z3so3044284pgp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 10:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zm81FW3KcENXa+XgLOmWMC1Drv2h8huE0OlhIp7SLHw=;
 b=RdGeecv84dfagcFaBy4oZ8KX4YElvSCjgZ4wewEOn11JljodjvXlkDUiIVZwXtqxJ8
 SGycem6z7VwK/vXBklKJf0c5MRxBr4efE+k1J9U3I6eaHpraVQFRuTJFGElKI9V/elBe
 II6qQdUp0itHcwyvDHxXEp5ZOlY9zDetY/CDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zm81FW3KcENXa+XgLOmWMC1Drv2h8huE0OlhIp7SLHw=;
 b=KH1oQ/bQ9dDaob7ZECl+c+t6OilvH2R1pVTOAYkQb1B9CPSjKXF8EQlCh/nyusqCA+
 fzUS57NihspiOpklu3/j4uDEsjv6s1gYP+3Cj1HDXGanrfZkbB2bxCpkrJRzqCjYtkvb
 oBF0n73D5tj8T1V416+NIebzbDC7wkeId/ENLQntrKr69TO91URUq/+OYM4B25ZGyfZ7
 5k+rtpGHjqhgU+0dSTAG1Ym+MlkJR5m77inHmNo8wOurGQZ2zivb6rDkMFRmagMTXMz9
 KXGOsaZeiygZ/nG6VqWUyoccu9wm4kkHGIBlqdGFjAZSHXvRV6ixyxIH6TafXf1Xxz+U
 /IuQ==
X-Gm-Message-State: APjAAAW9SXv11Z+y/HUGIRbITQcwnRMJElc+jKSkWhjwyxl2OfhiXkKX
 1jy20XkjjvnG/ZrW9IoWUL+ZDw==
X-Google-Smtp-Source: APXvYqwvaQXC+Zr1EWpDHk8e2qxSkU9qk1E9SvIbRABldfphC9oNl/iAN5jE6MiK12SrGhU7LRMB3A==
X-Received: by 2002:a63:a18:: with SMTP id 24mr32875692pgk.332.1557162094885; 
 Mon, 06 May 2019 10:01:34 -0700 (PDT)
Received: from lbrmn-lnxub113.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id l23sm4555644pgh.68.2019.05.06.10.01.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 10:01:34 -0700 (PDT)
From: Scott Branden <scott.branden@broadcom.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 1/2] mmc: sdhci-iproc: cygnus: Set NO_HISPD bit to fix HS50
 data hold time problem
Date: Mon,  6 May 2019 10:01:14 -0700
Message-Id: <20190506170115.10840-2-scott.branden@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506170115.10840-1-scott.branden@broadcom.com>
References: <20190506170115.10840-1-scott.branden@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_100136_039924_C1A403D0 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, Trac Hoang <trac.hoang@broadcom.com>,
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

Fixes: c833e92bbb60 ("mmc: sdhci-iproc: support standard byte register accesses")
Signed-off-by: Trac Hoang <trac.hoang@broadcom.com>
Signed-off-by: Scott Branden <scott.branden@broadcom.com>
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
