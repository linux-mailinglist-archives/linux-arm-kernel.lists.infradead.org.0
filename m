Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C1118450C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 11:37:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZXyFzDDD7C7q4XLDn6FxS1i5pcr7cu1lo44XwoVeME4=; b=fsK
	fPb2bi//29l3LSu37WH0Poh2HIbgjS43B/feaZO3c6ysPmHybIJNeeOp3VZNd95M7/kwfqfmD2CV0
	C5h41qZFjckahwvGLQTgp2ST6xdT4jc4tuvbPgSri0ROoFxd8U//eXY9SN3eeXcXfCUf5e0A1jbOB
	bbx99bkafmtpbAAdvayaIGQsLwfNc3J6w/2gYXfH7WLWG07M1bMB/vN7wZYPQcgnlWpU/hEOxX7T8
	Mm+UF/xlrvUe3EUkRWYny4JoiN7FfhtTnJDtrjoLR0d4c+GZmpKxme5Q2iZm+d2p7Ncq9a38+050u
	iMfVCbxi0Xmum0d7SHJMMjHgGWAGlOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChhK-0005fA-GV; Fri, 13 Mar 2020 10:37:46 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChh9-0005dq-8F; Fri, 13 Mar 2020 10:37:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id t13so3336306wmi.3;
 Fri, 13 Mar 2020 03:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rQjq8uKoRrlLiAy2jC9SVIhkfPttmNZUWXbQLhDZM9k=;
 b=UGBliQojrFTzcrINN1hj7VaIxQhifS1a+pj8O7CpftaSMpdX/jXa/e2ShvDTKrPtDg
 /fRJICfUaCPHZHAL/PoJGQZLQbqzlIcyPGAvhNetLxmKmIuVbhuVT/3YC2+sLn6/l/lz
 YcEuUOumTYQtWC8aSHnVQVQmxI50A+8b/Z1vom5CTboDz/Mr5ZUAmZNTd8D4XkhhACEO
 2qdHlYmOrqcec5DzyzF0TDDIPkPkJowmXOs3vydQavbqCyfGBQgcpKRnRAiVbOG50JRJ
 4VXELyeSJOTeO7IQmWQtFWAg96CAYdDzO7cj57V0b5pfjxV5jJWQRlXM66ff9YFUmnVx
 dDBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rQjq8uKoRrlLiAy2jC9SVIhkfPttmNZUWXbQLhDZM9k=;
 b=jQ26pBnCXw0vB47akXLyJqTaVwDZb9sa3HiTkMkXPhh0TQKi5z6RbNrWlBw+dG7Rmg
 hhn+93oVQWSfcQAe8N56g3lRwcqEOV3+gbYxPrhQNJDQVSAWeS0Scryjlu14aYQV/oh+
 O0B2nV2xezoqD4YKXIrOGRSik83NEowqEW5U82i2iSX9MrDjxRgqOxt9W8Vu5QcG9MZN
 q2twYDCrczsv9MweQk2EtXsBIBQnsVTpTX731FFla6nqhTyhV3I+GyyEn/7XaLSe9siv
 NT7bSq+CwreBv+y9JXxC2fqBCIlAtIMQ3v3OCHsv1PIkthxKjFkbR8OZyIvgsK16H0fw
 noKA==
X-Gm-Message-State: ANhLgQ0Lh4uhllNN3za7/LFkegnWP2OHrtHbwcZPQSvFRHoEDLR0lZ+v
 DnPL+hDa4opFfSeRFJ0q/kg=
X-Google-Smtp-Source: ADFU+vsvWMWzKMxNqeNsKtP8NvCy424vINQYoxocmtCUEXMyobJjwyOn9tG53zX72IKMsG6O9hK2aw==
X-Received: by 2002:a1c:2048:: with SMTP id g69mr10462496wmg.187.1584095853079; 
 Fri, 13 Mar 2020 03:37:33 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o3sm17688551wme.36.2020.03.13.03.37.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Mar 2020 03:37:32 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/2] ARM: dts: rockchip: add missing @0 to memory nodenames
Date: Fri, 13 Mar 2020 11:37:25 +0100
Message-Id: <20200313103726.1678-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_033735_294542_CD7112BD 
X-CRM114-Status: GOOD (  12.34  )
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example this error:

arch/arm/boot/dts/rk3288-tinker.dt.yaml: /: memory:
False schema does not allow
{'device_type': ['memory'], 'reg': [[0, 0, 0, 2147483648]]}

The memory nodes all have a reg property that requires '@' in
the nodename. Fix this error by adding the missing '@0' to
the involved memory nodenames.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/root-node.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changes v2:
  Skip rk3288-veyron
---
 arch/arm/boot/dts/rk3288-phycore-som.dtsi | 2 +-
 arch/arm/boot/dts/rk3288-tinker.dtsi      | 2 +-
 arch/arm/boot/dts/rk3288-vyasa.dts        | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-phycore-som.dtsi b/arch/arm/boot/dts/rk3288-phycore-som.dtsi
index 77a47b9b7..9e76166c3 100644
--- a/arch/arm/boot/dts/rk3288-phycore-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-phycore-som.dtsi
@@ -16,7 +16,7 @@
 	 * Set the minimum memory size here and
 	 * let the bootloader set the real size.
 	 */
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x8000000>;
 	};
diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 312582c1b..77ae303b0 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -12,7 +12,7 @@
 		stdout-path = "serial2:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x0 0x0 0x0 0x80000000>;
 		device_type = "memory";
 	};
diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index ba06e9f97..889b95e95 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -14,7 +14,7 @@
 		stdout-path = &uart2;
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x0 0x0 0x0 0x80000000>;
 		device_type = "memory";
 	};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
