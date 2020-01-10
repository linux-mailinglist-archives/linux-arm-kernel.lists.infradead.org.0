Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915741371D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:54:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+YBkrUaPAI41rZyFwhB2RzlJisU6odw6TbikZ9zW4FU=; b=queIyiCRnUI7Zy
	GDO1AX/IxbKgPtqDXHoT6o1jMVLCMF+h+q1gMEVlxDKA6+c9daP4ZOnwWGE2k5pecWz8lua1Oagau
	yDG7N6HcjBNXvJgYiPsFde/JiXQprERSPovgJPesrkkhtzgUArvE7ZkM/wgnUy0w/vbiz0+fBIOqS
	qwaa4No4C/YK25MizOHFR/fhvpe6+k1I3K5dvo5X/T9BvIcEZ1t502RzwDpuIdS5fGYKLHXYjpxaQ
	/CafTnftb9pbYmdGY57SAC9eEyDJ7Zeow9k0K2/fF8AJ61TjW5KlNrlPbgJatSaApLNGaWzQBdtcm
	/1c4NIVUBjyJUWIWmDnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwbw-0008BP-9A; Fri, 10 Jan 2020 15:54:08 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwbm-0008AC-Oy
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:54:00 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 15
X-Spam-Symbols: RCVD_NO_TLS_LAST, MIME_TRACE, RCVD_COUNT_TWO,
 SUSPICIOUS_RECIPS, FROM_HAS_DN, FREEMAIL_ENVRCPT,
 FROM_EQ_ENVFROM, R_MISSING_CHARSET, TO_MATCH_ENVRCPT_SOME,
 BROKEN_CONTENT_TYPE, MID_CONTAINS_FROM, ARC_NA,
 RCVD_VIA_SMTP_AUTH, RCPT_COUNT_TWELVE, ASN, TO_DN_SOME,
 TAGGED_RCPT
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id e1c00812
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Fri, 10 Jan 2020 07:53:35 -0800 (PST)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 89D1E46EF0;
 Fri, 10 Jan 2020 15:53:22 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 0/5] Add support for Pine64 PineTab
Date: Fri, 10 Jan 2020 23:52:20 +0800
Message-Id: <20200110155225.1051749-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1578671613;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding;
 bh=arqgargl3bY9HACPJC+50BrUGIBgfwYWhQpbFvgf9g8=;
 b=IQf56fS/L+J88wDn5NITVutxMKkOSUkKA6VObrxd0nceXBTehZ53tj/U1e4PgIkZkj1bjf
 4iQVIUnkzeFOm/209cHapWzv7Yz0uEmmP3Nt0UPwdShfzRIfpjhuw3glbKy7Cf4/6bPgrU
 kC/XnMd4+vPsplC+ya6/xeUFS8zfnHA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_075358_852543_54029A3D 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset tries to add support for the PineTab tablet from Pine64.

As it uses a specific MIPI-DSI panel, the support of the panel should be
introduced first, with its DT binding.

Then a device tree is added. Thanks to the community's contributions
these years, we now have most of the functionalities of the tablet
available in this device tree.

Icenowy Zheng (5):
  dt-bindings: vendor-prefix: add Shenzhen Feixin Photoelectics Co., Ltd
  dt-bindings: panel: add Feixin K101 IM2BA02 MIPI-DSI panel
  drm/panel: Add Feixin K101 IM2BA02 panel
  dt-bindings: arm: sunxi: add binding for PineTab tablet
  arm64: dts: allwinner: a64: add support for PineTab

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../display/panel/feixin,k101-im2ba02.yaml    |  54 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   6 +
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../boot/dts/allwinner/sun50i-a64-pinetab.dts | 461 +++++++++++++++
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-feixin-k101-im2ba02.c | 548 ++++++++++++++++++
 9 files changed, 1087 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
 create mode 100644 drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
