Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8CE1EA661
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LoQZwh5qHPYDBlZxtdyCnw1BkzsVp0S3KLelEe5S4og=; b=BLvCT9J0Lsspkl
	w+FYB3e9B08RHjprKhA9akKyerT+Y8T4eBqsTimiuMDW8BkrTScT+tawarHfe5yEKh68EzeyNr791
	uVzeaO7M0aNISqjH7/x8eiP+uNT0mHNwcwYtGP9g+cnmAGR39zpYsK2fiqQe3Ojr/m+zlT8LL9Mt0
	/XJkWF4oGtN9BuQa3GodFQny5tG9XFqPJT0ottTknBzMw2/DbaT1hkw57y491ZCujrR6JcmVTMEVJ
	P7e5e1iESxjsWHO0/JF9BkmJqEm7dqr5wK0DyLbmKINqymswIg04yL1K2A6od2FKpuZ+6kgr77A4p
	gbciQ+eHUjcT81w8Shkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfluV-00005Y-Pg; Mon, 01 Jun 2020 14:59:31 +0000
Received: from gproxy4-pub.mail.unifiedlayer.com ([69.89.23.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfluM-0008WH-GT
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:59:23 +0000
Received: from cmgw15.unifiedlayer.com (unknown [10.9.0.15])
 by gproxy4.mail.unifiedlayer.com (Postfix) with ESMTP id D5A80176272
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 08:59:18 -0600 (MDT)
Received: from md-in-79.webhostbox.net ([43.225.55.182]) by cmsmtp with ESMTP
 id fluGjH2issG0KfluIjhHk5; Mon, 01 Jun 2020 08:59:18 -0600
X-Authority-Reason: nr=8
X-Authority-Analysis: v=2.3 cv=MdpCRa3f c=1 sm=1 tr=0
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=LfuyaZh/8e9VOkaVZk0aRw==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=nTHF0DUjJn0A:10:nop_rcvd_month_year
 a=oz0wMknONp8A:10:endurance_base64_authed_username_1 a=vU9dKmh3AAAA:8
 a=wHFN-Wy_BNrSwam1PQgA:9 a=rsP06fVo5MYu2ilr0aT5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
 ; s=default;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gm93I/tP/3ljpDVuFJauy7WyI7MNDnanjRIlNgj8E/A=; b=cMk+YVu3/GxiaVWVWz1lE1ZrVS
 8l/GnCdb6pSKNlWiIreBfhU24IvZQsP9bF4setA9YhU33jEBs9c9ZVoSWUuS9KseMTm6/Z9tksspK
 1DUjXnjkY6XWoAKA01b74afx/hB4JQmhZycUuSsczDyPgoWH9KQTr4hFFwnn1Qfx6GQF5sn77QAl+
 juqVobIb7eoac4dHwQwFPVytuZKGpr3WSuTWapwTRvzWqThy0WwqVn9+k6JXxx9yb+7iPqcuE6uUY
 iTvC0dZic3SDry22V6cfoCUQp1aYXCKxn92fdzVFRXHm+MQRdCpRTrZ+luvxL3hK8z+7lX4Go+JXR
 wQdaXb3A==;
Received: from dslb-002-205-073-081.002.205.pools.vodafone-ip.de
 ([2.205.73.81]:57650 helo=arch.fritz.box)
 by md-in-79.webhostbox.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <parthiban@linumiz.com>)
 id 1jfluF-0007Bg-Ax; Mon, 01 Jun 2020 14:59:15 +0000
From: Parthiban Nallathambi <parthiban@linumiz.com>
To: m.felsch@pengutronix.de, shawnguo@kernel.org, robh+dt@kernel.org,
 s.hauer@pengutronix.de
Subject: [PATCH v2 1/2] dt-bindings: arm: fsl: Add MYiR Tech boards
Date: Mon,  1 Jun 2020 16:58:56 +0200
Message-Id: <20200601145857.5658-1-parthiban@linumiz.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 2.205.73.81
X-Source-L: No
X-Exim-ID: 1jfluF-0007Bg-Ax
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: dslb-002-205-073-081.002.205.pools.vodafone-ip.de
 (arch.fritz.box) [2.205.73.81]:57650
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 20
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_075922_610712_05908594 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.89.23.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [69.89.23.142 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Parthiban Nallathambi <parthiban@linumiz.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add entries for MYiR Tech imx6ULL eval boards.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index cd3fbe7e3948..592d73187da4 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -264,6 +264,8 @@ properties:
               - armadeus,imx6ull-opos6uldev # OPOS6UL (i.MX6ULL) SoM on OPOS6ULDev board
               - fsl,imx6ull-14x14-evk     # i.MX6 UltraLiteLite 14x14 EVK Board
               - kontron,imx6ull-n6411-som # Kontron N6411 SOM
+              - myir,imx6ull-mys-6ulx # MYiR Tech iMX6ULL Evaluation Board
+              - myir,imx6ull-mys-6ulx-nand # MYiR Tech iMX6ULL Evaluation Board with NAND
               - toradex,colibri-imx6ull-eval            # Colibri iMX6ULL Module on Colibri Evaluation Board
               - toradex,colibri-imx6ull-wifi-eval       # Colibri iMX6ULL Wi-Fi / Bluetooth Module on Colibri Evaluation Board
           - const: fsl,imx6ull
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
