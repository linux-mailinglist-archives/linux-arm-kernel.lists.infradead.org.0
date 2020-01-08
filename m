Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BEA133AE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 06:24:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1uhNdBd9QwqeCqUOam6qyYyPiemgh4q9Bzd+BsBmPlA=; b=hQ5i222z23zMdE
	y6PqPKJ5HIGQMWZW41gDdH1tom/f1RTTa23ItfGFO2qbKkecsh8keSn1s7g8Ps6n+W1c1xZP0fTW5
	dr5P/k9KYL08B0MvCbDYwkv/9BHQIY+cYNKggF7UwAk5X6Lt4sj4JEx1kykV/MA8xYahkbDjQ+3bU
	A+gewiSzjg8AanrHQdnx9efl2JLmB+p4bJocRBNPfUnluwJjoqpcuIaeQGDmfAgZK6QDCCU/j1uwf
	bfvWOvOaCWKhUgfRk/krvxo2gltYVVxiZbdahUyQGAF995tVcTQ0kMwsCII4kIkqa1en8MH7hQUdL
	1LKoygfz8SFpuHKahFeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip3pX-0004wF-Bw; Wed, 08 Jan 2020 05:24:31 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip3p0-0004fY-UT
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 05:24:00 +0000
Received: by mail-pl1-x641.google.com with SMTP id g6so631551plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 21:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DM0aqT7mORcDNurEQApqfEBtkQorM/LzpTMTVlrl9aM=;
 b=ncdGwmPrHI55/SBDBh0DPZoQrK3Lo1SJ9dJj2j29oKPgH8ThCHSPN8yJdVWZ+MwCoh
 AQH8qdCIHUUUgK3eD0s2gZ7Scd8kIBUxEuPYi/tYu6vCjPnwJEUy+Ic4IhNL/dhbVFoJ
 n9tJAzlRy9Zb0V7jWB54FlbdHEoNXslhoaz2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DM0aqT7mORcDNurEQApqfEBtkQorM/LzpTMTVlrl9aM=;
 b=JZ1K+2ogPKYwVKvgyTkY5XRC77QZX/MdTDLDP6w3swqJ8sy8//5TVzJgkJT3kbzH53
 bFuWYPmm1PlKzERNgP49YcvhkeGpp45gp6qiF6Z1BlUtE4LUvjsDLuGewVDjMxsRiQoU
 rj4sKTXuSD+JJnIrVwnLNaPKiJoJgFSauMYzLz8ugoNHd+zfJHmGFEq2+80IkJww1e8X
 ai1f8TsMBdRREGnVFf32kSedWNibw45G3qQKMbVa1t+Uoi7m/owaoIRBFyyKKfMZjUjb
 3HCHVnZgBc5ySfUhW90AAbKyobql1hRRdy1gDk4wR9jn2ovtOKGfRF1A+tz8ZhtpHP35
 8nYg==
X-Gm-Message-State: APjAAAX2Evt5m/Q6EbK8/Fwd7oAyD1jZ2rqf8UaOhRuQU/T09eH775zk
 thfY5lRo5GlFnpm3RV5SQq0IMQ==
X-Google-Smtp-Source: APXvYqx6Kh3IRlEF2mYf7QKx3EM0H7n0giv6QuZmqNIaB7ToM5za17Tr8aM8sd8jKkiVpN89SHLohQ==
X-Received: by 2002:a17:902:6bca:: with SMTP id
 m10mr3635095plt.212.1578461038146; 
 Tue, 07 Jan 2020 21:23:58 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id n24sm387505pff.12.2020.01.07.21.23.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 21:23:57 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 1/7] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
Date: Wed,  8 Jan 2020 13:23:31 +0800
Message-Id: <20200108052337.65916-2-drinkcat@chromium.org>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20200108052337.65916-1-drinkcat@chromium.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_212358_980009_96F129F1 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define a compatible string for the Mali Bifrost GPU found in
Mediatek's MT8183 SoCs.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---
 .../bindings/gpu/arm,mali-bifrost.yaml         | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 4ea6a8789699709..9e095608d2d98f0 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - amlogic,meson-g12a-mali
+          - mediatek,mt8183-mali
           - realtek,rtd1619-mali
           - rockchip,px30-mali
       - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
@@ -62,6 +63,23 @@ allOf:
           minItems: 2
       required:
         - resets
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt8183-mali
+    then:
+      properties:
+        sram-supply: true
+        power-domains:
+          description:
+            List of phandle and PM domain specifier as documented in
+            Documentation/devicetree/bindings/power/power_domain.txt
+          minItems: 3
+          maxItems: 3
+      required:
+        - sram-supply
+        - power-domains
 
 examples:
   - |
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
