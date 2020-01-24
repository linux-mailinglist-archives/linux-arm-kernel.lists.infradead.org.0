Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 217FC1488A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:30:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PssX5amdH8rMo9hDeTF36PPrTX8DbgvwhBCGu0CuFMo=; b=Vi4dav/ffBb4vN
	yiL7P3o+hhACCW+Ucf4zqA+IEEwM3b9SkjJUSE07DYncHgjhZNetz1H0Yu7rYcAltQXJu7zvAFYwl
	v+WT7ftL4NXPEaJyuUSC9gk7UXIsQZrjY+rc66Tpj99UDVDGG+2L4Q9DT45z1bI6MpZkDqd4ALsue
	ZB2x7jIgfLO3QOnJarmWHVkOHmQ53k/PNSrOLW1LjoaaM4a0TeHtIdnj5qXMvnXzmznFLw7ohfQL0
	a2QQKEWlovqasbl36s6ZMRYTOHcJ1Z/vJvb+EgAXkPy3LH6ByKvCZsAr9TQL+/3EiR6t4PMrDgD2F
	HqL6VnK60orOV/nEcV/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuzyj-0005jc-S7; Fri, 24 Jan 2020 14:30:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuzqV-0004f4-B8
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:22:04 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB5DC222C2;
 Fri, 24 Jan 2020 14:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875722;
 bh=WUrTKc5YtLb/I/UsRE7CRsbIIlUWvDDl//CIg9ruU80=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KMqTTY51aVweL1deOBucWzGPTH4icAWlwcqhwqTSk7VpQCRJ7ziMkfYIWjh4WjwcP
 KbnO0DM8ItwUSe4YdRSwmkym5dD/wCpf4yOpzEGgK6oFNFqSmEKX4eListyvIPTR8t
 OrI9JJkx99TmPYYSOe5u3WEdD89bEQdDnXkyTDhY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 03/18] ARM: dts: beagle-x15-common: Model 5V0
 regulator
Date: Fri, 24 Jan 2020 09:21:42 -0500
Message-Id: <20200124142157.30931-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124142157.30931-1-sashal@kernel.org>
References: <20200124142157.30931-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_062203_420474_5A3F2F5D 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kishon Vijay Abraham I <kishon@ti.com>

[ Upstream commit e17e7c498d4f734df93c300441e100818ed58168 ]

On am57xx-beagle-x15, 5V0 is connected to P16, P17, P18 and P19
connectors. On am57xx-evm, 5V0 regulator is used to get 3V6 regulator
which is connected to the COMQ port. Model 5V0 regulator here in order
for it to be used in am57xx-evm to model 3V6 regulator.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../boot/dts/am57xx-beagle-x15-common.dtsi    | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi b/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi
index 78bee26361f15..552de167f95fe 100644
--- a/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi
+++ b/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi
@@ -27,6 +27,27 @@
 		reg = <0x0 0x80000000 0x0 0x80000000>;
 	};
 
+	main_12v0: fixedregulator-main_12v0 {
+		/* main supply */
+		compatible = "regulator-fixed";
+		regulator-name = "main_12v0";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	evm_5v0: fixedregulator-evm_5v0 {
+		/* Output of TPS54531D */
+		compatible = "regulator-fixed";
+		regulator-name = "evm_5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&main_12v0>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
 	vdd_3v3: fixedregulator-vdd_3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "vdd_3v3";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
