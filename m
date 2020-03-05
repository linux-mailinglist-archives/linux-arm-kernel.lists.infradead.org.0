Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B09179E38
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 04:22:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7U9ESczwDqbwCXjhKWD58X82YDO4KvjbFo8ZfXMNm50=; b=Exk
	yWjM4bKA2gmRltv8MbJwQR+DW4Ncs81KGSbF6oXT30ZvE+RJ1XH+vUbqYjG+jEbEdio1aAW6OSXwh
	x2/nV14aBAK0nlAd7yg176RdvKRuGtzTCLl4KoJUfPmpaF+HQiSen7ei5R9cAZL9WkcUX3JPT5IFb
	TmZaCsDbkESbSgXwXZnam6pcdkhDcdgLIwX0EW5ER06tBEM4MQiP6oQMaDst/jkGW14vwwwvbwddW
	oZw/3neU85ozMeiWKokjgzFzS8B9ab8OLUx5qkIcDazJdPb8O5Aknhf7rwUbREWHNVULX/fyq/XLR
	rzJ6ru7Q4PWuNXM8rjv6qRBNP9lYbdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9h61-0003YT-B6; Thu, 05 Mar 2020 03:22:49 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9h5u-0003Ws-KV; Thu, 05 Mar 2020 03:22:43 +0000
Received: by mail-lj1-x241.google.com with SMTP id f13so4417315ljp.0;
 Wed, 04 Mar 2020 19:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3mB+9DFC1lhPqKCLUg8wWNOr6OLdsbgJhYt45juNV4c=;
 b=ZBqRIV3mw57AzVzWvfRKqbJP+qj4XrMyTc3hniC+bx8+Agj8CUUIZ5v3MHzOTOhlyZ
 +9S6xfpvbS/8sDF/ipsgcmrHF2666OlRC53ZU0gxPEqxgdhcY6M3KUykkPsTtF1jWwMS
 fVGjiF0eyxO4DoUU4mrQ5SowuqCRSRDjX3Ho06fgKMcSyJkfC7YgbB+D8jQkmGWyAwUv
 VV+SGQD/cocVl9eJw65LLYSE2FXMN74/e8kmTTSqr4Us48ZQ1kvOWWuEPAx+64km0XRM
 bNFOhGCHKVVnXkvaArgsvKRBCGZR+sxd4urguclTv/DsGN7/PNiczl0XVZ0979C8s2kg
 /aOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3mB+9DFC1lhPqKCLUg8wWNOr6OLdsbgJhYt45juNV4c=;
 b=DMzLgVt2YM8wf0Qm8P09cyMLZizQXD0hlBnA4l6MiR9KyOFJPE1pZk0ClgS19f6XvA
 lgqit+NW6oap7eqUC+jOb4/NNFxU+RTuqA3m7K3E0M2YQdw2Yrl9gMUeEvpMrrJ5f/2w
 5+BXqZsRKPLapG0WnR6D1wrBg5R0VyQXifbePoXo++NV9+xxzaZP/wc6df751m04S3ql
 Fcf2mrOCix9vNZkcbysYa5WQDCkCR+iJJhKDnWzjj0JwTMmLhFaxtQi0ynKL1gKw6+OE
 R21841CxyFQklIZzqy7WQR0HblMnJ1RuqcOk8AAOgfYYhIxLl7D2Q07OcUbpc/nxnAfq
 6QOw==
X-Gm-Message-State: ANhLgQ3PVyTM1xyJ7CcTOin+0EZADACYy9LJ+KAfyAWxdTm9m8Alxwdl
 YKs/5sPsFrL3cfzFtq2Ia74=
X-Google-Smtp-Source: ADFU+vsT8c8IQQAuagnGyzjVSQWhLBYwqhCPXVcX2ouaJon7zOHjLn7537bD/t2sH6K53/W2qY5BnQ==
X-Received: by 2002:a2e:9e16:: with SMTP id e22mr4067684ljk.220.1583378559246; 
 Wed, 04 Mar 2020 19:22:39 -0800 (PST)
Received: from localhost.localdomain ([37.76.255.38])
 by smtp.gmail.com with ESMTPSA id u5sm2865688ljl.75.2020.03.04.19.22.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 04 Mar 2020 19:22:38 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: meson: khadas-vim3: move model to
 g12b-khadas-vim3 dtsi
Date: Thu,  5 Mar 2020 07:21:48 +0400
Message-Id: <1583378508-14312-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_192242_700365_43C8DA65 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The common meson-khadas-vim3.dtsi is now shared with VIM3L so move the
VIM3 model name to meson-g12b-khadas-vim3.dtsi.

meson-sm1-khadas-vim3l.dts contains the VIM3L model name.

changes in v2
- fix typo in commit message

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi | 2 ++
 arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi      | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
index 5548634..2b2d72c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
@@ -8,6 +8,8 @@
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
+	model = "Khadas VIM3";
+
 	vddcpu_a: regulator-vddcpu-a {
 		/*
 		 * MP8756GD Regulator.
diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index 90815fa..0ef60c7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -9,8 +9,6 @@
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
 
 / {
-	model = "Khadas VIM3";
-
 	aliases {
 		serial0 = &uart_AO;
 		ethernet0 = &ethmac;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
