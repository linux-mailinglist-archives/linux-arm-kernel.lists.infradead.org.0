Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7467FB02E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 19:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lsyI3am0/6URCmLymBedfckxE5MwDVYSJoxIRhebM40=; b=Ohr
	qLcAcESwLBguM1Mg9+FPd73GN4x0sSCDccDK3aUL/ZFG1caOBoB3A34B1+vw65R4yy6Ul3vy9Idyt
	hOFrvrrCRKA7cC4zyqCbzJCNGJbx+HVTkD4+FqIAAkGmXKOEuoS3xC5J+yrrRNb6JZE+0Thb0uayJ
	oT97c6rNEsULnLt/mxhh1l3cxvZ3KBUN6wHUt+KAqIwm1KmR9AzJjgyENVdwyU6QB6alBJE1elvAF
	f1zEkLrYv8dz2MJAumJwyYxzsE9pQfXWbo5y2Svow6Y6DRPeGR3NPEp2J2Rr6cG144RlH/VIXBCKb
	rfe9Q2UAx3cUBx+eIhj6BXu7XMaUpiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86i0-0006jv-I7; Wed, 11 Sep 2019 17:47:12 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86hn-0006ja-SB
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 17:47:01 +0000
Received: by mail-io1-xd44.google.com with SMTP id f4so47116233ion.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 10:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=m6EOAJO1qgEemJlkYFxDYcBwzW52x2O5dEl25GRcoSc=;
 b=LQHGkTsqCaP8EfYJI/4g9fzb5NhR+mH8Ofvj4v2IIjBuYitiqn/Iz0cp5UZVRy6EGq
 GcsPryMwY+RrBvooTU18BzfsCCX7TDEihCT8uSFRtDj/93ML9GR1wXg7Va/QCNIj7H+w
 aYd4DGYjJOJBQ01MdyYdzWl1PCZpdbt8UyAAzTzFEvRZE3euqOUQ+IDxvT0ZRV5Z+jXN
 8s8QBvTzTOnCp0IiDHH8OhOJtToHgAIiLEAfcFwk5UDydGLLuTMcKbVF1gdPLzTsd6og
 rnb0wU3P+F5ibXwLonI/Ns26o3b/RtvMw05MrWXDNphEP8JCw8WRUbiy5GBnoG1YyQDE
 0zVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=m6EOAJO1qgEemJlkYFxDYcBwzW52x2O5dEl25GRcoSc=;
 b=X8r+ELAZ4nELfHPGbTSdTbNCbBlgMj7xwO+NMJx4J8AOVaIduRZ6CaE5+1EpwDnR8l
 5wb2iXU4m5Yd79EnwMMDHJv/7PnfkcMc/6Yj4GGZTshTEOD32VuW+oBbW+EbKjTGZzym
 e1YwsYLWih/wfxkWLDEaNP11/SBUY/4LHofOQfpaQnFHG86wgBVVAfjfljI8DLLMyPWr
 inG+cVcZOKFvUbJfuokTqUvlSTRgEzaMcLpNGl1XJQwwR6+xJZKPa5cGHsqsd2ABbHG8
 ExFEgfxs3rAepBwEuNNBRzMKNPUuDKM9MSWmA6nbTKGWfDhwACzie+8fLAJFuXDE2Ysf
 MUuA==
X-Gm-Message-State: APjAAAW0T95HA84Ygf88NMwGaj6SJkJRIK65kKOsJ8V37MFAL/hKKAxR
 G9VlLZk3Nv/8x9QnfHRfNtI=
X-Google-Smtp-Source: APXvYqzxTMSyzOm40fnhFm9eaQZkFEEtBWf0exKouA7+NALtOfOJVLpNgsp+8oDMNF52g0vv1Y8dZg==
X-Received: by 2002:a5d:89c1:: with SMTP id a1mr7693726iot.306.1568224018425; 
 Wed, 11 Sep 2019 10:46:58 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id z11sm18788778ioi.88.2019.09.11.10.46.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 10:46:57 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] ARM: omap2plus_defconfig: Enable DRM_TI_TFP410
Date: Wed, 11 Sep 2019 12:46:47 -0500
Message-Id: <20190911174647.29721-1-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_104659_940214_230285F1 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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
Cc: linux-kernel@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 adam.ford@logicpd.com, sre@kernel.org, Russell King <linux@armlinux.org.uk>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The TFP410 driver was removed but the replacement driver was
never enabled.  This patch enableds the DRM_TI_TFP410

Fixes: be3143d8b27f ("drm/omap: Remove TFP410 and DVI connector drivers")

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
index a0449d3b48a5..d384c13de19a 100644
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -359,6 +359,7 @@ CONFIG_DRM_OMAP_PANEL_TPO_TD028TTEC1=m
 CONFIG_DRM_OMAP_PANEL_TPO_TD043MTEA1=m
 CONFIG_DRM_OMAP_PANEL_NEC_NL8048HL11=m
 CONFIG_DRM_TILCDC=m
+CONFIG_DRM_TI_TFP410=m
 CONFIG_FB=y
 CONFIG_FIRMWARE_EDID=y
 CONFIG_FB_MODE_HELPERS=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
