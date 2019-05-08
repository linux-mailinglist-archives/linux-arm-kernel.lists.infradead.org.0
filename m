Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E67CE16F06
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9HR2CH1Rr6jXJD7pwo1w8jPVnO2fueVO51RT724uDa4=; b=A8mX3Kf/rGnL0/dvQ9l8jSw5Xn
	K+Os6X2Xvrjg5whdFC6yyeF7mWf8HO6+YosVtzQ/q44PqMY1JUNY0IH2WN/R0YiBSqmPffMcXZ0vK
	NXfR46O37YoxkGChTqGAqUWj3fmohnzXdHD+JvhcRFsM+9u3PEPZjRdWP0F9DBGNoHFB6iyHmcuXz
	ovdiue4zXo7nPQ0figcCmJMspSbMy5Mjx0iWOvX/wwkPDUJ6kXMB6XKkfwe8giqnbuNU9n/CQEL2M
	MU/WRFQYUcx165Quu6+SvhLyhxjrZlkOG+yIW0265H6kdUMh33GPMHwIXL9aHRjAtxACt/vPtKVrA
	8YzKcbEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCCt-0005zM-EJ; Wed, 08 May 2019 02:21:19 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCCV-0005eP-Bt
 for linux-arm-kernel@bombadil.infradead.org; Wed, 08 May 2019 02:20:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ELPN95of+YiOXZ1OxQ8uPptCoKBLr4pqVfRwM3q7Rn4=; b=h809jfPGjRFnJw/V4HDdKYW3K
 +Af1VTRnTxw6ORv2x86Z2z+VDu53OMmGUTNLQK4vaqSrBHRYCID8ciU7SB5vfdj6PQskHR5D7zYbw
 Y+D4oHrMZSXumlaVvW1qi4uC8VA74tvcmBZ0h1S28haBHswp4Ey8G+2iDvaUXx00q8/+lXonC4kGm
 Ok9Ur3YN+S9VH4igcc/e/hhI0yLvf03ZEfITxbFiEyOI9nXgqYQPODePclv6S9gkLLG3yy6sdK4FV
 SARuYqLrcIg0TyNgfCEqITQYK9vn4Iu9XfofqQ1t3X/CWbJ60Xbu9peV/DC0YvbDQozgPWkmYAvnY
 5BwSSN5Jg==;
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCCR-0008VA-Gz
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:20:53 +0000
Received: by mail-yw1-xc41.google.com with SMTP id p19so12146865ywe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 19:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ELPN95of+YiOXZ1OxQ8uPptCoKBLr4pqVfRwM3q7Rn4=;
 b=cscdb65Ju8PNF/KJxd7OgJitjE7xvD2hH+EOqa3yAm/uFo29RFZ0ERGQbKoqO0q9Gq
 zSwcdpJVS5MsuUm/T8tKqVO3RfOIRDRu5aQiqGPIbWM18R952ENHLGhUQnm83PGMmKe1
 EgQal7cm7LlxCvwcYlSTCmJV/MZWGEpist0neYA/7IBRuJwhjlrEQrfw3vvlriUP+kyt
 3ufU5Byby6hWfhMlfD6/MXxpxE2IMyTU78S9/Al7YONQFjUnpwRgxHFDjbL+q1E9jWGB
 FbPBL34cfSR80zIQPoIudRAqVdHiqB7GENsCrGdtBelXwbdTlCXzzjvovHf7d/0iMlgm
 YwFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ELPN95of+YiOXZ1OxQ8uPptCoKBLr4pqVfRwM3q7Rn4=;
 b=AV58b8OY2dI321sGkZVL54C4X/RAP89CTIt1P7tYFdPztLHdPlFWZjSZVwosMh+zMt
 LaajTFa0Y9F7QpaIZYjdltroGo/tP++HFnV6Nx+JiMAat2ZSYpdkJcHcSWEhjIJcrI/F
 8bvpDAyaEd1WE93E1QxBim14qLx5sH0W1SOa+yIC514niBnZulF0oiP+sD/cLHan1rRX
 GIkWRqjWdZi0ZR4uLCThSJLxm3YXsSs012aXS6axJZYBQKceESyAzawaxhzan5J9q0cS
 9JH9PhhWzD5T9Hv1jezQyekEB3CPVV8eUnaDCPOQ7J+F4J7kkWV1rpYTvTL/+iJ8duDK
 xShw==
X-Gm-Message-State: APjAAAXFH/C3i1a5DqK5/UAdVe2/0BSQohFb17urZ7xzw1aZczqi6JPv
 EPeLW2n6uXPGqj2mfgWlC+/3WQ==
X-Google-Smtp-Source: APXvYqzvOq6p0lda62atGvMBmnBlPHx7Zw5jRgRsJ+HkkunEAVkvajT5fwLabmYeGsoo85gnyPLuTA==
X-Received: by 2002:a0d:e6c1:: with SMTP id p184mr9009462ywe.201.1557282047160; 
 Tue, 07 May 2019 19:20:47 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.20.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 19:20:46 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, Wei Xu <xuwei5@hisilicon.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andy Gross <agross@kernel.org>, David Brown <david.brown@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linaro.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 09/11] arm64: dts: qcom-msm8916: Update coresight DT
 bindings
Date: Wed,  8 May 2019 10:19:00 +0800
Message-Id: <20190508021902.10358-10-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_032051_658486_3F1D0AAE 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CoreSight DT bindings have been updated, thus the old compatible strings
are obsolete and the drivers will report warning if DTS uses these
obsolete strings.

This patch switches to the new bindings for CoreSight dynamic funnel,
so can dismiss warning during initialisation.

Cc: Andy Gross <agross@kernel.org>
Cc: David Brown <david.brown@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 423dda996b5d..de49ec110fc2 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1172,7 +1172,7 @@
 		};
 
 		funnel@821000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x821000 0x1000>;
 
 			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
@@ -1285,7 +1285,7 @@
 		};
 
 		funnel@841000 {	/* APSS funnel only 4 inputs are used */
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x841000 0x1000>;
 
 			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
