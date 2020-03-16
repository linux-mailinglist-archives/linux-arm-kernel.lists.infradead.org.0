Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCF1186C5D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 14:42:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RjQZgorVsC6ZCU8gdCRCsYgV84XwEnPfU/AwmwYkIHE=; b=dkGC0C+ci6/4iw
	SuXGKa72z2+8xIdqbyubnqLgxVzITxUtpu9P7Xhij82wOPF+BISHcH2V9/b24NWiJ41V6BgfSUkph
	3s7oFcbO+q+YWaQrbE62qqC1gp8ZsUV7rMQNcUUl8UkhWNOa3d+G6HTobbg09TwQi83FuM/jQDdP/
	MhYEvWWCccMX4TqpPdunOqLcj/bueT5IXnBT9IjDaRYjiS/PbW5Ly98IyL0GcDkCoNowM+QKYrEKj
	uTaO1jN9mBfD+9rsi6w95f+2E/rPcS204nvAu29ywVhLw8bn2om1MnGYlJcum0/PoD9hn+fHuVn+D
	GCUapOFGX5b7f9E7uWIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDq0h-0001rh-15; Mon, 16 Mar 2020 13:42:27 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDq0Y-0001r0-Rh
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 13:42:20 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 99999
X-Spam-Symbols: TO_MATCH_ENVRCPT_SOME, RCPT_COUNT_TWELVE, FROM_EQ_ENVFROM,
 ARC_NA, RCVD_VIA_SMTP_AUTH, FROM_HAS_DN, ASN, TO_DN_SOME,
 FREEMAIL_ENVRCPT, FREEMAIL_TO, RCVD_NO_TLS_LAST,
 RCVD_COUNT_TWO, SUSPICIOUS_RECIPS, R_MISSING_CHARSET,
 TAGGED_RCPT, BROKEN_CONTENT_TYPE, MID_CONTAINS_FROM, MIME_TRACE
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id 9e917f25
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Mon, 16 Mar 2020 06:35:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 24B284C196;
 Mon, 16 Mar 2020 13:35:15 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ondrej Jirman <megous@megous.com>
Subject: [PATCH v2 0/5] Add support for PinePhone LCD panel
Date: Mon, 16 Mar 2020 21:34:58 +0800
Message-Id: <20200316133503.144650-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1584365737;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding;
 bh=UogBDqyfcy6/qNkgFYCFMrYkAAGyI8Dc8r8lCwA5buc=;
 b=nTTzHm/2tCiQJ1hlgBvq2jrR9y68BrpXG7y3X5HoIL3pxcrktUbDg3eleVVT22r9nPlAcO
 39HgVIRA00TxiaQYG7RXlnj9wrXfTGV1xlBwbeHPOizEOx3gvAJN6Syp8iKlHpXEMOc/Dq
 wdeGMDusw1SRlkvFWQZ/ns6IPGBDC+c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_064218_943275_2E8CE7C2 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:8001:184d:5400:2ff:fe7b:e8bd listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This patchset adds support for the LCD panel of PinePhone.

The first 3 patches are for the panel itself, and the last 2 patches are
for enabling it on PinePhone.

PATCH 4 is the fix of a bug in sun6i_mipi_dsi which will gets triggered
on XBD599.

Icenowy Zheng (5):
  dt-bindings: vendor-prefixes: Add Xingbangda
  dt-bindings: panel: add binding for Xingbangda XBD599 panel
  drm: panel: add Xingbangda XBD599 panel
  drm/sun4i: sun6i_mipi_dsi: fix horizontal timing calculation
  arm64: allwinner: dts: a64: add LCD-related device nodes for PinePhone

 .../display/panel/xingbangda,xbd599.yaml      |  50 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../dts/allwinner/sun50i-a64-pinephone.dtsi   |  37 ++
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-xingbangda-xbd599.c   | 366 ++++++++++++++++++
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c        |  10 +-
 7 files changed, 470 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-xingbangda-xbd599.c

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
