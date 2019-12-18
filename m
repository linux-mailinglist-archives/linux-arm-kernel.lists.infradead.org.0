Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07284124227
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 09:45:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G71TnKmGmnwYBHB9YLt2s/8+T59B4iViqQtZd0lPmuU=; b=BHdJ68aNyoWEsP
	duAe5FCaHZSfhMMuBfJ3C28bsPSvv+D7Za/gUPZ5q7e7LUiDiy3oThquU6OBhTeEWpes7ddjjpP9Z
	lObEinhuRhP2N5Gfb2E002NVWXQfA52K0gmO5IG+4t6RmoAJ9HEOrKFjnlkrKlS6KhB/MjQTJ5yHk
	Tnkkxm577xdM5A/Yob5mDqnXrxm1qYNWY2XiXCrrXBZJzXGgR9/QRoZobrlrLtiOQXXx37sFN8UpW
	IEAq6eCGpJK8CfvHjMtNUO4eanPAls40UamjWguhr0vezcW+8UIGFQ8c1MSnR9V+rH6ypfnjpFgxj
	PdXDy9Me7TYoivkyZyhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihUxt-0001Ma-UA; Wed, 18 Dec 2019 08:45:54 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihUwA-00070O-2M
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 08:44:08 +0000
Received: by mail-pf1-x443.google.com with SMTP id l127so839707pfl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 00:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XgkP2YGykzlwIphqRMB3Y2Drvc27l2r1lzhQKxjLLiI=;
 b=GumeP8eM59UIel+COPKvb4kal8y9ssVw9jCzVwG3EzzAFQ0js0afheGdnt2yC7qnLN
 sR53rfH8iYh1JBd0aMB+vGsckczjc9+RAgj/4HNxKpdyYFot8mvWGD1ZdBYZ6sWi+7v+
 J6LaEoDP/b3AgsCPDB2nazBRciMoWC6k3OeYiqv88FehJfnoYxDPIFj6O5O3EzZfdWbG
 t9rwizn0kUEMM/m3G7uBXnsPL2zgGnap0Xprsa901le4kIvxcLeJju8YSmFriazwo7i/
 cCG6uC2RdGB7i/9rmK8nCR8JTK7Ihy9UREU7dB3F8LfdrIdrP4gAbNQnlZBPjwduYCFF
 nI7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XgkP2YGykzlwIphqRMB3Y2Drvc27l2r1lzhQKxjLLiI=;
 b=c3vhEyaBgUhfiXAZEa10an+aAbQuKMGw6Y7SiMf+9ou/hCuxF8c3MlcbHQqbfmrjfZ
 4JItl/sS/Pri+yypUOR8xegl7r/t1ySegqAeyQg+TfFs9/++jJwfPUSwB5r0/K8TNdKv
 lKpAT1z9eGHkdvMi+8klXS509iG3EN2oGqTrpmxPtpv0LGuSpxkkyL4Z3jwmKHEJfz8J
 h9QZx5KF2t/TXOFqIcCY6as4zn8nQUwz5MNw7KI/FwWC04aSC/gcVTHn1ltXdCWRQD0i
 LowbZ7dpFA5FUZDlRznYj3PyK5MVhcNDzhR3vORvYygoSr1Xx6Yn2eLQrqozNXb+ipEL
 +fag==
X-Gm-Message-State: APjAAAVpN1lvz05QaffmWYisl0wPtN0o4EQqhdZ0fCLt3MyBGb7yyRPb
 FjxTTxBe6RiOb1PABAJX98UHnvJCruI=
X-Google-Smtp-Source: APXvYqyL+r5RJIcdWldlQzpiSsr60WSqqejJ6XcfoZkzoYHycrvSnx63omhxxdoMI0Bn3RlxOX3YSw==
X-Received: by 2002:a63:ea4b:: with SMTP id l11mr1686987pgk.357.1576658644563; 
 Wed, 18 Dec 2019 00:44:04 -0800 (PST)
Received: from morpheus.roving-it.com.com
 ([2401:a400:2a0a:f300:5827:9012:5064:8df7])
 by smtp.googlemail.com with ESMTPSA id x4sm2068333pfx.68.2019.12.18.00.43.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 00:44:03 -0800 (PST)
From: Peter Robinson <pbrobinson@gmail.com>
To: Eric Anholt <eric@anholt.net>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH] gpu/drm/v3d: Add ARCH_BCM2835 to DRM_V3D Kconfig
Date: Wed, 18 Dec 2019 08:43:20 +0000
Message-Id: <20191218084320.312561-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_004406_183222_7DE08E06 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pbrobinson[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Robinson <pbrobinson@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64 the config ARCH_BCM doesn't exist so to be able to
build for platforms such as the Raspberry Pi 4 we need to add
ARCH_BCM2835 similar to what has been done on vc4.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 drivers/gpu/drm/v3d/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/v3d/Kconfig b/drivers/gpu/drm/v3d/Kconfig
index 9a5c44606337..b0e048697964 100644
--- a/drivers/gpu/drm/v3d/Kconfig
+++ b/drivers/gpu/drm/v3d/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config DRM_V3D
 	tristate "Broadcom V3D 3.x and newer"
-	depends on ARCH_BCM || ARCH_BCMSTB || COMPILE_TEST
+	depends on ARCH_BCM || ARCH_BCMSTB || ARCH_BCM2835 || COMPILE_TEST
 	depends on DRM
 	depends on COMMON_CLK
 	depends on MMU
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
