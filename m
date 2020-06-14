Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9B01F8653
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 05:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=USQfoGlcy8XPBKlyx4U6ebeeyvdUceaOzghqZcUggtI=; b=HTZ
	ZFynUDEPQ7wMeTYpW4FpJCmifeeggvDwRPc8w/k8GaJwp4engXtPFb8JUX88bwGId/tHtlyEAgLj5
	v+s5ak3ChO5uEhpdzGCyW3QZ8DVMjyVIbCsgTotzzg7zsOXI6GpIU7vhs7Kz2015d5nzUT4/6ejMH
	b05l70VEBO/I8Dt1Gi5MuuwSt65oZTQNKjgcMkt6wXZQzI0mbyl26AeOSjEi8AKbNVMYx6CSsm+uo
	+m3xXt9txUeddxWlClm4bBiyB0uKcL0+81w9ksZnmb0y6ZY+9+YfnW5yU+nviSnr4Qhy3T3Ro0FFq
	UQF+i+ZDvEek2wZQCH4K3GQyPPl662A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkJ3A-00075U-LK; Sun, 14 Jun 2020 03:11:12 +0000
Received: from mta-p5.oit.umn.edu ([134.84.196.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkJ33-00075A-Hr
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 03:11:06 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p5.oit.umn.edu (Postfix) with ESMTP id 49kzxj0Jmlz9vHdR
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 03:11:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p5.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p5.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vqq5uPVBNX0w for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 22:11:04 -0500 (CDT)
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p5.oit.umn.edu (Postfix) with ESMTPS id 49kzxh5hwFz9vHdB
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 22:11:04 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p5.oit.umn.edu 49kzxh5hwFz9vHdB
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p5.oit.umn.edu 49kzxh5hwFz9vHdB
Received: by mail-io1-f71.google.com with SMTP id x2so3537380iof.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 20:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Tvzr1gexpz+XRT9cgNKtj6wgeM1vIvcw44KBepZR6D4=;
 b=dY/qYHxSJdD8wAPz5h0FzAjVdWnVxvU72g1FCz0rJabbboMQPb4mkbyhXsW3/U4OSd
 tG2GxLxvsYxVLnaDmrBSXbveACEyS381htloR096Mv2VmnZieGOW6NKYkZ7fWrV2iVFk
 ax3PGuCq8fIkqEk843jjTIsJ4uPPnzUNyn6t6ba2w1u0gGl4RmuUKDXBMpwPCLXMCWh+
 N6oaBSFszaA35qXd8F4iEDmVlLuXUaCgV9poTt2R1spjs+/ORhl5sK88oF3W7oNshyca
 4x61BV8RjdvWh4c0DA1qre73dHxLnFLqeAI/J9rO+n3zIU3l8b9sM3TSvclk+yocs9kT
 KvTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Tvzr1gexpz+XRT9cgNKtj6wgeM1vIvcw44KBepZR6D4=;
 b=AAAIkKNow/hg+UE3spEykF87rLKp7Y+y1JXv9FtI/tqq8XoFDiT3v0fSVcBsy0i1f/
 olaHmdZVGRmZnOmRhEBj5GFJyqzvc+TZ+HwirLU3d0bjzBvX3C3eROzKUhVpES1e7PX2
 86jg+B4OArgMwuq+5DJWuos4Hu+Bz8cDqvqY9WpoZ29bnrieRxlnowviaFQAmjWBIfpH
 oY+FuQbg2xpEnlaWCMAkyV6SMLqXGl8WbbBLRYHvDcX7oVRjW5xKNsSH/2JyzvSL3gjt
 AjOJbfejshSdCz3La7coN8y9Q8aub+cOQIfm2YiHhNZimlZyWSageTenp8DKZ9Cbwvfo
 CeIg==
X-Gm-Message-State: AOAM531xhA5oQE3QrKXNB/V0y4zeCvnDKuyG5mLYrK+wHgXzV1f1cZQD
 //ZJlGagC3N2w8oaY3bWzCIWwO3RDlZH+d/fK6VegpctDoy2VqcG4Myi5b/6WSKnHBekMGdaIfq
 Ep+/hiXLObaDZx2ME014zlCtJo6KH5BKii7ejui8=
X-Received: by 2002:a92:2906:: with SMTP id l6mr20963400ilg.105.1592104264294; 
 Sat, 13 Jun 2020 20:11:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwfPqC77rIfEaxFBW9gjDsioh8PzhonurOjVS/5EVI+YZOFekhI0LDWSnL9wCyzLaBMx6s77Q==
X-Received: by 2002:a92:2906:: with SMTP id l6mr20963390ilg.105.1592104264017; 
 Sat, 13 Jun 2020 20:11:04 -0700 (PDT)
Received: from qiushi.cs.umn.edu ([2607:ea00:101:3c74:4874:45:bcb4:df60])
 by smtp.gmail.com with ESMTPSA id x12sm5667765ilm.48.2020.06.13.20.11.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 20:11:03 -0700 (PDT)
From: wu000273@umn.edu
To: kjlu@umn.edu
Subject: [PATCH] media: exynos4-is: Fix a reference count leak due to
 pm_runtime_get_sync
Date: Sat, 13 Jun 2020 22:10:58 -0500
Message-Id: <20200614031058.30161-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_201105_677750_C62824BA 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.84.196.205 listed in list.dnswl.org]
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
 drivers/media/platform/exynos4-is/media-dev.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/exynos4-is/media-dev.c b/drivers/media/platform/exynos4-is/media-dev.c
index 9aaf3b8060d5..cfb6891180b0 100644
--- a/drivers/media/platform/exynos4-is/media-dev.c
+++ b/drivers/media/platform/exynos4-is/media-dev.c
@@ -484,8 +484,10 @@ static int fimc_md_register_sensor_entities(struct fimc_md *fmd)
 		return -ENXIO;
 
 	ret = pm_runtime_get_sync(fmd->pmf);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put(fmd->pmf);
 		return ret;
+	}
 
 	fmd->num_sensors = 0;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
