Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8321BCD70
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 22:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6jINl8EQ6zYYS6yKpFUT25J9mh1tZJCrcaZwbQXNKCE=; b=MQT
	fsghIoWtxquyeUkS4V+duu8KMbzp9uQmMutLrdemKKa6Ddpu1xFmJcVNrlzfCgEJfT/Nj13a/zBKl
	MMi0rPSGpdXPrMuEAnXxf023hr+FosDAA7C4v9OdpEExCESt8uP82C+GAaJX59HNidMadTdLurzqT
	qg9XG5Yvgq6h2Hm0hSE7ruyF1/b35/blGwgXFKTHwb/0bLvfJmHvdWdUBG+o2C4Rhf460xJdg8SO7
	D/NW8kFLr2U2y3ZBhFJD/DWx422r0OBhIwoBxv1sUWhGOWgkhkgKuN2vayjF8kEg866cerqrnnPN9
	YlE/8gD/c3uqOp69LWUEHZLLDlQMDEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWsG-0008Gr-Vi; Tue, 28 Apr 2020 20:30:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTWru-0007RU-1I; Tue, 28 Apr 2020 20:30:16 +0000
Received: by mail-wm1-x341.google.com with SMTP id u127so223715wmg.1;
 Tue, 28 Apr 2020 13:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cSI0lJVql2Godh5zstmOBUn+hBPwk2VKytQsLRGY6S8=;
 b=rrkNHj9EW6rx2BahfISMNiMkVomM9Xt6MisdacEJOvmKVG8yocdgwK66FIId9zxmbC
 WbOFy0Cyrm21Gk+VSqO1SixJPBoGuPBW5WTpczsg8Qy4H/vqvru8SsP0pogxssj5DZ5l
 st7uA9aGSLzT4AbJ3VYBkKldJTat7eZhRKmk9n6jOqk4IWTKmpdHCrJtSvavf2jVWBQW
 JPXvbZgZ/FYO2n1DX6SKFfEyhv8m6hPzD+FuiZ56KXRAY2TVoZWT0uPs7bBDVSoaP5RB
 SoSkRwaobMVatYrGr6LYeUxxtA2fTU+wSTnhCmeBJuBUmpcR8sfVqUA6ffwSG7nuGCQK
 CaUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cSI0lJVql2Godh5zstmOBUn+hBPwk2VKytQsLRGY6S8=;
 b=lFgZnNEOPcfYoJ1haeCV0E9eGtLZ3R2omdhNrzWcVMje2lXlKhXCUAli1p31bB1P+B
 srIlPGudiZpASQ60QW7c0IUPQcmyZkB9lcpT9qWehaW3NKam2DOLe06ecC2nmF0SfcmG
 FL6zKuVwV4DTAa7eTlLYMhYDOzI8B9F9W3zzsIRy+aXZs+NH2YEnvLBg+j+7hUZmH7Jw
 YlH0hXa5zr5Tyi2qIl8eILm1VGlqQ0FsSCJ0bfK6IBoAS8QLaH9sIZvA97fo0506tT4B
 is693tB77WjBtANHJ9tQz35RNo3JVzItRE/iVxfLTeObZ5oVPooAH4RaRT49TuJjgdsL
 UQqQ==
X-Gm-Message-State: AGi0PuZEJD8SpqpRcanKODhi45kCXMO7+t1uxwSHv755n4m/ZOEJ4Pzu
 7agz1B6Q+wshKudSzrbGg869whwP
X-Google-Smtp-Source: APiQypKtek0DZbQSQGByss4wVXiUG3XROnJUmkprc3ttQG8iX87SZgIl6SM9qavb5oim4rNrmlC/Sg==
X-Received: by 2002:a7b:c459:: with SMTP id l25mr6335877wmi.52.1588105811692; 
 Tue, 28 Apr 2020 13:30:11 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 1sm4797801wmz.13.2020.04.28.13.30.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 13:30:10 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/2] arm64: dts: rockchip: fix defines in pd_vio node for
 rk3399
Date: Tue, 28 Apr 2020 22:30:02 +0200
Message-Id: <20200428203003.3318-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_133014_220849_45132416 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: pd_vio@15:
'pd_tcpc0@RK3399_PD_TCPC0', 'pd_tcpc1@RK3399_PD_TCPC1'
do not match any of the regexes:
'.*-names$', '.*-supply$', '^#.*-cells$',
'^#[a-zA-Z0-9,+\\-._]{0,63}$',
'^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}$',
'^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+(,[0-9a-fA-F]+)*$',
'^__.*__$', 'pinctrl-[0-9]+'

Fix error by replacing the wrong defines by the ones
mentioned in 'rk3399-power.h'.

make -k ARCH=arm64 dtbs_check

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 2e7164c82..37279db53 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1088,12 +1088,12 @@
 					pm_qos = <&qos_isp1_m0>,
 						 <&qos_isp1_m1>;
 				};
-				pd_tcpc0@RK3399_PD_TCPC0 {
+				pd_tcpc0@RK3399_PD_TCPD0 {
 					reg = <RK3399_PD_TCPD0>;
 					clocks = <&cru SCLK_UPHY0_TCPDCORE>,
 						 <&cru SCLK_UPHY0_TCPDPHY_REF>;
 				};
-				pd_tcpc1@RK3399_PD_TCPC1 {
+				pd_tcpc1@RK3399_PD_TCPD1 {
 					reg = <RK3399_PD_TCPD1>;
 					clocks = <&cru SCLK_UPHY1_TCPDCORE>,
 						 <&cru SCLK_UPHY1_TCPDPHY_REF>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
