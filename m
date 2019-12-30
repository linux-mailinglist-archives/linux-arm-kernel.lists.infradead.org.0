Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939B112D503
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 00:20:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nd81Yc14N6vrf/8lobm2sUxVhA3CFd/vi5xp/VC9auA=; b=rudZjCHcEB4hnsXQ9DJSMl8a5d
	QjCmMjA8cxVAexFL/QR3YiIef8zDKFxsSkhqdv2MZ15s1zvA3LFu6tjFP3P2Ps9MqhyWmuUZx+f+L
	EVfb7/GwYrUTwuf6ikfBRr1QxBW6rDZ5MF4/Gcki3GuU0sBgxfpFH4/tSWlW2r8s+tlPKqw0uazDS
	aasTxspuV03XXbUWRnTvpbYFatWuE6MYWEVd/W0qQozJik+q9ImEDoSCgRbeOVJl+vUHF/iq6EmFh
	GUFtw3wAzxEhrwQ+SNZx7izTJQpU3riabnqu2H1KWeV7bzuRwD6I6T74no5Wt7Swv51U//UppUJC0
	D2fNHSMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im4L5-0005gj-AB; Mon, 30 Dec 2019 23:20:43 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im4KZ-0005VO-9p
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 23:20:12 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=rjones.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <rjones@gateworks.com>)
 id 1im4ZR-0001tP-7H; Mon, 30 Dec 2019 23:35:33 +0000
From: Robert Jones <rjones@gateworks.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v5 1/5] dt-bindings: arm: fsl: Add Gateworks Ventana i.MX6DL/Q
 compatibles
Date: Mon, 30 Dec 2019 15:19:49 -0800
Message-Id: <20191230231953.29646-2-rjones@gateworks.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20191230231953.29646-1-rjones@gateworks.com>
References: <20191230231953.29646-1-rjones@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_152011_384462_56EA3358 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Robert Jones <rjones@gateworks.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the compatible enum entries for Gateworks Ventana boards.

Signed-off-by: Robert Jones <rjones@gateworks.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 31 ++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index f79683a..8ed4c85 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -126,6 +126,22 @@ properties:
               - toradex,apalis_imx6q-ixora      # Apalis iMX6 Module on Ixora
               - toradex,apalis_imx6q-ixora-v1.1 # Apalis iMX6 Module on Ixora V1.1
               - variscite,dt6customboard
+              - gw,ventana                # Gateworks i.MX6DL or i.MX6Q Ventana
+              - gw,imx6q-gw51xx
+              - gw,imx6q-gw52xx
+              - gw,imx6q-gw53xx
+              - gw,imx6q-gw5400-a
+              - gw,imx6q-gw54xx
+              - gw,imx6q-gw551x
+              - gw,imx6q-gw552x
+              - gw,imx6q-gw553x
+              - gw,imx6q-gw560x
+              - gw,imx6q-gw5903
+              - gw,imx6q-gw5904
+              - gw,imx6q-gw5907
+              - gw,imx6q-gw5910
+              - gw,imx6q-gw5912
+              - gw,imx6q-gw5913
           - const: fsl,imx6q
 
       - description: i.MX6QP based Boards
@@ -152,6 +168,21 @@ properties:
               - ysoft,imx6dl-yapp4-draco  # i.MX6 DualLite Y Soft IOTA Draco board
               - ysoft,imx6dl-yapp4-hydra  # i.MX6 DualLite Y Soft IOTA Hydra board
               - ysoft,imx6dl-yapp4-ursa   # i.MX6 Solo Y Soft IOTA Ursa board
+              - gw,ventana                # Gateworks i.MX6DL or i.MX6Q Ventana
+              - gw,imx6dl-gw51xx
+              - gw,imx6dl-gw52xx
+              - gw,imx6dl-gw53xx
+              - gw,imx6dl-gw54xx
+              - gw,imx6dl-gw551x
+              - gw,imx6dl-gw552x
+              - gw,imx6dl-gw553x
+              - gw,imx6dl-gw560x
+              - gw,imx6dl-gw5903
+              - gw,imx6dl-gw5904
+              - gw,imx6dl-gw5907
+              - gw,imx6dl-gw5910
+              - gw,imx6dl-gw5912
+              - gw,imx6dl-gw5913
           - const: fsl,imx6dl
 
       - description: i.MX6SL based Boards
-- 
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
