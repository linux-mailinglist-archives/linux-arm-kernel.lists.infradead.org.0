Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B23181DDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:30:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MBXVUlkQtVJd0NCxEWQEHxODWbYWmuQ8WYtQWGCW0IQ=; b=PogYEbVCbsnODN
	tWLRyuVwQQG2IgNqGNE6ksdvt0E0h5A8KQQ6eZMxFbnmVrImfo7rLdh62FbEtq7KOMHjlaBl0bIPT
	PcZDgQi3aNaDaf2aa9Hcv5ObPB3K/ANqMFRwMxqz0m1bDVDq5/LQ37gCuXnpCzuHwJmUpf38ml1S3
	LpslY/c3vYvU+q9vOi6xOsGgb6HJBTA/3JkFVJZa85V+OCyUXM3vPfr4sHw0oHGHV3gUeJ8ldEjQW
	BiG6LIFy9oPh2EBypn9OwE60bL5wAfnZJBoz6uA++3pwiRg9988zYR9lqn13ya+eCqOi6Xqcfc+Tf
	WMSMz+pqh8ampLCkNrAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4FV-0002CT-Dj; Wed, 11 Mar 2020 16:30:25 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4FM-00021O-Ar
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 16:30:18 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 99999
X-Spam-Symbols: TAGGED_RCPT, BROKEN_CONTENT_TYPE, SUSPICIOUS_RECIPS,
 MID_CONTAINS_FROM, FROM_EQ_ENVFROM, ASN, ARC_NA, TO_DN_SOME,
 R_MISSING_CHARSET, MIME_TRACE, RCVD_VIA_SMTP_AUTH, FROM_HAS_DN,
 RCVD_NO_TLS_LAST, FREEMAIL_TO, RCVD_COUNT_TWO,
 FREEMAIL_ENVRCPT, TO_MATCH_ENVRCPT_SOME, RCPT_COUNT_TWELVE
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id 6de100bf
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Wed, 11 Mar 2020 09:29:56 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id BC2B74C30D;
 Wed, 11 Mar 2020 16:29:47 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ondrej Jirman <megous@megous.com>
Subject: [PATCH 0/5] Add support for PinePhone LCD panel
Date: Thu, 12 Mar 2020 00:29:31 +0800
Message-Id: <20200311162936.221613-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1583944194;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding;
 bh=9aZ3S84mHw4qXcjY/Kp+GSG14l46FAM2R96fwhUnoLw=;
 b=CB0z2emeUteq4K+Vm+Fl3YW5AeDzN+fR9fgavG6U/oahKEFAAdnW8kuNmiSZ7oWpDQm9IV
 WxcSkkn8AlLXmy5KwmN3BH1rHXhyzPyBnIS0/fRTlxGEaAQhAwQe2WnYfS/EHTF0xhIF1d
 grHLKR2JssBVmHAnD79ImiHiNXFJZcQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_093016_420560_E14B483B 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:8001:184d:5400:2ff:fe7b:e8bd listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 .../gpu/drm/panel/panel-xingbangda-xbd599.c   | 367 ++++++++++++++++++
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c        |  10 +-
 7 files changed, 471 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-xingbangda-xbd599.c

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
