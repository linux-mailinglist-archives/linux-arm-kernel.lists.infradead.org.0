Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB2E1805D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=grA7dxItJtA06xzHDO0nFffRJjAhVa21hIahjpK9cEQ=; b=OFO
	GwociGs8vdZmB7DJcCDnWJjwa2F6Fhw8xgDCcOtE+NkuZHmkPhvJ7oQb7Tq3nzs2Wkw0S2T/npgvJ
	He22tFLB+bHDIGexboh1lANrxXY+SSIhGYSuzU8LzxAVmFIUV8Qu/I76Nfb1KR3Yc+3YG8fj2t/+e
	bUb3SWqK3puwksrXXUc4STrJP9m8eEMrY0ReR3xVM+TjNW/DtrEtZXUT1/b5FQHx8t2tDF6s1+WDo
	qyIcwCrLWwbfbxHIl3vbDjvV/yIVAbw6p9o7y9+gLhg7uO1BOxBKg+FTq96V5ByMhNLiNQLbB4OP7
	kpDgaowQjG0osf+/S97426JXIv+GtZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjJ4-0000Lg-PT; Tue, 10 Mar 2020 18:08:42 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjIv-0000L8-HN
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 18:08:34 +0000
Received: by mail-qk1-x72b.google.com with SMTP id c145so7848764qke.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 11:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=94RPXFu+kyZVOWDCvspW3Fmhnjp4ZietGZ5aahydPE8=;
 b=S5iO+KwKb+u3LXB5lH6LhqY9kI9I1Yd6VR4VZItObFmCs0WSRp+R1Qz5frNX1GELQq
 pKEIudl+kKvLc0FpwDAk2h4VhIWK6IocKgVQCOLGwwoWL6Lzd73CK4oOnoosJ9NBSS27
 XA/c5M0vlsRigkwgdntcdyzzFfBU8c7b5RloHuttpelv29u0QkOpJ+1/dlmcxX3WmX1D
 gV+m6Wojf1YmZ9yoXl123RlGmWJPGYqJuB5CZv1j2HA4l11exDlXFVw/ArEZhAYdfThO
 F5ciK6ByPyIIshEES1XobUb5LRRQfbVBZy6VkSUskeqfZFFLT3v2NsSpt6cM41t6l/jA
 39oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=94RPXFu+kyZVOWDCvspW3Fmhnjp4ZietGZ5aahydPE8=;
 b=gvor4CnN6kLUltYlrg7rkPRc6dtQ9MKXVf212oLaOzPtvnd8tttAr/oJRD0gPa/74E
 x8sz+ZLmzeNNe76UOK9iuLCZNHYujZavM14FPYjAJNwJFQaoLJ5N36a1uVJ1GsOrwyJH
 GHTix2s3ecnLW1sdpajh/EyJne+NKMXr404fmLp7CaIu6Lop5zDPiL31qjuUj/OMGJl1
 ip0EYowGADihulDIqj3ImH/QT9J3wLGu8AHJ2i0Adi6iCxt7Z8J9fsh9py+fEwcfBO2z
 U2ZKjsjqZa0DwA5SP6/jxzt+cAFee2SpIsaYCzGBhCZ7oHL1Ly+LicTAFmG4R6+/9OzZ
 zdyQ==
X-Gm-Message-State: ANhLgQ2XLf31NM/VU5nlQB+ZPD+e9VbXJFt/CSr0JV8c9Zd3PWRzlvHq
 xMsdidn40VRjZAh9zf/0xW8=
X-Google-Smtp-Source: ADFU+vuvMUFYZTh0oG/mqeDkOzC1qsCLTwew52z3bdtwj/C3P7Sn3+PFBUmBhHxIXh2AOd28bhC3AQ==
X-Received: by 2002:a37:9b51:: with SMTP id d78mr21434818qke.65.1583863712215; 
 Tue, 10 Mar 2020 11:08:32 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id 127sm17848821qkj.97.2020.03.10.11.08.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 11:08:31 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 1/5] dt-bindings: arm: fsl: Add TechNexion boards
Date: Tue, 10 Mar 2020 15:08:21 -0300
Message-Id: <20200310180825.10111-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_110833_600521_8762FF94 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 otavio.salvador@ossystems.com.br, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add entries for the TechNexion boards.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Put all TechNexion entries on the same patch

 Documentation/devicetree/bindings/arm/fsl.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 06715a6be23e..cd3fbe7e3948 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -119,6 +119,10 @@ properties:
               - fsl,imx6q-sabreauto
               - fsl,imx6q-sabrelite
               - fsl,imx6q-sabresd
+              - technexion,imx6q-pico-dwarf   # TechNexion i.MX6Q Pico-Dwarf
+              - technexion,imx6q-pico-hobbit  # TechNexion i.MX6Q Pico-Hobbit
+              - technexion,imx6q-pico-nymph   # TechNexion i.MX6Q Pico-Nymph
+              - technexion,imx6q-pico-pi      # TechNexion i.MX6Q Pico-Pi
               - technologic,imx6q-ts4900
               - technologic,imx6q-ts7970
               - toradex,apalis_imx6q            # Apalis iMX6 Module
@@ -166,6 +170,10 @@ properties:
               - emtrion,emcon-mx6-avari   # emCON-MX6S or emCON-MX6DL SoM on Avari Base
               - fsl,imx6dl-sabreauto      # i.MX6 DualLite/Solo SABRE Automotive Board
               - fsl,imx6dl-sabresd        # i.MX6 DualLite SABRE Smart Device Board
+              - technexion,imx6dl-pico-dwarf   # TechNexion i.MX6DL Pico-Dwarf
+              - technexion,imx6dl-pico-hobbit  # TechNexion i.MX6DL Pico-Hobbit
+              - technexion,imx6dl-pico-nymph   # TechNexion i.MX6DL Pico-Nymph
+              - technexion,imx6dl-pico-pi      # TechNexion i.MX6DL Pico-Pi
               - technologic,imx6dl-ts4900
               - technologic,imx6dl-ts7970
               - toradex,colibri_imx6dl          # Colibri iMX6 Module
@@ -225,6 +233,9 @@ properties:
               - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
               - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
               - kontron,imx6ul-n6311-som  # Kontron N6311 SOM
+              - technexion,imx6ul-pico-dwarf   # TechNexion i.MX6UL Pico-Dwarf
+              - technexion,imx6ul-pico-hobbit  # TechNexion i.MX6UL Pico-Hobbit
+              - technexion,imx6ul-pico-pi      # TechNexion i.MX6UL Pico-Pi
           - const: fsl,imx6ul
 
       - description: Kontron N6310 S Board
@@ -285,6 +296,10 @@ properties:
               - fsl,imx7d-sdb             # i.MX7 SabreSD Board
               - fsl,imx7d-sdb-reva        # i.MX7 SabreSD Rev-A Board
               - novtech,imx7d-meerkat96   # i.MX7 Meerkat96 Board
+              - technexion,imx7d-pico-dwarf   # TechNexion i.MX7D Pico-Dwarf
+              - technexion,imx7d-pico-hobbit  # TechNexion i.MX7D Pico-Hobbit
+              - technexion,imx7d-pico-nymph   # TechNexion i.MX7D Pico-Nymph
+              - technexion,imx7d-pico-pi      # TechNexion i.MX7D Pico-Pi
               - toradex,colibri-imx7d                   # Colibri iMX7 Dual Module
               - toradex,colibri-imx7d-aster             # Colibri iMX7 Dual Module on Aster Carrier Board
               - toradex,colibri-imx7d-emmc              # Colibri iMX7 Dual 1GB (eMMC) Module
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
