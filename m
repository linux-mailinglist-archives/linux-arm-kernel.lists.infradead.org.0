Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3969A15CC2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 21:21:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8IgMnifrAK8H903OkpqhyKIEn8oW20gc2tb7bcxqNnU=; b=C9g1Sqi+jjBAdQ
	MwPkNAssvGSPupABJAZ+drYKqpx+93q7U+Rq4W9y7lOd4dmLSzJSG60nXutS+3YxV1T3ZlwTbb3nq
	vLpGygxZUnSQ7vXbEOCS3ojUylGne99eRydDVKg2/wdGAL54MBYoTpjn6pOv1JsHci0I5ncJZa2+S
	PAF5G4fwoy+DxX9i6387HnSU9zGrVpUhoc8SXS041VeuD2eu61q2AvRswB0Xl+ygg1ZuKgVhwT8Tp
	3USP/pI44v5zxj0SJ4h7oAapYPSVCT1QPPOPZgGRAd3JkqYaO8I9H6Mu9WCD64+hsOx9swr5o7rX4
	NLKEowygs08gNsm9Q5mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2KzX-0001CJ-5b; Thu, 13 Feb 2020 20:21:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2KyB-0008OD-6o; Thu, 13 Feb 2020 20:20:20 +0000
Received: from ziggy.cz (unknown [37.223.145.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D480246F1;
 Thu, 13 Feb 2020 20:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581625218;
 bh=/QOiQiXXiovtGHxYG5aVdZh+2JuQfzTgjoE0CRPON4g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Oj/JxisvI2iF45VxuWmSj0gIDnGzoN20SXGXL5b4Iavh1MZDL5qvCBf8pGTJgqidr
 op5+zeRMC4N2jkRM36S6bUvB/BkbVWh/NTXqWBJdl6d1YXwv3E41o5aakUEastTFHQ
 S1jjRigwkT8BXSjgDej7kTb3cfiNtGrEd5FOlt+g=
From: matthias.bgg@kernel.org
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com, enric.balletbo@collabora.com
Subject: [PATCH v7 03/13] dt-bindings: mediatek: Add compatible for mt7623
Date: Thu, 13 Feb 2020 21:19:43 +0100
Message-Id: <20200213201953.15268-4-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213201953.15268-1-matthias.bgg@kernel.org>
References: <20200213201953.15268-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_122019_297350_AB917659 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 drinkcat@chromium.org, frank-w@public-files.de, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, wens@csie.org,
 Matthias Brugger <mbrugger@suse.com>, linux-mediatek@lists.infradead.org,
 rdunlap@infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 matthias.bgg@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 hsinyi@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

MediaTek mt7623 uses the mt2701 bindings as fallback.
Document this in the binding description.

Signed-off-by: Matthias Brugger <mbrugger@suse.com>
Acked-by: Rob Herring <robh@kernel.org>

---

Changes in v7:
- fix typo in commit message
- add Rob's ack

Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 .../devicetree/bindings/display/mediatek/mediatek,disp.txt      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
index 8e453026ef78..456e502f538c 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
@@ -46,6 +46,8 @@ Required properties (all function blocks):
 	"mediatek,<chip>-disp-od"    		- overdrive
 	"mediatek,<chip>-mmsys", "syscon"	- provide clocks and components management
   the supported chips are mt2701, mt2712 and mt8173.
+  For mt7623, compatible must be:
+        "mediatek,mt7623-<component>" , "mediatek,mt2701-<component>"
 
 - reg: Physical base address and length of the function block register space
 - interrupts: The interrupt signal from the function block (required, except for
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
