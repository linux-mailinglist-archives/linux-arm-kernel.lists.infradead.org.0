Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D611CA6DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 11:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RgFWC+4zMisqnJjEgcHaD9prCPI1cJLHiFjhaOPR/Hw=; b=nP5pLTkhK0z//Y
	mNw5DGBeMSPNscjXDlfQ8PxEsk06ZxzUXejyfbsiCmo15Mu7hEf1Wr6ytwsMhN6e0J6az1w0PZVN2
	ME2Xzv+k/Mh+ZlVHNFF8enmcrX6elSvCXKKYk6ACW4MvVJ3jWqA42+Zb0RAdFNoPmnype2httmqhs
	FKzG3ZBJyRE6k2VSLju/XstckKa/nZg/kmhRVkFCW+893KXocU1G4oZ92f5NLztSC4iPcVjoh+XHN
	DmpjrFbZ5QDIO9Fq6Zspsd1xfT4oOYo7/ysKYTtqhKIXqTpCKDMgRoCnkrkTWQk97vMvxJrDLhXac
	Pu9BRAbg7rZoL3hA3Q8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWz5w-0001pV-V8; Fri, 08 May 2020 09:15:00 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWz5p-0001or-BM
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 09:14:54 +0000
Received: by mail-pj1-x1041.google.com with SMTP id js4so13236pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 02:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nMxBmOmA0pSsTRUw0Y2HDt6KguOgwVLNatcARhBcWek=;
 b=UGlphvp8K38wllfNZo25/p/gee62yCv5K/mw3jjK3Izj2ivGn5sOvxfchz/UekfLxM
 7AzyMfBhLd17KQ5VSr+hVb/EDNVHaiOPIDHAO9c8zRofVoTPsWcvEn2wTBVB1MW8YCwE
 91pVouyKwC9xq8xMRHi8bmWyuoeSDJx8OiP1Z2eF4S3SSsC2HRpKZR8Og5MJCMG4uX5w
 kiZqibm2up6Lc8YqI5ca8YeU5j17Ko8tYj+cQOgD78B81i0kof72vstUjCFhG6V3nazw
 PQRYe7jR3aBBi8hkS1JFym6cHMvdW1Bd73+M+qftJ7SxwJpx4XPFe/uFCUSRAGDn5JX9
 hZtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nMxBmOmA0pSsTRUw0Y2HDt6KguOgwVLNatcARhBcWek=;
 b=fEfiRTzjeXyFC1g6XBxHSy+s2hB2qwappfg3w5acfUblclHibCC0RsrhdMaV+EfV+z
 ZmU3sCoYDqPA7QIvIkeePmSMuibi5aOG4FYpOtSZ1SMUQcaYzwkrBJF0JJmcT436RMqZ
 qttYQa3b/TdKq/QeZm663yU7pltaJv+j8yRwcOPE9O6GgIHHDmk+HwfcjRkwVX0DxGwN
 1kjTM62ZwMs4fu1lPyca4HqaPNEwDwM5nOtYOmdxk02CRi1fCwU45VY42u+UzRuLa2Uh
 VTmjKyBzaaJjmLfLRSDT4V22pdsXS/cL1z7L557RM5eT6TiPm6ZegBmuMJeddAWMB3/t
 65Ag==
X-Gm-Message-State: AGi0PuY7GSM+Iu2DVPFgB7OTHvp058T5FTxCh7NYZKw0q1L0yk0yobWr
 P3ZZvieZVr+93qBoEbZRDJ4=
X-Google-Smtp-Source: APiQypKo6zNGflFBY1FjZ8IG226PaDyITAYqx8t3A183iI8TJ+zQm04mg/0MSIZE/ZJFbHA17z6j3Q==
X-Received: by 2002:a17:90a:d307:: with SMTP id
 p7mr4977045pju.207.1588929292004; 
 Fri, 08 May 2020 02:14:52 -0700 (PDT)
Received: from ubt.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id u188sm1187292pfu.33.2020.05.08.02.14.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 02:14:51 -0700 (PDT)
From: Chunyan Zhang <zhang.lyra@gmail.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH] coresight: tmc: mark coresight_tmc_groups with static
Date: Fri,  8 May 2020 17:13:40 +0800
Message-Id: <20200508091340.11711-1-zhang.lyra@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_021453_415689_8A0A12ED 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhang.lyra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chunyan Zhang <chunyan.zhang@unisoc.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chunyan Zhang <chunyan.zhang@unisoc.com>

Sparse reports a warning like:
drivers/hwtracing/coresight/coresight-tmc.c:364:30: warning: symbol
'coresight_tmc_groups' was not declared. Should it be static? [sparse]

coresight_tmc_groups is used in the local file only, so it should be
marked with static.

Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
---
 drivers/hwtracing/coresight/coresight-tmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index 1cf82fa..39fba1d 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -361,7 +361,7 @@ static ssize_t buffer_size_store(struct device *dev,
 	.name = "mgmt",
 };
 
-const struct attribute_group *coresight_tmc_groups[] = {
+static const struct attribute_group *coresight_tmc_groups[] = {
 	&coresight_tmc_group,
 	&coresight_tmc_mgmt_group,
 	NULL,
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
