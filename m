Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CDB1AD99
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o/nyR4IXxKCtvtaGi/RPn6WZVY5e+0GXQtPgKdncrcw=; b=S6rBW4Ht1jYIb4oTjsa++e2/Sk
	aeiJmhxPdv+OGLqKXqqCfiRknTxzOlyp/7gslDuaXpivc3hbZi5c6hgk5TwkbqUjGUmtGYrSQl1lN
	J+tJqSTSBDapxySLtti41ZjO1BNIz7/qGzx7yVxqRj8A6gaegHk+7NTUydPgvp9agsKNasi3qgcKy
	s3Ed3WqhUwtR7y164OwcVwjrsmn1f0f+drPLApkKNuCixhT3Vyx43ATXCJRUhHt9ArUGcPHTLZ1Tm
	7nGlSl3YY2DbnfMi4upJbPVPbWRrlMiR3vSIad1b7Bc5uQNBaruX797jBhpQ7sgCEi68XX3kYzryb
	vgZuPshg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPsYY-0006BU-58; Sun, 12 May 2019 17:46:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPsYE-00060v-Bw
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:46:19 +0000
Received: by mail-wm1-x341.google.com with SMTP id 7so5533466wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 10:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1WIGTjZh4mIwUZpoXVfzkYofixlglZX9sKei53EYiYk=;
 b=FNPLCR8Sd13vMzZbJg8ptcgHXtjdN1eS0ZvAd0uRFvifNg+n8JpiAcG8DD3rDOsdu3
 xiheRxeCsEA5ATtOgkuuqVXHPzZJGNRMRUdPHZ1jIQu/yLNphwgNpLNI3gBGMVHQDVZv
 P2ULCWwuKNIltsEqQWfvKPwwloxjdzfVnyekrJRLrh2wmTakO94vwauG5Os4o1iPEvHj
 Q3cMxNcOEmPQWVeqM8CxPFspXuvki4g0PULvuebwMYm8rmtBFRCGGjHrEzuHtLdGv2Fb
 5rhSafvgxQVouj4xJmdbx7IWn9lKFcY132hkVU6fW8iQcEfdAcTkpYXh5GP01eC4SQtu
 Uzig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1WIGTjZh4mIwUZpoXVfzkYofixlglZX9sKei53EYiYk=;
 b=al3bosb3DL07d75AIPt0FtFRCApDPNWjJaq/bXZqYWBfrNlrOZp2bBypXiXjZqjNGV
 Mo4tWno6PDmbPg3dDeRJrR4TE7tIOHr6w7KgqgfEgsDZN+sllarnJLADsErLza5ynmxd
 0zfL8qEGmT8a9wL0Gt34g2IpaWKwSR6fCWNScN+o2ykJotd1+o3N4lGry2HTI8wTip8y
 WWJQs5e15VT6ejgYQFR7E7PMmyS/BxuCYqX7E2KoEusGduIIAlla+kPyIWDILUG1RXCX
 4wk/8EoxPf6/AF9Y4wT08PKdq86ALAx8H7yGAaKozmvUDttaXzUJsbOsoR+Q8F38WK8N
 jVUQ==
X-Gm-Message-State: APjAAAULKISbXTkv6cPW5bi8omdugyOyT5XaZXive6Hp3aUnJt0CxCyZ
 LtIDXrfwaTy2KUz7ODN9Bf0=
X-Google-Smtp-Source: APXvYqx2EWKBm+GH/a0JjB7RxHj0gE/6taBHkxJHevcGOh44GOKAT3CUGk1nxZQ0yStWTZtn7JbA/w==
X-Received: by 2002:a1c:a684:: with SMTP id p126mr8448133wme.101.1557683176596; 
 Sun, 12 May 2019 10:46:16 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id d14sm9090558wre.78.2019.05.12.10.46.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 10:46:15 -0700 (PDT)
From: peron.clem@gmail.com
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 1/8] dt-bindings: gpu: mali-midgard: Add resets property
Date: Sun, 12 May 2019 19:46:01 +0200
Message-Id: <20190512174608.10083-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512174608.10083-1-peron.clem@gmail.com>
References: <20190512174608.10083-1-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_104618_402854_0EDFC7E3 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Neil Armstrong <narmstrong@baylibre.com>

The Amlogic ARM Mali Midgard requires reset controls to power on and
software reset the GPU, adds these as optional in the bindings.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
 .../devicetree/bindings/gpu/arm,mali-midgard.txt   | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
index 18a2cde2e5f3..1b1a74129141 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
@@ -37,6 +37,20 @@ Optional properties:
 - operating-points-v2 : Refer to Documentation/devicetree/bindings/opp/opp.txt
   for details.
 
+- resets : Phandle of the GPU reset line.
+
+Vendor-specific bindings
+------------------------
+
+The Mali GPU is integrated very differently from one SoC to
+another. In order to accomodate those differences, you have the option
+to specify one more vendor-specific compatible, among:
+
+- "amlogic,meson-gxm-mali"
+  Required properties:
+  - resets : Should contain phandles of :
+    + GPU reset line
+    + GPU APB glue reset line
 
 Example for a Mali-T760:
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
