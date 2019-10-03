Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E2CC988D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 08:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQMUXGFA/TqSe+lxN6O+tCGkuqKesGX80PFs2l9DZ1c=; b=Z/tA2ghLKALIVp
	EhtyApSFjBkZIVtQJ1b0LyQGj/fsfNVH7XmWQUS+ahmoHi85yultLw0638LbLN7sYi0taOFL3U8Y2
	RbKcLlUaqfWAEzUWOOgrLO7rN3BAXQ3BLakavwcJAb+uw1k+KukqmyQY3uDM7ciS/ToI7s4oqIGfq
	cp4JEJXMZqeaXxTPjlIQXYWZjwAekTdbuXga84Y0gS9mmxCJAvqaxDnQJOsPG0L1o+0G6fGvpkcPq
	+5xcqFFzAKxI5L9XtnVmUUVWfCmDFCtkBax8puWgeU1cqIoYbyAdJS6kcREv2o1h7xfxD7TouU2ON
	a3/ihGRGvslZNiP/jHmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFutf-00065t-9R; Thu, 03 Oct 2019 06:47:31 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFusU-0003yN-01
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 06:46:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id y22so1092928pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 23:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m2Ja4VwqADsNhG9MiI8QtGGRH5rBEepqA9PGguqW6g4=;
 b=FqRrQeBDI6qP7YisP5RPpa0YmsWFSjcm5FPhgn4pS9P0YW16mHp84zg7AXHhoqp6Cm
 gDgUpDzbc+PLtvk3hT6omYQpKhCPiie8zC0n6gkOM1ltXtIsdAuhYYixftzVoDlPeH2Q
 azkOMETcbN9z4/zdxXaLLTMbP8Eogw7NEGpo0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m2Ja4VwqADsNhG9MiI8QtGGRH5rBEepqA9PGguqW6g4=;
 b=I75mEpMOwVgW6frDg7iHp0Ai5x3Z1pRcdWCP/i6F77DMjxJ+7ywl8slujXnpXUdmLo
 5kPhWJ4hovpM4SwZmKPBnZ6+6IfVhO9161NhvUK9nRNkIij4yXJI3I7vpethC4y+vrxj
 X+gjVA+qqFJFfMcSYjJsTrZctbgpBo1zVnaUK0InOR/dPCB57jGXUzxgi0bMUwlh/0XQ
 7f1Mgw/5IiJ2SWVENakhz0cUXkhqMGgHscCSla2OdTbkRyF94F3nxowuHXmh+BzeNnwq
 p53bEckl3P5GACCBhI3VS18isuwTdlnjguz+LX9SOKLl7jNn/yn877p+FD8FGK8C59Dx
 B54Q==
X-Gm-Message-State: APjAAAVXbPMHmetyXlnPr4Lb+JIURD+pPnY13ta2s0kWzKaLNJmmj+C2
 9dWHvvFJQfrUWCdVDIB9ZcGO5Q==
X-Google-Smtp-Source: APXvYqxMytEbu1ysTV0gKAoMi1aynyZ8FC5X9e0oC1J/4KWj6EoCWYIBl53obU0Q0lCbqInhurgfxw==
X-Received: by 2002:a17:90a:a6f:: with SMTP id
 o102mr8682523pjo.103.1570085175903; 
 Wed, 02 Oct 2019 23:46:15 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.121])
 by smtp.gmail.com with ESMTPSA id b18sm1423294pfi.157.2019.10.02.23.46.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 23:46:15 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v11 4/7] dt-bindings: sun6i-dsi: Add VCC-DSI supply property
Date: Thu,  3 Oct 2019 12:15:24 +0530
Message-Id: <20191003064527.15128-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191003064527.15128-1-jagan@amarulasolutions.com>
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_234618_120030_6F3D54B0 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner MIPI DSI controllers are supplied with SoC DSI
power rails via VCC-DSI pin.

Some board still work without supplying this but give more
faith on datasheet and hardware schematics and document this
supply property in required property list.

Reviewed-by: Rob Herring <robh@kernel.org>
Tested-by: Merlijn Wajer <merlijn@wizzup.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml         | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
index 47950fced28d..9d4c25b104f6 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
@@ -36,6 +36,9 @@ properties:
   resets:
     maxItems: 1
 
+  vcc-dsi-supply:
+    description: VCC-DSI power supply of the DSI encoder
+
   phys:
     maxItems: 1
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
