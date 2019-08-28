Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D026A098C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1WoH7PceCAks2foTCLl5cNprRyzR9Izh85yWgJZzNsU=; b=ltg
	HKUNlhpA2UJJmj+7ZnIecMbjeB1GucEp3Whqpt+J9JNTtrwyKXACV9BK20FDJzjwIO5mCDMwY+Vtn
	ZogfbNOAb0g3wJQBWuopROG/k99SJGhHOFRKirsTUvziVt1o9UDtE9BooIK4XzJkmJ8KHajFwApUg
	Q4/tKZSaJY8mde1AIKExe5t+PK/pRsY150YMVTT92QU8WEY8gwiLwnNrlAyJet52eteXfXy2zxjr1
	FqImYvGqCKpX30DB3cnoZuNXU1yje7lWMP8n/MCc97QonBkXd8ppfmBllBiwOUgNPYniPzyFaGhbD
	sTqA9RYOIm5gOkJj0pzZ1ejWpUfBwXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32ln-0004BN-Dm; Wed, 28 Aug 2019 18:34:11 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32la-0004AE-I1
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:33:59 +0000
Received: by mail-io1-xd42.google.com with SMTP id x4so1447112iog.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 11:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=8hu0ssZ0oGIHsc6XK0+vNFtta74+suq/nbsPFXeUCzo=;
 b=gOExUspZ43jLMuF+eKU6GV47d0erYUbZyKrYKRx3biAPGIachP/lZDr5vFrM7ph+Sw
 shJydx+mpJs1RrkwMNxmJECY4wh7aA7ZKu2d5mA0P3sr7HYMgo5ybKOr2mPGlKDdZp30
 7MhEdpd/5TcPxjlpD44R15158z8gKGN6ZD88QhHvYg+xnGrDm/RXuKuVoinN/WjSDYBd
 VEkShaMh9qJLhxrQfM1EKfjC43RqqjIPrRMvlqTDlrYXW5m3DjhUqwV1z0XKmIM7KBar
 abct8GgJIyTOCQIYegKpz+CXpOUpCR3AegIdWRO5vz88hIWhrDN/hGXah/6GhnMAOo6y
 2rew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8hu0ssZ0oGIHsc6XK0+vNFtta74+suq/nbsPFXeUCzo=;
 b=UerrQR3dFn68dTvn771jWHn3gh6hRKjQN4d+piDo9nwrvTsJKy8Hm+98Yvx48CBgXh
 HY1OeF/6Bqg7I8OXS7z6QqeLIAre038t7Swo4jXlq4rE3yqWkzwJBAyVak3gycKdmYG6
 csM0WFXUCuKPWflV+9qREEbBTVOSAnO46aTLqMK0BYjUgJUL/k0y5uHMn8q+YP57C13b
 /Tg10ESFzua3sNdpak7gPzFbuAr4RGajzIKT1duL2dL0/b5kNvpL1WXVR9NyJiHBAyIJ
 C1kp6omEDXPtvIuYLtQyscFlPWpJYFHAspLTMNkFg+rtXFQqQfok4YJWjpkohpmiyDdm
 UD/Q==
X-Gm-Message-State: APjAAAWikHRNJ9cOr6Vf3onyHW2pLS1T3NUiSPp67zwJPsxE2sNru9Nj
 s2+Dne+5yjXX/KxRbLkIWrQ=
X-Google-Smtp-Source: APXvYqwEMGWFsgtbR4pzYu0QHQcSSHkT8AIV7Vx2F+xl54RWfWBWN+WSLiU9SH8fydowdo4lmRC4Ww==
X-Received: by 2002:a05:6602:219a:: with SMTP id
 b26mr236370iob.55.1567017237339; 
 Wed, 28 Aug 2019 11:33:57 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id o3sm2494650ioo.74.2019.08.28.11.33.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 11:33:56 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 1/3] ARM: omap2plus_defconfig: Fix missing video
Date: Wed, 28 Aug 2019 13:33:49 -0500
Message-Id: <20190828183351.822-1-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113358_599215_922F3BFD 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the panel-dpi driver was removed, the simple-panels driver
was never enabled, so anyone who used the panel-dpi driver lost
video, and those who used it inconjunction with simple-panels
would have to manually enable CONFIG_DRM_PANEL_SIMPLE.

This patch makes CONFIG_DRM_PANEL_SIMPLE a module in the same
way the deprecated panel-dpi was.

Fixes: 8bf4b1621178 ("drm/omap: Remove panel-dpi driver")

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
index c7bf9c493646..64eb896907bf 100644
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -363,6 +363,7 @@ CONFIG_DRM_OMAP_PANEL_TPO_TD028TTEC1=m
 CONFIG_DRM_OMAP_PANEL_TPO_TD043MTEA1=m
 CONFIG_DRM_OMAP_PANEL_NEC_NL8048HL11=m
 CONFIG_DRM_TILCDC=m
+CONFIG_DRM_PANEL_SIMPLE=m
 CONFIG_FB=y
 CONFIG_FIRMWARE_EDID=y
 CONFIG_FB_MODE_HELPERS=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
