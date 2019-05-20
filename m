Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8051722FDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+o2oQBZLg1b2QTnIBJjgsR1IOkf5hbLKQ6eH20ptUEA=; b=SxbpIPAzYe6TdW
	GiJXGLe6xQ/Af+BKxsh7PaokOdbrhAPmBnZEkrIMJ0rOIpMatVEXxUdHwBI9MbGPnjFiQVKRGI5DO
	d2+zPdxUDKIjH6AbZlO7Nbe4D8j4aq73dtbfhrdi8jqZTHPftbde0HMptD15mm/BkArZlpMHr9OCb
	R1Rc0wNfmvIDn/VIw02SZYwJxrfgd4xJY1O7u256boahNu975izkQU5J2uVQfLEKoFNAwbOZrvqGB
	V7gMdaeCu5LJa4mbySiaJCG8jfLagiPt2ARRze4Kh7DcrnZsTjdv5b4usJ3KvYZs19Ohx9atOvU12
	xf8BflFdfbt1QCzgm3FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeIN-0004a6-V5; Mon, 20 May 2019 09:09:23 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeGx-00033m-De
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:08:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id y11so6891454pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 02:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RhhbywtZgL9mTL+/aS2gTie5gz+AOsOECX4GcmEvNm8=;
 b=r7FvqZFw/gu/2n+1603wdn3ygdOPws+IPKmHzr+7ytlLH74FqNbxJXLgMSH0OHamIK
 1GA+Ua3+oxWE9TzHS9ArZ45MeQ3PutdmMb9mtkP1VwHF58tBHnNJdJzASpUAarmrwcbt
 hejMLtxkulq1eWgonL7tep/ehNu3uSZ2CB6PQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RhhbywtZgL9mTL+/aS2gTie5gz+AOsOECX4GcmEvNm8=;
 b=EMfRQyWx/ntc3YeLkVFpyUyqd6vDm0RxPapU5/Z+ZLhYEkKRxTkWecNtaTlYHPIuZG
 x/y8rlqkxcwqIdYdK4huWuSvbDT+D/rSiecit5louxKWRjeFDLwjfUKFEdGqi04RUK2F
 Z2GvarDXavQeP4Ehza+5MMfmPpm6kRQKJ76T+BGzHfpLZG7JDGvoIRfVMu5c5XyesWrJ
 N9bhK//PX5Oh19C61L+zNhDnbdTpel8GsKl4hCePj+kvww2InHQTsq12S5sjY24pVG/q
 sCPahHbjL3SUZ4i5+j/XNMxExnKIcRxHT/qO2W1MF4HHFj7PTe7fWeusNmAvQJLdjyjc
 L1qg==
X-Gm-Message-State: APjAAAXnyPhhTOSrXlTZUG7YEpksiTVucznp1JH039D4//2Vv+zUc7Ux
 aPqn4DJw8NlQZRhlB4RLTIE0hA==
X-Google-Smtp-Source: APXvYqz34UXPxRhzfdNer7tUP6i29zQxwtYM7NMLCp3pv/rNH5nWYiFi2u+2vMjGcD+MakpaE3MtkA==
X-Received: by 2002:a63:1150:: with SMTP id 16mr74722565pgr.40.1558343274409; 
 Mon, 20 May 2019 02:07:54 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.193])
 by smtp.gmail.com with ESMTPSA id d15sm51671614pfm.186.2019.05.20.02.07.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 02:07:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v10 08/11] dt-bindings: sun6i-dsi: Add VCC-DSI supply property
Date: Mon, 20 May 2019 14:33:15 +0530
Message-Id: <20190520090318.27570-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190520090318.27570-1-jagan@amarulasolutions.com>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_020755_639227_AE644790 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bshah@mykolab.com, powerpan@qq.com, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
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
 Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
index 6a6cf5de08b0..1cc40663b7a2 100644
--- a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
+++ b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
@@ -21,6 +21,7 @@ Required properties:
   - phys: phandle to the D-PHY
   - phy-names: must be "dphy"
   - resets: phandle to the reset controller driving the encoder
+  - vcc-dsi-supply: the VCC-DSI power supply of the DSI encoder
 
   - ports: A ports node with endpoint definitions as defined in
     Documentation/devicetree/bindings/media/video-interfaces.txt. The
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
