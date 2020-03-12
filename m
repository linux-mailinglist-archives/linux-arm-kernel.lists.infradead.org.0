Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D98C1827E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 05:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LUqZ2mT64E4Uz2tEFEvCmtANHZtSH/wncPwujotF4xc=; b=SKlN8JlZYQNB3TQ+Lm5eD/Wj+t
	rXIw6dMDgybO82989mpONm6f737NIPFLKQ9jVZpo0nncQeCm7WftiSkTepAtVyQOR8kU/iyQUR4dz
	6MMuxcuECzfVh5pamoxfknhJg3kdso75Xlh4io8Csl7Ou6kNseQ6HxBHZZyFOHIgRmp8gSGHmIUrv
	5CdpeLJCYO4gBBwth+0itOOh3rRzdjMdG5Ji6/vyjl33VL6TUxGU7bq2/ol6xmAvblmSLthQW2PJs
	5EemE1IpsgKy1z/ES0X2OdQQefxIjBlbB5Ix3JkgiydrB5y4Cl7nuvm7pMge9zH/0W8LdDnt1gQOg
	4mo0ZuAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCFdJ-0004Wn-O0; Thu, 12 Mar 2020 04:39:45 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCFcf-0003lu-0U; Thu, 12 Mar 2020 04:39:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id w1so4849718ljh.5;
 Wed, 11 Mar 2020 21:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=09qgIR6K1m5xPP1D1m5YyMuzVQzcRYUfNGJ9cyL/AI0=;
 b=WRo3nEHEG77l3hYpIWxPEfMGMwI9N1w0FhLaz87sLOR8tUhT/QvdNCy6kdKfS71Tgx
 DXv5k20N9MtocO6d1uleZYGrrt1+ucK30YXOJ37/Vf9trANUd5vgtRgLg3m3npZvNVuZ
 IYLEvc4t32Jm10P9ASCn7crxTYzgye862PgxD3BaxtpKz3jZNUWqhz9Kp7DmRUF+RNx8
 CWDUoeVJpoDAmKrFhIa+PZpFvf3ylinML+No+cAUygylzHhiRyCQFIeLU1m7RjXt05VC
 dBeatRz4Bos4MCVKL7I3MXoc2P6ztlv024/oIz4c2ecXnmkBlB9wubX+ZBii9Lj1h5OI
 Uv1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=09qgIR6K1m5xPP1D1m5YyMuzVQzcRYUfNGJ9cyL/AI0=;
 b=eldGONDsbq3SZXV460Sx4iD0JhpCIpH4mTbeqFn2DfT7CjgsZb1NpN0HiAHCGyhV6h
 pcoZ+zlGW6P0kB7YBdbN1KVEMHCJtEjIC5YyrBU/+Qbm3beDxoUx0tyXuvN1pPIUgjFa
 LrOBy6cCSJ/hq5XuDnyaA03aD++Zd/rFlA54Zs/RV+SNyhkTxcREz7m6ncTQOJLKPery
 4cbufmWlT43oIhrZBOmMGnteUOpQJeHoyi7uce4YJbDbCtbFTuNVv3gA34VtEElP8gdC
 35YXC8uKcxDO9M4Rlpz+reN5TGHBXTn40Rd7gSOjsYZmRZHb88EIpO+skz4gBIniFp4y
 OhPQ==
X-Gm-Message-State: ANhLgQ3aZYizIrUKWdkrVVDib19/OZtqgWGiNV5bKZGw3MVxqTpl8el0
 Ak8oKyhy7gShK2NXggqdIbA=
X-Google-Smtp-Source: ADFU+vtWPwMvPxuuiPxqKAGjDzCxG3AYSqn41J8E1bbRtfPfeYr9/eq9Mt6OagpHP0ULDiLczBlENA==
X-Received: by 2002:a2e:8945:: with SMTP id b5mr3887908ljk.140.1583987943214; 
 Wed, 11 Mar 2020 21:39:03 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id u2sm8872866lfu.3.2020.03.11.21.39.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 21:39:02 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/3] dt-bindings: arm: amlogic: add support for the
 SmartLabs SML-5442TW
Date: Thu, 12 Mar 2020 08:38:05 +0400
Message-Id: <1583987886-6288-3-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583987886-6288-1-git-send-email-christianshewitt@gmail.com>
References: <1583987886-6288-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_213905_054251_29FB84F9 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 =?UTF-8?q?Jer=C3=B4me=20Brunet?= <jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SML-5442TW is an STB for O2 Czech IPTV/VOD and DVB-T/T2 based on the
Amlogic P231 reference design using the S905D chipset. Specs:

2GB DDR3 RAM
8GB eMMC storage
10/100 Base-T Ethernet
802.11 a/b/g/n/ac + BT 4.1 HS sdio wireless module (QCA9377)
2x single colour and 1x dual colour LEDs on the front panel
1x reset button on the front panel
HDMI 2.0 (4k@60p) video
Composite video + 2-channel audio output on 3.5mm jack
S/PDIF audio output
Single DVB-T/T2 tuner (AVL6762/MxL608)
2x USB 2.0 ports
1x micro SD card slot
UART pins (internal)

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index f74aba4..c0c0f66 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -107,6 +107,7 @@ properties:
               - amlogic,p231
               - libretech,aml-s905d-pc
               - phicomm,n1
+              - smartlabs,sml5442tw
           - const: amlogic,s905d
           - const: amlogic,meson-gxl
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
