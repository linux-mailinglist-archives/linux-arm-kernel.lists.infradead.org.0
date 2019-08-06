Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED37831D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cl8AM8nMgDg8J23l1c3HK9yCmq7hnGiYMEkpybdGfs=; b=hr+e8Tq1f1v1Db
	NlqbFZmyWb3BCyF8HW/Jc1tEgGb1eb2HoM92Htizn7jh2fIUI9n4uimifblbgFpW+b5nDwNOw9TMW
	Xuyjqc/XcGDgnOSlARBGYVsvs3DlcW5yvnVx7GREHTpv79tue/6BSaLw0eBZ+5+ikpMHDqWhsaJ4t
	amqLbDEparryPiD9Pm3erqwkGqiJgGr0PsuYr8jDLA5v3kE+hAsLjJ7kddP2HV+r20q8VIVvSVE9f
	UioIJaBvoVMQoIy1+3fsKK2834nwyMB2VInhEPPdIRZSU9RPuvzEIVOiGZbCcg1VkwhdU4oGAmpLt
	VizP4Fx0jw1xnDBvYQLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyvt-0001ru-9H; Tue, 06 Aug 2019 12:51:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huyvN-0001bI-LT
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:50:47 +0000
Received: by mail-wm1-x344.google.com with SMTP id x15so78093300wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 05:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yzbvwLA71SutNdcRHcgBexC8KRT0RQ0GJQYA84SLkGA=;
 b=O3dE1DHluIpu7fXmyotf13Fm6oEcfDpRu2r5FwuYeHLyxbncudzQIuUVO0dpLrlcPF
 tGM9uz0klewnYgo+rd6yN2F4qAq82UhQyCJRQxj6dtH4eMEcvzoremBWPJhmfINtmfzx
 upgt7GL6h3RkZUmi+HxHGedeta4NBcC2tNsg1pPlSkqkCRcQ++SGOobtwg91tWVaMbbU
 Bh9T0pYvxKSEdp0vvYRhP7h528nS6XSUJBLXObD//8iAITlP2THqfu7y5F87wRXlQMUE
 hU2mxHpNtD9Qxxog1+yr6cIIO6mnZnXBNXdRSyH8rFuH6r+8kh3o4CSGRLiTj54qJbcq
 iNsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yzbvwLA71SutNdcRHcgBexC8KRT0RQ0GJQYA84SLkGA=;
 b=ggH++yPFehrxJBw36N+ZGDZNKCBH9+ReZrPZp6LjkGQ56aH3gPM0XmpEPWNCnzLxx9
 fF+PMwHXm3HSTZBmsX5uaeJ01k8QQodbv2/w4wUHD++Pzaixl9Wxefk9UhCd9dZ3AqBU
 U/euEOXvFE8TZ6VuljPR9Sk5X70BOvcb4195be/ciMVgYXqpNNlibC0K4HLX+T5EnxiJ
 3XDPldak5zjdDr/H9zutiUVm1jwOhpZYn4N6O4SabGq5pGsy6nBAyAG15csV2i6AGaLH
 3HJfEJ5jm8SdXi7UfKk7L771KVOgn/KBmEF4KN8J1aWMf2UD6X2ha2N31SXkbAgt2xBv
 /zgA==
X-Gm-Message-State: APjAAAU9tnt0WqhEfGK67afXnZF+glfx0WQo7B+B4Bq3vkc/ECYv57RH
 4FNawTftw1S3/hxMoQzOTFXLYg==
X-Google-Smtp-Source: APXvYqx80EosVrp9UyukzeR9aDnPspDjd/F40dn6Me7nABU+FtMHoLvpD/lZwMP5x40WKWnwAvJUJQ==
X-Received: by 2002:a1c:c14b:: with SMTP id r72mr4792277wmf.166.1565095844304; 
 Tue, 06 Aug 2019 05:50:44 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id e3sm109049221wrs.37.2019.08.06.05.50.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 05:50:43 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [PATCH v2 1/2] dt-bindings: net: snps,
 dwmac: update reg minItems maxItems
Date: Tue,  6 Aug 2019 14:50:40 +0200
Message-Id: <20190806125041.16105-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190806125041.16105-1-narmstrong@baylibre.com>
References: <20190806125041.16105-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_055045_703943_281B5E29 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amlogic Meson DWMAC glue bindings needs a second reg cells for the
glue registers, thus update the reg minItems/maxItems to allow more
than a single reg cell.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/net/snps,dwmac.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 76fea2be66ac..4377f511a51d 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -61,7 +61,8 @@ properties:
         - snps,dwxgmac-2.10
 
   reg:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   interrupts:
     minItems: 1
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
