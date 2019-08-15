Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 062E48E22E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9v2YeJTSlaOofsnVPNb/ZxaxH6jRJU4cLDBo0g7rY8=; b=DiQxFXT7rJWNPY
	MFfJ+W1qVXc5NBLQzRKBoyWNfPWvZnZdidDLiAkl5KEyvG3eIk7xlwvSGTKo7uUnCJN15f7EgMWtl
	EtraEEoNPcFeq7LpIpLsw73x023pPnCfgrwyuv0UiqaxkIldLgjUet2SFKA9BA6wtfs98uNZ1e+cT
	ZZOVt/A1dzgTZVnfzX8+nGqGzpBF0XMrqXG9L5DOYe3wW0pd/yqaK5V6VjwN9rShiVTNEMvex2z8P
	6OvxX8mT/5HKM/k+lXGVyXE1rgyhCjfltUTR2lINVnm9U2C7enBe2Rxw8vH3v7VJOdtiBcNdKpvta
	EN7hwaSz/OBJxAHMScaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy40L-0007sA-US; Thu, 15 Aug 2019 00:52:38 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3x8-0004dD-63
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 00:49:19 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id C34763EE60;
 Thu, 15 Aug 2019 00:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565830157;
 bh=MgVVYz3IFOaEWkO0SUurG8P6fyggfR5oXu1sG6fhpmg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Bp3wTiAHR/MmK4BZ7UH9Kofa1DoQnFfUoY1BKE1p7bS2jKvwMZ7NtUQ5SBR5Yj8oM
 zZ7+UhUUD4ei3UIylr8qmYdCQjodCRWJM/JTShTg5Zfsl89p5BwGyP2ttJlRD5qKXe
 N+p9CACHiMQ9R+jKZjKW/Z3Ee5GDeUksSCLoV/uE=
From: Brian Masney <masneyb@onstation.org>
To: bjorn.andersson@linaro.org, robh+dt@kernel.org, agross@kernel.org,
 a.hajda@samsung.com, narmstrong@baylibre.com, robdclark@gmail.com,
 sean@poorly.run
Subject: [PATCH 09/11] ARM: dts: qcom: pm8941: add 5vs2 regulator node
Date: Wed, 14 Aug 2019 20:48:52 -0400
Message-Id: <20190815004854.19860-10-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190815004854.19860-1-masneyb@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_174918_321879_5D68B4F6 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 jonas@kwiboo.se, airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, enric.balletbo@collabora.com, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

pm8941 is missing the 5vs2 regulator node so let's add it since its
needed to get the external display working. This regulator was already
configured in the interrupts property on the parent node.

Note that this regulator is referred to as mvs2 in the downstream MSM
kernel sources.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
 arch/arm/boot/dts/qcom-pm8941.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-pm8941.dtsi b/arch/arm/boot/dts/qcom-pm8941.dtsi
index f198480c8ef4..c1f2012d1c8b 100644
--- a/arch/arm/boot/dts/qcom-pm8941.dtsi
+++ b/arch/arm/boot/dts/qcom-pm8941.dtsi
@@ -178,6 +178,16 @@
 				qcom,vs-soft-start-strength = <0>;
 				regulator-initial-mode = <1>;
 			};
+
+			pm8941_5vs2: 5vs2 {
+				regulator-enable-ramp-delay = <1000>;
+				regulator-pull-down;
+				regulator-over-current-protection;
+				qcom,ocp-max-retries = <10>;
+				qcom,ocp-retry-delay = <30>;
+				qcom,vs-soft-start-strength = <0>;
+				regulator-initial-mode = <1>;
+			};
 		};
 	};
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
