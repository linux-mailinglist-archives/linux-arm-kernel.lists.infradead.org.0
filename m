Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4311213D2C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 04:37:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tv3L07ekYOdgEja/yb1coN7ck4OEgwK1ul1AKG4nUv4=; b=mj5E1tUga8WOvP
	GfrIi+Hp29cKxbe/wExa56KMxKGANNHnNlRqUCbqr+wqrBHEZN+EZiaEkItfelVXTS7FLwj1nTYcx
	+E/mH2VVcA1giiHiZ3jBJjHEjrVLbmGaxsOlJz5PTPqR/7LXZrIk2JcmajmTIdGxcNBgTsQUqWw6+
	GTCFs9nu8dnl81H2UnuJTv35QaKaZpfGb6zet9z8PTPKyIb3TIP2bO8aai0YoDzSjr+K4k8n2uVER
	8Px2NyGMWMGbC04i6pK/U1c0tjFojvNanjr1WFBHcJh730Gb1DzvaeT9yeJXptgUgK0fKl7lQb6gE
	vHFks0pEQ+26xkCOVrdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irvyT-0002gB-FG; Thu, 16 Jan 2020 03:37:37 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irvyJ-0002ew-LM
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 03:37:29 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 99999
X-Spam-Symbols: RCVD_VIA_SMTP_AUTH, TO_DN_SOME, FREEMAIL_ENVRCPT,
 SUSPICIOUS_RECIPS, BROKEN_CONTENT_TYPE, MID_CONTAINS_FROM,
 MIME_TRACE, FROM_HAS_DN, R_MISSING_CHARSET, RCPT_COUNT_TWELVE,
 RCVD_NO_TLS_LAST, ASN, RCVD_COUNT_TWO, ARC_NA, TAGGED_RCPT,
 TO_MATCH_ENVRCPT_SOME, FROM_EQ_ENVFROM
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id f941aa06
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Wed, 15 Jan 2020 19:37:08 -0800 (PST)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 9001A476BD;
 Thu, 16 Jan 2020 03:37:02 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v2 0/5] Add support for Pine64 PineTab
Date: Thu, 16 Jan 2020 11:36:31 +0800
Message-Id: <20200116033636.512461-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1579145827;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding;
 bh=87YLJpRmWJZe7wdqCNVEOJqDLc0q4dXIL0xBAUd1+uc=;
 b=rLIg6ejDnIPKj2/wuLCe7oV04s+UUjnr9lzxNfVZvngMGL0e9FWjpypJeC+4Yt9og8H3O5
 rPjTvm7h3pt2Ms1F2TGZWJv6KC0vvS3oPzAbYooutYILC0SkIFm0hHl1WS5+wLNxpmFaxR
 INAepk+nLaEPL0GmpOBJDgBVG0M3TMc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_193727_742756_AE81240C 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:8001:184d:5400:2ff:fe7b:e8bd listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Then a device tree is added. Compared to v1 of the patchset, the
accelerometer support is temporarily removed because a DT binding is
lacked (although a proper driver exists).

Icenowy Zheng (5):
  dt-bindings: vendor-prefix: add Shenzhen Feixin Photoelectics Co., Ltd
  dt-bindings: panel: add Feixin K101 IM2BA02 MIPI-DSI panel
  drm/panel: Add Feixin K101 IM2BA02 panel
  dt-bindings: arm: sunxi: add binding for PineTab tablet
  arm64: dts: allwinner: a64: add support for PineTab

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../display/panel/feixin,k101-im2ba02.yaml    |  55 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   6 +
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../boot/dts/allwinner/sun50i-a64-pinetab.dts | 460 +++++++++++++++
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-feixin-k101-im2ba02.c | 526 ++++++++++++++++++
 9 files changed, 1065 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
 create mode 100644 drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
