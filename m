Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA12B358E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qLBFOhshzbDJ0/P/l9YK4cYrc0w08eO0VD866hy2MVc=; b=WHCJVhFBYJfToN
	hyz4Y4M2VHnuOVhWWatXn5pQ3M1qJz5KXPbT8gexmhWAM84d5lF2TbBRmttwis1y49+7At498LWLn
	6lUkpGxtLE6gTlewehM92gBzozxI3S8GTKFOV7YvLCxcHMfU7a6YVJbcYXsQxQX/Stf4IbUG9JQvl
	rIUGRW/HZkT2zyXiJzsTM8uTqhAYyYazlDyXddZOCO90bJPezU0xVw76tDgvaV3axAFZMFk8dyUYm
	K5MkmMmjZlNfaBt2i2mwICxTscu3GYMHajdQJylpK+wkyEBoEYjWAUq7NYSe8VAFmSUJe93X18AnM
	Zdo4OYEKCDF/VGv5Nv1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRXL-0006AM-Qw; Wed, 05 Jun 2019 08:44:47 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRXD-00069w-H8
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:44:41 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x558iaLL013111;
 Wed, 5 Jun 2019 03:44:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559724276;
 bh=QKydF6Lu876iSU7k9u/2w0MqEwWA6SgTM0O/bbSGalU=;
 h=From:To:CC:Subject:Date;
 b=moaSXXmEcs6rH/hQuc+U3NW2TtyVq4IHbf3dhyRj/fxxMMa/787KHDwX7uhsgP4Us
 IJnzDW2EjeZGY9z6iqmhEDFYeCr81LHJ7UwTGIk1YdY3XCbzTy0eOWT8/Mb2fLrZsX
 1AEHxxlnoVxQ9pJsYuxMqDKfPrPFbnposzWZ8jdM=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x558iaQn101311
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 03:44:36 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 03:44:36 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 03:44:35 -0500
Received: from a0132425.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x558iWYF019139;
 Wed, 5 Jun 2019 03:44:33 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Vignesh R <vigneshr@ti.com>, Rob Herring <robh+dt@kernel.org>, Wolfram
 Sang <wsa@the-dreams.de>
Subject: [PATCH] dt-bindings: i2c: omap: Add new compatible for J721E SoCs
Date: Wed, 5 Jun 2019 14:15:04 +0530
Message-ID: <20190605084504.2777-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_014439_603913_ED65DE49 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peter Ujfalusi <peter.ujfalusi@ti.com>

J721E SoCs have same I2C IP as OMAP SoCs. Add new compatible to
handle J721E SoCs.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---

Initial support for J721E Platform is proposed here:
https://lore.kernel.org/patchwork/cover/1077382/

 Documentation/devicetree/bindings/i2c/i2c-omap.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-omap.txt b/Documentation/devicetree/bindings/i2c/i2c-omap.txt
index 4b90ba9f31b7..a44573d7c118 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-omap.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-omap.txt
@@ -7,6 +7,7 @@ Required properties :
 	"ti,omap3-i2c" for OMAP3 SoCs
 	"ti,omap4-i2c" for OMAP4+ SoCs
 	"ti,am654-i2c", "ti,omap4-i2c" for AM654 SoCs
+	"ti,j721e-i2c", "ti,omap4-i2c" for J721E SoCs
 - ti,hwmods : Must be "i2c<n>", n being the instance number (1-based)
 - #address-cells = <1>;
 - #size-cells = <0>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
