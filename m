Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D06B817E41
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 18:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jEt6xgSn1Ic3OLzK2DANjM33SoTGb/o04uNCqW/wu08=; b=tJ5Y3N44TPy0OzWS8PgKqYXlWb
	iIwTW5HELrLdp2IY2HzFecQPbEvk4C3A9ICY0COEzuDcFsNonfTvkMOrSbAtz8viJsd8yLFDNshrZ
	t4j9nPgtvXOl+p4VAsiLHyXuU9LIl34sK21765OdZkog5Ao8mjpZlxNjpAjNU63FU9sLonvaDf2dM
	srunllvsVZew+OWjqr/21owOK8Xf9l6NrQdTLN5d7iiZK21N2ezw/aYMDDJmDT3IugD2s/w5BgOc8
	h3lBDo5VrAMejP/f69WM94Lhx3XCotu215qL7xxl5V6vE1oeBagNjANuU6kJcYzlp/E6jMurjtm9z
	iker4wJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOPdH-0005Vs-MQ; Wed, 08 May 2019 16:41:27 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOPcs-00059G-IM
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 16:41:06 +0000
Received: by mail-yw1-xc41.google.com with SMTP id n188so16779288ywe.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 09:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pK0d0RZmUxDAg2UlpJZk6eqKP4c8MBzekwXBlQJcaEA=;
 b=YS5aDbbBHo/ZpqucQo4JmlEVicPBsSMyK91OtXe2V8t5TpyOfWVVDZcWLMQ/dv72Jf
 v62QeBR8G9/vH2qg+fbIYKlXx5sgCxG23YYKxDnUkXd6o3YISBsF+FfsL2MJqAoy1Qzy
 wBj+YvrFo99bgAxJ4s7iDmnOj9bnYrxt2dH3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pK0d0RZmUxDAg2UlpJZk6eqKP4c8MBzekwXBlQJcaEA=;
 b=ZB57Pw6ipQYQQl/w7SJGtTRn5Z8NrYtd2C5R+X+nHGNLT9nsQzEscfK6nVOP7Wa1Na
 Jfvb3mzjaapecH6QN+x2Q4b+nuSM3h4RLPXYUWlrQX+knFzstp1ptt4PVGgxAm6D6+6E
 uL+xMYKOAr7CpGy7WLskLi6DcdDlfpB3G/edPnMqFxL/PdhYnOA0wB6jGy2cfIIOGd5J
 y96Y9CCDMY21TJ8D7xu8GTD/6H4DphYGawvAbmIva2jP36KC3qp763G13J8r8B1Hc5G0
 eQFZY/UeivMCeGFH7QTmGUPKE+WTsoCxblAVzcVChcz9hGNm91bnkNp7qrGibREJvige
 cOKA==
X-Gm-Message-State: APjAAAXp2CKJrE1yMYsrb93SIKxcn1SUnq25m+COkKkEtf+srCqxaIBg
 EoRryax8wat1jyhPTwXEN8BJdw==
X-Google-Smtp-Source: APXvYqz9ir/Gh8NUb1ycpQcDDVHcfdkyx6GifoD6MZrbq72G+zOHknduP6n8ZVhZZ9W94OE4VgRLcg==
X-Received: by 2002:a25:4941:: with SMTP id w62mr27324493yba.360.1557333661480; 
 Wed, 08 May 2019 09:41:01 -0700 (PDT)
Received: from lbrmn-lnxub113.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id u6sm4671081ywl.71.2019.05.08.09.40.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 09:41:00 -0700 (PDT)
From: Scott Branden <scott.branden@broadcom.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH v2 2/2] mmc: sdhci-iproc: Set NO_HISPD bit to fix HS50 data
 hold time problem
Date: Wed,  8 May 2019 09:40:44 -0700
Message-Id: <20190508164044.22451-3-scott.branden@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508164044.22451-1-scott.branden@broadcom.com>
References: <20190508164044.22451-1-scott.branden@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_094102_846748_B5AA4E60 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Cc: stable@vger.kernel.org # v4.12+
Signed-off-by: Trac Hoang <trac.hoang@broadcom.com>
Signed-off-by: Scott Branden <scott.branden@broadcom.com>
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
