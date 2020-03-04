Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3158F178B89
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 08:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TxhkIBnFqVG7PEQpNqqjSjBdl6UoKjpNaytvpunjHoc=; b=m1Njqd7SQevVeEtH7TcMyxjfLK
	7ORm572ms7EFi+CC7d1YU0oZD5nGp5Fh726y46DPCqJkYs7uZvNpDo8apvIFXpVae6ukArqs7Y3KU
	e4gpLt6kO5yvzaH0TLyUYXL/o57pi6RaTjzcGirTZf1BK1hS4i8kPjaGh0vpewnIRaxTfGrYgJPnn
	iXZW6qZit6AJrHkDL9GGOnoyk8yGJPDQGaudZ/RLX/Z8F9UIQaKVxNFOCZObK00zlZRUuucuu/SWf
	5x3IcB4QS4uUoPaGB4gypUm+bNpuQCBMSTlBrk2JER99Y8032RJSwEkZfsqKgWy1bu1ROwX7o3vAn
	498PeOJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Oej-000446-Lg; Wed, 04 Mar 2020 07:41:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9OeM-0003pS-WA; Wed, 04 Mar 2020 07:41:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id g134so749737wme.3;
 Tue, 03 Mar 2020 23:41:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zaJoE8S6ZoYeei3qANBHRGMHafpbqFjs0OJRPS7inbc=;
 b=I5oGKA/UWW7QwBvJ3wSieVr1KrOam29uhrWVFyJ5NShFtWmXS+wm5O+7mUKNS5Wi8z
 shOlw/C2PyNt+V8WIOWvMAVn3Kk4InYVY5Wg6OK3nLXbh1EbJb8vouDBFm3yStE1AopM
 ckEbB82cX+WY6Wyzpci3c1xu9loT169vXv73YWaPeyUc6Q5ZJGzedG0uOqJbTjBGJbWE
 WS4Upwtv9gUEi9lHfV1Y3GOAaGC5FeZ0TfPCCzY0NMhD4ES8MXVARxwRNqvby2q89v1p
 LWk4TbrY9acWFcbqcg1JE+hPmviVwkyU8cCYWEDsfZ9+yvo1zJJwMVKZnA+v0ls9j+p2
 TgZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zaJoE8S6ZoYeei3qANBHRGMHafpbqFjs0OJRPS7inbc=;
 b=iqEWidP21lgK4bCDlFvZDX+uvnBFszED0PIH6AEW7+BXxvb4kf9TFy9uNjiLyMojeU
 nqhkVHP9I4dULobMznL73jJBNtgk5qROTDku/Y6jBGe+RzobV8K0+wOCv1b5kMnBgIZw
 RqKKOVwa9PY3KgpGOKTchBP29GoK+GZAHREP52lWcUDCZYRK8ht3QUfrUlrHdEKKQVep
 kFQFKdbcFU7h/OgO074jqBUDg03c51C1eViRXCmvsf5H9zP+2mem8rXtNn/7MiNHQ4FM
 D5hmRxehCKaiUmkTis9E9hxBzInBo2lnpkK3EQpQmFrXNWgyQ0FuiKwYN8ZbmbjSJphQ
 s4BQ==
X-Gm-Message-State: ANhLgQ0YJp/S+9gba06LpFn2lLZQmWDOX79kXl8FBpA8Rxo/8rQtV3MN
 PRSFJJgBbmwygmVjNlB9FtE=
X-Google-Smtp-Source: ADFU+vvLjNcHwxp+EXcjbM13xCnQx0EC41KlBeGvt1Ll82wKDOjh2PiuZOTCyyaL63+lJ3bvpLSuEA==
X-Received: by 2002:a05:600c:214b:: with SMTP id
 v11mr2277253wml.13.1583307661540; 
 Tue, 03 Mar 2020 23:41:01 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id m16sm6410530wrs.67.2020.03.03.23.41.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Mar 2020 23:41:01 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/3] ARM: dts: rockchip: add missing @0 to memory nodenames
Date: Wed,  4 Mar 2020 08:40:50 +0100
Message-Id: <20200304074051.8742-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200304074051.8742-1-jbx6244@gmail.com>
References: <20200304074051.8742-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_234103_032011_6AF8028F 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 arch/arm/boot/dts/rk3288-phycore-som.dtsi | 2 +-
 arch/arm/boot/dts/rk3288-tinker.dtsi      | 2 +-
 arch/arm/boot/dts/rk3288-veyron.dtsi      | 2 +-
 arch/arm/boot/dts/rk3288-vyasa.dts        | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

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
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 54a6838d7..c089ce008 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -18,7 +18,7 @@
 	 * The default coreboot on veyron devices ignores memory@0 nodes
 	 * and would instead create another memory node.
 	 */
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x80000000>;
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
