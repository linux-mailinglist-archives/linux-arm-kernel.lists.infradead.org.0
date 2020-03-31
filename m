Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5336199B0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OZ9ZV27raeEOFfvHta51UJxYgFQSFIeiTSQC8UkCZXE=; b=FXGdUWvCK9oMZEmhJv1kXkCivW
	nDH6jxCvVxlyguRc0oo+zqwR0XCNutOnynQnQOg4fa2jjYfsklBcSb+58uuJ0Ypb5D8fYxhjBE3bE
	bHw5rSU5kQt8LZyYyym8NOPBAULKvozUeNHLGy8RYss9RG8b3OWmpOlWqBfCRvRo+LFJv5G+aj+2+
	c/7NvByZPZVVrOvDsrflRyUEJij8ppdIDRvENgPqL50+IaGS198Gxc2ra+g/PPNuW4kkadTmdHWVa
	rGCsNpzM//yyJpCvdjwfwO8FjQw+IMUKtbUmvHBKvTGyVeZmMCtPRt95nK0A6EwczycDkAKUMpivJ
	VaHPc37Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJUn-0005hr-1z; Tue, 31 Mar 2020 16:12:09 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJUW-0005bT-Ga; Tue, 31 Mar 2020 16:11:54 +0000
Received: by mail-lf1-x143.google.com with SMTP id t16so16950349lfl.2;
 Tue, 31 Mar 2020 09:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o49PLtczjrvnDvwyYGD9D+ZfmKnK23dv8VxdMQjHLQo=;
 b=GcBI+VTxX4A3aVLmPkgITDWYoC2Han02vraisjcoDy6dieWJWqK7aSepeeBupCGFgQ
 ha+cEwrNujyV0gQQIpmvWoHL8bZxiS/HVBgNLhX4JuyVLXMBlp+8Om4/GZUPb1f1rgbZ
 d+5LVd54abHb4j9SRHvr/5Zhja9h0dbPkgmCgfHWA0lL/PB4XKfJFk0StUfIO886iYxG
 wfKrwaINP5VIYI2c3gC1GhqraRZJNiaRAz4hyRIn0foos/63M0K/2ZP1+2izbIoBNh6x
 8ZIWMZsFqGurcUbLTezggmynH/BiIPxgJDIlD/YT+KsKlPoMgh8dIX3B2gFvpntRZ2Ku
 9nCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=o49PLtczjrvnDvwyYGD9D+ZfmKnK23dv8VxdMQjHLQo=;
 b=QaezlnvJf+nLoWE5h8oEMbv9wK49y1LSQnGb3z5dBTQJixtQUtNAtHF3D36ueOjL+M
 I9hU9WujP5/Su4ot5C8+0aZhxgvwPYLgCTpZRNOZ2fy9lEnIkmzuw23wC0+qWe557dLj
 o0youGMMSt2zMJPCx9hiSfHo2RBqqiP7lanuIiE1dGK8Ed4KV1t2td1O/iBSpfEdE+55
 L3HrZ0EIxa9kYla8MgqTIcG96AlJoE+NWQKUAGbf2W5+WsqmmTZwb35gu/+/YPnEFDzm
 CQt8jm4+c9G/NeT2FWTxMPresQvDHURuV0QqSFHOvgiB54d32rlZpj/CAjgZHJptpye0
 a1hw==
X-Gm-Message-State: AGi0PuaHmbg221SrcJ7U/EEuCOct2SLg7vnVUlZASQJKovmaJiXcXz91
 rsEKV4rtPJzQJcvb2T00Tnx6cKjS
X-Google-Smtp-Source: ADFU+vuz27mAc1lNVPQfLWPm/LTORsy6muqNkMdbp2qKAPkgBcrIlks83Udd1Fa6w5TPOn0as3gJjg==
X-Received: by 2002:a5d:4cc4:: with SMTP id c4mr19884904wrt.346.1585656840655; 
 Tue, 31 Mar 2020 05:14:00 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 127sm3754936wmd.38.2020.03.31.05.13.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Mar 2020 05:14:00 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH v3 2/2] ARM: dts: rockchip: fix yaml warnings for
 rk3288-pmu-sram compatible nodes
Date: Tue, 31 Mar 2020 14:13:52 +0200
Message-Id: <20200331121352.3825-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200331121352.3825-1-jbx6244@gmail.com>
References: <20200331121352.3825-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_091152_621016_045628D0 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

A test with the command below gives for example these warnings:

arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'#address-cells' is a required property
arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'#size-cells' is a required property
arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'ranges' is a required property

Fix this error by adding '#address-cells', '#size-cells' and
'ranges' to the 'rockchip,rk3288-pmu-sram' compatible node
in rk3288.dtsi.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Not tested with hardware.

Changed v2:
  Fix dtsi.
---
 arch/arm/boot/dts/rk3288.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 9c8741bb1..f102fec69 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -730,6 +730,9 @@
 	pmu_sram: sram@ff720000 {
 		compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
 		reg = <0x0 0xff720000 0x0 0x1000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x0 0xff720000 0x1000>;
 	};
 
 	pmu: power-management@ff730000 {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
