Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 780318E224
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPcciSTzNpTmr3HWa7xqHobEgBJZXeSpBVU/sBwZvwo=; b=tFdw21hOn6L6C8
	3ejvJP3uOaNh3wAmCUJTr2AwOlQWbqRalC3mprDKSDuiyTIRhod5hs8KYrWuzgOxQYdNvIPY4ejrS
	Xc1YBDytZYt0PATdzBk0oFi0697ZdYXiCg1L9gBJVfGW4Ode5qz1h9pUev9psZJwrclRF7Mq20KkC
	sJTw9uu35cEiSyoj3Xd56zU/ZWT57WY3xq34UgY2sZ8BAg1Q+tcd+UCzrg8E0XJKHdun81Iu4fEDJ
	VtN4ydBaecM1cfRXzS0tQSixfdVPaZPDeIIdgNw5AvqhlxjplcOGqtFSAWoJ6TDQh+OGIHdG1/Egf
	RfpLPH1ij6MRNchIZUhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy3y3-0004qL-8g; Thu, 15 Aug 2019 00:50:15 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3x4-0004Zx-5U
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 00:49:15 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 7006E3E998;
 Thu, 15 Aug 2019 00:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565830152;
 bh=onikNoreFBf7Lir0NTdw9PrR2YRnHxeCYQkeZbJ3YvQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KSVmUNaF+Q0K6DwjQyjqoeBvOn/EcvL1UgZjHTVMHSqL77RES/N9Fzns/3ZaSBAka
 1oJVk0pjCCNXe/yEt7U5E2IviJzpSqcT64KjnIKFDfDN2DRWKC++aqaxd9oZv0ipmF
 JbeS94gZj7/gRoZF8kun4tUDaM/udwWxjGLuyn1E=
From: Brian Masney <masneyb@onstation.org>
To: bjorn.andersson@linaro.org, robh+dt@kernel.org, agross@kernel.org,
 a.hajda@samsung.com, narmstrong@baylibre.com, robdclark@gmail.com,
 sean@poorly.run
Subject: [PATCH 01/11] dt-bindings: drm/bridge: analogix-anx78xx: add new
 variants
Date: Wed, 14 Aug 2019 20:48:44 -0400
Message-Id: <20190815004854.19860-2-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190815004854.19860-1-masneyb@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_174914_274602_812A6EBC 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 jonas@kwiboo.se, airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, enric.balletbo@collabora.com, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the analogix,anx7808, analogix,anx7812, and
analogix,anx7818 variants.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
 .../devicetree/bindings/display/bridge/anx7814.txt          | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/anx7814.txt b/Documentation/devicetree/bindings/display/bridge/anx7814.txt
index dbd7c84ee584..17258747fff6 100644
--- a/Documentation/devicetree/bindings/display/bridge/anx7814.txt
+++ b/Documentation/devicetree/bindings/display/bridge/anx7814.txt
@@ -6,7 +6,11 @@ designed for portable devices.
 
 Required properties:
 
- - compatible		: "analogix,anx7814"
+ - compatible		: Must be one of:
+			  "analogix,anx7808"
+			  "analogix,anx7812"
+			  "analogix,anx7814"
+			  "analogix,anx7818"
  - reg			: I2C address of the device
  - interrupts		: Should contain the INTP interrupt
  - hpd-gpios		: Which GPIO to use for hpd
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
