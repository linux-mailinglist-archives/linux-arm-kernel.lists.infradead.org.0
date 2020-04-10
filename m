Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C4D1A48A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 18:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zldkVEdcYBE/BhNsxgB3npLGZnq4gmvS8o7erPqtbrY=; b=hr3dzEfiTvBB1O
	wHxlE4Vd2FNHQq0YDMutyiu2XkMOmEHuvGcz3iMfGQWg5Ew4vQYJVK1duo0h2xXsWIQfc3or8lUlG
	RGSxhnq2iOP8HoUwjN0ZCQ+MPIGPvPVC4qOn5qbQ+nxDA5At2y5TcJROAFLYCiL8sfatx4hAULmD5
	HxYyCc/B49QAzqHGx2eabGt6y/FIW0MXFKFdQxlzJh+RpdkK2FdM3uAvifzNAVNkjkwYPp/RIp8Up
	Lzl6tPQKZ8wv95U4whEuEaK+uTC8cgXtyGqRxZu/ATrVu5bUg9sXRgJUvsUqG4lVbbpuQP3GO8C99
	bls05mOJ/xNCnN6eh0cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMwlN-0006I6-6H; Fri, 10 Apr 2020 16:44:17 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMwl5-00069N-3c
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 16:44:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586537039; x=1618073039;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=9JkGRbsYg8+toGigTFajLnO6Iqv3gSiy36yunV6MGXk=;
 b=1v/yv6Xuh2f/hasCpnepUxgfqADwsK2iVVYU7OMEiOgM3O45x/M8Z/50
 jc05xrRDuDmfDf/3+OdY3hIDQSHq1d6QuxSJalpghdiWwjN+FmGdTk7d9
 coHDLFnwvYiTPmlMZDe1DmLAvv8hOGT2bNU/319yKCchtDDfqnoGSEWEB
 PlpezhYiiQd8AfRjP9Qf6Fkd9xbjP3u5BtoJcy7kjYma6DIyVLxLOYdOo
 iuvCBw3cZ/oklo3neuV/kHHukTdeS975ilKFFfHqG8lcpz5b2cEa2T8RJ
 NowXNl48qlVzjptgso4nyA/3FUihfKFsr4Cu8+eAAZxGfzgS55Vu227Qc g==;
IronPort-SDR: S3lrHUeKtizTNWra8RBdu462rrubxfkJPQCrTyMgrINmO8RxzE1g+MhdMcKDiOycvSGUVStFXl
 gharLAsCNX/T1LE+mL9RajmFGqyCtXm7gcEYubpm9UWx+QHRDw30nhn+x4tGR5lJ7LwNUol405
 gFMbnjKZyP5MHS+nT0MJvFzQdlIE462v3AEiFcLsL75i6VSJmkbh6U1pJRymMPoc93iOu6rv47
 l7p4IrMK5uLLy8waA6Syv8SyNWEkWfyMBOE7pbYC7b/PBtFPZMVZOSnwfG+mOyJPeGN8Jo3z6e
 m9s=
X-IronPort-AV: E=Sophos;i="5.72,367,1580799600"; d="scan'208";a="75501666"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Apr 2020 09:43:58 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Apr 2020 09:44:09 -0700
Received: from cristi-P53.amer.actel.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 10 Apr 2020 09:43:51 -0700
From: <cristian.birsan@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] dt-bindings: ARM: Document SAMA5D2-ICP
Date: Fri, 10 Apr 2020 19:43:19 +0300
Message-ID: <20200410164320.7658-2-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200410164320.7658-1-cristian.birsan@microchip.com>
References: <20200410164320.7658-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_094359_174527_5A2B3DD3 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

Document device tree binding for SAMA5D2 Industrial Connectivity
Platform(ICP).

Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
[cristian.birsan@microchip.com update board name to match silkscreen]
Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
---
 Documentation/devicetree/bindings/arm/atmel-at91.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 0357314076bc..31b0c54fa2cf 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -82,6 +82,13 @@ properties:
           - const: atmel,sama5d2
           - const: atmel,sama5
 
+      - description: Microchip SAMA5D2 Industrial Connectivity Platform
+        items:
+          - const: microchip,sama5d2-icp
+          - const: atmel,sama5d27
+          - const: atmel,sama5d2
+          - const: atmel,sama5
+
       - description: SAM9X60-EK board
         items:
           - const: microchip,sam9x60ek
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
