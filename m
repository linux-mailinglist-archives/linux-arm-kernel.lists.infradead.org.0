Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5095F1ED61F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 20:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2aAoJuhBwwbw84gg0FRiLVwJ9/fAZbKkslfSzn2GVNU=; b=b2N
	aRRvd8bJFI4KG2t8eoypBxv2BUhNBbIbauuJ4oAfxdfPELw14eWKL8tLTJEkvaxn6UVyqJf1JdcMC
	+L4g7uxApHVProFi0CpOtN8xeoP8sKeBn/vkJ6QmQLKMOEJ+hD3Zj0GdmMDDLEqZRNScVz7A6Fkg5
	Oe5bab9DxJljnB/aEUmCOx7fuaoqRwEe7pPcgoE4FFBUzCbn03FHTFFLFQ51Z/yuTyzPPBFoR7mF4
	F6IFH2JKPnJJLJ1pKlScCm6MLqU6AWMgwxpIpaNvC98G1oq1AhmmJEP5HCNCxn1SSB8CFzYGPVLTR
	kOSYQ+w7yv0HxV9XVd2hzpnu5Hwha9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgY8P-0007XV-HD; Wed, 03 Jun 2020 18:29:05 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgY8I-0007X9-KC
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 18:28:59 +0000
Received: by mail-il1-x142.google.com with SMTP id 9so3464696ilg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 11:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3NGIVu2o5ZfD238nU7EioWKtwbHFSnlq8NDGe0k+Ao4=;
 b=k3ilaOYF8Zi0ElPbQJ/D49l1sxfzgbs2aELXse9DU/MINXIppqkdvBI8IRGXkt7qnr
 YYF3d7PfHOOFB+hGrxZ3+xPRdzQU6XMqlx9T38qqrfKVoP64G+ZP4jO5wUMxTHl8sVhS
 cTJIPP/Q/q3qVd/z5hd/6Of2I0zkRaYEO0Z7YG2BOh+yG84ubkHJDtAHlttRRrV18rqD
 6X5ezQCYJ9TFzK4NOjPnaGDjgL1OfSlWRI0KRsAwMaDAIJY0CKKCJmptYGerKyak8Eud
 VNWoH3Z8z2mFwedGksqyvg03pOBIA90ohxYaa7prO8d+ShBZ3ixbSd3YzdNuJUYaEL/3
 qzUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3NGIVu2o5ZfD238nU7EioWKtwbHFSnlq8NDGe0k+Ao4=;
 b=SWUd6WOSOwKhLhwmCBhjzwacEoR4QZBdenYJof7ayPwZPMb2+2Gz446VngMgr7Z+Wl
 Z1AuK+rPB/bdI9J/Z6jzv/z+dV7FQpNgPeG076uiYTnzlXfmZkxkmoagsAggm6yR7OL+
 mM61Ot1TfUWg2vR8WRCdgbvmAohhiBV2LC8NA5E2PrL/EN28ECnBEy8A4sk7/eWzYhsP
 6wGkQjqTS3gtkcRPJ47uHYdL4moZQoWzeqYTn/I5PcHFh1VOLeoxDSb2wZGGZhWehA9T
 CXu4O9UeICquuHa3q8+lnosnROL5zP5ik+z54/OzFzL/Lm1Y1orvDIQGmGmPoPs609Bo
 OiEg==
X-Gm-Message-State: AOAM530T8qt35SPV1EYoFJtKAlJ0Nk3rZfnUAAw2zkP8u1N8H1rAnvZF
 rywmzYpJenPyk7TOx26QcT8=
X-Google-Smtp-Source: ABdhPJxloba1LOqTexHUXjZhHas0R9a8NLk9aQarShAtzLkMpIQM5Zn2/I2esN8JN1+SF46qVDdTtQ==
X-Received: by 2002:a92:5e59:: with SMTP id s86mr843617ilb.104.1591208937224; 
 Wed, 03 Jun 2020 11:28:57 -0700 (PDT)
Received: from cs-u-kase.dtc.umn.edu (cs-u-kase.cs.umn.edu. [160.94.64.2])
 by smtp.googlemail.com with ESMTPSA id y2sm152329ilg.69.2020.06.03.11.28.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 11:28:56 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, dmaengine@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dmaengine: stm32-mdma: call pm_runtime_put if
 pm_runtime_get_sync fails
Date: Wed,  3 Jun 2020 13:28:50 -0500
Message-Id: <20200603182850.66692-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_112858_678787_10CC5913 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [navid.emamdoost[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Navid Emamdoost <navid.emamdoost@gmail.com>, emamd001@umn.edu, kjlu@umn.edu,
 wu000273@umn.edu, smccaman@umn.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Calling pm_runtime_get_sync increments the counter even in case of
failure, causing incorrect ref count. Call pm_runtime_put if
pm_runtime_get_sync fails.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/dma/stm32-mdma.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/stm32-mdma.c b/drivers/dma/stm32-mdma.c
index 5469563703d1..79bee1bb73f6 100644
--- a/drivers/dma/stm32-mdma.c
+++ b/drivers/dma/stm32-mdma.c
@@ -1449,8 +1449,10 @@ static int stm32_mdma_alloc_chan_resources(struct dma_chan *c)
 	}
 
 	ret = pm_runtime_get_sync(dmadev->ddev.dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put(dmadev->ddev.dev);
 		return ret;
+	}
 
 	ret = stm32_mdma_disable_chan(chan);
 	if (ret < 0)
@@ -1718,8 +1720,10 @@ static int stm32_mdma_pm_suspend(struct device *dev)
 	int ret;
 
 	ret = pm_runtime_get_sync(dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_sync(dev);
 		return ret;
+	}
 
 	for (id = 0; id < dmadev->nr_channels; id++) {
 		ccr = stm32_mdma_read(dmadev, STM32_MDMA_CCR(id));
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
