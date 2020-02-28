Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34004173C3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:54:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DvwMPkBNromhilQuqw0DEeevl12klw8DdF+TWbu7r8s=; b=L3oiZtYINL8cq9ra64F5mlKvdj
	6p6WTwU1+Rv9fk+opE/XdOAnuYHwE8ibnFG87YwxNpy0KRB2kBBMbdn2K4uLh3DfKIvSQtRGlEcLi
	c9CGh5JeiwmtfHxFHCwzNLhylMh5Fb6MB6naN69nv1P/1+4pKjpMGgb3OkiC55B46vB+kbgTlp+W+
	XroLEVP9Zp2ff0VctJxzJ8GCwGyzMsIPDhY+DioWqlJNjhB4Bq6qJ0JId5xZwjC+myh4yvUPQa7eM
	S72Edxel1Gn8h3ouHcCNJThpoeSRwKx+VQS+9Xp6bR6UxRjSYWiEBLy2mqFbHi/6UfEADdHE1O9pV
	PxGnvtYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hy0-0002mD-6k; Fri, 28 Feb 2020 15:54:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hxk-0002lQ-TA; Fri, 28 Feb 2020 15:54:06 +0000
Received: by mail-wm1-x343.google.com with SMTP id a141so3729894wme.2;
 Fri, 28 Feb 2020 07:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OOFEHVj+JcOh+bbozl0BvwwgTaBmwM+LnayM/zLQzRY=;
 b=M6h7dQTuj/gg8vCYZ3Vggdnnr7wbFEV1TH+tu5T5KD2nNjU7WtPHvZdRVhyAYpWZ/L
 xnfTamnFo3oj7YtO4F/kvgE8+w7C+CxSazkfxsaWDG0tJ6TS3twhsSJ94pD0Cmzicq3I
 Is5CddVGCxGWduTM3ZLJSUOPuruxxiGP58SpmEjD2bG/sW7CuyOqZfE09nG9xHC8Tqj7
 jJZH+RSwMg+4aRcWyMjyFKbWSLx5wcQjmvf4KgNw87miNylBzQ/kMSc4/JimNXnYW+yo
 E6Ytq4drArtVGfW55H7PEUNpHlPgOT5/6bbQtONaiDc4UZ9httr4ac9AelT/qOSom6BW
 OmWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OOFEHVj+JcOh+bbozl0BvwwgTaBmwM+LnayM/zLQzRY=;
 b=H3YbPFGlK6yNjneIznMy1tp5/dlkFzmtwTCpQKQJs732TS2y2p88H6yGyixhDYNqON
 nhpXsCcQk4ERS26L1T56B4ByB00N9ZwAQwvIAaDPWgbthzzKYLWGJGV6r48XkB6uuGY+
 3eOSDjcBd+Z/IvD5V4dNnx5u4WgzknLaDdq3ysKvEgN3fbnFhJDjuT7nXp4oOM6g0/GQ
 xbxX9xGW91OKbImQkoaYrEY7AwvoN1Exiz4DA7QxAfpUM/+wApgUsQ58BLAdD1SO7Wvo
 5SshhBXsWQbLAJyL5b2SdfmVp6rjMTuymguI+mPqwzg2p5LDFKMzYdFZRlMmKoJSe6je
 ovdQ==
X-Gm-Message-State: APjAAAVv8n2aEADJtl0MG8fDL8WF+mtM6A1TKz8oFqcuAeAA5PxFNLaz
 ktArnxZW+D8zjpexQHG5UYQC6O3N
X-Google-Smtp-Source: APXvYqxW8XQ8dw2qaGsyhmIsF+VEhmRncnjxrYg06deIVUKojQrTiPK/4JCvhGVEkfnCdLo7Ne1nFQ==
X-Received: by 2002:a05:600c:114d:: with SMTP id
 z13mr5356877wmz.105.1582905243691; 
 Fri, 28 Feb 2020 07:54:03 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id m125sm2706605wmf.8.2020.02.28.07.54.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 07:54:03 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/3] ARM: dts: rockchip: add sram to bus_intmem nodename for
 rk3036
Date: Fri, 28 Feb 2020 16:53:53 +0100
Message-Id: <20200228155354.27206-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200228155354.27206-1-jbx6244@gmail.com>
References: <20200228155354.27206-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_075404_966604_4AD569A0 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives these errors:

arch/arm/boot/dts/rk3036-evb.dt.yaml:
bus_intmem@10080000: $nodename:0: 'bus_intmem@10080000'
does not match '^sram(@.*)?'
arch/arm/boot/dts/rk3036-kylin.dt.yaml:
bus_intmem@10080000: $nodename:0: 'bus_intmem@10080000'
does not match '^sram(@.*)?'

Fix this error by adding sram to the bus_intmem nodename
in rk3036.dtsi.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index cf36e2519..b62138563 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -101,7 +101,7 @@
 		#clock-cells = <0>;
 	};
 
-	bus_intmem@10080000 {
+	bus_intmem: sram@10080000 {
 		compatible = "mmio-sram";
 		reg = <0x10080000 0x2000>;
 		#address-cells = <1>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
