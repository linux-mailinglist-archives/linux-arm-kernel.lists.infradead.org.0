Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6778134E39
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=frUqNB0KhMdvXUy2HRz9Thl1RBvbioMWhlzyKOinJHY=; b=uu1Aa7YLl8t+GBPYuVhtEEhYH5
	z5sh6+Kg4cMMnYDA+5afN8OSb6Vb8HtD5xpOocEtM2eT42Kynu2xdrgAhapseRfWm3Qe3UtSm9ST4
	wMppEpLADRXGdNHynWI96+LGWpYjUW0J3XwMLBkHUmRNLffCJgltC7t5AgBRtFPO9/wDHfAKfFh1Q
	UCRIggH9IO3PugXliahVSzYCl8EtDhzWg8UuEbSmZA7bCLKeB/J0iZ3JSyHWYEyxC5QNvza3EwYVj
	CvnJw4temrleLoZoABi2o3nCeVe0Js9TGUWGOb4rcF5PJzhNL848lD/ZITma+4bSDEdliQYuU7PTz
	we5a5cvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIQb-0003ra-QD; Wed, 08 Jan 2020 20:59:45 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIKy-0006QV-Ny; Wed, 08 Jan 2020 20:53:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id q10so4887612wrm.11;
 Wed, 08 Jan 2020 12:53:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Vmr2fEFzigW7NnBmDNTwUzT4ArM8axMJAbkHVc4Ns/0=;
 b=U292Rre680z7wDSQHsQUS9uJRrA1Pr2tLM4NbXE/OrgCGOwMP5BmFcfZwtt7vl2TMF
 utIikDp5Fgy62sWQ0YgW4GrQv6ESGNQ4McMWmvGuDUnitKop7SNvajhSom44f/2UxpHi
 Nvh6iZtGbshUg+6hOO70D0QiCe7+aNjSB1qmEhRmTgZDfDqUoP247THopMK6wWT91uWw
 y3VclLEwrBuv1+eiYcVn5jngCkqsLi65cdzganyu3GlUGRLU7i42mMua93ISNYfbA+sg
 q7rh8GvGdX/pQwTApk6JetyqPLHQ5LhdCt46uOj1EZvEBA+aQwmrVKIVIeVe77uTAh+8
 dIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Vmr2fEFzigW7NnBmDNTwUzT4ArM8axMJAbkHVc4Ns/0=;
 b=a6wPdWRqSdDUS/Tndq4xKjwlKmJMXpbpt/teyPFFJ1BdFm6GrR3kd6Bn4hcz8ugNn4
 CLpdmpKuDXrCj/4eOJHKB8GY+n7+jsrkjSbuAtoagn4Wp6/4QGrPC9fkedmk9o7mvbSq
 v/KRadzPgjdFd9vBdizSrvYAJQMx1EqBGM7fqnFPZwqRHant+5DV8rKkVdZ0CETdeZdu
 LIN4qKzHa6SkgKWB3GEcOo7n0bIJ2R0vHUQuIm3aHFGIBuDRUMa3FV6xi5/LTzblMNQZ
 7NXOrks9VExeaKB+wJ6OCtXXw0Kt1q3AavXXZixdQZY+MX/bnrhnzaPuRlyjy8L5339E
 dpLA==
X-Gm-Message-State: APjAAAX9nAf4mjQaiODhv7Vak2hUn25ulapi6r3f/ssqLJwJP6o7MJFB
 Bh1poChiWXxSXsu7RSgcFMQ=
X-Google-Smtp-Source: APXvYqzp9b6RWmOcElE6RzuN+ZS1z6743gaRIYOSvn+KxRtvbtfKLCOwJAdUYr8HSfaxwgfx2X3Rdw==
X-Received: by 2002:adf:f5cf:: with SMTP id k15mr7021876wrp.182.1578516835000; 
 Wed, 08 Jan 2020 12:53:55 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c5sm311835wmd.42.2020.01.08.12.53.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jan 2020 12:53:54 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v1 08/10] arm64: dts: rockchip: add nandc node for rk3308
Date: Wed,  8 Jan 2020 21:53:36 +0100
Message-Id: <20200108205338.11369-9-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108205338.11369-1-jbx6244@gmail.com>
References: <20200108205338.11369-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_125357_017370_BF3EE4B8 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dingqiang Lin <jon.lin@rock-chips.com>

Add nandc node for rk3308.

Signed-off-by: Dingqiang Lin <jon.lin@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 8bdc66c62..62df531d1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -627,6 +627,17 @@
 		status = "disabled";
 	};
 
+	nandc: nand-controller@ff4b0000 {
+		compatible = "rockchip,nandc-v6";
+		reg = <0x0 0xff4b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_NANDC>, <&cru HCLK_NANDC>;
+		clock-names = "clk_nandc", "hclk_nandc";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	cru: clock-controller@ff500000 {
 		compatible = "rockchip,rk3308-cru";
 		reg = <0x0 0xff500000 0x0 0x1000>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
