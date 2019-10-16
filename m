Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF89D9847
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 19:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qoqsw4JXT4raF0mcz+2L3qZfk1HAz8X5GnfheCysfio=; b=jZAPEtb51MzSn2MvRgxrsGlX7A
	uMBZ2UPVonou+35S9ahHi/Dd5wkDBKt/3TfYQ2eLBdSE+hoGKpOmNWBiYDV/RsnddW+WVYmAPUvao
	rXenqq29PK9hY7KZ/8LeVNqal7llbKqXh6Sex12/W/uVDHmfPWvGzgtwQ78Ags3Hk9pvubheqezOz
	N/gX61v/IYHuL7GGSsShJKxctR41x3/EwX4okXbi1zB6xCAKrtJegCMo1BsNbs/ppv3Xv4KCsP6K5
	hBz0/s9EHtvUH078Pd086vXPQ88DBvhiU22Z78yejB2vackw/YnAnTk3mxL65THgx9Sxev36BQjei
	D2GmwebQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmnb-0004PN-2H; Wed, 16 Oct 2019 17:09:23 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmmo-0003oL-1P; Wed, 16 Oct 2019 17:08:35 +0000
Received: by mail-lf1-x142.google.com with SMTP id 195so5157134lfj.6;
 Wed, 16 Oct 2019 10:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tPzq/4pAdFPsSANJ/9NHJEoF3soP3uhPziVivyFbVzY=;
 b=p2tUHLOCFaKYtSzu+8kqWT2Dzna3tCZCKO0yQhQ0QcSNFhesJBaDW4i8xBo9fc8T3f
 g4eJS93zAfvcr0wQv321p5gCDYU8yH11j7caUaImTHabE7jMqFUhfsMfEfncCCqpvda1
 JxleoaFtrXcAMuQ0kM0H7K6Uh6gAE7Iqnx3mwfp69rfGBM6pO7eiVCa7GjaVPh5JmNON
 cnFSELeJrbWBRGjeHBuHMwLciJgxseg5AG5TFGnCrsxzIDYHgYDX4RSIahqW49/yQDuo
 gmMmpIVwBMdBUFEMHczk+8drg+XldueaYcTmFPEZ85TA3lhIOO/rfDiJle9687mWEZOV
 IMlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tPzq/4pAdFPsSANJ/9NHJEoF3soP3uhPziVivyFbVzY=;
 b=KVbIhXLcTDRwvfXKKvQPrHEl1agbNgwoYtiY1YJL9pbeUJuN2BFxv6hh0MD0MimIT8
 UMTbhNG+RfywT9FV1ELv4yGsE4pU8HFvbrRF0zm2mRpmtYcF2HXyyjma6XwH59e6HcV3
 6nlmAbXfZHxIYfSIexRTRKjb05UBrbxVY1PV9j8B00En0p04kqQQqCLCMmj52fxP/e0X
 ucws9F7Qsox35mi12zzVLeNDKkKuNHxwx1rZ0L3KBcugPRMo6J9DY9vvvfUUgNJjtW2N
 AAzQo+CtLusz7kplngOTn3HYoiY/ZEZv3/CsPbHw6c97dk8gsNC8V+HPAM8U8zzOpCoW
 JaNQ==
X-Gm-Message-State: APjAAAX2f5BVbvghU3ex50rleHDte3Eag87y6OkxEjzpj5VF6FlktWUy
 EO6ZI0sd4MRxui7oGuynmVg=
X-Google-Smtp-Source: APXvYqztlIKXFcwsX9T4q5xwz9eoGg3GnsOg0q124ETsT305HLl5q3GH2LzOddyA4J/Q6XbgkwM9Cw==
X-Received: by 2002:ac2:4830:: with SMTP id 16mr521889lft.35.1571245712219;
 Wed, 16 Oct 2019 10:08:32 -0700 (PDT)
Received: from localhost.localdomain ([87.101.228.250])
 by smtp.gmail.com with ESMTPSA id q24sm6299182ljj.6.2019.10.16.10.08.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 16 Oct 2019 10:08:31 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: meson-gxbb-vega-s95: set rc-vega-s9x ir keymap
Date: Wed, 16 Oct 2019 21:07:37 +0400
Message-Id: <1571245657-4471-3-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571245657-4471-1-git-send-email-christianshewitt@gmail.com>
References: <1571245657-4471-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_100834_142133_FF4943BA 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the rc-vega-s9x keymap to the existing IR node in the device tree.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
index 43b11e3..0cc6d18 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -152,6 +152,7 @@
 	status = "okay";
 	pinctrl-0 = <&remote_input_ao_pins>;
 	pinctrl-names = "default";
+	linux,rc-map-name = "rc-vega-s9x";
 };
 
 &pwm_ef {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
