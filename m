Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 368151D6EF5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 04:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iFr1iKVSvYE2zdf6BVElTErCxytA9X9wwtn2VV+RlDA=; b=eyA
	jHjGY+Kago7nF6iTJkfFznYnSouX9TqDEu9BDXIXAz7qH0sTeo2xoWk4SrSdBqX+VTxsXENhomSZ2
	uaz5jD0SLwa+sw0wGpoXUPyhVRBOD9jeLP3muG2DjX2DjdvgGARmgr8enwgWASn0iFF+ie7i2NoYR
	I8dYJMyeuJFz/V0fa4cnfHikJinjV1u4d0C+EPnCi9yI6ScXjyHF8/CHmfVFgTMuOg5tG6iweGfuJ
	pMxxOwKYmUBN2JdDwAjqBRoWoQKY87FyR7q8ymqBtUTo8HVSjxHx1e/TzJhU8PntwvEjVmhTOG3SJ
	5WGt4l61QeEfg4PqdNzf49ReXcDX5Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaVbg-00070W-SA; Mon, 18 May 2020 02:34:20 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaVbW-0006zw-9W; Mon, 18 May 2020 02:34:11 +0000
Received: by mail-lf1-x144.google.com with SMTP id a4so6632121lfh.12;
 Sun, 17 May 2020 19:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RJIP0CQmzhZgZi7curoUhxtyDwhM7Gccf5L+02fqCt4=;
 b=GPMfBxuBBwkDGH07WQUV82WfnOHnZ1riGASfaG56/QtFxTjZboeHxdQTIpFFNNl5bg
 Bs9wi618SiRwIYBdYr73+8qX7GmNiBUOrnCO3+ztB6N40KxeuGSJ4OtAjjDPTuy5OOOY
 pxp9+6gFBhJoyNcPjU3LS/yzAJav+7T8I8uDeiLDzv7P3H6Ova7R58Y0Hej5aGUxJ6JZ
 JN7yCGVvt4Cy+vuzGcWXF3BBObINI3YQULKfGF19/KFvXDtxTmUwgM1ertv2ijh0hkFK
 7FKBjtEa78Y9VCJ5/HT6KSrZF83dwl2i+5IzD4c48f0MbtwxoxTDFJFZzyCVNzDTczuJ
 0nMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RJIP0CQmzhZgZi7curoUhxtyDwhM7Gccf5L+02fqCt4=;
 b=fCYGB6ly3yZDx04GXZIIvy0pMwM2m55je5bq/SdYTidjwlsiz2mlVCSDwADFbdRbEL
 sPaldj/yMgh1ic+nZypIF66NFwAgLNN+qvjv32VDt9gy562JNv4TNTExxLR8bxIrlKDO
 cgwXRPFTgD4QJMC7bV+oeT+K9g2xzH2F/LmCpRzdL3N0CRdiqVi+ScpRLqz+jFQJuVz1
 w4EHrvyCMTYA9QgadqA8Un0SgcR2ADzz7jaCIcddJwpsczDqQ/V8ORVV/napen7IYQoF
 m90lqdet21iCK6BXP674jlMP2l14XDnSVyrwhk6S0vxKXVoZVlPpLKIqhbMoIqNsQdCb
 Q0IQ==
X-Gm-Message-State: AOAM530vQMBDfqIgtwfwwL781cTC7TLHaWg5h0CToh19igijtGkLEbUH
 Csku3XuGsB2waQ9RD9eYAho=
X-Google-Smtp-Source: ABdhPJyC+tzEUGGGFXi/i85Sz9gsnT2zFVj63FdZWioYtju4fNMBf7vye7YPay2X6xjyITXnMzZ6Sw==
X-Received: by 2002:ac2:4145:: with SMTP id c5mr10067638lfi.91.1589769248843; 
 Sun, 17 May 2020 19:34:08 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id l25sm5937498lfh.71.2020.05.17.19.34.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 May 2020 19:34:08 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/5] arm64: dts: meson: add W400 dtsi and GT-King/Pro
 devices
Date: Mon, 18 May 2020 02:33:59 +0000
Message-Id: <20200518023404.15166-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_193410_381062_0CD2A6D6 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

v3 - amend author full-name on bindings patch

[1] https://patchwork.kernel.org/patch/11497105/
[2] https://patchwork.kernel.org/project/linux-amlogic/list/?series=273483

Christian Hewitt (5):
  arm64: dts: meson: convert ugoos-am6 to common w400 dtsi
  dt-bindings: arm: amlogic: add support for the Beelink GT-King
  arm64: dts: meson-g12b-gtking: add initial device-tree
  dt-bindings: arm: amlogic: add support for the Beelink GT-King Pro
  arm64: dts: meson-g12b-gtking-pro: add initial device-tree

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
