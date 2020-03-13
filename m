Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B29184401
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2IzdKJYHhQ9agOZ8HPBYsOlK8Q5eQ5QGJFOpxlWwFE=; b=jIVO3o45xUTNlD
	uDvzdP9r7W4xZ2QEoD0IFXUh0+IcCWhNtTSWrL2fnHISFgIIUwPWVYsLWLORunRmrFIyzR9PFPKlz
	ArNcbmtPwTuLh2gUUC5HqnTXwWUGIwYGzps7pcKPBpH6DeL+2wt6wwn8a/TN/bdoFtDROox7jRniL
	ioqZcDhzlbG6c90SaIn9YN3urd0a+GoJliVis3HPXrfDj8JRk0ubwUwQWkzF7GU8YALCkKa05NUhq
	K/L2WEzomQO2R1uZSSM+qTV8iDumSgYpgiqecxzROZsXWjXhjdtWtD7c6MSYFreRSeOH3hOUQjW1A
	uh0uqEwIaFYuIiSkBCrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgsl-0006Dg-DF; Fri, 13 Mar 2020 09:45:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgs8-0004g9-AK; Fri, 13 Mar 2020 09:44:53 +0000
X-UUID: be486bb6dddf4d909e1c5166a077d53f-20200313
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=G8lNEfow1SE1PgE3YZ61+NeyQaP2RA/pMRTQGXC1FJk=; 
 b=IpAqdIN1yyhDRRVIuvHca70cO6oQiTKaepFBTWvU78KXt+5UXXzMulpNMUqidKq26ZTsfcY/C5LtbypkgTpmPL4AKGrkDqasv1ItoInk+DIEPbVGiWtQFr5i47Xh8sqfQ04TwANeZGsuSocsVVWeYdpa2AQ0Eac0fyVsei11se4=;
X-UUID: be486bb6dddf4d909e1c5166a077d53f-20200313
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1642951110; Fri, 13 Mar 2020 01:44:44 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Mar 2020 02:34:44 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Mar 2020 17:32:18 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 13 Mar 2020 17:33:42 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>, Ryan Case
 <ryandcase@chromium.org>, Mark Brown <broonie@kernel.org>
Subject: [PATCH V4 11/13] dt-bindings: regulator: add DVFSRC regulator
 dt-bindings
Date: Fri, 13 Mar 2020 17:34:24 +0800
Message-ID: <1584092066-24425-12-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
References: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_024452_372269_E5E997EF 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Mike Turquette <mturquette@linaro.org>, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, "henryc.chen" <henryc.chen@mediatek.com>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Arvin Wang <arvin.wang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "henryc.chen" <henryc.chen@mediatek.com>

Add a regulator as sub device into dvfsrc dt-bindings for MT8183.

Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
---
 Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt b/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
index da98ec9..80f09c0 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
+++ b/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
@@ -17,6 +17,11 @@ Required Properties:
 	The provider is able to communicate with the DVFSRC and send the dram
 	bandwidth to it. shall contain only one of the following:
 	"mediatek,mt8183-emi"
+- regulator : The DVFSRC regulator is modelled as a subdevice of the DVFSRC.
+	Because DVFSRC can request power directly via register read/write, likes
+	vcore which is a core power of mt8183. As such, the DVFSRC regulator
+	requires that DVFSRC nodes be present. shall contain only one of the
+	following: "mediatek,mt8183-dvfsrc-regulator"
 
 Example:
 
@@ -29,4 +34,13 @@ Example:
 			compatible = "mediatek,mt8183-emi";
 			#interconnect-cells = <1>;
 		};
+		dvfsrc-regulator {
+			compatible = "mediatek,mt8183-dvfsrc-regulator";
+			dvfsrc_vcore: dvfsrc-vcore {
+				regulator-name = "dvfsrc-vcore";
+				regulator-min-microvolt = <725000>;
+				regulator-max-microvolt = <800000>;
+				regulator-always-on;
+			};
+		};
 	};
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
