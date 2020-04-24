Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD671B8100
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6UTy2M/a4xfBy5xXv3/Euj6sJqpCJW5FqiihzqpEgc=; b=fslebya/KmIxhg
	OG0DCYer+WOII1xlyuQsuW3ZOWJtWew1/gxunU5/lMM04fPoqFEfqx18//zaF9tbB+ooavQIvL3y8
	SGCqTAUW/dPIuVq7+130K+aSneOnwSaLAultdmZH1iyiSU1zBw0kuh41pji8npRGAXhxNXdzGNt3k
	gkTcf8SO9VCvJylGPrOx5Gfs9YTBlowIVpAm8JA+BXdED7yasiknU1s9s4akt41oI9uXf21I7I/zW
	goTdT29XQzApzFJ4plu6Zd0giMqyCk4hwzQaqjlY8nOYALqnBCtQzlAcPN8jBaLjB3NS+BMicSn6Q
	GNzYLg5YEQuxtnl2fBnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS54B-0007ON-J7; Fri, 24 Apr 2020 20:36:55 +0000
Received: from mo6-p04-ob.smtp.rzone.de ([2a01:238:20a:202:5304::11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS522-0003P5-2g
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:34:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587760471;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=urc2KwT6CTpps7J1q4E2AK0qOM+8Jk0H0NWeScBSbMI=;
 b=PxJF+rNd+edI6wLEq/qf1XOl7R8o9GGauDJRS3RlsxbWyhiZ7g0by+dwnGitFqT95D
 GDHUuWQNhZdwnQXMFNJYZYzjKPgwcUulp1n2ZcYMUwOwvc1h55t3iZiBYTk3Qix2g5b/
 p838jKnQcjyhzxL8nSLNh/OQb7WljAgXUG5Bg1d4xQRLVDfMRCQN3b98ggOmuYuBc5gI
 fSDRje+cPEXC3Kh98uk2HNgX5utqA4lkxJWATcCcUCR8zYvNlHWc0FZlj5eB+tCJDBn/
 W3Y8Obi/F1CV9QcIGEKuPjsYecZUYlQo/TJLXXWXHnp02WqJ7gKScbNloKisyqsYCXgY
 yIQQ==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1mfYzBGHXH6GK44R2FE"
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id R0acebw3OKYOEVG
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Fri, 24 Apr 2020 22:34:24 +0200 (CEST)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Paul Cercueil <paul@crapouillou.net>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paulburton@kernel.org>,
 James Hogan <jhogan@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: [PATCH v7 08/12] arm: dts: s5pv210: Add node for SGX 540
Date: Fri, 24 Apr 2020 22:34:11 +0200
Message-Id: <3fd18c747426e15fd1f3500b9c4adce2db9ddd0c.1587760454.git.hns@goldelico.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1587760454.git.hns@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_133442_269607_DE967CE3 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5304:0:0:11 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, letux-kernel@openphoenux.org,
 Philipp Rossak <embed3d@gmail.com>,
 "H . Nikolaus Schaller" <hns@goldelico.com>,
 Jonathan Bakker <xc-racer2@live.ca>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 kernel@pyra-handheld.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jonathan Bakker <xc-racer2@live.ca>

All s5pv210 devices have a PowerVR SGX 540 (revision 120) attached.

There is no external regulator for it so it can be enabled by default.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 arch/arm/boot/dts/s5pv210.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
index 2ad642f51fd9..abbdda205c1b 100644
--- a/arch/arm/boot/dts/s5pv210.dtsi
+++ b/arch/arm/boot/dts/s5pv210.dtsi
@@ -512,6 +512,19 @@ vic3: interrupt-controller@f2300000 {
 			#interrupt-cells = <1>;
 		};
 
+		gpu: gpu@f3000000 {
+			compatible = "samsung,s5pv210-sgx540-120";
+			reg = <0xf3000000 0x10000>;
+			interrupt-parent = <&vic2>;
+			interrupts = <10>;
+			clock-names = "core";
+			clocks = <&clocks CLK_G3D>;
+
+			assigned-clocks = <&clocks MOUT_G3D>, <&clocks DOUT_G3D>;
+			assigned-clock-rates = <0>, <66700000>;
+			assigned-clock-parents = <&clocks MOUT_MPLL>;
+		};
+
 		fimd: fimd@f8000000 {
 			compatible = "samsung,s5pv210-fimd";
 			interrupt-parent = <&vic2>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
