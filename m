Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BF81F8647
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 05:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DxCeHvIHafqaYj5+rOtG2PmUBg05Ij0k2JNE1sEn1yQ=; b=Rf7
	krFqC6V1T/5gt3fSLOdqPyPJdIlhhm7RPhE99ml9K60Owwkc2SlFcr1OvVPvzpnLpqBrRecV6ucVs
	KvTAzA4D7NsGRAYKprGXTBRWqU1D/KRwlFfESd4qKqEApYa1mrkz7kqMyx/+vT1OcWDj7jN2LBWgY
	AsyzyCQgQwq09QL3jyOAs6/WiHsP6b+zkpZvDF1sKfqHhduffb7QHmx/N12ZEPBp5UZEP8T8o+dne
	a/knPpdjOtTFEK4MIHVEI49XYN+9mZeze+aDTO7z5E54J02C/zBwevcFv3EONi5djq68Wjq/LwgD1
	x4v2d8uoNvFH2WZzwDTvLrhGQ9Oni8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkIth-0001RJ-VM; Sun, 14 Jun 2020 03:01:25 +0000
Received: from mta-p8.oit.umn.edu ([134.84.196.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkItb-0001Qq-FG
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 03:01:20 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p8.oit.umn.edu (Postfix) with ESMTP id 49kzkQ5ZCzz9vZx8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 03:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p8.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p8.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tv-GXWHld09y for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 22:01:18 -0500 (CDT)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p8.oit.umn.edu (Postfix) with ESMTPS id 49kzkQ3jNsz9vZw4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 22:01:18 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p8.oit.umn.edu 49kzkQ3jNsz9vZw4
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p8.oit.umn.edu 49kzkQ3jNsz9vZw4
Received: by mail-io1-f72.google.com with SMTP id a16so8985691iow.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 20:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=cOgHpCEAAAGqQDbbixnX7uhIWd2KMk0lv565gUU7esU=;
 b=khudvC7kbksJLnNR3xG6AAZ5VFW/9CNcXYYV/ulZ976gfAAaipmqB15w7jO76lIoMJ
 YB9I982kBR9w2M2joRO5CDUZTExYtrIB+V0LlC2Clx8qohj4QgvSR4xKCR1+jz+K5P50
 iRItj7gd4U5cgYXpFEh+c3c7xRYl7BDUXe9DZOV0IrWnVv0ODucjWYIR8kkFp+dMI3Bu
 lvJssg30dL9Ac1IdAuA+cU0zeb5i61gOVz4dwY/txEbznKi7gXL0wmZKFE9PDWid04Jf
 oeIBsk5tqxN5gI3+uj7e2wd8txqTd7SolqocLPy6eZg/QKXgxQ7oqulCFVCuO/Xp4QM3
 FP6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cOgHpCEAAAGqQDbbixnX7uhIWd2KMk0lv565gUU7esU=;
 b=o+y4LH87MA6oIOEo9BTvWRMjbip1qLOGyYt7rFkPN17gQBcfnFtNNNdIXWWqGCXohE
 zdxIM0bP4d3UasoXn1Ird07m1PgGtWBigVMgz5ScZVNkjK0nku/KGUebyJCFt1XTPFKP
 QqAd9AzJZbVPDZBFu0E8D8zBdzHTf77Yooh+HqRCmHaOCZ7afm13m0pNwCFD4fzkm2H6
 G3LWrYtspJYtN/91Zvhsp7GfqX1j+Xma0916g1r5xzeOMc57hzS2S+eYVKDhswyGCV+k
 5saKZHWiiok6YxFzcb9IwJv1w7Qz3NiUXhWAFABnW0ha4Zo5v6JFuTWzeLBR69qo50PP
 fEXw==
X-Gm-Message-State: AOAM533/Q3KqbuOdGMBkWVlC4TWZLoVyc2y4jHDCIGcN5wCpX92XZ4RX
 M3k9CRFnd5NxKQvivsbUB/bhFopdOApWlQnsreDrHuVJyXwejsfzdyxSsLE0FT/0oK51EY0asJA
 we0DaXH46sSUw1cPr5AmIex+058l+ch7Hs89WxT8=
X-Received: by 2002:a92:d112:: with SMTP id a18mr19876654ilb.3.1592103678098; 
 Sat, 13 Jun 2020 20:01:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwTFVu29soAQKwJchdpgwjpKebLlBpdEM/Z/hVt5TRB+tZ1yqGgKWvSgKXVBGcdcozs35SC4w==
X-Received: by 2002:a92:d112:: with SMTP id a18mr19876632ilb.3.1592103677826; 
 Sat, 13 Jun 2020 20:01:17 -0700 (PDT)
Received: from qiushi.cs.umn.edu ([2607:ea00:101:3c74:4874:45:bcb4:df60])
 by smtp.gmail.com with ESMTPSA id q5sm5656947ile.37.2020.06.13.20.01.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 20:01:17 -0700 (PDT)
From: wu000273@umn.edu
To: kjlu@umn.edu
Subject: [PATCH] media: exynos4-is: Fix a reference count leak
Date: Sat, 13 Jun 2020 22:01:11 -0500
Message-Id: <20200614030111.28843-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_200119_596402_50C790D3 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.84.196.208 listed in list.dnswl.org]
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

pm_runtime_get_sync() increments the runtime PM usage counter even
when it returns an error code, causing incorrect ref count if
pm_runtime_put_noidle() is not called in error handling paths.
Thus call pm_runtime_put_noidle() if pm_runtime_get_sync() fails.

Signed-off-by: Qiushi Wu <wu000273@umn.edu>
---
 drivers/media/platform/exynos4-is/mipi-csis.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/exynos4-is/mipi-csis.c b/drivers/media/platform/exynos4-is/mipi-csis.c
index 540151bbf58f..1aac167abb17 100644
--- a/drivers/media/platform/exynos4-is/mipi-csis.c
+++ b/drivers/media/platform/exynos4-is/mipi-csis.c
@@ -510,8 +510,10 @@ static int s5pcsis_s_stream(struct v4l2_subdev *sd, int enable)
 	if (enable) {
 		s5pcsis_clear_counters(state);
 		ret = pm_runtime_get_sync(&state->pdev->dev);
-		if (ret && ret != 1)
+		if (ret && ret != 1) {
+			pm_runtime_put_noidle(&state->pdev->dev);
 			return ret;
+		}
 	}
 
 	mutex_lock(&state->lock);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
