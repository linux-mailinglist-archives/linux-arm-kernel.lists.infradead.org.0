Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BC7153C6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 02:07:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fviubd1KKmoInqKtmKUxbw8iznBvhzhL/nE0RYYnBhM=; b=L4YKYmZm0WCZnfLpBozKqX8PbM
	r9yV/MdPS8c7AXq30djA8/+kjO8ls4FDjtgZ9zfwlQfr+Ie2oHln28RYGm7xdxMe8JZkINQ+czcsB
	6lPY3a2bzv0+YYWX95g9O2UhIclKm8FA0Enw4zNlKoPLFfmXPHP2v5cwe300rivdlHvif4dXly/8c
	yz1vA5xK4DMGIOQ0N4T+gr9Lz6oAoXBFF05cNF0DPEBu+fy1v3qZg9hzEGnJZlwQmQHx6Vivm4+1q
	LILjsv22/BMRyg+Vj+ookE0U+F1QWCRnNkITsXk6QD82CBpleW8hBIOKmDunOd9p31HTaTd5CPIjl
	4IoZHXjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izVdr-0001gd-JK; Thu, 06 Feb 2020 01:07:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izVdU-0001ZH-JN; Thu, 06 Feb 2020 01:07:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5A1A101E;
 Wed,  5 Feb 2020 17:07:13 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9BFFA3F68E;
 Wed,  5 Feb 2020 17:07:12 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	heiko@sntech.de
Subject: [PATCH 1/3] ASoC: dt-bindings: Make RK3328 codec GPIO explicit
Date: Thu,  6 Feb 2020 01:07:11 +0000
Message-Id: <c84fd0521ce7f307d1921010498738722623e7ef.1580950046.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580950046.git.robin.murphy@arm.com>
References: <cover.1580950046.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_170716_683887_3A3D1C49 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
