Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 734C318CCD9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 12:24:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TK9EV0NsNnlZwoEBc6ZnqWyZCyZ4I+SMjWcjT5P0So4=; b=OfiFMEPWzBfBWR
	ZC0oRIDK/qKBZQ6crLUolLG5ywqFQqC8Wos6sECMIwVCRK9BlO+xc4ClcQstB+VEcHDo6RT8Hd/i7
	ul7J+vE1y3i29PUgq3Xs+NzlHAAEQhxKe6KA31WLNkoJfT0pltPSe7UBup42QHnp4E/xhiJa0vLmo
	k9FjsjIRQNssx3MtA+HnptN8qF8NuOKIv2XfB9l1gJAOH0T1Ik1lHMNb/gTyybphmyCy57K6zBkgs
	POj6RiFl2YMcD0GxiaTF1pVm9y4nueIMrluFVPJnnV+qppd9kOuYRN41XRCV5rqqmN952I8pV4CJb
	x+u+OUTdTFylI28+kuUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFky-0005Tn-F2; Fri, 20 Mar 2020 11:24:04 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFkq-0005T6-8i
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 11:23:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id
 :Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZJrg1yDpv5ww0Brt1nAj95Gt3EySAGZ87ZQ9VnS/sEQ=; b=GbrwXQG+7PqA7MImIDjC8UvY/k
 iXkbgroGKcuE9AdMkYpIvTNOXSlHZj5JscwU8+lYQRu4+xK3WpkQsKKdNGvCaLUKoiCmwcASXthKk
 8sk4I/RQ93p0VB1jqOxtVE88tz8q+ZueDK+L53GgD00R/M6kD1+tSmETZ3qRrlv4cyuni9lP2jsON
 fj7lk6fq4GBffWsPqtuyJ7QMJBVSVVNAsQMuejYQbXIuq/TIo/VdQt5CvTyUjUpL0+TRJT8GGADyi
 qDskACq68WeooW01ToNYjfgapbxnrjDzqw4TFdEC5anYw34pXC6AleqFVdaHbcnnx+yxoHcz0APiq
 HnRi0/GA==;
Received: from ip565b1bc7.direct-adsl.nl ([86.91.27.199]:57936
 helo=localhost.localdomain)
 by web0081.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <dev@pascalroeleven.nl>)
 id 1jFFk1-0011ci-Ha; Fri, 20 Mar 2020 12:23:05 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH v2 0/5] Add support for Topwise A721 tablet
Date: Fri, 20 Mar 2020 12:21:31 +0100
Message-Id: <20200320112205.7100-1-dev@pascalroeleven.nl>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Authenticated-Id: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_042356_589794_CD6A27F6 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-sunxi@googlegroups.com, Pascal Roeleven <dev@pascalroeleven.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series add support for the Topwise A721 tablet and it's display.
It is an old tablet (around 2012) but it might be useful as reference
as the devicetree is pretty complete.

Changes from v1:
* Split into multiple patches
* dt-binding: use yaml instead of txt
* dt-binding: add Topwise A721 to sunxi.yaml
* dt-binding: add Topwise to vendor-prefixes
* drm: Add bus_format, bus_flags and connector_type
* dts: Use SPDX license identifier instead of boilerplate license text
* dts: Remove pinctrl leftovers

Pascal Roeleven (5):
  dt-bindings: panel: Add binding for Starry KR070PE2T
  drm: panel: Add Starry KR070PE2T
  dt-bindings: vendor-prefixes: Add Topwise
  dt-bindings: arm: Add Topwise A721
  ARM: dts: sun4i: Add support for Topwise A721 tablet

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../bindings/display/panel/panel-simple.yaml  |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/Makefile                    |   3 +-
 arch/arm/boot/dts/sun4i-a10-topwise-a721.dts  | 242 ++++++++++++++++++
 drivers/gpu/drm/panel/panel-simple.c          |  29 +++
 6 files changed, 282 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/sun4i-a10-topwise-a721.dts

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
