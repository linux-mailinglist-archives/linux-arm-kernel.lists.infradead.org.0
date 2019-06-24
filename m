Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F0F50EF5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8HmFgINorNQarigqrHKjrJmDyMtVDCF3ssuHVuBiskI=; b=Sii2RZcpqKdp2Z
	5NGABz+d7d+tXOBKCos7t7oKc4s/sGYZDZH5xCmR7Ysrde9pRA7I057qzGwogDXGdIS1WwtdDP/KJ
	cDN4DfMDowFgRjrHEEQva5Jyb2IhARdvZo8JVu5Oj5TfhL1EHVIvDi3H2JZDpVoYpvypTx48Uyc24
	gb83QjdgMLD264LS/4lC3wctHYOeWBn6t6ZJ71JpM2ncDSUYKLHoHtEU/xsG+/4Hee4MuXbxnFGcS
	KQqSNmw3BcrLj0et3JBQ2nzvR8whjmIqgumFJBmYEeoybQVSve0q8YUSohwmNZl0IDtL8kmcCG2cO
	GWrFlmWI1d+/Oih4QO8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQGT-0007OR-82; Mon, 24 Jun 2019 14:48:13 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQGF-0007NC-FY
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:48:01 +0000
Received: by mail-wr1-x431.google.com with SMTP id p11so14216892wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=dIRgQ3ynOpjhyuIVnVuPJTcE55pI12BhgO4qsYJmHWg=;
 b=1t2stW6KFcusBgmgb+vjxCC6D/mAJkeo4PWwfQTJtiO7t+wgz+REk1m6xRvG5PdvpB
 N5Cfj0WIDM23ujK4DsoZ5o1ow097YCS3oiJGmCJJLc5kPXI9NQjDO+jaevjCq4y3MDyi
 RwKqbnu2Na54f0LI1M23VY8Iq8pGBws7IXzE5sNIaK7HzGq0HBb8ZEcyorT4YW2sK18x
 cQHHT0avopamkHoV1U0VKmXeQpKbSOAQpadRqHyELQS+oT5AGEeyL05nMQWknKwiEzY7
 kaNz21h3qkJfc4TfwevGKTNdhk0RfDvec7zs18vmX6VVcVS/qiaLjeq43dtTUSp9cngj
 BBqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=dIRgQ3ynOpjhyuIVnVuPJTcE55pI12BhgO4qsYJmHWg=;
 b=iO6aiAnErXQlFx1taTGlSO9YUUNifIIDjQ8Sgm0wIla8rZ6HbzHRHIAUUjfBTKzDD6
 ZXqMFXE7b0M2rs5Dn/vwY0803p3/cx+Kss4TJZsU5MVV+FFZFoNbGFkxflxD0+F17iBN
 +64SDo+LxUQBjMKAliFzIGOZ0qlYGhA41Vonfv+lhsXiTEGFa42EBeLQkj6yIyZrangW
 X4UPY1LF/wgapIxGH3AvsfoEO71Wv07drj/tOGdDYsFZy/MW4bpMqw49NhZPP5fQ+mHR
 KZtiHGbdPtvGg32PQ3OJdmyTEJCtFMJlFpH4mSDfBgVS4L17Uz0MVQkBJnJXeC3YgvNX
 GKpg==
X-Gm-Message-State: APjAAAW2fc3QwSBKOT4NQEzyL8u4C2z9AhAvGO338CcavJ+qraUsayp/
 BfcXOooL8tL5u84LWQ2bEz+JdA==
X-Google-Smtp-Source: APXvYqzAhY+ZzLqrg8P9+Gjky58V/7Mins9CYwy8HmsCLCi6hwSDb1K4orr31YS8ZR7Cuubi4to67Q==
X-Received: by 2002:a5d:4642:: with SMTP id j2mr11688565wrs.211.1561387676728; 
 Mon, 24 Jun 2019 07:47:56 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id u6sm13228366wml.9.2019.06.24.07.47.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 07:47:55 -0700 (PDT)
From: Julien Masson <jmasson@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 0/9] drm: meson: global clean-up (use proper macros,
 update comments ...)
Date: Mon, 24 Jun 2019 16:20:42 +0200
Message-ID: <86zhm782g5.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_074759_547581_EA536030 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Julien Masson <jmasson@baylibre.com>, linux-amlogic@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This patch series aims to clean-up differents parts of the drm meson
code source.

Couple macros have been defined and used to set several registers
instead of using magic constants.

I also took the opportunity to:
- add/remove/update comments
- remove useless code
- minor fix/improvment

Julien Masson (9):
  drm: meson: mask value when writing bits relaxed
  drm: meson: crtc: use proper macros instead of magic constants
  drm: meson: drv: use macro when initializing vpu
  drm: meson: vpp: use proper macros instead of magic constants
  drm: meson: viu: use proper macros instead of magic constants
  drm: meson: venc: use proper macros instead of magic constants
  drm: meson: global clean-up
  drm: meson: add macro used to enable HDMI PLL
  drm: meson: venc: set the correct macrovision max amplitude value

 drivers/gpu/drm/meson/meson_crtc.c      |  17 ++-
 drivers/gpu/drm/meson/meson_drv.c       |  26 +++-
 drivers/gpu/drm/meson/meson_dw_hdmi.c   |   2 +
 drivers/gpu/drm/meson/meson_dw_hdmi.h   |  12 +-
 drivers/gpu/drm/meson/meson_plane.c     |   2 +-
 drivers/gpu/drm/meson/meson_registers.h | 136 ++++++++++++++++---
 drivers/gpu/drm/meson/meson_vclk.c      |   7 +-
 drivers/gpu/drm/meson/meson_venc.c      | 169 ++++++++++++++++++------
 drivers/gpu/drm/meson/meson_venc_cvbs.c |   3 +-
 drivers/gpu/drm/meson/meson_viu.c       |  82 ++++++------
 drivers/gpu/drm/meson/meson_vpp.c       |  27 ++--
 11 files changed, 362 insertions(+), 121 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
