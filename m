Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C44131583B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N1fZYQAhi5UJVdfnYwIaO5pNwNkukBKATm1ZsGlI3Xk=; b=CW3fsEWZORBeCOcZPfsVtbNZma
	BG69iVFVuhhjer8KGA5WXlw0F2DW3uZtzn+KIrtiP0divwT2ciAhjMSZB9cVnmB0OEY4an7pmQ3e+
	433tt8aYX/f1p1ZI5rUOVjQWedvoSh7+4aNuNJxlyHlpJSf95Y/kYrMoGwATAwLN4YMsCc+rm70XG
	gF0YVjd4feMyIGLY2bk8fLpfCxUkWvVvPPKZ1LmL55ftULSg3Oyz/DMrZwHgwGdYEnmgSRQYHvY6S
	Bi1N1BF4dYlNfqsHMAeHFTjr1i6GAjc+xDjE+zRcopIkmWvQqhHFLLiNSyJwYDRfgo0Ma6q+SwFbu
	JnkkKdoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr7U-0008MF-Pg; Tue, 07 May 2019 03:50:20 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr6F-0006Dd-13
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:49:24 +0000
Received: by mail-yw1-xc41.google.com with SMTP id n76so3499545ywd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9QmniU0isUPsb20nms0uTECQTN4zyvU/J+VHxvK4SXM=;
 b=DvC4JizbMPkT8D3fdJC7M6Xm0s8eVYGYYu2sbsxGPOQ3GhcS7BJyo2iccUmsbVKPaa
 ZKmWvieMjHnJKIr/0XUnfs/Ebmilq+vSvHzPfO6rBckkk5JYH7DuwD2/Pz46DKOPlCWk
 /rTdXAuPB0dRk4aynxVAss/V5ezDC7EWVEES6tSFwWj7QV9Btk1tKkw8VOf6fKkhIxgr
 REPqwZZdclj29n7w6F7ifVE7v/0lsnjupql1S/JtmSn+jW/BgsJMkEEyfDIuGGuDRH/5
 rxw7S3NXChbe6Tkd0dndF0UdtboMH+7nO0xkClb0e2EusSyMuswHvkBV7HOKinHUkhBy
 zOwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9QmniU0isUPsb20nms0uTECQTN4zyvU/J+VHxvK4SXM=;
 b=JAySgnnssvvQI+7NCzN01kKd6rBWkjOYPrh0oEFc6jwZQe/DEu7O9Bxyuzxbm4dccJ
 hnHPhkZBbDKrCdR6vT2AvPnU6eN3dikQNV2YU3lnb2c4ii0DZSuLDH8+rKK6zea4ICPz
 FYZgdhBPJH2jwR514hNLwB050rWWkUglCz7anm8OeVK0jM/Oxd9/DrWRZECWYMlMLws9
 O8S500JVdnRRRnEAdKSINGpalcTL6Lp69CWV1440BKlYacJdJ9Or8boqTmO7133K6uyC
 Z/URxQw5ywcF54Fwn9xqvtG4JGIg0o5s07+9sPBuB2HVTASgNMfiFleWfCTSSQdv3yfF
 3C6g==
X-Gm-Message-State: APjAAAXj91utLI2cy7jqAPbMitpz/oti2Ev/uw5mcK0GFl56g7scu9AT
 VWYnno5EDN0o7tXBvgp7Ckvqdw==
X-Google-Smtp-Source: APXvYqzcy1SnZefnmoB4uMSWs6aynhO/Ab7e3KAQMLwxs4gFx6hU2t/9fMqIHIDY3LQAgQsXiKG+cA==
X-Received: by 2002:a25:e7c4:: with SMTP id
 e187mr18990688ybh.308.1557200942224; 
 Mon, 06 May 2019 20:49:02 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.48.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:49:01 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 14/17] arm64: dts: juno: Update coresight bindings for
 funnel
Date: Tue,  7 May 2019 11:47:31 +0800
Message-Id: <20190507034734.20622-15-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204903_419907_03F5EE18 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight dynamic funnel bindings for Juno platforms.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi    | 6 +++---
 arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 7446e0dc154d..26a039a028b8 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -150,7 +150,7 @@
 
 	/* main funnel on Juno r0, cssys0 funnel on Juno r1/r2 as per TRM*/
 	main_funnel: funnel@20040000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x20040000 0 0x1000>;
 
 		clocks = <&soc_smc50mhz>;
@@ -281,7 +281,7 @@
 	};
 
 	funnel@220c0000 { /* cluster0 funnel */
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x220c0000 0 0x1000>;
 
 		clocks = <&soc_smc50mhz>;
@@ -366,7 +366,7 @@
 	};
 
 	funnel@230c0000 { /* cluster1 funnel */
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x230c0000 0 0x1000>;
 
 		clocks = <&soc_smc50mhz>;
diff --git a/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi b/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi
index cf285152deab..eda3d9e18af6 100644
--- a/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 / {
 	funnel@20130000 { /* cssys1 */
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x20130000 0 0x1000>;
 
 		clocks = <&soc_smc50mhz>;
@@ -47,7 +47,7 @@
 	};
 
 	funnel@20150000 { /* cssys2 */
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x20150000 0 0x1000>;
 
 		clocks = <&soc_smc50mhz>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
