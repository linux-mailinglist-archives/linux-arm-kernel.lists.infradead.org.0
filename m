Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A42E16F05
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fusqst4tqXvsUqHazjcvItxe3tZZt7HcPLmQWFb/6EE=; b=Uvtsr5Dx/OvfZMfdo2hPc1NIOM
	O86uTY4GRXlDMalbKXQe2nodkogORRn3HI4p8Vnsxt43lvQFqTVy1mtwfh+/iiLzQHCQfsQB+eqq2
	We1pgbrXp1VUyT282VCBl3CyY+UCZQ6eRdsIuTEu/lFbXpv5LpQKDOV6A5/86sv6jz8sEzjOjUVqm
	YMkrZFkcUU7Po1TdojQxh7w2nod5PxljnIqCYZBt2tAfGxvrYOPS7R5bwMztbEEBpP2HazGRRz3EF
	zekzbMI+coP6jwL+lRchEi4ZyYKqTa2O+F6O2KTlyMH7FmfsZ+gU9PWvAepsBDDoYrs+XpOSdZaGY
	1lzSLhyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCCi-0005lc-RN; Wed, 08 May 2019 02:21:08 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCC2-00051W-2X
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:20:45 +0000
Received: by mail-yw1-xc41.google.com with SMTP id w21so5889836ywd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 19:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AG3FqXHLs4/OFGe9lSxLhNOZ2EEYR0vwOTMhYn26hGo=;
 b=P/eBgw2AZxiQULSdHa/cTRJXa0hypgcD0Sg7WsC+8N1aAaZkkB5Zf79CxpulQW2L66
 H0y4n5HkqbK6Cj22lHTSc63ASar/nQT6Q1d4VsJStFQXUVb7ORvlTSEziogYg5vkwq/A
 5OJJm23AUom2BG0qsfj4piAmSEQdDXTH5p+W7+pajHJkcsKPTnvtVZM2Qx+knKNMKJyW
 T5spVxIbcgr94pyej+So1AJYp9vmsjJeaIZBU24g+hYruPyYwJteP6z5DeSDJfG62s6H
 5AUslmpr6EiXAYrvyjFIpfYXMIwWafgJ5ufqz5eo6/zYDLk8t/3HoQYwi8ahi2+jYzs/
 ca/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AG3FqXHLs4/OFGe9lSxLhNOZ2EEYR0vwOTMhYn26hGo=;
 b=pgygAw95uXRTTNQPCHjzMSNkV9fibRDCmZtdBVnDW78crr1mKpclIeFM6DYHyHlCks
 sm31BtrhuYLcLMaTSeIWxtCvMg/D9yFL40exONzgjn9zrmDoAUEzdiQ0bGKlE0pTEX5M
 JiS45a8mwYj88wgMxh19sDVilR7QNHCDUjQ2GSPePfZDjTdeg92iiuupcJY+m/pJZy5c
 vZzBl0RSqbYZu+vBxiT59RqMMP7WaQEDmlpXKP63Xkobux3VsixpYb+wTB4N+tFQzDXK
 ngGyZJGlT768bdCpNokJE3n4WphuV+pKXp2AVj/Y4PFRP7mxlaSJ4/56gsKJFRY9p5Ux
 qtiw==
X-Gm-Message-State: APjAAAVcbMS0Jai9Lzq7qHa23ShR4sXTNQY/l6r6VMRhORDUWVYCf9Cp
 3/IWqC4qq1HWFn7KnzjIzrEglw==
X-Google-Smtp-Source: APXvYqw0FKw200XiMULFd5Py9JxtXGaMTZc+CwuyFGd8KR6CqMPQe9hjhCvI5Ix31kUBUi/8D01W3w==
X-Received: by 2002:a81:a414:: with SMTP id b20mr25269935ywh.278.1557282025269; 
 Tue, 07 May 2019 19:20:25 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.20.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 19:20:24 -0700 (PDT)
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
Subject: [PATCH v2 06/11] ARM: dts: qcom-msm8974: Update coresight DT bindings
Date: Wed,  8 May 2019 10:18:57 +0800
Message-Id: <20190508021902.10358-7-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_192026_607505_6339FB4B 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 arch/arm/boot/dts/qcom-msm8974.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 45b5c8ef0374..272ebea20a5f 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -897,7 +897,7 @@
 		};
 
 		funnel@fc31b000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0xfc31b000 0x1000>;
 
 			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
@@ -931,7 +931,7 @@
 		};
 
 		funnel@fc31a000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0xfc31a000 0x1000>;
 
 			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
@@ -969,7 +969,7 @@
 		};
 
 		funnel@fc345000 { /* KPSS funnel only 4 inputs are used */
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0xfc345000 0x1000>;
 
 			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
