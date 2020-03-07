Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F18B17CE85
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 14:50:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ol+lHR7KWPF+0qu732HuDLqDVP/WGre4M9E/REeyS3Q=; b=oMKNRlDzXpLoVXZ8/YHDDAVxWN
	jSShtIHWV3C4v1jpO6sYzUO6508/mACX6TroTdQCSHWmfYgn/aiYpghyoaXR7ijiCqqlGP9vmLjgs
	jb4U/pSKkec4EnJDfnwdCacz8HyyThIeIJfz5umepD6HGC9GxKAODFhFGeZ4KpjSbPSjlgU7SkpKE
	BtfwVpxyRMdBrDkQh1SYEOzoQgIsNxYQyWw7i+4REnvTq9Toe1PnZam+bAX45gJIsQFf5agu6Zu/R
	uJa6Cf5bJL8GOPjnByHWn5TJ/T56t1UUuP32Ht8HMKj3hZ4lh7qBHTBD0rMiu9lgMYU74sPTVm1BY
	4DTIknNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAZq3-00024S-35; Sat, 07 Mar 2020 13:49:59 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAZoy-0001A0-Dp; Sat, 07 Mar 2020 13:48:54 +0000
Received: by mail-wm1-x342.google.com with SMTP id a5so5413276wmb.0;
 Sat, 07 Mar 2020 05:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=STsCYmVzqE0DyGQSLcvjOSy6vdxPWBxzS0jjS6ORcro=;
 b=rMI7D0qKgKibOcLcQS/QK9oNfgZ2LNDtF/Z/YgZsX1xLCBu6Hnc/lKSrbOQBIEPLSg
 v33E7/H4iz+xsgbL6klyAa2fO1kLmSk9WFqB3c2ywEYP4BrQ5FQBwLJR/w/7ZVewQ5Er
 x9vt6l9dgXR4fq1ZR+GjY5VwDC/kWtcYmlxiLWv67te7rD91XlNwNHh4dIFuaM6ZgYLV
 j2IlO3Bkc1QfTXJmt9crdZlOMc29O3PBfvM+e6ecbZkXb2fT5WBtxaDiA7whoQLBhfu3
 jsEv8QPE9yD2K3nbYB+voC9kE5WhA+/zYjgFrXL8V7e1RTiZYDXH3LBsGxem2LC4vzot
 xd9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=STsCYmVzqE0DyGQSLcvjOSy6vdxPWBxzS0jjS6ORcro=;
 b=OuGBRky0RxJYtMjG7kj0MCZqHTt+7SzFhwtlSNuRSxPDXMUfxOE3sSzTr6e7lkPyUL
 MaH1MfWv6pGBbHD3Q2o1+BuJX2j36l+45OEG2LvSO1F3zN8Hqk6yxGJpCjiTUosIBYBC
 JL/Bj1g0n3fsV23UNGieHURTUtdotdONjGW0fbk0C0LbNugaT6pUHg+6ol8bv4HMVExF
 zJdjxyWpExSA6f4aq5m1eFaTvxtlgGmFtI+KzLsqNg52As2x9Hbk/yRfT2BDZQKN0+2L
 lwdyp+oWvCuHr+bUgEiJs+ocM3np/Xi0pFZTtGjpDwhws3QFkGhgrcF377G2rMkb2uIe
 Erbw==
X-Gm-Message-State: ANhLgQ1OIDu0P+ft4+iTmIJ/xjE5Lh7s2rofoAS7gesUYzzGjSsp0xDh
 HKyNmzBs92LE2xkH0E450WU=
X-Google-Smtp-Source: ADFU+vs3yoiMYHy+aHEyVA2e2f6aaRqhgHSl816HFm9nXq+rhUBv2x3rBlfeJzF3+oI0XniuPhuGcw==
X-Received: by 2002:a1c:e0d6:: with SMTP id x205mr9352590wmg.29.1583588931283; 
 Sat, 07 Mar 2020 05:48:51 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 9sm11767265wmx.32.2020.03.07.05.48.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Mar 2020 05:48:50 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 4/5] arm64: dts: rockchip: fix vqmmc-supply property name
 for rk3399 puma
Date: Sat,  7 Mar 2020 14:48:40 +0100
Message-Id: <20200307134841.13803-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200307134841.13803-1-jbx6244@gmail.com>
References: <20200307134841.13803-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_054852_482487_02D9C4E4 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

A test with the command below does not detect all errors
in combination with 'additionalProperties: false' and
allOf:
  - $ref: "synopsys-dw-mshc-common.yaml#"
allOf:
  - $ref: "mmc-controller.yaml#"

'additionalProperties' applies to all properties that are not
accounted-for by 'properties' or 'patternProperties' in
the immediate schema.

First when we combine rockchip-dw-mshc.yaml,
synopsys-dw-mshc-common.yaml and mmc-controller.yaml it gives
this error:

arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dt.yaml: mmc@fe320000:
'vqmmc' does not match any of the regexes:
'^.*@[0-9]+$', '^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
uhs-(sdr(12|25|50|104)|ddr50))$', 'pinctrl-[0-9]+'

'vqmmc' is not a valid property name for mmc nodes.
Fix this error by renaming it to 'vqmmc-supply'.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index c1edca387..07694b196 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -480,7 +480,7 @@
 };
 
 &sdmmc {
-	vqmmc = <&vcc_sd>;
+	vqmmc-supply = <&vcc_sd>;
 };
 
 &spi1 {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
