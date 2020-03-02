Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBCA175708
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:28:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SgK5QtyCDCnTE8hg0pNb7ukcvJBsq4MtApwS3Jm3GvI=; b=XNHNO0fwqezqc504yHj/waWTOo
	ppEwx9YGtWXMhlsXWdZyAfbig7pT4OZ6+1m6HUeGWaC8T8dzMG9HuQ/++p022FMNSTmezk3IEZvFv
	3V2AolRmfwt4EfY5wd+3kaH79+s94EvpQL+qJn/Juh6JNODXxvPa8HHZElBjZATvEQzLqeF85ITc3
	ZY7qdQyFOXuelZgBPif/2CWE4eNZSBGnIKpFb6rVnK3UmCwlBuLia1ob2T+wEVAOlzzPzAz/2d+OU
	Fpg7/pdwaTiVvszfyPPnFJfI2YTwIn/5fSoyrhsaeQ3pdLrOPQDypxRAdDWpQ6BUesl/1RSpEwHAx
	L8NOAc3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hN2-00067h-KO; Mon, 02 Mar 2020 09:28:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hMv-00066g-Rx; Mon, 02 Mar 2020 09:28:11 +0000
Received: by mail-wr1-x442.google.com with SMTP id t11so5174073wrw.5;
 Mon, 02 Mar 2020 01:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fknAu4Mi7mPoGch0tjoJSjMYmeswX/bt/k6r2YfuwWE=;
 b=c2o99Rb+A9AQ9FPzgwZKoZcoZNdvDOZLXgkynZGdcgs4YGzUyqDjKIWyEG3bWlDMl8
 zqlSN01fxUWAMKdv5y+D9ZaY2FwedSsk55BG+hO21RkNYE2i5nNzhjpIyRb3rvRUi5oh
 NH6Ovi8MuLjskr4lmwTCwdamwzQEBWXDxwbVBYK8CNWr7jAsS1/GzgLDGZ28rZCeox1/
 JC82bd1OmxriXshLCDJGdMjAi7Iib+roOE7yrXex3Hcj3kwL8dOIz4CCu0YsHfqFl/Vr
 y6xbuiR12kNOqonU2RWoBhx7w3oXcjY6S5JqzK/FtTXwBBSFF/I8lLu5eVsIzxNzPvLQ
 hoOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fknAu4Mi7mPoGch0tjoJSjMYmeswX/bt/k6r2YfuwWE=;
 b=CSlso8pjJ9qiH5etuqUwQkuM83pXOeCb/wvRj7hDAkUXUjGRclV/kCfGK3DkF5ZVgH
 C4JJrXzB9PO+9/qsk5/vOI2+gYEcqMaFenTnCy71Z/tBx1nU4pACXwxy2AAuhp4GsxL4
 kEs3UWmLCGcMzMNNkD5/wcWSagAU09piaTwSHsCGSSGHKTrWB7wCps0aIPe+JrTeNr7Y
 X1mgR0gTbkS5zGcY7duGYWSfBDsxUH9ImtzpjD0Ob/183XQ2ZHmMehgmMJSRBkrhU7yK
 cgnrUVBp0nWbaAxPQc4yaFAqCaS3YRX2AsJvhYnJNvf7G4Y2IhfRDGK2P7izfetiaePw
 q7yQ==
X-Gm-Message-State: APjAAAXtP24HjKD0o+Xb7Nljq9LWvf3V7pulP97TEm37LGrkMM4qs58L
 wbZHUuVS6YqeEJiXamoXz2VblGdj
X-Google-Smtp-Source: APXvYqxXlaMIucYPo55iWHhBI6sB1zHQmuSaeo2TekBQf3XjDtq0te5TlDq0lzQBCK4NO256i+X+eQ==
X-Received: by 2002:a5d:4d48:: with SMTP id a8mr21138127wru.35.1583141288142; 
 Mon, 02 Mar 2020 01:28:08 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id m3sm6409586wrx.9.2020.03.02.01.28.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 01:28:07 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/3] dt-bindings: arm: add Rockchip rk3036-evb board
Date: Mon,  2 Mar 2020 10:27:58 +0100
Message-Id: <20200302092759.3291-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200302092759.3291-1-jbx6244@gmail.com>
References: <20200302092759.3291-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_012809_930998_79C2C0C6 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

A test with the command below gives this error:

arch/arm/boot/dts/rk3036-evb.dt.yaml: /: compatible:
['rockchip,rk3036-evb', 'rockchip,rk3036']
is not valid under any of the given schemas

This board was somehow never added to the documentation.
Fix this error by adding the rk3036-evb board to rockchip.yaml.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 203158038..d303790f5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -468,6 +468,11 @@ properties:
           - const: rockchip,r88
           - const: rockchip,rk3368
 
+      - description: Rockchip RK3036 Evaluation board
+        items:
+          - const: rockchip,rk3036-evb
+          - const: rockchip,rk3036
+
       - description: Rockchip RK3228 Evaluation board
         items:
           - const: rockchip,rk3228-evb
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
