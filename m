Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7782F18EED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 19:25:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wzVWjL9UqbWQvwzpnOgPhsbZZvG4NxsBQYOPpYa4eRk=; b=tMv2hxOP6lAV1d05732yVenDz+
	ceJIksYGUk4miEtkXqf2DyzkBjFFAG9OKdypXLBvIdaXGXRAICwzjkhBFbf8tktvmMth+Cav3abbv
	rXbW/3eLPhVxzbBacQ2q3DLyH2OF4cyKMfKD/PMXlr/QawHeLQ+aRY675oz/qsCsKTbs9OAAvTR93
	FXN1TmE+9RA5hoJ5SkEj9ntYhSHjC3RF9JUikD7OQNoudEpa+qONFO2jwFh8hDHA9tc9kLmlCwGZO
	LCoGOk0/uwXpOkuHCURPO7r4UuP22sgCFT82d4B5i/wRUjczKe9W2D3/TBuPDfED2bNpebTapy9ZE
	ILtQvylA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOmn9-0008KH-Dh; Thu, 09 May 2019 17:25:11 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOmme-0007wK-FV
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 17:24:42 +0000
Received: by mail-pf1-x444.google.com with SMTP id s11so1647202pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 10:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Wx8gaoHC5MOYV389XtnYNdY7stPe/BwS11WRGJ3X0jU=;
 b=NLbenTRuAo/KwttyYdSfiYeHTl8s02uccdxHkJwJLM2aY7TwvWQqlzRs0z8yANQP8R
 khMAKyxuFZJpgqgeNYGcHLqu5JE1xjX9RHiBh3YBz9oyDSgkjkxUuCIXX01cR7/10nQI
 rodbcT1oFhD5khMY98DrmTSlWUYOKTkyTYnlE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Wx8gaoHC5MOYV389XtnYNdY7stPe/BwS11WRGJ3X0jU=;
 b=M6KMyj2L3LgGgJbQpNdH7osgF2acprZenDa4yyx9j1kcYDZmWcBNTWBBHXDGt0Y6CO
 KBlSvSmJwFsgWJR8WjfiurFaA+D+oxINhveVW0uEn1uGAA4D198Ip9oHyym7taq2QB02
 FGfzsR9q69q4ZhBVSnN0lLnzt3kh6DiQ7hex93dya9r+tbIbBCYFDwSd0/omuvEVigEX
 cancmEOCo8Hq31UVSqPu+lqCUnqIKbaDfoIFU/KRSDX391uK5Em0bxVL0GTscd2kMbTG
 MdLVijSEwRc5zhObhjiJyRxfkf/Hm9z2iotG42gd/YS4pdOZ9Qok4Wx7slXaaA8T5Vgs
 Hb6w==
X-Gm-Message-State: APjAAAWwbfl3gvFn7DgN4b1wwb78bGR/dHaBxt9lMywhRKpnWyHUfHQY
 QZMJc2eb6QPYx4cQwxlD4W262g==
X-Google-Smtp-Source: APXvYqwYqy8L9x/EoYgEU/4wY9WEr7lylwmLPU9640H1GKytWxa+mGBeQ/ZgM4Ryo2yw8qrfa7yERw==
X-Received: by 2002:aa7:9116:: with SMTP id 22mr6898551pfh.165.1557422679753; 
 Thu, 09 May 2019 10:24:39 -0700 (PDT)
Received: from lbrmn-lnxub113.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id m8sm3989699pgn.59.2019.05.09.10.24.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 10:24:39 -0700 (PDT)
From: Scott Branden <scott.branden@broadcom.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH v3 2/2] mmc: sdhci-iproc: Set NO_HISPD bit to fix HS50 data
 hold time problem
Date: Thu,  9 May 2019 10:24:27 -0700
Message-Id: <20190509172427.17835-3-scott.branden@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509172427.17835-1-scott.branden@broadcom.com>
References: <20190509172427.17835-1-scott.branden@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_102440_731524_561970DF 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
specification in the HS50 mode.  This problem can be mitigated
by disabling the HISPD bit; thus forcing the controller output
data to be driven on the falling clock edges rather than the
rising clock edges.

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
index 9d4071c41c94..2feb4ef32035 100644
--- a/drivers/mmc/host/sdhci-iproc.c
+++ b/drivers/mmc/host/sdhci-iproc.c
@@ -220,7 +220,8 @@ static const struct sdhci_iproc_data iproc_cygnus_data = {
 
 static const struct sdhci_pltfm_data sdhci_iproc_pltfm_data = {
 	.quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK |
-		  SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12,
+		  SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 |
+		  SDHCI_QUIRK_NO_HISPD_BIT,
 	.quirks2 = SDHCI_QUIRK2_ACMD23_BROKEN,
 	.ops = &sdhci_iproc_ops,
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
