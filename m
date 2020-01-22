Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B78145EC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 23:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3ZUzJVlKkc3+ulgpPMzcpL/D3fOCioslVyojXpMbznU=; b=c3n5O5ubCHq9l/iLsWYKv3VE6a
	vjsk5u+ggAK39kaHfO+lnQ7oYKgMfIp5GdlWikvThr7TuJLFhlifGd6iZ2mQKWLLE/L3JmhPKyF5Z
	N9sTudR0CulVq0HALTg7Nc/y0xLsRcnn3h9GlUX5+jrgt+LsrJ5JaIaE6symisVtYuusQTPAQtpS8
	0fyZkEs56iTW1oOMaEK/wBj8dsW7Ikq4eP7LORvqiLSQSf7Bn+g7zsZHK7lb8poojwbfja1RKIXN8
	upGB1p5l6JwGdXD4KoJWNT7RDyWcxJCfb3CjN/HAc34pIV3lz+vcaKLRmLGMl8cBKsYl1ni5zawIU
	Z6lCPYuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuOlu-0003ze-41; Wed, 22 Jan 2020 22:46:50 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuOlD-0003U4-JC; Wed, 22 Jan 2020 22:46:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id b6so979521wrq.0;
 Wed, 22 Jan 2020 14:46:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pWxnPQXLd+Q1xr02wkxqUJDAE8DS8+PwJcPiG+afbrk=;
 b=I0fdhWiB41zdWDXu3XXbsSFAdjgrRW152IEIC/13IrtPI/utS9IBzUHxzsWQOORADu
 FNJW2ywG6LfuQ+Iw432bFzTM0OP/gSZYvZ+C8KnxErBOlO72oom9mSqUgI3f4YHYoc6J
 LKXwOuZAQ5jbFfmWCZIUackWR4dboT1eVR/58v1aASUJf+XrWCTiEtwxglbS5fanZAsB
 iHERNVZ5WU73kN0JJJDx8D9o1Mphl/ZyZshW3I2FFCzTbFNSZujINWTwOgsqgukTrGWw
 Ugs/edLPj9isfGj1bH39KXgbt8fAzVlmlAYGVFe6g9ydc2nqidgPuylBwQksmZxPXWaM
 8mKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pWxnPQXLd+Q1xr02wkxqUJDAE8DS8+PwJcPiG+afbrk=;
 b=ajVWxGYNwrBdYPFz5Q0E56PWgroPrDvz3n5ljVZ55GiNjhehG/nzbNJZZRFj75K0Lx
 SrMTJwmtFe0rELIS2g3PwT4x3vG3S41X4dpIgWLv4ebhiEYoLbIBzfuIvPC382eTG5UG
 jpGi0oF6tU66lrcqWgflv8RbSZnGB09s3f3A/xROM+dSTCvG3E7ZG+Kndtgg1C5NX+2f
 UJ3yasMVDT5dKmryX/GEDdgG5YDpLgO5Iy/1NBSJMoXvFSVRWZBD3KILKa3bMGnvpAqJ
 qDH0UP751FdCLfzOa5lHPU8qOmf4n4uun0Eiq+cgEF/oAHZ/usDUK7VqyhDY6Ya8PVsE
 5FYQ==
X-Gm-Message-State: APjAAAWc8k39l18o/u+eqHJ7zZPvzgdbODutwrza2xC8lUsdFMhzhQUP
 TbUJqH/BiFneRRuagtgw53k=
X-Google-Smtp-Source: APXvYqzB0krEdYHfsT/a9zb3dXi65M8ljwfJsmqQQOo0r/RttSk83FS5IrLrFgtXh1DnTPNL1Rj7WQ==
X-Received: by 2002:adf:fa43:: with SMTP id y3mr13505642wrr.65.1579733166449; 
 Wed, 22 Jan 2020 14:46:06 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f1sm342559wro.85.2020.01.22.14.46.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jan 2020 14:46:06 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: broonie@kernel.org
Subject: [PATCH v2 3/3] dt-bindings: spi: spi-rockchip: add description for
 rk3328
Date: Wed, 22 Jan 2020 23:45:55 +0100
Message-Id: <20200122224555.6845-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200122224555.6845-1-jbx6244@gmail.com>
References: <20200122224555.6845-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_144607_628235_5F875652 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index a797a4748..5e0fab1bc 100644
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
