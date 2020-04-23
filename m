Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCCD1B54E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 08:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ihe1mOF8kK8CqkBCHmayhXAhJmt5eNRbHfYTO+prPxA=; b=Wg4E+6Fq/MW83G2fLZqlLI+QrN
	EHOFcw0WGwyRoHc+sjy7pqLnwG7/xJbUsAfiT6ZzIawZF76MlL2p2XhfojDahbPd68UufclUxldNy
	FYfLRUOyGIo4GboADF2XFcfgmoslX9OrYssZQBIygbRizFkllx2IblWCgZbodRCsfbLoFpgpzYyGt
	hXXtAlAuosQ7scdpVYKxn02eRfzFWof2xIl1R9lx+Nr85EnFnhDPd5kHZ1G4KlQnSyjXrA+xkTxI/
	t3I4RJkJAyAbAJ/b5cG6qMWtLgCLNvJ02FpLgj4L+KlLCeYYF13+uC9LG2r4D/U8MQv65+eqZI5J4
	PrgZFrpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVg0-0004e3-07; Thu, 23 Apr 2020 06:49:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVfU-0004O9-O3
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 06:49:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id k1so5460236wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 23:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Qh2AKCayNpJpz+3t28lKEbV10G4E1MM67j57xEhM59Y=;
 b=z7oMsLLdQK0XqDuNtQWc0YvoT6k6RBMsN8j1JiCkA/UkpjDALe+OjsSWlqA4KRGMea
 3tWZoyo2Ve0a61d7LFwWTKSjgmyn9EbSO9w9rlnX5wuYV2hgaP0OfKW/A6Mpbto8ybFI
 WO/I8PfABfOWXJqW65tlrr+xrvZieVxeXBwt9g4cftEJ+oSjHM/vaaOgr1DoFyNbYmof
 7VUWmuYRKKIoV1rojbSNCJngaSXLG34jmws5rcMUnZsjRVDjvqXmF7E+ujrf9zxj8AJL
 5rlyPLMdyB2NDsnbl9esIestBWQAKVrjtyYsxoyTD4FkgMF/BnnHNuKKf0TWwUwgBzXu
 3HzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Qh2AKCayNpJpz+3t28lKEbV10G4E1MM67j57xEhM59Y=;
 b=uTiXiavaNbxVZfqrSlzYprt0Y6I12e0kQryfB3RdEX1s7GYs3YVfXYrkzmx8QaBTYT
 gK/LFfzyyc/PkA5xDC9USqclsSjlmRHnb6tVkjujwG7yicgSmTTv+oRnXuCBWBrgz8YR
 9aOSOVUPZvN1+2S2xyHTe+3oU4Mx8yUuoxRgL2UH8nXhKuW4IB/sIRoSK8QpgH5IWqpc
 6gVD7uiUaEhJIEx/h4wIDzZDetxS1bQbAB6O1phK5k+eihbCm1p5UQfuG22Ms7KQkq4a
 rqlHeIyk6ts+Y12D2gxlDUhCjgCprxaTw3fao3u7Xjl6v7Q6ReL+etcb3fR2+FWD3Mwm
 pnPA==
X-Gm-Message-State: AGi0PuZs9IirMuwEq1gZ/PRX8cWhEHo1yoXWJWhtp+ItOtAaXBJCEazr
 /I9GVG1Mrmbhgi2JE1U2eFHXMw==
X-Google-Smtp-Source: APiQypKI+/Bjxffqi4naeicDwFoM/VTUlD/7nyFUlRtZkzSYxxFE4tKDpfzOF0pl9LKZY1WMQ6ExEw==
X-Received: by 2002:adf:dd07:: with SMTP id a7mr3018134wrm.349.1587624542746; 
 Wed, 22 Apr 2020 23:49:02 -0700 (PDT)
Received: from lmecxl0524.lme.st.com
 (2a01cb058702ff004d8cf526990082b9.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:4d8c:f526:9900:82b9])
 by smtp.gmail.com with ESMTPSA id k17sm2254910wmi.10.2020.04.22.23.49.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 23:49:02 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/2] dt-bindings: arm: Add secure-clocks binding
 description
Date: Thu, 23 Apr 2020 08:48:07 +0200
Message-Id: <20200423064808.10468-2-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200423064808.10468-1-etienne.carriere@linaro.org>
References: <20200423064808.10468-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_234905_225961_9803045B 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 Etienne Carriere <etienne.carriere@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Describe how clocks property can leverage secure- property prefix
for clocks handled exclusively or shared by secure and non-secure
worlds.

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 .../devicetree/bindings/arm/secure.txt        | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/secure.txt b/Documentation/devicetree/bindings/arm/secure.txt
index f27bbff2c780..9bc94921f2a6 100644
--- a/Documentation/devicetree/bindings/arm/secure.txt
+++ b/Documentation/devicetree/bindings/arm/secure.txt
@@ -53,6 +53,25 @@ Valid Secure world properties
    status = "disabled";                             /* disabled in both */
    status = "disabled"; secure-status = "disabled"; /* disabled in both */
 
+- secure-clocks : specifies the Phandle list secure world shall use
+  for the related clocks whereas property "clocks" specifies the
+  clock Phandle list non-secure shall use for the that clocks.
+  This configuration can apply for example when a hardware clock is
+  shared by the 2 worlds and the hardware implements a specific interface
+  for each world, i.e.:
+
+  clocks = <&clk DMA_NS>;	/* NS relies on clock handle DMA_NS */
+  secure-clocks = <&clk DMA_S>;	/* S relies on clock handle DMA_S */
+
+  Another example where use of "clocks" and "secure-clocks" can apply
+  is when hardware implements a clock that secure and non-secure must
+  share, as a shared GPIO bank clock, and secure world relies on clock
+  device driver whereas non-secure world relies on a software service
+  exposed by secure world as SCMI clock device. I.e.:
+
+  clocks = <&scmi_clk 2>;	/* NS relies on SCMI resources */
+  secure-clocks= <&clk 5>;	/* S accesses the SoC reset interfaces */
+
 The secure-chosen node
 ----------------------
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
