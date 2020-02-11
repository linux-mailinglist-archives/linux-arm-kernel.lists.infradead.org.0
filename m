Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A23158F4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:54:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WyTTxqhdjjQ1L4MlbT9ezWhJsjHbOEBrwSFnqoQghtU=; b=o+P4Bb1EfZkm7VSDsSzg76Ig2T
	XmNJYfNl3xNTqZaIu6toHinaCylV0MmFUMEaPa0z10jl6NCHoIsHDtBuAQl9CmdeGeqCunRFTrIYA
	jedNJ6jNwybssYRPEBaUHa5rnGLqqvDcnO0c+3pK3bQLRL1QPr5tmtcKze7S5TrjYE+D5Ok+H6Uki
	3Ovx6yN/m8mUh8mwH5trGTF5YWXXJ5tUpVxa0SxUOLsRiUuCJa+v9wZ4ASnZ8uzOGrWCPtSbmmKtF
	K2J11KjVaYr9DnRHTGeUwznSmXj/qOgJtXSDw+X31Nks4AHhjWmKmvWQNn2LB8/RGx+hKeuEhjOWI
	UwUE3PFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1V43-0006vh-V2; Tue, 11 Feb 2020 12:54:56 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1V3V-0006VF-VJ
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:54:24 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B62711A3557;
 Tue, 11 Feb 2020 13:54:20 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 344C91A1CD7;
 Tue, 11 Feb 2020 13:54:05 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 12F8B402E0;
 Tue, 11 Feb 2020 20:53:52 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, broonie@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, andrew.smirnov@gmail.com,
 manivannan.sadhasivam@linaro.org, marcel.ziswiler@toradex.com,
 rjones@gateworks.com, sebastien.szymanski@armadeus.com,
 aisheng.dong@nxp.com, gary.bisson@boundarydevices.com, angus@akkea.ca,
 pramod.kumar_1@nxp.com, rabeeh@solid-run.com, cosmin.stoica@nxp.com,
 l.stach@pengutronix.de, leonard.crestez@nxp.com, daniel.baluta@nxp.com,
 jun.li@nxp.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 4/4] dt-bindings: arm: imx: Add the i.MX8MP EVK board
Date: Tue, 11 Feb 2020 20:48:27 +0800
Message-Id: <1581425307-18567-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581425307-18567-1-git-send-email-Anson.Huang@nxp.com>
References: <1581425307-18567-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_045422_169050_5890AEB8 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add board binding for i.MX8MP EVK board.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
No change.
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index c5b0270..b8c8c72b 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -324,6 +324,12 @@ properties:
               - fsl,imx8mn-evk            # i.MX8MN LPDDR4 EVK Board
           - const: fsl,imx8mn
 
+      - description: i.MX8MP based Boards
+        items:
+          - enum:
+              - fsl,imx8mp-evk            # i.MX8MP EVK Board
+          - const: fsl,imx8mp
+
       - description: i.MX8MQ based Boards
         items:
           - enum:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
