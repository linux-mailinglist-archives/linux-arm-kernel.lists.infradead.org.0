Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9EF148C2F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 17:33:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c5+PgQGhOsZZW1AFOT8wqCFIv/LwB9JFZB6TC58Z8gw=; b=cX9vOhH5qvwm2YlF9smfBTr0Mf
	BZPcTaqX0XgzVShsqGC4zv5tIKZjeq1TJazUXakcZaCvF+uZyl6ijvay9CQ0MPt1hDoi77lPS3Fey
	5maJuGNj5b9JKzPnZBzFaEvRPmX5HiJxmfWNydT5sbBgqjWql+FgSWQDtWAHpmTT/rwl32Jau5WhS
	QgpdONgw0yLtPu3srM+bp3TsERY/LrxhPenMUPCxY1Z/1XCsEgkKSSx8v5yGiUPTnyx/PkrISRaDc
	y24Juo6n508NN70NP1QbOJZRocm84/MIw+72yhomca57ieCeZtbsmXNK/B9Giymf7DhAgl2YQiMFt
	Ewd+0a1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1tM-0004lh-LL; Fri, 24 Jan 2020 16:33:08 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1qa-0002U4-L3; Fri, 24 Jan 2020 16:30:19 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so2722094wrr.1;
 Fri, 24 Jan 2020 08:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5CG21ojEDjECTj7XUBPSg8AMrBX1gphh8BPherlSg2c=;
 b=qODzbZGmaHGWOL3dDb3Xify6xkGEbOZyCAuqjPjEIaPY8V6dE42lSq2czZnDgXBpUG
 7auQNJ2tdS+OMddJObOB02bB0h12ZrwpqtFLHg1hlmO2MtcbeSXfw6hwogMvGmXXG0Rq
 hAyyxGmJmWE3AdA/1RdJ7y+J22+B04xgc5Gq0GZa2jgbbH+SMWXEH8LErXNVr3JPEJfu
 Fr/zJqBqy+XGPgKnRqvDGP+OamI41kH+w0KAvqYV+Yb4tjmH6yv2237dABwohRIrA48C
 oomdcNS3Y6flFc9EoLqbLn2zbxr8IstdVfrNwZlNKbGp4mSW/HmCBdJcsYMBgdpsg+5s
 i9Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5CG21ojEDjECTj7XUBPSg8AMrBX1gphh8BPherlSg2c=;
 b=k3q0d+c82jWle/bwZe2YfwFPGcIDnijKfygZfCPgJ6BpOv4+7goJ1sTicAQc88wi0Q
 nDOdFaJ66UgFY9u3umanM3cWoc1pl1mBM9bfxYccyQR8uqVAMRsV7cdi5z57Z/gYMwPB
 xj7QTwQRetbIELmaI9qybMKrVtITfVbOcDmv0UOZqRUaoQQArPNj8eqh0CXOKhirdk83
 Pm4V9Op17FA/gU6ppQ0Mb7fs1xOZHwzoOTyFSewmQ+/Xm2OSJ06VEROXCB5jxo1lvbQ+
 14H7qzk9jLmeF5tU9DNBeDfMdjYv4mHzEbwONVi/8weAtuOcmaJmow+nStghUWMChd/V
 ycXg==
X-Gm-Message-State: APjAAAVJ8OdF8j+SqkXzA4JsART3VlaNH/leBVfMGs4Trk291aQqODGf
 xeI4az1DLy6BgvM+OgAO7co=
X-Google-Smtp-Source: APXvYqyb6Y4gGv12/4HSD8PzStB662RmnSDlEdKQLoXAtCs6xALQmyQQxt8zVDbHFXtpDTTV1Yl7TA==
X-Received: by 2002:a5d:6a10:: with SMTP id m16mr5110889wru.411.1579883415317; 
 Fri, 24 Jan 2020 08:30:15 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 205sm1977304wmd.42.2020.01.24.08.30.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jan 2020 08:30:14 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v2 04/10] ARM: dts: rockchip: add nandc node for rk322x
Date: Fri, 24 Jan 2020 17:29:55 +0100
Message-Id: <20200124163001.28910-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200124163001.28910-1-jbx6244@gmail.com>
References: <20200124163001.28910-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_083016_740074_FC2E8C04 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, yifeng.zhao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wenping Zhang <wenping.zhang@rock-chips.com>

Add nandc node for rk322x.

Signed-off-by: Wenping Zhang <wenping.zhang@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 340ed6ccb..2f5122206 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -707,6 +707,15 @@
 		status = "disabled";
 	};
 
+	nandc: nand-controller@30030000 {
+		compatible = "rockchip,rk3228-nand-controller";
+		reg = <0x30030000 0x4000>;
+		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
+		clock-names = "hclk_nandc", "clk_nandc";
+		status = "disabled";
+	};
+
 	usb_otg: usb@30040000 {
 		compatible = "rockchip,rk3228-usb", "rockchip,rk3066-usb",
 			     "snps,dwc2";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
