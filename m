Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41408174B10
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 05:19:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tfMfGDHV9kq7C/3fvpC6i1cmHJAn3Me7EAEP04TT1wI=; b=PgtwUYru90kjfTKSvgogZKfPt9
	i0d3Pluk5RR29nzbgbdZ9Pji2iQWKesRjayUyvYToR/vOaxRvShsFSGPWtmt155S0yRUI1vtqIhX0
	coGUgIGFOfT3nNDbJJEP9pWbISsWE1ENNFiMlsxjFy3CBOy/ZuQxuzycngYCaT2xNcsNOK+cXw26h
	xVYVwtuBTueAe7pG5u2CB48NttLsDu08bFWGPB0jHEE4Ht+fC0nLUYt6f2KCTaM44vn1r3DZeDXrv
	Ykh2XPhayLpzvksO8fJHXDUgy6+MSyQqjJRynFud7LGpAmJcccGZ/bBAHFVFuUOwcqWAczcfDhjwA
	7nD2J9FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8G4L-000120-IK; Sun, 01 Mar 2020 04:19:09 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8G3Y-0000ZE-Q0; Sun, 01 Mar 2020 04:18:22 +0000
Received: by mail-lj1-x243.google.com with SMTP id r19so8003297ljg.3;
 Sat, 29 Feb 2020 20:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PUiZOEdutWx8wS79TjIHPc76XzhI43CZLLGIcRxipWk=;
 b=VBrJkxRgWdQ6TPtLh3dP9aZZ1/tWFEwSx9ymvQf53dWckdJwHagpTOT/eGCm7Cx7Oy
 5FnI/6yvC8i7r8WUZy0mFlDHCxf048BqW1x1V81AeliIurAdHfovsdmTWkyRDUDe70z2
 HKfpnhoLx4zpPGU1LyRRzSo9/SjYa5NoqNEef+qCqmOy2I0l9/5uIakc7U67yD2nviKi
 5DQuTFjMt1CGv7T9tBhUw6L3mvPOldOnVhxHiJqQT0vBiMDe1hHpHRBVNgjHlmQzt/7S
 88omaRoVbqK4rtuieK0+Jzu5rGDE5Ve7HSzhE5FxSo/+hQ/MXfrPlRNvEdJWCGfaGodS
 dtrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PUiZOEdutWx8wS79TjIHPc76XzhI43CZLLGIcRxipWk=;
 b=SB7KT423D0ZU37BxRvVU97Vg+ymqfrBCZeHsb+egHGXu1lvoofvQsLSGH9WiJaS0xA
 KFH5VG8hFJMA8EXZ69JaW46n68RHGCOKNSWPQR1HSY5gmulIdgVgXTdiwWbCZC+/TNir
 QgAoOVTwiPJ57q8YBCby47vMNIFsN7l4cE0AHObEMjpETuoChK4Pw9R69IsGKcZBIrsx
 kFTacSP2TWaO8OX3+tES0G2RrKrjyNwakqzVrLfSxkNJwZYusgWZB8KRFXUPIAQwpi2e
 iLtoKvj3+BZ9L4q1vTlyrDu0IHNwQ+gkRvDSpnNATKY23COyyzbWstZjd1FXgGKdIDx/
 2fng==
X-Gm-Message-State: ANhLgQ1v4W9utK4FfMumeZlsX1WaFZUyNUW+lFkBDBSC6hhGvYT233Od
 fdaPJFZZsqlYThGzppopgMk=
X-Google-Smtp-Source: ADFU+vvQ2y5mcQKwd9oUqJ2hNPWZ2PG37XsR4QwGtnp2+a9mYT0+jZ3kp9bekRArgOMbhtCTkgV01g==
X-Received: by 2002:a05:651c:2006:: with SMTP id
 s6mr7637828ljo.251.1583036299026; 
 Sat, 29 Feb 2020 20:18:19 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id y24sm9568864lfg.63.2020.02.29.20.18.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 29 Feb 2020 20:18:18 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/3] dt-bindings: arm: amlogic: add support for the
 SmartLabs SML-5442TW
Date: Sun,  1 Mar 2020 08:17:20 +0400
Message-Id: <1583036241-88937-3-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583036241-88937-1-git-send-email-christianshewitt@gmail.com>
References: <1583036241-88937-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_201820_875736_07287B1D 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
