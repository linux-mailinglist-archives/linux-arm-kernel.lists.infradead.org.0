Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 559C9184823
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 14:30:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pA0T1LHRnqPihqqi3S9Vum3n7PtcTDz+XmKcPRb+7/8=; b=WX1IaNXLhXl9VlTgv9azKEPuod
	vc0PQ17vWGkUBxMcu34Zj5U171s8DUZeTOl2DA/ZDcbwdrgAz/8jx0Sk2eHNcx+P5e7yesC67OJOK
	AGb6KMhM/qR/rYX95C6YysqBXdT+rgiUopYVN1TLFctAX7nVk/nNAk/mi4T6puNPGHPUlkeULlz9t
	fgPn2iJmZ87C8z6RWF6cFX+5QrzZ8/WzEwcW/CzwHmd6Q/DWGA34ZIcb0ZoXwJNGYSsAOr/O0PcCn
	lkVhYiTonuxRN+ZyAcOhG1ZVatt5vABmxb1e8x0SkMA1wZztpRjba/s/yS0CrtTyf2yOzUqWVIJpy
	VhoXHGaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkO3-0000dr-Qq; Fri, 13 Mar 2020 13:30:03 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkNd-0000Qe-4B; Fri, 13 Mar 2020 13:29:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id f7so10295105wml.4;
 Fri, 13 Mar 2020 06:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DrKXBoCUuu/YXqMOvtISka4qMKizynY2Llltse6yD6g=;
 b=qyxX49HaParr7PiDqXQONEAb/n7pPXecdHvAmUVpO5OuIVuIcNMDojbPcdI0q0TPjG
 nc5DSGPWl3L5lOoCf6P+l6kHHpRcCuQce/bNmJ0xhIxb1xzbXDwHWr1V/mUcoU2d73B1
 MnNPr3We5V4qXIgdlBw8g7vu6b2uYGXD6SrFnZ8/IvCkPhBFNb8Zm/RHLnRJVbs0Lw+G
 4muHqX0te/9whiCol62XG4uNvwtQMNgYdHs/QgbIotLFLCBzWeWczsekko11so2edADB
 wACeRvN45Vo/10Rg3BOwdal8Lov7IyL93myUW8yO/0zMOEhz0kwr8eHzPomG0Qo3GueR
 BgXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DrKXBoCUuu/YXqMOvtISka4qMKizynY2Llltse6yD6g=;
 b=IVUypK9T/Esag79cR1e2EnHnlplRUT9DDzUg0NAh/qWoeuZetImvZLNLibf+RUZwme
 wI8yeyZgmLQVeGTXO7y2DhdCOJ+TiS8JIM14NXTLApES/oIcdQQo/I2CNqpNp8r+jhFy
 9qXoEaZNJCHCbACeNX5CVTht1Ey152O8eKFD2MvE+DIpPAzRBdynGmkEs2O7twtR1gnq
 iOL7/t53/+NPwBt8ZJM1QLtFTvJBJ/5FM8Onjsf+iNvE+dI2lm4S68OruE+GdJXMk6hF
 mf0mT1EAsOVjYwctSCjQy/h6HNZwFA1ONobF88PDzJOHod8H+0ZxMakSKKhCQs9oSFU3
 uuPQ==
X-Gm-Message-State: ANhLgQ2W4TNplBiyZ19/zwcdxmDT5Ue46EGqy4Vts1WZ01/qxer6Apf7
 LjjJ7RP8NzPl9U/vQ0bIZfk=
X-Google-Smtp-Source: ADFU+vvarS9F0YQaqPnisaiFvsN9qJoio2i1gsSUt5Bw5Hz7yjOJCrg5MUUMxARRBgAHPqRgrJrTqg==
X-Received: by 2002:a1c:2dc7:: with SMTP id
 t190mr11210048wmt.137.1584106174949; 
 Fri, 13 Mar 2020 06:29:34 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id z19sm17576705wma.41.2020.03.13.06.29.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Mar 2020 06:29:34 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v1 2/3] dt-bindings: iio: adc: rockchip-saradc: add
 description for rk3308
Date: Fri, 13 Mar 2020 14:29:25 +0100
Message-Id: <20200313132926.10543-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200313132926.10543-1-jbx6244@gmail.com>
References: <20200313132926.10543-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_062937_162526_ED745F8B 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
---
 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index 2908788b3..d3b78604b 100644
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
