Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF33475407
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6v+DnRZrtAW7lQLpP/Z9HAKWZGwF/6Y3WLqGZpG9b0=; b=kjjkfwdJ+CriAT
	qXhRDvqJEKzGkj2HdeH83J9U7mZ1p928WMokSkHWc8ztIFxvy+jzTV79iW4H6G7q7UNZm5GMKS5H7
	DcSRHqR/2gvLwYxGiHnHIeGgU7yuf/EZlI7HZrC15SGSWrb+PXoQD7e+u4qgSZeZBAOZdSxKRAcYX
	ewQwnJh+pe4T6JP+vHEZJPjheKXj0W9wtJcenmVsahodg8p0Ei3eiyLZP2MbcQ+F5kf8JvOTQWCNk
	0dN3jD4V6HgIQmEfj2lIVH3zaPA64FKijFF9b6u01dmkLBI9xshcRKNw4P9b0BWyisIBJWQ4vvmsE
	U4QxSk4bpk2gfHUUYozg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgbe-0004WO-PF; Thu, 25 Jul 2019 16:28:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgZx-0003ez-68
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:26:54 +0000
Received: by mail-pl1-x641.google.com with SMTP id i2so23636933plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gG/c1rZYP/Lhsi0EI5Q4hiD7HEHYOFL8aq+0uJtZefc=;
 b=O1Xy4Ph8788g0Z4Il0vBcgtmO+JIakNribPM/6yKvje4aoJHvcCGsZdzzp0FNjNYhQ
 4/C2bAEJWnOSbANDuRkOqXzad7ebkfoVQe1Q3CAibxLHWGjYgShslvKDqYwTz5htwpVZ
 YVL3rwRVRSqsyKqZk6uCqe7iigXw6VDQRDhTc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gG/c1rZYP/Lhsi0EI5Q4hiD7HEHYOFL8aq+0uJtZefc=;
 b=AQLBxuaIYxT1I/tDh5yC6WOwbm0XsydeA4JtppysP7QqTfl3M/SXwtHAtOsGi7bV2T
 lyfEC0PIsWLE4moWUsY24s6pMTkFLkTXHe0aFDWR/bpQ+6MlREvQJ06rQ/x745nTTR4e
 Qs8NE2opeA4z13X+lfsOpGLs9/hPrbFZwReIaFhqdXRWrvaDAz+OjPi2CA/XYEkhWxe2
 B2wNfqOw3rR6gvXgOE56c5HQxKfW2XOl7wDkIgNtV2ihh77g6su8bHWGAKY/W3oLCXSx
 hsXwBROsWtb5nxxWh/UvalLxvlLzKpyZIhl9AMzJcNQIu7y1BEimW90NFbye7sA4kUfJ
 BQ3w==
X-Gm-Message-State: APjAAAUE2rTeis9jW7j15Fi5lnn9dVoTOAlfyav7S1A8N1ApFZc6zT3N
 PN0+U0A7wfNcQqiJuOflTwvnrg==
X-Google-Smtp-Source: APXvYqzte4K3dxMRHhTLkufFdXK9mPLrT5LC6RPLbefenNQRXKuDKLMvv88/r5XkgwQzItAZBCEeOw==
X-Received: by 2002:a17:902:d70a:: with SMTP id
 w10mr86920964ply.251.1564072012666; 
 Thu, 25 Jul 2019 09:26:52 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id a5sm43394436pjv.21.2019.07.25.09.26.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:26:52 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 3/5] dt-bindings: ARM: dts: rockchip: Add bindings for
 rk3288-veyron-{fievel, tiger}
Date: Thu, 25 Jul 2019 09:26:40 -0700
Message-Id: <20190725162642.250709-4-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
In-Reply-To: <20190725162642.250709-1-mka@chromium.org>
References: <20190725162642.250709-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_092653_339958_4AB6A1CC 
X-CRM114-Status: GOOD (  11.69  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fievel is a Chromebox and Tiger a Chromebase with a 10" display and
touchscreen. Tiger and Fievel are based on the same board.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v3:
- patch added to the series
---
 .../devicetree/bindings/arm/rockchip.yaml     | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 34865042f4e4..01eb1e107ea6 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -128,6 +128,21 @@ properties:
           - const: google,veyron
           - const: rockchip,rk3288
 
+      - description: Google Fievel (AOPEN Chromebox Mini)
+        items:
+          - const: google,veyron-fievel-rev8
+          - const: google,veyron-fievel-rev7
+          - const: google,veyron-fievel-rev6
+          - const: google,veyron-fievel-rev5
+          - const: google,veyron-fievel-rev4
+          - const: google,veyron-fievel-rev3
+          - const: google,veyron-fievel-rev2
+          - const: google,veyron-fievel-rev1
+          - const: google,veyron-fievel-rev0
+          - const: google,veyron-fievel
+          - const: google,veyron
+          - const: rockchip,rk3288
+
       - description: Google Gru (dev-board)
         items:
           - const: google,gru-rev15
@@ -311,6 +326,21 @@ properties:
           - const: google,veyron
           - const: rockchip,rk3288
 
+      - description: Google Tiger (AOpen Chromebase Mini)
+        items:
+          - const: google,veyron-tiger-rev8
+          - const: google,veyron-tiger-rev7
+          - const: google,veyron-tiger-rev6
+          - const: google,veyron-tiger-rev5
+          - const: google,veyron-tiger-rev4
+          - const: google,veyron-tiger-rev3
+          - const: google,veyron-tiger-rev2
+          - const: google,veyron-tiger-rev1
+          - const: google,veyron-tiger-rev0
+          - const: google,veyron-tiger
+          - const: google,veyron
+          - const: rockchip,rk3288
+
       - description: Haoyu MarsBoard RK3066
         items:
           - const: haoyu,marsboard-rk3066
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
