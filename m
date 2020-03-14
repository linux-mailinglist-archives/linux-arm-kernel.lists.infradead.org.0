Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7241855D3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 15:08:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WFlCyLCshBdMJeyHzmd88YMZ6co98hkogCvayP63RJs=; b=lGA
	9QiXVm0vYlBlEsALpHvr5/lNL+BA7qa/Ngb/o4uM80GimmssK7eAqWqlYgAJO1K6s2lMNFd2MteXL
	uF/WpHGGOE4+hkAHS6wtFMEBEgj8xfHfjIwkFP/G93Uz5EhQ+LSr7+LMJ/yCfrIMAffcOqDOZp1ea
	PFYEtj1jSkzHdQdZOET7wGHZGoWN/yWNqK0v+VpARFu8TRQWeDd4cBI36WNBUkNkXDstrABDhuFId
	qq9FqWWZc/4bVblrO1hEqH9jspeFbhajfhonciGLC4TsDBrGER+MKRUl1dooqbdGjWfCzOx3795l3
	IysOzzTvybPKBPcFjqqAvFfX8zPTGgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD7Sb-0001yv-4Y; Sat, 14 Mar 2020 14:08:17 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD7SR-0001y7-MX; Sat, 14 Mar 2020 14:08:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id z12so4039118wmf.5;
 Sat, 14 Mar 2020 07:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ug9BTgmJGi8NUr0tGrh5CaZInERxLeb5201yui/HpNQ=;
 b=nXJ2trjbMjeu8qK5jque7iej42Qy5Qc+uzWMP9G5JD4LmPtyrkqhzRKRWelKil+F9G
 pc0gFY9v5dU7F1snlQAxQN8O4qhl7w8GiWJU8HhGlz0PxLZMRgBQEbtW80eEPLk/qgph
 eTozSIXrOPVP/WimNOvbOzouDfbG6oJv0nWXBScx31AHdPhdv+C6zfSekffu+DnAiZbG
 jRMIux/juOs2HRXYSr+R1/wR4joKPSLMsNAePslZKA7rWCDzbSKhXWyM66JFJaaOsDa5
 DGaLKzmiL1yM7jrUKxRHnIlmp3FnC9hjHds13SquoaJPtmT7BV37imoK7uoL50XYQ9yW
 06uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ug9BTgmJGi8NUr0tGrh5CaZInERxLeb5201yui/HpNQ=;
 b=hwTWNw6VUZXAdg6+p0GygWwemCb9lGAL/7gzqno3vRn/xwE1ZtBpAWGiaPC8GA4g03
 B6Hog0lvboMgFz6riuiHvCm35sDS3D6bn99nJTV+xEnOKSU6nbvzR/zhl9dgoy29R4Nn
 eAu7b4m24d4akzEHqNhBlN749w0tSqj2r55bEzFYy2PQJxmyv0pwv54L+IXLX18WBLWb
 btaW7xwFDmuExv1SPqamFzvkR/EmXYumAHspEDr01UJlM8M9Io486oXALXk0QYNP1nqh
 ptALpw6pHnk/wuoD7pepCHeAbhadhTx+6zwi0euZFWsIBu01lXg/7YYPL51JTTPzw1pK
 1AOQ==
X-Gm-Message-State: ANhLgQ2DDwTd1EjILc6lu9Py7Xb54SpfK92p4HHTMSEb1OXOhxqI5vHU
 djU/uDS5+8UK0xRsJPzw8Q8zLBAd
X-Google-Smtp-Source: ADFU+vtC0cnr1UOuwuED1RIpL0D0venxkMj2BASKPi20qZ7Y9Bh32wYkLHE1AtBQCqFZIEnXGRhWew==
X-Received: by 2002:a1c:b187:: with SMTP id a129mr13669908wmf.56.1584194882638; 
 Sat, 14 Mar 2020 07:08:02 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v8sm81788051wrw.2.2020.03.14.07.08.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Mar 2020 07:08:02 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: fix vref-supply for &saradc node rk3288
 firefly reload
Date: Sat, 14 Mar 2020 15:07:55 +0100
Message-Id: <20200314140755.4877-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_070807_760852_E4673034 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

A test with the command below gives this error:

arch/arm/boot/dts/rk3288-firefly-reload.dt.yaml: saradc@ff100000:
'vref-supply' is a required property

PMIC Channel OUT11 with powername 'vcc_18'
(connected through R155 bridge with 'vccio_wl')
is used for the recovery key and ADC_AVDD_1V8.

Fix error by adding 'vcc_18' as vref for the saradc.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/adc/
rockchip-saradc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Schematic:

http://www.t-firefly.com/download/Firefly-RK3288-Reload/hardware/MainBoard/
Schematic/FIREFLY-RK3288_RELOAD_V10_Schematic.pdf
---
 arch/arm/boot/dts/rk3288-firefly-reload.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3288-firefly-reload.dts b/arch/arm/boot/dts/rk3288-firefly-reload.dts
index 1574383fd..8c38bda21 100644
--- a/arch/arm/boot/dts/rk3288-firefly-reload.dts
+++ b/arch/arm/boot/dts/rk3288-firefly-reload.dts
@@ -234,6 +234,7 @@
 };
 
 &saradc {
+	vref-supply = <&vcc_18>;
 	status = "okay";
 };
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
