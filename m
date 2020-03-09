Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445F217E09A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 13:52:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0Zn1sHsHtqBBT1faEB9SUNWUXV70xe9Bjb3CSn5UPSw=; b=Id+
	Fs6FXk3DNnDaPp7czp4xAo5oul3/aigwgpdoKQ2ptW+WHY5OKoS7yfr+bLhXm0RKEqRyeLTAEUFOj
	MlO6UyQ5dV5/ubBfb19M9BxEruenZZXJZh+naWG8zKUFkPNUFIqFHKH3EI4d78+bmc/2x3+od84gK
	M2TFmCgt5SC3r5AbWFb6yhvaWIKjVoZGWBDCV8VQlRWObKWGC2FtfuhxIgs6jcI1DaHORdP55Tz7J
	KJ8Unh3bMvR3NhDLG+OFoE3TZLI78LkCU5lLMAK1E/NcGHSiFfVBDkW9dAci279E999qhWYTJ2Kmq
	flJ95k8dDT6uXoEUGBrHbQXjRfn6PMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHt5-0000Zb-4j; Mon, 09 Mar 2020 12:52:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHsv-0000ZD-7S; Mon, 09 Mar 2020 12:51:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id a25so7159947wrd.0;
 Mon, 09 Mar 2020 05:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=x1PptPbFNehJRLUAcVtBI+Vv+nO2YeUsId4RwTPHqBA=;
 b=Fmbt/s57JOvGC+t5yT6BOuG+VuAV+C1vdOBucJ2qiE9DA5S13as4YRRV/vKilghnS1
 qCmwRQ40bTYX/E5Oi7OqKpaTZPPYm0UHI8wV6UnPq3oD4SxiMkxf3m3RrE3cd05LWt7d
 jaFr8ytttI+TRgfOzMo/KMzE7oIfFm9pHBCKqyqPH0CpRWtaatkaWFXV42k9l9KwYWMG
 MZC5ngxwUkLTnxmkUh1rMZxbIBFMpw77ykaPWiQ8hHMK7ACE0Zdtfo0q439DXKeCex1E
 PF+0tMWqcOhzJFm8QAOKg8Rb9ig1E6S+Jdwo0rhRV58/yiKfAB/jdye8798KS4/++TlP
 XdZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=x1PptPbFNehJRLUAcVtBI+Vv+nO2YeUsId4RwTPHqBA=;
 b=jiF3I3Hd0ZqFmPBNDRgOg3IhHNXFIQPPHLeD/mf4uHCcTFJjuHVGOqTHT4br2SGxik
 5EkI1AC7EbZxXFb6CflnBUa8UcBaI0CpxKcJonMN/y0eo0Cl+XeLpIuetTfxDHLctgxa
 ycQiHOQzqEHUTwaTkAyRw2yLEnQK0B0zi47BOJBUek0imhYNTWeW6LMQcLyAis1tRTb1
 +vmLHXEBk8CP0TUlUbvi9yaUKiqaRVgsM5gJbE/oNn2IdAhgV2/jcl459la6bIDJJQoM
 fSyfY3ftVvyX8p8jk1VQ4yUr7BEmxhnZHwPWEY6IK/A1+da7aemmGCDhmnyLplHlbl6u
 8zvQ==
X-Gm-Message-State: ANhLgQ0b721Y9H863gOEPTuESWvPX3//xa3RqUMcHoUCq8FoAx9TrzXN
 nVxV+elV6SEY9oasts47kRhS+q+4
X-Google-Smtp-Source: ADFU+vugr4WovSuV+zASQpMXVbLmM8ABazZhoZEpd53p08W7sWLhtWk5N82r7d6SgIM3qCpKurVBLQ==
X-Received: by 2002:a05:6000:1081:: with SMTP id
 y1mr20922811wrw.52.1583758312017; 
 Mon, 09 Mar 2020 05:51:52 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id k133sm6417635wma.11.2020.03.09.05.51.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Mar 2020 05:51:51 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: remove max-freq from &spi1 node for
 Hugsun X99
Date: Mon,  9 Mar 2020 13:51:45 +0100
Message-Id: <20200309125145.14455-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_055153_271937_5A6A74A6 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below does not detect all errors
in combination with 'additionalProperties: false' and
allOf:
  - $ref: "spi-controller.yaml#"

'additionalProperties' applies to all properties that are not
accounted-for by 'properties' or 'patternProperties' in
the immediate schema.

First when we combine spi-rockchip.yaml and
spi-controller.yaml it gives this error:

arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml: spi@ff1d0000:
'max-freq' does not match any of the regexes:
'^.*@[0-9a-f]+$', '^slave$'

'max-freq' is not a valid property name for spi nodes,
so remove it.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/spi/spi-rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index f2ffee639..ee4867fbe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -610,7 +610,6 @@
 
 &spi1 {
 	status = "okay";
-	max-freq = <10000000>;
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
