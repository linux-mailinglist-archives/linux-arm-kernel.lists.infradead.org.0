Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 704FA125185
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 20:11:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMFSK0Zbtrzte5D1hN+TfRIBBbim5/aF3BLFWEuekcE=; b=RYBjW/WAB3N5Cv
	njeiDAOvQDxPd6/zpAs8cMIGP3kdXrhSd7185OBEf9bfLBMWlzNqFumd83/Y85yN9xkJtIB7zIFgY
	Y5pz7w+Z5avdRL+Ee2po5o83Nw1Xw/ydmvpERpAbz49QKIuO/XhohVbLeIriq56kcEQ9H6mQcX/Az
	QlNx8YtkfJfdIcpMgba/YXFbnfqJg2Aw0YfvtRIRW68rDTmIzzwf+F2C+onbW9oammCkFkZXs4NjB
	VrKjMkP90JtBfNExxKoj6FHsp7jkoChqiSi+KPlE9ynAwUMlmee7iqYC3ThTGXhGDXKI8OCKzwu1i
	mbJwFMXF23fOMn50smTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihejE-00013p-T7; Wed, 18 Dec 2019 19:11:24 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iheiT-0000ab-6Q
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 19:10:38 +0000
Received: by mail-pl1-x642.google.com with SMTP id az3so1385072plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 11:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=alXkMdM6X6QySpSco6rsE8zxLS76UNqtiB5B4hqdPT4=;
 b=E+8ziUEvMKi8sDEkiES60TVF+tNlUhhj8IHNiBcbbn371WCVzx44hbb9oQmdmCkXGQ
 hj8eBroZ2ihb46/3RVsdTD5NKgRbjqaf4ACgSi6PUIWdb5+180sHUakXUkH++To96gOn
 RIxHPJZtxlLOZtQ2kV8jtPPw49V5Lv4Rc3wWM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=alXkMdM6X6QySpSco6rsE8zxLS76UNqtiB5B4hqdPT4=;
 b=tCFAa2vIYKp2ovCyCw1zu9Sf9M2F4ybIDGGZaF/F85bAfJ8uES27EgBiXZ5YmpkclP
 hgBJnzEFb1+hqlpu9W3iEXukor5jf0AH07OOCgh1xI8rhfr5YPU8zoc8NDioU/lHJnPk
 V8HZIrZyZHW0gRrx33fWhOds1OIC4MknI1QcLvpQrUBUcOsYVYexk6XHmu4XaJnM+C7U
 lg3M69crOu6mUG16iiO1qbXKPcGfu7NX4s6eSVUUWj4/o0T9TKYoaqniTIOZakZxBMYM
 pZ0ABPQGq8Clobo+pegr4tDaaF75zAp8+UFjJctSDxN4fAuJ7whAl4WfgkZp/MZjqokQ
 bN0g==
X-Gm-Message-State: APjAAAVXuF+5G1iQaPloYOKnbeRpRKCXroD3hWaDzIcUddWs/d2KIHr3
 l4ri4M4jdAMhV8WmMBIF9hUq/g==
X-Google-Smtp-Source: APXvYqwbe2b9Mvei8KPI9wO4JZV6Hz10WouMUmvDBFv2bWY2DwHIIMZxDNbDLq6tRccxycc9qNSXEw==
X-Received: by 2002:a17:90a:d344:: with SMTP id
 i4mr4801276pjx.42.1576696236642; 
 Wed, 18 Dec 2019 11:10:36 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:78ea:e014:edb4:e862])
 by smtp.gmail.com with ESMTPSA id q7sm3745855pjd.3.2019.12.18.11.10.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 11:10:36 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v13 2/7] dt-bindings: sun6i-dsi: Add A64 DPHY compatible (w/
 A31 fallback)
Date: Thu, 19 Dec 2019 00:40:12 +0530
Message-Id: <20191218191017.2895-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191218191017.2895-1-jagan@amarulasolutions.com>
References: <20191218191017.2895-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_111037_283541_D8F0F0D1 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI DSI PHY controller on Allwinner A64 is similar
on the one on A31.

Add A64 compatible and append A31 compatible as fallback.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v13:
- collect Rob review tag

 .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml         | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
index fa46670de299..8841938050b2 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
@@ -15,7 +15,11 @@ properties:
     const: 0
 
   compatible:
-    const: allwinner,sun6i-a31-mipi-dphy
+    oneOf:
+      - const: allwinner,sun6i-a31-mipi-dphy
+      - items:
+          - const: allwinner,sun50i-a64-mipi-dphy
+          - const: allwinner,sun6i-a31-mipi-dphy
 
   reg:
     maxItems: 1
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
