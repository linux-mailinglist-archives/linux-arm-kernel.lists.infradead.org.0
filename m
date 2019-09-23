Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE481BB60D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 16:00:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RqrhoapyXEZ7+zMwIGefDMUDbaAZCZp6m82cfW931fs=; b=RtD
	lpw6DjjAyNzfjZvk6tXzVTZ6dkEXxYSWM8zxNu0X0mmCakcf7HCmdBXrmecWPuGJ7UAghheKJzIXR
	5jZXNYGPGCaZ2zPWC7G8UHYjnyg6e4jrChACGBV32aatBgIyaMvB2Vxfs1WhKua6q1wQgh9bOQ03S
	DX0GYjc7zGZqHvKIebybH1dtRAerp7LuDO+hnSnZm7gK7Jd2JVpOPdnovuz4EuGlRvpThwsTel8Ge
	MCjLia6OXcTEKBLrjANWTTUhHCn7rca7jUVG2Eg3xWjOMF7GwpP7rJqyZGCPJzcM3uZHnBEKGFcR6
	1dV2dnQmSFQMHo9iVCs0mT/dxSzWsMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCOsc-0006uA-EW; Mon, 23 Sep 2019 13:59:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCOra-00062R-Ge; Mon, 23 Sep 2019 13:58:51 +0000
Received: by mail-wm1-x342.google.com with SMTP id p7so10104208wmp.4;
 Mon, 23 Sep 2019 06:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ZSlSPovVH1C68HHuoR4mSQt38eq8rnNz8O+7+IIEJig=;
 b=QPSSJfL1aOg0nq6EnFGDAX7XlU42tnIVmczj8rIsX5h7ye7qZAzW8HgeCcRbIaYivD
 leHtKefJX9inNLpsg29zoSbZUAsu1Ztb/Te8kGNOMzUVGx5DuI01caxEPmBZsw4MStt4
 Sy+SzOMjP64BXgLzwKjbpoji3L4ERPu+ZcP/+5NJkfJ8iL+lxhStreaTfWYJlYCx/lYo
 ZLv3U2z9hxt/CJHrJeixWhrIBR5l5Lluf4qYKIS/D96ewEHBNARanlno6tQtkieattru
 mOklnv3Twz5Xx4lN1XAyRKm1f2PZihr7o3ELGBtHmD8As09NSWZEW79Y6UGGyX8T8X+f
 XeAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZSlSPovVH1C68HHuoR4mSQt38eq8rnNz8O+7+IIEJig=;
 b=eq27oI0kiQ4jKzKX7EUoq7fq4H9iNBT0K3QadJ9Q8aDapHSjY4wuFVnQrmKhF/Ov6R
 2gGI01wLEEkofx1DWaH5Pb3SlP+fyaaySFOmxTfXs3hmmyP8FHYGLnNGF/jgVMpQjB87
 q9oeCwPEIlbqjC3m+QdNGZP12KpuPpgZLPd8tf8UgMJvOZSlLwMsSvDmRSKTEDodtD+N
 gzoixUIi8OFKzRUy5cKKYykVCAt5JcBZLCbXnsXMVZPUGuP0y9lKHdFH2j5mMgzq1jQz
 MDVQ02mjXEAyrTSCFzUBZSV5DHFW1E6i6aCdkz79hvqsie8qyiFt3mO8AgCPUWfJyEhP
 ibew==
X-Gm-Message-State: APjAAAWbmPdITROGBUCZaC2s3CEhFa34pBWRXx59ktTV+AN5MRj+zVNf
 nc1DPa5iYhBT/XWqMr55gVE=
X-Google-Smtp-Source: APXvYqx354pK1bP9ANp8dSug8kkg4bI3GeLLbi+p/0E/n8GXT82lX6mUk9A81nyGuEqzAyLDF194Zg==
X-Received: by 2002:a1c:b745:: with SMTP id h66mr13360541wmf.70.1569247128568; 
 Mon, 23 Sep 2019 06:58:48 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id h17sm25266184wme.6.2019.09.23.06.58.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 23 Sep 2019 06:58:47 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] arm64: meson-g12b: Add support for the Ugoos AM6
Date: Mon, 23 Sep 2019 17:57:54 +0400
Message-Id: <1569247077-5212-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_065850_591971_07D4AEA4 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for the Ugoos AM6, an Android STB based on
the Amlogic W400 reference design with the S922X chipset.

v2: correction of minor nits

v3: address regulator and GPIO corrections from Neil Armstrong (using
schematic excerpts from Ugoos) and related v2 comments from Martin
Blumenstingle. Add acks on patches 1/2 from Rob Herring.

v4: address nits from Martin except for the vcc_3v3 node as it's not
known how to handle the vcc_3v3 regulator managed by ATF firmware, so
it remains untouched/undeclared like other g12a/g12b/sm1 boards.

Christian Hewitt (3):
  dt-bindings: Add vendor prefix for Ugoos
  dt-bindings: arm: amlogic: Add support for the Ugoos AM6
  arm64: dts: meson-g12b-ugoos-am6: add initial device-tree

 Documentation/devicetree/bindings/arm/amlogic.yaml |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/amlogic/Makefile               |   1 +
 .../boot/dts/amlogic/meson-g12b-ugoos-am6.dts      | 557 +++++++++++++++++++++
 4 files changed, 561 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
