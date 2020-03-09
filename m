Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B66D17DA7C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 09:16:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gJpE35hwC2dinUp5/xa7dAn4VUqRnY9Wfolx3f99NV0=; b=mmV
	tX9fombodqI7V2j4HEDmfBJlkfuc5k+ExiCNExrr0dcOXsxY4kHranH5NRxK5pXFx6D3Uvepqoede
	xBeMb0FPRLOF/ymg3IclNwUDuJliXINoedlJ55EXaMu3ibsr4GN8h3nLpt8ffDJBt9jh3bYdNNj3S
	7UpnHA6vZv/DPx1cubbdy4MJpVSEdAVSIvld2/fH6W14b8xwakcFa/EXzCdtzwJz+mXAMdPwlCfvq
	x/TtD5HFm6ULZcDj6leF2zmbHtnJKvDBsNZWdrWZ93meKEUTyigEQTa2htAhWAvBH2YFoAemhf+SM
	q6hr9VyUYPyLTYYIgfVXAd3O/7+MLpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDaG-0003SK-HM; Mon, 09 Mar 2020 08:16:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDa6-0003Ru-RS; Mon, 09 Mar 2020 08:16:12 +0000
Received: by mail-wm1-x343.google.com with SMTP id f7so4153154wml.4;
 Mon, 09 Mar 2020 01:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=21vOxRxDjKqcfrgbiaoQAsuWSgoqLHAftWopA3ShZhI=;
 b=oIEHJnHDukzw19P80JbWF7J3wp/aDWOpD/frO9t4Av3oqEH1wlFFAKDwbw7ZxK5hdt
 ovZKGRwTYKxENfkzlsCflHhjRJ4uX/8hyJ23ArR/BuaB8zyE6Cf75hA4tG8vbaPg4F7N
 al6blJrPk47C5cwgWlf0P1Z161QWjiy8iJNQJsFUYPwA0O1iGNPleIa2v6YiWjF8aBN8
 RhxEJz5dnfzgjMNqzmqAa4P3iIAo8yhtt2aukcdDJeYAxHFGO5G1RvJCGbCPfnI+4Jf8
 V+GY5ch26FATDwdb3BTivgWx+EFi2pylYXY9MD5vSng24iNw1EsUbZVLd0SgBsVW9njh
 DEIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=21vOxRxDjKqcfrgbiaoQAsuWSgoqLHAftWopA3ShZhI=;
 b=K9mUlsnR1PWDTOwcKUd4ZeGl4A0K9pTT3ubf788aIWvKrHmoL9ERZK9U42zEle3/oX
 x1x2azTD6wHraUdr2BjpXaEYM3pI2PzOEw2BRsAa+TH5jDNn1MkexuwkTT+YpnOEWu5S
 bGGDXIkWtglbsMvqaXvRioDNWLtsW6ZKvEjMZ6V8YYsRtWvZkhm5bR74C5uzB+FFhqxQ
 /LQxaAKP+T15HbwjtZb3Dkjyz2lvMbPi7IC7LnzKpvzIZPiG6bvY4Uv+5lwJXo+FIzUU
 tWk4L0Kbakm7j0ru6JZDqXVKbUFB0goGiL4ma3ELm+3ZuHX0PkjnIwJIOzlK2VkjcHl9
 k6kA==
X-Gm-Message-State: ANhLgQ11vaqi7iGXJJ8a2tCK+m56RW9jmXp1vv0oB3sHNUY8dKlC3fc8
 WJw5j889Y6WMFRr8fRVoyUk=
X-Google-Smtp-Source: ADFU+vt3Yqf7ZPutJlxBROOJKc49aGfr7tYraWP+grvURFzG5aqwAEF03ai0VObc3auLb7YasfTsDg==
X-Received: by 2002:a7b:c770:: with SMTP id x16mr4736819wmk.159.1583741769115; 
 Mon, 09 Mar 2020 01:16:09 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q2sm1097096wrv.65.2020.03.09.01.16.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Mar 2020 01:16:08 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: remove rockchip,
 grf from vop nodes for px30
Date: Mon,  9 Mar 2020 09:16:00 +0100
Message-Id: <20200309081600.3887-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_011610_890319_A3E127D1 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

An experimental test with the command below without
additional properties in 'rockchip-vop.yaml' gives this error:

arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: vop@ff470000:
'power-domains', 'rockchip,grf'
do not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: vop@ff460000:
'power-domains', 'rockchip,grf'
do not match any of the regexes: 'pinctrl-[0-9]+'

'rockchip,grf' is not used by the Rockchip VOP driver,
so remove it from 'vop' nodes in 'px30.dtsi'.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/
rockchip/rockchip-vop.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 215515ccb..1bbed660f 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1030,7 +1030,6 @@
 		reset-names = "axi", "ahb", "dclk";
 		iommus = <&vopb_mmu>;
 		power-domains = <&power PX30_PD_VO>;
-		rockchip,grf = <&grf>;
 		status = "disabled";
 
 		vopb_out: port {
@@ -1072,7 +1071,6 @@
 		reset-names = "axi", "ahb", "dclk";
 		iommus = <&vopl_mmu>;
 		power-domains = <&power PX30_PD_VO>;
-		rockchip,grf = <&grf>;
 		status = "disabled";
 
 		vopl_out: port {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
