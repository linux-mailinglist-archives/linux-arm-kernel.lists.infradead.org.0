Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0668E134E23
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fpp4O+QvAjceVyaL0DhY801EVRIL05IS7mQMYpRH1w4=; b=fsEKVgXkO6/4QdbgCAqd18CTAQ
	tUVLQK4Yy/MWysacxWGIhzRJUQx0G/bYNm1l22n1lAeSds/54kqZ3fydDvJhH3mGHNGNfdIGBjqLi
	urrGXi39IVOJgNBJ5wFi3Y1cmS9U22ZkkFsd3pI2CVmmDF/YockiSdMH2R0cXZnmvShHONzAFg2lQ
	mbPNbupBO24h+SLpxHz8UUzk9S21LP/LvaXrV5gu12r92Vl609AiUmmPAHzk4ofI2QJY8GvBZ3rEN
	g+RP/XU0Fyy9Xl7WQSIxuNUCoXEbS0X/JyqVk2PJl6b/J15EzIHCyhWNBumdvslxiOyFucSlznYew
	lLmHVGNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIMj-0000VG-3o; Wed, 08 Jan 2020 20:55:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIKt-0006MA-47; Wed, 08 Jan 2020 20:53:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id c14so4914271wrn.7;
 Wed, 08 Jan 2020 12:53:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=z5HJGRQJ2/f2kJUQoCeIFnI3hwMtLOLQy/CYHk2/+co=;
 b=NzEFBmTw/MkuVz5mPbP3iuI9K7JbjF/4gA3ZSAEoJ2JoIY4O3CU11F950od9NnqL5p
 ZK7/1X7C64V0PeKlQ/aros7Yl1Rx1u/ImZnvL4Hz4b9S0DLJ2bQE6t7chelRxG1JZ4UO
 oLTVQDNDrC0MUR1pw2Xb7rB90EZG4hEI0q2sW9QsT5WQLZCN3d8P8s4Z7Hu1TwBb65FL
 ZQUx5+MNfsgJ/Hux8ohu2XmkyLuLPq0oFZwCWQlMgSiAlGcb4lpAkQQuC0MacU6pCdf+
 boF6qMr7xQzqAWqHSa1JJ3f7F6a2qlS4dEfSYaG3Xu8Mk9bsmcXkn3oATl0yt0dlwsvr
 YLlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=z5HJGRQJ2/f2kJUQoCeIFnI3hwMtLOLQy/CYHk2/+co=;
 b=bFpvjPlLNTdr9R1r9qZqIsK2pyZrBzO+0iBDeO2mFaeDybeh2/MpBFln6cUBrFjhVl
 KS/eCRr7cr5ZUZOegkO4UaVVZ+bozokBV0k9OJcV2/n6Fn30WDG6AOvSXVT8V+MmnuKZ
 UcisQchK5NoT8a+TMFgIJgRlwMzRPEmR/SP4xuZ4lSj6Cb97BOvCHaOWGh1wZHk3lcEg
 9EbsMx+zLf68YUtJjte4DrEVmzeyu7hGI7qYawphz1n+DH6uucfKr5eo3GbMIKCNAXLq
 vSs2/Cx7r+USSrE+qLSi/GdisXgLGFP0exLtopOZkxZzpaDn+26MmMRWJ7yr6cQ96N/q
 srsw==
X-Gm-Message-State: APjAAAV0QiZDUbloQitOichCvbzmADk/sYsWQ8IVnGKasH4FgJdu2pik
 S+5Nu+3WCi4UYJ8nxVFX5X4=
X-Google-Smtp-Source: APXvYqztpcAxKuxj+Aok9yVC+U1ZAFgB2+pDeKfb/4QaCGmSSDWhXBw5M0MhKZ4pGGLFPjk83KIEIQ==
X-Received: by 2002:adf:f850:: with SMTP id d16mr6884005wrq.161.1578516829937; 
 Wed, 08 Jan 2020 12:53:49 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c5sm311835wmd.42.2020.01.08.12.53.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jan 2020 12:53:49 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v1 03/10] ARM: dts: rockchip: add nandc node for
 rk3066a/rk3188
Date: Wed,  8 Jan 2020 21:53:31 +0100
Message-Id: <20200108205338.11369-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108205338.11369-1-jbx6244@gmail.com>
References: <20200108205338.11369-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_125351_219474_FB1A4B26 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

From: Chris Zhong <zyw@rock-chips.com>

Add nandc node for rk3066a/rk3188.

Signed-off-by: Chris Zhong <zyw@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3xxx.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 97307a405..416b0d272 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -273,6 +273,17 @@
 		status = "disabled";
 	};
 
+	nandc: nand-controller@10500000 {
+		compatible = "rockchip,nandc-v6";
+		reg = <0x10500000 0x4000>;
+		interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC0>;
+		clock-names = "hclk_nandc";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	pmu: pmu@20004000 {
 		compatible = "rockchip,rk3066-pmu", "syscon", "simple-mfd";
 		reg = <0x20004000 0x100>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
