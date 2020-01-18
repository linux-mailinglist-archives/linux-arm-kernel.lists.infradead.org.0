Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD80C141A6C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 00:10:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JrdFrZ9UKpttNUqFNvqYxNcZXLYsx8s2r1nU4HEOt48=; b=R26s18sPpBzQoDFgygp2n+k55i
	4h4QDLGm4C7p1lKs7k5T27RMSwq+362P7ZR8U9iu8SwMp7RC6Pj6BtRTUZz/OLSFLkRQT16Wli+SC
	XzXKLjN3ewwRVfzxxsrdG89ovwhDxP+xzdGFg4X73FDbVxSPccbYjilP7rHb1yfXddtpZzdHDPNdK
	iM5GWGNDMsD/38vMPJ/F5zyGV4xOQ0082hwsBIZEM9ht0zQUsGgpCZSAOjxy5AF+fBXDRoClx/wF3
	xMjeRiJ7GSRc74h1asnVNgz7gG8B4X4RbdjAf7FAHto1oZ652stz+ri/lVIdmGZqYuVLu5ov9a+Ib
	AL3Lwkyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isxDd-0003Dz-DK; Sat, 18 Jan 2020 23:09:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isxD8-0002rJ-De; Sat, 18 Jan 2020 23:08:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id g17so25963830wro.2;
 Sat, 18 Jan 2020 15:08:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zieK1rZ40R+8dR9w9wxIfPfmZcLHznAHvHJSGV+7afI=;
 b=WcOPjCFxbQWN8I82H5+ql2IT5LtNNZEE54Ef1UQEznrAlFFQXvjOAAp7l95UefDFNS
 sM8rfr3puhtQih9QwjB8lgLbpQW+1pl84qKR1dtOyHoj80fgXj14bSdwyBPtD4nCBgAu
 r4JKfQzwqy/2UdJotQ4fW8GH+X3hrxLYIAmUk8XmbYO67tu4LW/XAwM3qUfWN6L4jWVi
 uLNlfl1Bqm7jOCu8h76EFoIQkUw8VSsfYlFjJ8qj0gZ+6vmWVgbnVEB+ZG5tk2ovR5AQ
 VWv4+iOzUpx7qNTcWQhFq02mgr0DZvKT89oxZ7tRKJ8XbA8m5m/BtpgAU6aHzrPrFkiy
 Lmgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zieK1rZ40R+8dR9w9wxIfPfmZcLHznAHvHJSGV+7afI=;
 b=n2r8nferpO0Aw+h6jlsb9Kiu3EFqHc+gAku87z7b7fZzHvPvIAhj/KjwKmIDSIjuNb
 PyaUgK2fU3f9nsWjWH/qarV6fAQwxzReoNfUWV0enrrqmnaioSPoJIIQGu9IrV+7001w
 M3Pw6JvOR74QsNnqJM1035uPlPBnidrRTKRRIFFqYcRtmj+LjPmEIu5wFhwzh+KJVbac
 nGC/cg+JyxXYANk619MSBdq4hfPjTuT0nmzujdJ58vynzXWF/cRGENUA0Fwchj0Jh7b4
 QwBGDx4ipqpQbkzx27wYJsBbCpCV6FcXpt8HIZIRjlGrjKtpVnjqAgiOD5Nh5T+Q9Nz/
 N6iw==
X-Gm-Message-State: APjAAAU8Kx0RO6nuU315mD/4GR/R7uDdBwhTVRwBf2eaTsVTCfO8yluQ
 +pSPN0yz5xW1hTFwObMKIenXl2JK
X-Google-Smtp-Source: APXvYqwUVkfqKTEe+IdcTJGpN/Oh1StsZugRXWPB63ViZ0Prt/rRHknvczy59Jrcs1kniRrGyk/cBw==
X-Received: by 2002:a5d:46c7:: with SMTP id g7mr10351910wrs.11.1579388937355; 
 Sat, 18 Jan 2020 15:08:57 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x16sm5746408wmk.35.2020.01.18.15.08.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 Jan 2020 15:08:56 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: broonie@kernel.org
Subject: [RFC PATCH v1 3/3] dt-bindings: spi: spi-rockchip: add description
 for rk3328
Date: Sun, 19 Jan 2020 00:08:48 +0100
Message-Id: <20200118230848.15326-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200118230848.15326-1-jbx6244@gmail.com>
References: <20200118230848.15326-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_150858_456027_64FADE16 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description below is already in use for rk3328.dtsi,
but was somehow never added to a document, so add
"rockchip,rk3328-spi", "rockchip,rk3066-spi"
for spi nodes on a rk3328 platform to spi-rockchip.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index 24d9567a6..27b2d1df9 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -30,6 +30,7 @@ properties:
             - rockchip,rk3188-spi  #for rk3188 SoCs.
             - rockchip,rk3288-spi  #for rk3288 SoCs.
             - rockchip,rk3308-spi  #for rk3308 SoCs.
+            - rockchip,rk3328-spi  #for rk3328 SoCs.
             - rockchip,rk3368-spi  #for rk3368 SoCs.
             - rockchip,rk3399-spi  #for rk3399 SoCs.
           - const: rockchip,rk3066-spi
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
