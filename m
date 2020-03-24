Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E15F1909AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 10:42:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wjBPZIX+wtajafR470eMgT4gyQkc2vlZbhgz6/FboaQ=; b=TYt5Y/y+hw6sIq1X5zp/juODOl
	5LPxG/3zL1mOGegmQmsMk3180WGPPrjzIpWdptuBcb5DsS1t90ANoC0kE6onQL4lw3H9QOc6eOzJ9
	QgJRx9QuSfqvU3balOevVH6311PBG1DXITIgktpzUxtj1sXIMt/ZT/KTpqpHqMJsO7VGFr52aIdTy
	MCUFPO4qYbuor+BcJuGymANi30K55xghmZcaA1ItuFqrGPMc6jhIvAZ141uF2Ypc/6z/DG9udgsLN
	1sA2/NmyQhMdQHxD6f396yQv6vDUV4t/UJbjbjxt5kQQZtmo+FflC/NLuv+D4mm2p6FLRigh3q8Tq
	vStGMdww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGg4b-0001O7-MG; Tue, 24 Mar 2020 09:42:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGg4N-0001Lv-VW; Tue, 24 Mar 2020 09:42:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id j17so17133741wru.13;
 Tue, 24 Mar 2020 02:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HNjGIiYj2PpNEKaGwYof99mf+bU/+Ss4GMUxM717vYs=;
 b=egl2JmPRGAUxRuOSAc1Jl1OqrLWKRg2CePCkrpRwV/8U2wzDPGGB7qXbEBo096GqjC
 GU1SkgX7ePypv9GkhRSPvEUbUN/QQHc092ELTeQLX4c2vHak9eIK9eboKOA7ZKrFO3lJ
 0FnuTJgeXdNL5zblpPbjtgWJUPNoPYq9HL5KMttBbjHzMh/mN9piTviAuPdLDuK1X1JJ
 LzPTeRD14ukONHC3+G+SqAMFrQ4LfX9fVqtSoU4glVxCJdu70Qa1g5T373UicfCdnbPC
 SjDQ98IZY/dNwrAWLc+amI9ubxYWky2cL46kf655OkghRmEyiFkqnQPqZbX9bRXlf9WR
 pbdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HNjGIiYj2PpNEKaGwYof99mf+bU/+Ss4GMUxM717vYs=;
 b=TvOAy0wwYewKJ8i2XoJRot4nQTUqJm+voYh/ZJ0sCAeX7dWHvVVNQb06WkgikKX9MO
 ZvqgFblhxXawvfdsOAv6y7ngYChM0W/wcLnqpuWfUgbcudRp/28QoOBEJqYXVXwbBAhq
 8CGM5oDhouqVYdYnHW7SXKZvFSvzLjHHpUz1PmZJPYXDBosZEM49+vWhJ0llyWe5yQck
 i7QPH0BLMBJ56pIaH/ESiZBCxz7Mk1HAidzD8PuQzyaYulD4k/28Nl8nIdeV7XE6Ps+T
 eeOTNbUaFfHE81JCKOcgOpugp4mUBsK6JBsAWnCtmDWT7MGrutEn6UCJfvGVplcudjUy
 Qd0Q==
X-Gm-Message-State: ANhLgQ1QIsSysp/fW/0ChhDuJrMELs5yz4j91HozmF2Cp7IIpwwk7DDh
 uxblisxJFAwnbh6g5MUFolo=
X-Google-Smtp-Source: ADFU+vv8C9cjYZxaDsbHr88EK25zLIa2C+78e0CD6QBdRLrO+K+8pTvsjYRa/RwUpjye0rYJNRrOew==
X-Received: by 2002:a5d:44d0:: with SMTP id z16mr13006905wrr.28.1585042918365; 
 Tue, 24 Mar 2020 02:41:58 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id r15sm22489916wra.19.2020.03.24.02.41.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 02:41:57 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: lgirdwood@gmail.com
Subject: [PATCH v2 2/3] dt-bindings: sound: rockchip-i2s: add #sound-dai-cells
 property
Date: Tue, 24 Mar 2020 10:41:48 +0100
Message-Id: <20200324094149.6904-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200324094149.6904-1-jbx6244@gmail.com>
References: <20200324094149.6904-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_024200_018047_BCA283EB 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'#sound-dai-cells' is required to properly interpret
the list of DAI specified in the 'sound-dai' property,
so add them to 'rockchip-i2s.yaml'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changed V2:
  Add Reviewed-by
---
 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index eff06b4b5..7cd0e278e 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -77,6 +77,9 @@ properties:
       Required property for controllers which support multi channel
       playback/capture.
 
+  "#sound-dai-cells":
+    const: 0
+
 required:
   - compatible
   - reg
@@ -85,6 +88,7 @@ required:
   - clock-names
   - dmas
   - dma-names
+  - "#sound-dai-cells"
 
 additionalProperties: false
 
@@ -103,4 +107,5 @@ examples:
       dma-names = "tx", "rx";
       rockchip,capture-channels = <2>;
       rockchip,playback-channels = <8>;
+      #sound-dai-cells = <0>;
     };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
