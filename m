Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5721718CCDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 12:24:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZNolU3V/LhBkMcbO74ht+OQ7mR8iy8IX5yfERvkHyE=; b=QfVmokrOh5tgR3
	7XUug3r8WhLoAkxRJJea1AJVA9D5UV7nExfH84dP5djUsFvvNDu/BXzXsy5sxv1sSmqKtq8P/mgTY
	iTK+zJHDkjqU6hIckw79cKrJYSIfPsEpwf2Faek5X+5dZdgKqRW1ADkd9Q3qW6wRif/QrAspvBt3t
	fQqAkExQRBNByBFFJa0yH/GZbU6Ua6lW4LMaIfakYnG2XUMPtsQbONI9nbQU591Et4y2Wr8gMbe0i
	bciwmH5sSSCbYwvAxHKE9XUWUMNFpXs0jtDzNY6Vqdwnud8N76qSGDg7jBsUlS0hT20sYhqWc/i2u
	N3kRZWdRNU3MQ/2rIbvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFlF-0005i4-5f; Fri, 20 Mar 2020 11:24:21 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFl5-0005fa-36
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 11:24:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Content-Transfer-Encoding:MIME-Version:References
 :In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ALXaab2s1Lnzx+nrRs34/oE0duhtrEmt949ImG19WlQ=; b=qT1hN+mMLdTgt3zkV6EZlpedaX
 TrB0dv1Ypg7q9Uy7f+dWH+EhWKpjtNV7TXVUwczk3Cz4r/iFICmItVabjcsWR6ntVPam1v/Vesbok
 PHQEk+qMopTee/MjeuiPXH6JJO5B6iCFT8g+KrSi+8dVlESVn3S6thH7rSe7zUee5ToI3TX0X7c5D
 CjvWLpi7FGV6V23rK6g8cv4diTGyGPxwmPpnmSDaa9+NBNcuAKZiW68xmOKPAM1AqvNpUR9Da6mDL
 T2K9kq3aIeXOtfLV4pdM4xeYQMlR1923Q98DpkZRrny0f1aZIQsjx+ILpDgnvrCdh3b/hlk/k1fxU
 jCEOe0NA==;
Received: from ip565b1bc7.direct-adsl.nl ([86.91.27.199]:57936
 helo=localhost.localdomain)
 by web0081.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <dev@pascalroeleven.nl>)
 id 1jFFkr-0011ci-BD; Fri, 20 Mar 2020 12:23:57 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH v2 1/5] dt-bindings: panel: Add binding for Starry KR070PE2T
Date: Fri, 20 Mar 2020 12:21:32 +0100
Message-Id: <20200320112205.7100-2-dev@pascalroeleven.nl>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320112205.7100-1-dev@pascalroeleven.nl>
References: <20200320112205.7100-1-dev@pascalroeleven.nl>
MIME-Version: 1.0
X-Authenticated-Id: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_042411_323583_4B3E4F23 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com, Pascal Roeleven <dev@pascalroeleven.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the devicetree binding for Starry KR070PE2T

Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 8fe60ee25..7cbace360 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -43,6 +43,8 @@ properties:
       - satoz,sat050at40h12r2
         # Sharp LS020B1DD01D 2.0" HQVGA TFT LCD panel
       - sharp,ls020b1dd01d
+        # Starry KR070PE2T 7" WVGA TFT LCD panel
+      - starry,kr070pe2t
 
   backlight: true
   enable-gpios: true
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
