Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 851642B72C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 16:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LS4eHnZMnoy7cjEO0RlPPJ0j0sTckip0wl5yGaFDwsM=; b=J0L+z6HXKFGYuw
	2MgYn28VqhnVz1uN8tDCblUHPjmACexH46M3T0dzRWCNj8NifyTBFILUXce8jFPT2t4Kd3P6jyZ//
	an8UNFmOSzEN7z0M8k48/RnL6//nG06t1iN5iNO45Qaq5Yt8sr4cf50YcgVLe+6dGTJHShPsi49Fk
	BWhFVRHfQUiy4bHQ0YK8pWAtdaMZNMaxWNkpqYtV+APSbeW4n/dXTNw0swMZZ5aQKDNKGGbaq2wBx
	VIs/DRHIYCIbKj4Bq4G2mATIcqhA9YnPk0p6zNb+ceAZRBNo2f5usq7FVFcnd5+fe2eQktzmJ2Vlr
	YVn1hpZl1SUFu/LY3JFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVGCz-0000Ul-Pl; Mon, 27 May 2019 14:02:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVGCb-00008v-67
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 14:02:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id h1so2918677wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 07:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=flCBkYYx+PdHsv3XsjTv06FvsWqxIYgVPOMABFKuON0=;
 b=C3tyRMtkKESDLxtFYlgpiQcewolwEMTiUIVBDr7x3PEKYiuhwu9mydcq7rXOn2Zpj+
 OsuMTPvCWBndgt6LyHD0GA9FYGZQeIC47jc5XYgtkPzOviz/fiWEo0zQt2lrwinFXRw7
 AOQywD7O3Vz97NW2v2vgrY16D0cQXyYbwglSDfrHpxFOcRWboS0TlNGFqJTFo22D8jYV
 wbyfqlGLlr9AaDpY+9idLlBePOMCpeDmzG9oyYN3hWqijW5KY8HYkIsk+VnI/TjhtkxB
 uhWxJU59bNUzA8PmH5dgVa+CBC3ElbIPx/+MJT47AzpEUlGHGncZEGtkj+UEBoF5OS5n
 rlLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=flCBkYYx+PdHsv3XsjTv06FvsWqxIYgVPOMABFKuON0=;
 b=OAedg8IJDQ0slk/9SdEbXo6M3Xfal2MtXJGIgKGocLs6qeUbMzXN3OKj+6+fEtVCO1
 hOMGV0yFip4a0xPpv37yLfQfNEcfv2i9X6ZrArz+BV78tyloZMU1ZuXe7h5q+5pvecjz
 nlOrY4tQJn6VpIbcim5924y0sqYo1Vl66xvD9CLdgz//swGjlNXIBWBH0TdNemJXbXnX
 Xkb9Ftq1XXhvgBQ6MCs6LvJ16HbGDgXfRIxLQXegIgVHihpvtaUESVGjoknhhWzd5oUd
 bhcHu56+6KyTXlxAlSmJ4810JNJFk3EEVwaliXBTKNb8fQrtFvOBx6CH+PzP5mA/HB09
 9dWA==
X-Gm-Message-State: APjAAAUJHC5u1sumK2zJRjLdjOf/Sx3XzIEIs19nIkBympX/wsJnyNlK
 IBgETfmAUY1/ol5tDzhbqFRDRiSHJ7rEeQ==
X-Google-Smtp-Source: APXvYqzB79oAEKLqaqNxNAfhu1XtKKfKofuiCpo+cHunEcCqE0tpQhb0Z0CVOVDbv88FoAnNyf/Ytw==
X-Received: by 2002:adf:fc92:: with SMTP id g18mr11215057wrr.174.1558965731559; 
 Mon, 27 May 2019 07:02:11 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s17sm8231628wmj.15.2019.05.27.07.02.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 07:02:10 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH v4 1/3] dt-bindings: arm: amlogic: add G12B bindings
Date: Mon, 27 May 2019 16:02:04 +0200
Message-Id: <20190527140206.30392-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527140206.30392-1-narmstrong@baylibre.com>
References: <20190527140206.30392-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_070213_225488_D648D738 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible for the Amlogic G12B SoC, sharing most of the
features and architecture with the G12A SoC.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 6d5bb493db03..28115dd49f96 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -137,4 +137,8 @@ properties:
               - amlogic,u200
           - const: amlogic,g12a
 
+      - description: Boards with the Amlogic Meson G12B S922X SoC
+        items:
+          - const: amlogic,g12b
+
 ...
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
