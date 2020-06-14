Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570381F865A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 05:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GYy8cqD6XtYpdqXu4kWkFUdUXk+PiZ0YeG6RwN3gYeM=; b=toN
	RWXGtgeXpvtc54Etwqyu7/x768I++5XAhWtmwcaY5qjITefJm951vxFJ6UXm53tPNJmcqaGxtaY03
	MOEnVB82R2OkfniBKMAlyM5ADHk45m/p467ceVGMoGvFRgdxGDy5jNZDDuNE+xbq7CROHidqsVIhS
	ooHRJ0hwVp/DnhH6B7b9NvGKYsOudCaAowNdTDm43uW/zqLQWEg3IbWwIRRUKMysWv6c+BwN1Dc6+
	D+d25xbMyjlqiiwfSjY3G5Siho2rb00G4XKAEAiLRmR37RG5XjcVxZhme+HdTIIyuP46sJEl653eA
	S3vgdbbqXyRAeYbExu9q9NEpxd4/2tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkJAW-0001lu-W6; Sun, 14 Jun 2020 03:18:49 +0000
Received: from mta-p7.oit.umn.edu ([134.84.196.207])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkJAO-0001kt-M5
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 03:18:42 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p7.oit.umn.edu (Postfix) with ESMTP id 49l06P1L2Hz9vYf9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 03:18:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p7.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p7.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DiTSeQmMTJEa for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 22:18:37 -0500 (CDT)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p7.oit.umn.edu (Postfix) with ESMTPS id 49l06N6nr9z9vYdM
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 22:18:36 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p7.oit.umn.edu 49l06N6nr9z9vYdM
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p7.oit.umn.edu 49l06N6nr9z9vYdM
Received: by mail-il1-f199.google.com with SMTP id l11so9548813ils.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 20:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=HH/45wVNp4vPlnv8y138sW8x+ALttRXOB4XcVO5Zkvs=;
 b=Mr2pHGWcj5Ed4kB6qg+LD4UU7Fdh03ef8xenaEHX4IejelTQRSts1ZUsupl/mg59zB
 XF9CR2+v+hbbLsa1MjbFoPtRr5YYVmZ27DlWKM8xPwZf7yGIv0FbMEznM/ntiMvxZUeG
 i5BHFjA9b7vZXBMhyB/BGgjvsZwwqzLf+OoaQy/+UrP9Kl8BLPEDI2/kbo/YI05R6nGr
 sHBOTRnMNGIaesLVyR5fQUrz5uwTzAf4si+Y7RZ1cpuY/nTd50V/NwKm9C51Cpc69kZQ
 3c/3kaNY/lEordibuKx0qfVo1GwM/l4Loihba7JhTR2rN81SPmcctJMdzUi2yL4uzpdF
 R9Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HH/45wVNp4vPlnv8y138sW8x+ALttRXOB4XcVO5Zkvs=;
 b=rsD+tP29UVHey9zmCwgv8Vx33pmp98UjrAYZva1xigDV2592LMUmuKk5icCBZUe5Cs
 7Tl8rXZGlFRLfxPldHuaaniSilV0gIarh8aPGMdzVvpkGyHhASUNqOxv47FKMWoeRXZs
 Lqqtg23VDnRt03C2VCS2zmueKYJYV3s+EmIIi4iQgMBcFZMuv+9shUV9h2aJunPnZ63C
 KCJlZWb6W47hALabHIHx2Lxky7qjfQX+iot0+8IhAHbFToay+eZ4S0mF7iyeVvlye0aE
 Mt913l0SflAvNAx+ysHA8PGJo/0o5VnlcxLEwndhKjU8N/NrEccT2kd5OF+unjuwp8u4
 g9gg==
X-Gm-Message-State: AOAM532HohpctdbXYYTkRrRKEgOVpNrXwSYvWl81+DeF4DF22+1Da9PO
 K1L+NUOlDRgnolQFDsN4s4J26vjlQhlsN89RDb2yzJfk82RmPDmW5cBGkkRX+ZdcSJPM27ga/c4
 ViNIu9NPHeLy1iohgfp6H+verylCSdAtg+fANZDI=
X-Received: by 2002:a02:707:: with SMTP id f7mr14751046jaf.119.1592104716481; 
 Sat, 13 Jun 2020 20:18:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwvhSbDmYnmF5WV63TX3Cq9IgWRZ8Hr8otgBrXO+ItUH+Xf51d8C1dlXHo+xujD8MZenFDLig==
X-Received: by 2002:a02:707:: with SMTP id f7mr14751022jaf.119.1592104716193; 
 Sat, 13 Jun 2020 20:18:36 -0700 (PDT)
Received: from qiushi.cs.umn.edu ([2607:ea00:101:3c74:4874:45:bcb4:df60])
 by smtp.gmail.com with ESMTPSA id b9sm5559725ils.84.2020.06.13.20.18.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 20:18:35 -0700 (PDT)
From: wu000273@umn.edu
To: kjlu@umn.edu
Subject: [PATCH] media: exynos4-is: Fix several reference count leaks due to
 pm_runtime_get_sync
Date: Sat, 13 Jun 2020 22:18:29 -0500
Message-Id: <20200614031829.31570-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_201840_805931_6D6703CC 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.84.196.207 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, wu000273@umn.edu,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Qiushi Wu <wu000273@umn.edu>

On calling pm_runtime_get_sync() the reference count of the device
is incremented. In case of failure, decrement the
reference count before returning the error.

Signed-off-by: Qiushi Wu <wu000273@umn.edu>
---
 drivers/media/platform/exynos4-is/fimc-isp.c  | 4 +++-
 drivers/media/platform/exynos4-is/fimc-lite.c | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/exynos4-is/fimc-isp.c b/drivers/media/platform/exynos4-is/fimc-isp.c
index cde0d254ec1c..a77c49b18511 100644
--- a/drivers/media/platform/exynos4-is/fimc-isp.c
+++ b/drivers/media/platform/exynos4-is/fimc-isp.c
@@ -305,8 +305,10 @@ static int fimc_isp_subdev_s_power(struct v4l2_subdev *sd, int on)
 
 	if (on) {
 		ret = pm_runtime_get_sync(&is->pdev->dev);
-		if (ret < 0)
+		if (ret < 0) {
+			pm_runtime_put(&is->pdev->dev);
 			return ret;
+		}
 		set_bit(IS_ST_PWR_ON, &is->state);
 
 		ret = fimc_is_start_firmware(is);
diff --git a/drivers/media/platform/exynos4-is/fimc-lite.c b/drivers/media/platform/exynos4-is/fimc-lite.c
index 394e0818f2d5..92130d779137 100644
--- a/drivers/media/platform/exynos4-is/fimc-lite.c
+++ b/drivers/media/platform/exynos4-is/fimc-lite.c
@@ -470,7 +470,7 @@ static int fimc_lite_open(struct file *file)
 	set_bit(ST_FLITE_IN_USE, &fimc->state);
 	ret = pm_runtime_get_sync(&fimc->pdev->dev);
 	if (ret < 0)
-		goto unlock;
+		goto err_pm;
 
 	ret = v4l2_fh_open(file);
 	if (ret < 0)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
