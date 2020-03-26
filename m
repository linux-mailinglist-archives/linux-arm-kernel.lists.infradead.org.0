Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EF4193D67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 11:57:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pergdyACzBVUMR8iGzbicUneiIGeH648bANnK3QBX2k=; b=atxAFSsaoZORd+
	bOUBgAd3PPWNyuuznsTy0yxxRmjrclcclK9Un8qTpuYsI9fN+Xac9W/33J4DK9WAqmcAqr48otMGF
	jzbGdp9BViaLoyWmah8HigQ1NXLc4Y7iuo2dOgomUzQu8mLCkC97YBFQgYkV97Cg0307J+f9C8OiH
	GCzat/FBG/B36hYPyCL46bNX5NVj0ImAgjpLY0CxjeMbpIN/PdoAt3Z+arRrpJcSZU5FORJMaboje
	qom0ijccARWvjqk0YTGOyEFu3W9dqxKIZKWF14ECvADQE3Rq6xv1E0kb3tZY22fymLbKktb/KByXh
	pyrRi+B90hchRwv4tFYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQCT-0003jV-Jq; Thu, 26 Mar 2020 10:57:25 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQBi-0003JH-M9
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 10:56:39 +0000
Received: by mail-lj1-x243.google.com with SMTP id v16so5831072ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 03:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zynm4D4OhVzqu5xzlg0LOQ/tgbbw9PIYyorUbwLadTE=;
 b=I14sWrr1bBJtFvP4lIZjyDGCEseVkJH/gEWVc8y7qx0eryItq/r1uhn+cbfmhvtpUr
 HdWyQQO7UZVcpRWTpUOOk1lM1NeZo0sFP6VTJkkk0NDP+7UbV6PbKSoNdtcZvZ2ALwaL
 4rqUnZxXUa2Jn1vLJ6/eomFnizUpThfEDhyrILxDJWfBw74jrO23CMOk0EYEh5mxYwOr
 /vfLsBwYaopOhEuBj9CRzp3zzPpVNyXPVRmXWK9QZVSGup3DSBODGsETnYaP0knbSUh3
 Eq3I1bxdwj7bycZOwd+Vkiakl1/x8reyl9XUc2YqEGlNvs+TRrXA2/9rG8aKIsGHgoC5
 BcYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zynm4D4OhVzqu5xzlg0LOQ/tgbbw9PIYyorUbwLadTE=;
 b=C/i+t/tg3b69jKam5o7CBQUDbL0WqoHNx86gXY7/Yf7vRqudWXhYtmyElu75kwkFj0
 DdjacBjlF9Zb/BSq38nb4JYvmf/sCvPlfifJ48H6wMFgs0L7BN5v46H1Jvvml0QLzavc
 1ftmgxYAM39+xB3AdNmRfEDaceSt0fAywRYSPqZcMcCymUoo05AyySJmdST6ni6JtM3w
 fsdG1G1wLcJL4sSxyQei8Y7eX7uJ0R78j0fHVlsb6gIpUdmc4DQUCAoFhvVzcx5MgK+q
 3Ei44R84pw7p8QslUpdorX203fVKFY0QP115TaFz+0go871a3U7HoOl/B7aZLf0eZdZW
 Jj4g==
X-Gm-Message-State: ANhLgQ3u/L0cdkJOZ31qp5JktV3svotJagYwor587KkEiKM0mB2d+wJs
 TmeaMOdSXFYCSa1f1FtaHbWCug==
X-Google-Smtp-Source: ADFU+vt/lXP4078IY8NgCcD2BqnTqfFJuO8JESvRGr9AomT5a/4ZEG2Qu0qn9it+6RpSJatr7K9XbQ==
X-Received: by 2002:a2e:3211:: with SMTP id y17mr4792582ljy.23.1585220197358; 
 Thu, 26 Mar 2020 03:56:37 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id z17sm1214653ljm.19.2020.03.26.03.56.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 03:56:36 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: power: Fix example for power-domain
Date: Thu, 26 Mar 2020 11:56:26 +0100
Message-Id: <20200326105626.6369-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326105626.6369-1-ulf.hansson@linaro.org>
References: <20200326105626.6369-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_035638_721811_D7EE18C7 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The change that converted the domain-idle-states DT bindings to the
json-schema, forgot to update the corresponding example for the
power-domain binding. Let's fix it.

Fixes: 3261227d136d ("dt-bindings: power: Convert domain-idle-states bindings to json-schema")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 .../bindings/power/power-domain.yaml          | 28 +++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/power-domain.yaml b/Documentation/devicetree/bindings/power/power-domain.yaml
index 6047aacd7766..ff5936e4a215 100644
--- a/Documentation/devicetree/bindings/power/power-domain.yaml
+++ b/Documentation/devicetree/bindings/power/power-domain.yaml
@@ -114,18 +114,18 @@ examples:
         domain-idle-states = <&DOMAIN_PWR_DN>;
     };
 
-    DOMAIN_RET: state@0 {
-        compatible = "domain-idle-state";
-        reg = <0x0 0x0>;
-        entry-latency-us = <1000>;
-        exit-latency-us = <2000>;
-        min-residency-us = <10000>;
-    };
-
-    DOMAIN_PWR_DN: state@1 {
-        compatible = "domain-idle-state";
-        reg = <0x1 0x0>;
-        entry-latency-us = <5000>;
-        exit-latency-us = <8000>;
-        min-residency-us = <7000>;
+    domain-idle-states {
+        DOMAIN_RET: domain-retention {
+            compatible = "domain-idle-state";
+            entry-latency-us = <1000>;
+            exit-latency-us = <2000>;
+            min-residency-us = <10000>;
+        };
+
+        DOMAIN_PWR_DN: domain-pwr-dn {
+            compatible = "domain-idle-state";
+            entry-latency-us = <5000>;
+            exit-latency-us = <8000>;
+            min-residency-us = <7000>;
+        };
     };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
