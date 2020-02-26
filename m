Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 061E516F940
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 09:11:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qx+u5TC2JTR521PE0yBeHrwHGY0WB1pug3rMlW2PRgs=; b=UML5zosyvNGqAB
	rwOsihNxb5lVFhss9BZLVsWY5Kks9woVxPQZ5zenUl0ZmDT4GoKi3chtYHk3qP8b359DefAWDt77f
	8cxjRmdrXpyMKQnSd6m2m+ISgxv/d37Tz+IUJb6tzyjfSjKmOUHIF18SxAreprE1ujwMToa1Mh/ON
	7x1gCHakPfMqEpBtINLxOQQrq/eYZaKhpb1t6z/KKi3Zl/r8zr+VLZRCj8bYiM0BYQlkBQJH28fvY
	fyfRuOwp7CN0OA8RHGc24jz3AAF93TXcTk1gDENlLHDQhqL3ylCv6Ty8TVvxSts5LhTfs7vHLVlrq
	EpNUHu4wx2hg0QMyHc5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rmk-00012w-6r; Wed, 26 Feb 2020 08:11:14 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rmH-0000ro-Hh
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 08:10:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id t24so919805pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 00:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WxwmrpsEvSIHCqKyrbgIWagGPaBeap74xZ38jQnYjMI=;
 b=G1GsoxC1VQuC2LzKxNIiH8WzlN8FWR5TNjYvsUrS4EpNTF67B0l7m+ux8gBd/URe9K
 Ni169aQfWICKEdDaOovkUoQ6TY8mp7LlZHJZ6Pyh12jXifWrBo6wNpwH+hDAl0UCJeuO
 diXFcso+LmH8SDxwSQYp2Us4VaL3d/8PrHxIwh2BO6zrCkCl4rlWXND2PaGmhmv5LO4g
 866z8wbTQDg9ADpDehmo7RnXIdslb/fXtfj9fH8aEqt6k6VmU5ypu3ND+wnwX7yes9a/
 ikkRFE+xAnlAyVqjNEsi4c/y7zzELDSiseyApg0HTDvw+Sq7rIIHJHhwIduufFULCSHo
 khfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WxwmrpsEvSIHCqKyrbgIWagGPaBeap74xZ38jQnYjMI=;
 b=jlgBfUWQbWE1C9vhF7t0arTqYP7jttG3sjClxJ570wmVF3LjTQ266O8oj+jKnCfr/x
 yk2MmqbKV5ZM7WwxRg0pTlMbDuOXf9pbnSb66WIjlxRpcX7eH0bZd76IQuvpNHfP3pBq
 atWA4OpbwR7sz8QNYXpfN+/YbLJ3Qc8Xda5vlz3R7BOxo7kQCcYFK6jYjTmzD5JChZrT
 z0ZEReqjdT0FYaQO+yj0UCJr4jX+NLqhy8P7x708vRR7RkVGZ0HBoozf2bhvNmwTX+YE
 2bfni3912LElH5/IIAN6jxK9dSL2gwXOCGKqKyiI20bKD5FShpC8NlhjDYsI7PrYobLZ
 C9qQ==
X-Gm-Message-State: APjAAAW4aZpY4PodmxReHHwu8dAPyy4QkIHS5Xth9ogdp1KKfm7a5nNb
 VsuJrUPTK1Hv/+NnZi5YKos=
X-Google-Smtp-Source: APXvYqxua5ZCZ8hYefxJVw0Z7sASanab3iVfMHAfLgUosQmXYzmdnZdSqWeV1lPWXafRXfEHEpPlMw==
X-Received: by 2002:aa7:9a96:: with SMTP id w22mr3010770pfi.210.1582704641739; 
 Wed, 26 Feb 2020 00:10:41 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v7sm1679230pfn.61.2020.02.26.00.10.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 00:10:40 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Torsten Duwe <duwe@suse.de>, Icenowy Zheng <icenowy@aosc.io>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Stephan Gerhold <stephan@gerhold.net>, Mark Brown <broonie@kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/6] Add LCD support for Pine64 Pinebook 1080p
Date: Wed, 26 Feb 2020 00:10:05 -0800
Message-Id: <20200226081011.1347245-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_001045_584909_DAE6E969 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since ANX6345 driver has been merged we can add support for Pinebook LCD

This is a follow up on [1] which attempted to add support for all the
A64-based Pinebooks.

Since patches for 768p were dropped we don't need edp-connector binding
discussed in [1] and its earlier versions and we can use panel-simple
binding as everyone else does.

If we ever going to add support for 768p we can do it through dt-overlay
with appropriate panel node or by teaching bootloader to patch dtb with
correct panel compatible.

Similar approach was chosen in [2]

[1] https://patchwork.kernel.org/cover/10814169/
[2] https://patchwork.kernel.org/patch/11277765/

v2:
  - Collect r-b tags
  - Don't print devm_regulator_get() error only if it is -EPROBE_DEFER
  - Keep compatibles alphabetically sorted in panel-simple.yaml
  - Properly indent new panel modes
  - Drop #address-cells, #size-cells properties and @0 suffix
    of endpoints in sun50i-a64-pinebook.dts

Icenowy Zheng (1):
  arm64: allwinner: a64: enable LCD-related hardware for Pinebook

Samuel Holland (1):
  drm/bridge: anx6345: Fix getting anx6345 regulators

Vasily Khoruzhick (4):
  drm/bridge: anx6345: don't print error message if regulator is not
    ready
  dt-bindings: Add Guangdong Neweast Optoelectronics CO. LTD vendor
    prefix
  dt-bindings: display: simple: Add NewEast Optoelectronics WJFH116008A
    compatible
  drm/panel: simple: Add NewEast Optoelectronics CO., LTD WJFH116008A
    panel support

 .../bindings/display/panel/panel-simple.yaml  |  2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 .../dts/allwinner/sun50i-a64-pinebook.dts     | 61 ++++++++++++++++++-
 .../drm/bridge/analogix/analogix-anx6345.c    | 12 ++--
 drivers/gpu/drm/panel/panel-simple.c          | 48 +++++++++++++++
 5 files changed, 120 insertions(+), 5 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
