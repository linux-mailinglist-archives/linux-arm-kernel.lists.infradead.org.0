Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B2E4BFFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I+3U2VXt2rPWTADHakjQk1gBLJXS7I4+qt2u7Xw1jm4=; b=R2N39/9I7SijaNBl+v35EGC4mf
	IPuMKh5ZA3v+xJ9/n/FusRuUmPl7TnEedWVwMtnAFis1wNn8tOkgc2O1QnnGgyKpbbPVAxdKUphKw
	uhUicFvFY31cTzEr5PgUt4Bg9F0b5X4mNFS+SUZeLOn0Mud83xsDSJxu9qedGKa2xMhzYQuzLtf6I
	v7NMPFAAC5wnvG/+nJBhz1UPpqE0s7L3fafXxSrxqlwRZfsZQHTkjDTNEqpPpg3rpQPUVnvtCt4oj
	Ly45PDt3XTD1fn1HCYw0cg92WXPYcvK7vWGoSI5Yhhv9A457rvKJL2x7+ltCw0npIbOBzSYvN1ITC
	ynvgDo9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdebJ-0005pU-1f; Wed, 19 Jun 2019 17:42:25 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePh-0000AW-L6
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:35 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay6so85444plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TV+NMprqoFfwSyp0QoUYpBDwrINgLFtHUcekXEvVDhU=;
 b=sBpo5CFqXRXLDhCv8y62pUR5V7GZgSVA03X0GZk67zTB3ho1ducCBLwhTvly1KHNmh
 i/YwqSfZgrBOl1sGaeY1mjoOuWmA9tLRkSUFLcHTr6hwA/UV+ifx2dW9u/4WQKHWVD57
 3iOp0gDsitnJQpoAMuvZDN1JvIhAa1jdeFu1Ml5UdCAFolGgOaaoD5JHVS9gEly+ipZm
 mG0KRE3KC73UFd9aHq42rZU0STVGjdvvZcmQtu/Qzz2HlYDBkhDB2hZlYuYgxi86U50W
 yBHen+fjXp1WSGCiuGLjpojnsGgZ49HR/TscBoVQXnSaGjFseAiRqSTmtol2k2sCH3pT
 ez5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TV+NMprqoFfwSyp0QoUYpBDwrINgLFtHUcekXEvVDhU=;
 b=QVfhdml6aK1K+zWhvgnqC0QHSwgzvPZgziUgtj+Q+V1+k5qWuchouYlxyHOTB5K4mn
 LhGAsgS++V4SfFtcpF4ZN3Hf3e6UTi//5YJh+2kWMB+LB/sAW+RcPZj3pgsrZVHTP5tL
 mx7N5vTYL+aJIKFrT1gydGn407z+ORlnsVQzBmOwEReOnwlRusaZkXTf30eybatOt7BQ
 axvV2QgQoX+uJSLWJjT70EtlFJcXB6ROvbnN1rSdIzSbnlncyKg84RTeTS5dwCTlGUB+
 Bfe1UuQZd6I3V3UE0Sg6pk57yUdgH6DjA/D2LwXp6u/i2a8eFSIi7SnCn7+iLJkqbnBB
 LaTQ==
X-Gm-Message-State: APjAAAUqIaw9qb1f3HmzFJ4Q7CPmXlDU3K3XmlWpcyIpGi4j6CvoE1u4
 8CTXusCwJ2Zh/MRSUIShuXtwEA==
X-Google-Smtp-Source: APXvYqyfMoUypJOJ2YTeNWcgddITRAmy7V80Ob6ua2a/Ytaw+9PXpgs1DsivzdeAO+15b11X851YBQ==
X-Received: by 2002:a17:902:70cb:: with SMTP id
 l11mr3381579plt.151.1560965425069; 
 Wed, 19 Jun 2019 10:30:25 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:24 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 36/45] coresight: Add dummy definition for
 of_coresight_get_cpu()
Date: Wed, 19 Jun 2019 11:29:40 -0600
Message-Id: <20190619172949.4522-37-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103025_783212_389B39C1 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

For !CONFIG_OF case, add a dummy definition for the of_coresight_get_cpu().

Reported-by: Mike Leach <mike.leach@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-platform.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 6fef8732eea5..3c5ceda8db24 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -307,6 +307,11 @@ of_get_coresight_platform_data(struct device *dev,
 {
 	return -ENOENT;
 }
+
+static inline int of_coresight_get_cpu(struct device *dev)
+{
+	return 0;
+}
 #endif
 
 #ifdef CONFIG_ACPI
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
