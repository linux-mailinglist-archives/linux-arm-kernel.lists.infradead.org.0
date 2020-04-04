Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2217F19E479
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 12:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3yeZLWAcsPYXhTS6vYXm75RnT0Eq/yF9gePvjg+OfuI=; b=I5HEkObIR35FI/Hum5WIzYs+33
	3iHOStkJhKF5+7tzd3rT9wQme2tab9Z/rF99IxjVWNRW/anh9wXD+YhPkiY0wDEV8LC3cb+QbpzSA
	/8GlYIhBA2UK7t37x4NLnC6M6x2/30M6QCELmGkBUPWBt/jManWSA0GPkA+Y+yhM46iwEv9Q75Lsp
	dEeFVhRKK0Kj0KW0ZCvq3dVfR6oJP2Hv73whMjyga3Mw14RuKXshMvLZdE3mAsSqjiazJ0yn+hGDW
	TJFU7/kFgTdC8boPR/nIx89qCC0cXd9VdYe/W9vNYAwzzFv7fQnx73hDP9EYQqHhzTE90imayuIe5
	1KgYLJMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKg25-0004AQ-HC; Sat, 04 Apr 2020 10:28:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKg1i-00043k-E8; Sat, 04 Apr 2020 10:27:47 +0000
Received: by mail-wr1-x441.google.com with SMTP id v5so560810wrp.12;
 Sat, 04 Apr 2020 03:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sVSJoHbvcfmZpvtqW1QMAa9hF+P/zoaKi8Qrm6r+ndg=;
 b=T6k2XJE/Uqlk1RphsmcJrro4Z0Nj/Ryos/pqYdDEHVCi2IVFAhdHAtNHK7q/U+xE9r
 ZRidSZ9V8sPjckcwQuaZhOa2b8ddsfasZ2QEl6oThLUdNtVZ3wQHf1cj/wf2CUwoEZtc
 RxErU71+u2mL2rFxox8VPoG5EVbIcLGeFLpfY3lWQSUaHOFCmH3F6d800Gv+XqOMZQo8
 tIDGUqbagUpsimqRvNA3B18gBysb2/M9UX2sRIezHwfRbrbysBbBytfxIjLxC91Lrhyp
 pPn1FJSjCsxOTOtlahO1GfIm/gxbtZd9CkJVwM2L13Rr63fstBn+4m8J5hxpa0WJ8yo4
 zjwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sVSJoHbvcfmZpvtqW1QMAa9hF+P/zoaKi8Qrm6r+ndg=;
 b=H3Uq2Piy4IBFVhtIw6/iL0BW5fKPqCavlErg+jkaOb0UeA3A/rLm9TQEiqLm3AIFQ9
 ZPpwieGVRSUOHOFKEEpIYgFetVglNSrEn8B7XTPdVZtYTvwQXkYF765u86d+YEAWQbIj
 oMqMipoUWq8U59U8TuTA6YHWfI39eL//UlOB3lR38/uIN0loiHei8tXcZzPWIQWTm48W
 DjskzYaaVvGNw5sqgDMJ9a/apTqAccO0LuNdB6gOxayifJx2+CoHhij74cpMSuQypTag
 pwqgHCDjhV9zJh2VTKKvRivQKHMz/gXF1BgGD7Yu9cLSbDn32W4OEYulrOHFeb9Ea1x9
 TLIQ==
X-Gm-Message-State: AGi0PuackqHPXnAI0qv2ZxL+qq0QkCs1JgtC/j2f6cyiqrEGmG4amWeB
 +1Fi7s2lhWBFpsaVxFREkbnRitOR
X-Google-Smtp-Source: APiQypKyTC4hKbderIKuXA6Q5B/gmQ6ZWFbLZ/OBBiIVvMHiy01dzmVzsPU6v2Y2zCim1xn68pfeTA==
X-Received: by 2002:adf:e445:: with SMTP id t5mr13982590wrm.352.1585996064992; 
 Sat, 04 Apr 2020 03:27:44 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c18sm15833178wrx.5.2020.04.04.03.27.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 Apr 2020 03:27:44 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v2 2/3] dt-bindings: iio: adc: rockchip-saradc: add
 description for rk3308
Date: Sat,  4 Apr 2020 12:27:29 +0200
Message-Id: <20200404102730.3295-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200404102730.3295-1-jbx6244@gmail.com>
References: <20200404102730.3295-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_032746_469357_3AADC9A9 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, heiko@sntech.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description below is already in use for rk3308.dtsi,
but was somehow never added to a document, so add
"rockchip,rk3308-saradc", "rockchip,rk3399-saradc"
for saradc nodes on a rk3308 platform to rockchip-saradc.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes v2:
  Add acked by
---
 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index 9b9882323..7653aa480 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -17,6 +17,7 @@ properties:
       - const: rockchip,rk3399-saradc
       - items:
           - enum:
+            - rockchip,rk3308-saradc
             - rockchip,rk3328-saradc
             - rockchip,rv1108-saradc
           - const: rockchip,rk3399-saradc
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
