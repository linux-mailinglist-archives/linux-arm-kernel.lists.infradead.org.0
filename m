Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6A9177A06
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:08:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgHD2cL6+gdunt7XEtXVWBuphmqDNHsvcg742FvBfAA=; b=mN4scxZ0me6P41
	1eGU0N+0n28SzEbTBzSvMdcMYXkl5aM36QGnm9PAoR06syTOC+DLJEHzzIrG5VeFgXgoB6pH62a0S
	oZCfkT549gcFiDuTRarvKAV8EOy+Mtz2OY2MgBT9SXdfjkjxA9wvh4xvPoTAxjSqL6ZnW/v5Z/PkW
	1X5urIuSgsOnRKM1Xulk3MSJCnonn5y2G9vBEDcG01rJi0ucohLe2kW+h1q+n3Xj8ueu7Ne65EOKK
	DLmSAp+WXmTqd6hzRhfePjeSHPcanTtS8qKpYvxgdXkvxWJ8AYlpMiTQb33LxpAdcx2x/9WVFLcRe
	+m9p5oLdpxurtyclGhGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j999y-00059h-OS; Tue, 03 Mar 2020 15:08:38 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j999M-0004l8-JX
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:08:02 +0000
Received: by mail-lf1-x141.google.com with SMTP id n30so3050630lfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 07:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B30v3NBJ89pTZvCRAyGguiMnt+PH3RI+BA4eDrldRLY=;
 b=k/Z9gXXqNlqfswOQwls9gp/b1woar1i2f5V8G/kc56ZdmRjSnj8PGdrlMoAhZe/J5Y
 K3fnFzs2hsZawrNoqYblo5+8ztsKhuNfmaaKe6W30Yncrf1lUS1bi/qcTsTX+uQTxnZf
 GBWAQSh35JRJkc3KU8ZbmX420ykXl8bYoMw4i9nc0egLBhA/s25pvvJQUb0KcUGUuklf
 uw5itk1tZg8MnPhLaM153kWr6hd9P2c1H7Gbpe+/JRrvEeP3P/kX3HD6eg89gpryUjp7
 pabbouy0baZYlRoExtpecn9l0khYWrqTkAMHIGsEMDkKI9lrpD/5duiHzSScjUnRrWXc
 bUUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B30v3NBJ89pTZvCRAyGguiMnt+PH3RI+BA4eDrldRLY=;
 b=U0AanpobPpGKFMMtnhEuEWFivGi/38DdihNMyPv2AlPIsvIrKo0/vAuijLGG248COZ
 7zUWbowg54kiE3eFazY5nxVJMufr2JWBnfAOpKdwJtmZ0fgZ0073Ls0yty0e8FkGzTZY
 yh9FISZeZSoTBHEAXpj1gb986/cVa8/qdI1Kiz9Alqgl/+KoVL/Cc/cZY8uVIrvJW7mz
 cnE1OsIQEFadUQu+8IV/fi+KQ3FmOm97Hra/rm+MMnRWkWe9eUTw/O+VdYddouRwWYyl
 CL8gh7T5qDM8ofjiN5pX0jbhYyCku1UmMfvbY/WCn6viY3dGm9PPB80S2msqhMXdiS0j
 DWyw==
X-Gm-Message-State: ANhLgQ1Xf5uvOXd88PTgmcydjVD4734skr23BbBQVksPTZP8xma8D9tF
 5a505wD87TAj4Drt6Mo7KAGlMA==
X-Google-Smtp-Source: ADFU+vsNa2Cmu28UnbH+m7iPEgdhqmX6OprzfWRZhA31z6e3MSYvdgClxx8aL3JsLOL6vHbmRtGbDg==
X-Received: by 2002:a05:6512:304c:: with SMTP id
 b12mr2036672lfb.196.1583248079201; 
 Tue, 03 Mar 2020 07:07:59 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id n189sm12143135lfa.14.2020.03.03.07.07.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 07:07:58 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, devicetree@vger.kernel.org
Subject: [PATCH 2/7] dt-bindings: arm: Fix cpu compatibles in the hierarchical
 example for PSCI
Date: Tue,  3 Mar 2020 16:07:44 +0100
Message-Id: <20200303150749.30566-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303150749.30566-1-ulf.hansson@linaro.org>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_070800_642119_67CF38B5 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 Documentation/devicetree/bindings/arm/psci.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index f8218e60e3e2..540211a080d4 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -199,7 +199,7 @@ examples:
 
       CPU0: cpu@0 {
         device_type = "cpu";
-        compatible = "arm,cortex-a53", "arm,armv8";
+        compatible = "arm,cortex-a53";
         reg = <0x0>;
         enable-method = "psci";
         power-domains = <&CPU_PD0>;
@@ -208,7 +208,7 @@ examples:
 
       CPU1: cpu@1 {
         device_type = "cpu";
-        compatible = "arm,cortex-a57", "arm,armv8";
+        compatible = "arm,cortex-a53";
         reg = <0x100>;
         enable-method = "psci";
         power-domains = <&CPU_PD1>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
