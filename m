Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D861D6ECF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 04:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gm99ZiPURa6C+pAyRPWhc+lbzxAj5r82Xu6zNp5u7Fs=; b=uBs
	gez50T7g5iSRBhpGLSy8NVWXLi3Mn2rO3PowALeD6I0gvlTVVwIbsmh98wZTchEKaX5fmou/nkkHO
	Q8AKWyZUGtb2Pmoq9Ddc260jFCuCrDUkHy5nz8L5mnN8hyZ0zVgoQJxmBb8FsoFIsRG8cmIn5fPTT
	4toJlpogRbBE0G5ZbZgHT13kQK9lR/2VV38GaFrWkH5ZvpmxeUOrpwKuoQv2P3qByyeYw1MCZf/8w
	zzTxGjdoufO0P3W2mj8ZWCAKz4th3TrdyZb6iaaM/VfovdDKY4odRAHVEzfB+E7xDbLI/4Nug2qDZ
	2A/fXQ+FXX9dccmgVfSGCMCMg4q8hxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaVTR-0002C5-Bo; Mon, 18 May 2020 02:25:49 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaVTH-0002B2-FY; Mon, 18 May 2020 02:25:41 +0000
Received: by mail-lf1-x141.google.com with SMTP id c21so6647915lfb.3;
 Sun, 17 May 2020 19:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5rfhPys2btHBP3bO1j73TJDJbaY1/Lc3Z3m/cpPLQBs=;
 b=hIdv6qQcebc249xLUdQL6uLE5N+tSqfaElBQ+qolVIzlD15FiWmnC++UjW1CiHtpeA
 1Vfsc0JqlB8BBowqlHNKqcbYnFIRJLu5bOYJ23qPAwAzNoDkzRk/kLlMrOmJeKp9dMvk
 btJJj304foMsxB1h+mrPSXYJzq8QuJ5mMMl2CxSCDaLUWGWSyyL5x4sLC9yjnYioEZX/
 Du9de/uralDhCVxB3ZDzep/GZXolCoolLZ5iwhHf85vd4Et7WBZ/ysFFpdnH+hK9OkHV
 5VNKhBWk6SWOt4T7rWQinQQJg3Ps2E5aR5QVir0Uc/UVA+ELFO/60P8P4w7w8FXypcDm
 aLhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5rfhPys2btHBP3bO1j73TJDJbaY1/Lc3Z3m/cpPLQBs=;
 b=npibL4rUryTVGtLjY3aVWrrCeuNGyM/KVM48Yjnub+lvfB+V7a2mYmH8VxgmbYGT6+
 6kM8vLtYXZqu31Dk2j32ru8L0LUlBteWwsQFYyIryFhaT/iC4fUKA4KYAd3W5MwMHRFu
 wd3VXZ1w35FOC+M5b+kyi2gaogA9my0dbdKVeFh+rWBi21MkUWUmNhgwl2iLMYOWZjpL
 kAC6IvXbilgPOJeR9LlrIkpnQOTRGduRpzET6XzSspGiq2NRuNM/5tDnG/kLNOQSZqZX
 NBySdGeW13brihFoqC0ptdJXy84KbAAE9n7rz637mogLLaKAazF/nRdkZ3f3qc52KM6f
 pkug==
X-Gm-Message-State: AOAM533KcR0oJfqTnyCvFZxJyddCuO31EuaYaodY2pX2B7vlh6STLzbX
 DYX2ueOR164K0oHIKGJm3TA=
X-Google-Smtp-Source: ABdhPJx78gamRe3spCIUTVhwN4EhDyWwwJz8Kr6sgvXe69Oqc33iHr4FBtSY2OvT8S+IEyKJt/Hv8w==
X-Received: by 2002:a05:6512:1047:: with SMTP id
 c7mr3079621lfb.12.1589768736906; 
 Sun, 17 May 2020 19:25:36 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id m13sm5997306lfk.12.2020.05.17.19.25.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 May 2020 19:25:36 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] arm64: dts: meson: add W400 dtsi and GT-King/Pro
 devices
Date: Mon, 18 May 2020 02:25:26 +0000
Message-Id: <20200518022531.14739-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_192539_520557_042C998F 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series combines patch 2 from [1] which converts the existing Ugoos
AM6 device-tree to a common W400 dtsi and dts, and then reworks the
Beelink GT-King/GT-King Pro serries from [2] to use the dtsi, but this
time without the offending common audio dtsi approach. I've carried
forwards acks on bindings from Rob as these did not change.

[1] https://patchwork.kernel.org/patch/11497105/
[2] https://patchwork.kernel.org/project/linux-amlogic/list/?series=273483

Christian Hewitt (4):
  arm64: dts: meson: convert ugoos-am6 to common w400 dtsi
  dt-bindings: arm: amlogic: add support for the Beelink GT-King
  arm64: dts: meson-g12b-gtking: add initial device-tree
  arm64: dts: meson-g12b-gtking-pro: add initial device-tree

chewitt (1):
  dt-bindings: arm: amlogic: add support for the Beelink GT-King Pro

 .../devicetree/bindings/arm/amlogic.yaml      |   2 +
 arch/arm64/boot/dts/amlogic/Makefile          |   2 +
 .../dts/amlogic/meson-g12b-gtking-pro.dts     | 125 ++++++
 .../boot/dts/amlogic/meson-g12b-gtking.dts    | 145 ++++++
 .../boot/dts/amlogic/meson-g12b-ugoos-am6.dts | 410 +----------------
 .../boot/dts/amlogic/meson-g12b-w400.dtsi     | 423 ++++++++++++++++++
 6 files changed, 698 insertions(+), 409 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
