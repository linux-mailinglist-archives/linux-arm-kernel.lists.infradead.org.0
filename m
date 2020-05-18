Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA771D8384
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjmlmNeoDInv6zkqDR58M2/uRTNq2dZVRYzDEA4wuTM=; b=kWIsIvFiwvTJYZ
	ipfXs1MDNvLyqFSdC7u44bo2Grq1wt2z+F3yar+vP1rT1h8iVyzx+DYQaTrPz67UYMEq++nc8iymA
	lRW2v6OKYVLGRIPtWW/QOooaemTOPep2zQq+LJUv9lkeC4mu81947JhrEoSgIK8u9mrxjHdYydFDS
	EF/Wg5GA1fYdjKuLOlAJ/MUd7vMN2cucNVCjQu2MvKZqolffockWktswvCgbcpoy1TPdlUOcZ3KtB
	T7XIcWvBH9d8TELpNFbdhUqRqFDA4U8wshKEs+jfpFFvREzr0wUbhJDJN5m4DKBuixd7vOnDPgfXU
	s/jFj4Iw9hK/ETQRh5+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jak8o-0007U7-52; Mon, 18 May 2020 18:05:30 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6J-0003LV-CS
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:02:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id 23so5304001pfy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TNFXN7HdI7SEUVehc+ncm1I4+gJh5UYkyGN7rnj56sc=;
 b=uMcyZAMnXMYPh6qRGTt+cBFdp6+XAQdW9VdjMwEb3K6qWX7PjGpGdZDhPZluGeFxf0
 14kRYwdg5DmhkYjRO+9ZAWlU4jvvvYn8g3BZnbdiRyMi3sWii3+9R/AuxI/+xvZ/XvBY
 Fb2UZJc2GHqKPVPYlmeMdJWlxxqjYMkgdcrnXW5V+Scv/kVrGglV+aLyNX70NBtog7rZ
 3+LyrRAAdBD1CO3eaMplJUwdfIhfeg6yO/n5b0dqdSXIAkVULXA/OdEwmLtAyWljjv4D
 8Fn9eiOT+rj/0C2riLvngZ3YOqNJv90vSIDFlUwDJ8vgbDMKUfvlVPgd2CzAs+0edWMQ
 4nBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TNFXN7HdI7SEUVehc+ncm1I4+gJh5UYkyGN7rnj56sc=;
 b=N8K7gtyf24ERhFPT8Jy9fcvaOUIhMDkZg3M7WXUq1I7nGzDhxQ+DHxxj4nORtsZvwD
 qp4kWP1MCanEYxAc29BChiv5cVH+J6mPr5iBHxNV3XNOAV5rieQBCjQR1+DPe+I9ZRv8
 /q3hPo7ZxB+DbGVkPkD27nJJV+V6C7Y9AoxuYbrNCr3VkZo4fruaAt6MRUZZ8jwosEdA
 HWAZ0b8QKZfnaT75v7nOf8++Aj5yOvSZbPwsdpXYov1zmAB2dkjoj7ECGcugG9cKjS+W
 V/BxaviuAUstNgObCG37c7YokZi+F/ryXyfjvuaMUtanEyxwrl7Zkr9YUmnDCYp6V/A7
 s62g==
X-Gm-Message-State: AOAM530w1cJ8wHUq8vdRVPIDLj1ZVzWzj+7kIfNIt+T8PCy+k7howYzx
 qtIerzNIrnM9KAhrHUZXf7yewQ==
X-Google-Smtp-Source: ABdhPJyXNheK4m49L8AbaPRUQSdQxVVLZ0HEDLaS/TTTYaGPOyJpkKcPwwvmyu2BtpGwlgTyfV5Szw==
X-Received: by 2002:a63:b95a:: with SMTP id v26mr15770459pgo.196.1589824974090; 
 Mon, 18 May 2020 11:02:54 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:53 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 10/23] coresight: cti: Make some symbols static
Date: Mon, 18 May 2020 12:02:29 -0600
Message-Id: <20200518180242.7916-11-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110255_500972_1CA6C1B5 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jason Yan <yanaijie@huawei.com>

Fix the following sparse warning:

drivers/hwtracing/coresight/coresight-cti.c:22:1: warning: symbol
'ect_net' was not declared. Should it be static?
drivers/hwtracing/coresight/coresight-cti.c:625:32: warning: symbol
'cti_ops_ect' was not declared. Should it be static?
drivers/hwtracing/coresight/coresight-cti.c:630:28: warning: symbol
'cti_ops' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Jason Yan <yanaijie@huawei.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index 9e262f5a85e3..7fc1fc8d7738 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -19,7 +19,7 @@
  */
 
 /* net of CTI devices connected via CTM */
-LIST_HEAD(ect_net);
+static LIST_HEAD(ect_net);
 
 /* protect the list */
 static DEFINE_MUTEX(ect_mutex);
@@ -622,12 +622,12 @@ int cti_disable(struct coresight_device *csdev)
 	return cti_disable_hw(drvdata);
 }
 
-const struct coresight_ops_ect cti_ops_ect = {
+static const struct coresight_ops_ect cti_ops_ect = {
 	.enable = cti_enable,
 	.disable = cti_disable,
 };
 
-const struct coresight_ops cti_ops = {
+static const struct coresight_ops cti_ops = {
 	.ect_ops = &cti_ops_ect,
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
