Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C8B16350E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:32:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8MaE0h6TgAAlE4AoyD/w+u8yW/woWA0KnbpCKZh1yqU=; b=TZqzH5rJXTyHgPmv4zOPQqIGao
	gmWJ6F5kM1l2rAh6enBG7Y8eQlJCxCwPBh5loWgnz+IN17AvT8lF8q7NwEvmbs7ggoJfXkXQduf8C
	QXjirpODym/kkv3TuRgoxxuArmkXHJpoeRVj/63cg+kw6mdJnHGgHTd7yl0SfVVu7Utdb0b5diqn5
	9z0ORuv4qdz1reCWONjWOw7DtiffSqHaSDWcdORBacTyWyWG2MBmmygndASyvyQ2V2xAGPrqdDnpj
	r8L014wDMh8edTptumg5DZeEB2yEoJ12KTFyDWYR5YA04Ay6feiSdtRPyJ0LFP4BSlY8351Tii1Tc
	80dZ2ZRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4AU2-0000nc-89; Tue, 18 Feb 2020 21:32:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ATZ-0000Z5-LN; Tue, 18 Feb 2020 21:32:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13BDBFEC;
 Tue, 18 Feb 2020 13:32:17 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C433C3F68F;
 Tue, 18 Feb 2020 13:32:15 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	heiko@sntech.de
Subject: [PATCH v2 1/3] ASoC: dt-bindings: Make RK3328 codec GPIO explicit
Date: Tue, 18 Feb 2020 21:31:58 +0000
Message-Id: <5f7a399dea8a9dedef57f6f99f0f6ab1c1fdc56a.1581376744.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1581376744.git.robin.murphy@arm.com>
References: <cover.1581376744.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_133217_758241_BC4ED348 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 pgwipeout@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Existing RK3328 codec drivers have overloaded the GRF phandle to assume
implicit control of the limited-function GPIO_MUTE pin, which is usually
used to enable an external audio line driver IC. Since this pin has a
proper binding of its own (see gpio/rockchip,rk3328-grf-gpio.txt), make
a GPIO explicit in the codec binding too. This will help avoid ambiguity
on boards that use that pin for some other purpose.

(and while touching the example, enforce the "don't include status" rule)

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

v2: no change

 .../devicetree/bindings/sound/rockchip,rk3328-codec.txt    | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.txt b/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.txt
index 2469588c7ccb..1ecd75d2032a 100644
--- a/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.txt
+++ b/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.txt
@@ -10,6 +10,11 @@ Required properties:
 - clock-names: should be "pclk".
 - spk-depop-time-ms: speak depop time msec.
 
+Optional properties:
+
+- mute-gpios: GPIO specifier for external line driver control (typically the
+              dedicated GPIO_MUTE pin)
+
 Example for rk3328 internal codec:
 
 codec: codec@ff410000 {
@@ -18,6 +23,6 @@ codec: codec@ff410000 {
 	rockchip,grf = <&grf>;
 	clocks = <&cru PCLK_ACODEC>;
 	clock-names = "pclk";
+	mute-gpios = <&grf_gpio 0 GPIO_ACTIVE_LOW>;
 	spk-depop-time-ms = 100;
-	status = "disabled";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
