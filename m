Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB967141A6B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 00:10:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1ZyZ25WTkMJDy7gxnRQ9JxkIIfHMjmCHwMUYGvqM3us=; b=b33jKwGxTA5d/I8qvdGc2jJ3Re
	5KrADGt1Gm9g7ynYLGKj7ZuNcIUZoRCzPEI4IUEevDjzaO/B9haRpAVDY3C50uUckBwOZlE/WqygY
	UL7Jy6cqGGwNqUouoZl112PxwEjDV1oWY7jj92G4ipHc4pjP8tc02Xbj+udhqnOkgM/etbnCnqiWM
	IS2SC6/Fl/bmhJ5yf0ANIVEkhuTu5kG/eD0QiCLODnIygfj1SBW/qQW+LwcmoiydNLDMoTjM0Rxdk
	J+uonfERX5ZznwZ2L0/dhYNweUcWHrMWCIddzl+6uA+r4EAPiTs1fzu4GCfVQTZwwW8FebMSrI2ep
	gTLCu3RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isxDE-0002ry-Jc; Sat, 18 Jan 2020 23:09:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isxD7-0002qq-Gx; Sat, 18 Jan 2020 23:08:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id y11so25984521wrt.6;
 Sat, 18 Jan 2020 15:08:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tOn8mq9NdKT/KRhPIH0AzeKwIeYeoG77AtMkfuKA4Gk=;
 b=YDM/9zRP0Z0heJRTGk5w0BRB3T3JljkBY+Vn8MM05T5goIwGJ3B7QM77rfOdkLagPT
 3kxmbC4ea6Uq5dNYFl0PjEa9AlqWVN4uPP2bDdahCwocVBLWBErKVzIPiH7aDM2edf88
 IYxRQj274L1siKaNVt9kDkM7KCVTw29mfdNQrSqqczUDeL1/u1pk2nAOd/aaR03iHzv1
 ol7cSFcGmMIRkZ/b7ldOjm2B/I1IX/4baIsH6nufFbEdLDvtw8T+hy7Vw/iyBMtUCFhS
 uEvlq5AWpnrcH6HgUYT7RY0dWkvdjSfUC4gMXEogpkHvHZW/ByqmEKVasBvA9jRJpZtY
 hbug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tOn8mq9NdKT/KRhPIH0AzeKwIeYeoG77AtMkfuKA4Gk=;
 b=duB22ZtbFBzMuBVwif1FyasgoM33yvgZmeJEwufxRH6mK+E/SjHUDaTA7C62jmHWNT
 1wLTnlEa4+y27w3Q/iuAFy52NfoGdQPyzTcm+aEsBxj5tA0iIZ8hQs/BUKEmrdKEdM+6
 XjAaoZ2Py73si1/orzgSKRrEmyVsVDpom++Mu9OeEmujD2LDAuOJrt5r//ENGz3SMW3u
 cCuDI5FlYpvwqkkIT78wAWQAj3nsdPX6N028/A6NriwqxBOgdjatVRqXRuyxJzlUQIuu
 fJqqlIJKkig5vEf0dCKLLpMoUvQ91FLLehYVdZkM3auPD0H3VfHJ2vFUPvIXmabk8HI6
 Iz0A==
X-Gm-Message-State: APjAAAVU676t7i163zlW0EdMCexlIqmxNqjlVGw841238fnTlRz5dG1K
 Z8KmfEi1L7K6+sGdReIKOmE=
X-Google-Smtp-Source: APXvYqz8Jn89LtX623GRYGQbqvDjF4Jme+gXm0owhz3njGWJrRgQY103W3rliYxx+qDV/A1GfvaE/Q==
X-Received: by 2002:adf:a41c:: with SMTP id d28mr10910809wra.410.1579388936444; 
 Sat, 18 Jan 2020 15:08:56 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x16sm5746408wmk.35.2020.01.18.15.08.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 Jan 2020 15:08:56 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: broonie@kernel.org
Subject: [RFC PATCH v1 2/3] dt-bindings: spi: spi-rockchip: add description
 for rk3308
Date: Sun, 19 Jan 2020 00:08:47 +0100
Message-Id: <20200118230848.15326-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200118230848.15326-1-jbx6244@gmail.com>
References: <20200118230848.15326-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_150857_558385_CE15C30E 
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

The description below is already in use for rk3308.dtsi,
but was somehow never added to a document, so add
"rockchip,rk3308-spi", "rockchip,rk3066-spi"
for spi nodes on a rk3308 platform to spi-rockchip.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index 80c56c583..24d9567a6 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -29,6 +29,7 @@ properties:
             - rockchip,px30-spi    #for px30 SoCs.
             - rockchip,rk3188-spi  #for rk3188 SoCs.
             - rockchip,rk3288-spi  #for rk3288 SoCs.
+            - rockchip,rk3308-spi  #for rk3308 SoCs.
             - rockchip,rk3368-spi  #for rk3368 SoCs.
             - rockchip,rk3399-spi  #for rk3399 SoCs.
           - const: rockchip,rk3066-spi
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
