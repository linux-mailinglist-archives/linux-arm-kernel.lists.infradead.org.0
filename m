Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6947D1DD99E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 23:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:From:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BrrImqvNie5zs1HNA7UWLmyZ0l4pH0l59RfxqwmXkNI=; b=qhf
	3hY8tBAhMDsxAyQTIFDj9cGY1iy/o3wYaDDIOIqZdMlNc8XCiIeExOEeETgU1IevD5YxUdZiwqJN1
	yAh5lTQuXwvAYaWVMRD9YBvKvq61b//RuUPQbAfHuN0U1mayZ2i/L0MfYIwswKcOjZdV/MxPydE98
	3g0jNx+hWKm/mkZVJ4Go7lqvxdAiuLWjzlDRCT/AM3HhdxG1f+TgrBYvZOcf/EoT83ofpnYZci1r+
	HShheP2lf9msIETKpiwEI8JlRIgYtIfhTpOT7i/80ZxUpnAf1LjS0thxb3aRe1zwAvwNnSOkIxNqS
	8T9S++hTDVMvtVtD3xRusiosOnWy64g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbswT-0000js-J7; Thu, 21 May 2020 21:41:29 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbsw5-0000Yv-T7
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 21:41:07 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a5so3936109pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 14:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:from:to:cc:subject;
 bh=wOxdbqXiaXBd2oUXdT6DezR8UoCyJMduXlbTu9FfJAo=;
 b=YsTGUaAiPOFTplFldDoy3qXs7axwoNClcY8jBgJ1fRlo3pwumGdJPdZurxWpiuH02e
 BW3E9fQXXoukKiS26LV766/C8RRSBG4vUXiHkwDtpBNb5OqdlkAQHGfFwwC0H9IQq+7J
 bhiRwasuFGNTNy6XOLrTyRT/1uzlv8vruOHeFfWHQuSweAozaqnR/S/fqACBMqZOntqA
 bT7wlO6wuYO1DH8rOjqCtMw2NtCl24xQpJMSh84N7hT4LV+Lk2xXEu1eMWxy7LYsRQlJ
 FKwRpQmWdOXPFr81rfSvmQ5m8LSh66GEWzTK+BiXIhuQDIYfDipwIohYczjYwTEg1qv0
 6y3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject;
 bh=wOxdbqXiaXBd2oUXdT6DezR8UoCyJMduXlbTu9FfJAo=;
 b=uexZ/HNDlJi1MkZpMJUgb6i6RLFQKK34Lj/oRjXAPQbDncT/lQOqrL8b21VrCVEZtX
 54SMxys1QCuvBugqty28Y+janEjI/2gzPiP34YAgLL7BetAPbloghK085wD1xTYB9FcB
 c33hq+sDxE5jLVUrgHu4fnzodbWZjB4r+7/3M94AFHfxgmkXUGr3jC4tWNokvzd5Ptty
 5V6YvnZlmE6e4X+vdKDG/V56uLu89TT+Zd3H70Rf6EMfH/oBHiFhPRsWdd2PGI6zXw4R
 qXewa+/MYUW6XVGhE4xt/b7MDVDro948pwyK+XfZ6nPJ6jAPm4Jlx7nHTP/kLAcMXtFO
 MzTQ==
X-Gm-Message-State: AOAM532na/C96oH7E3FvxDnMFm3dLA1I1WHMIYp8f1QZ8S2NtY7PySB+
 uwUi5cgiCKcwiHYEy/XbZlJnMg==
X-Google-Smtp-Source: ABdhPJxfUbpzlSMaijpVUwP6mvp00/JtS3ccdv7HJNWQCQzKgde3F0tI9DSd/M/28OcLKj6aCPK9Kg==
X-Received: by 2002:a17:90a:f0cd:: with SMTP id
 fa13mr574467pjb.95.1590097264983; 
 Thu, 21 May 2020 14:41:04 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id y5sm4800044pge.50.2020.05.21.14.41.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 14:41:04 -0700 (PDT)
Message-ID: <5ec6f570.1c69fb81.a3753.711b@mx.google.com>
Date: Thu, 21 May 2020 14:41:03 -0700
From: Kevin Hilman <khilman@baylibre.com>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL 4/4] soc: amlogic: driver updates for v5.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_144105_952212_FCA93F9A 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-drivers

for you to fetch changes up to 53773f2dfd9c847304b184d5617e36aeafdf5d87:

  soc: amlogic: meson-ee-pwrc: add support for the Meson GX SoCs (2020-05-19 16:02:14 -0700)

----------------------------------------------------------------
soc: amlogic: driver updates for v5.8
- support GX SoCs in the EE power-controller driver

----------------------------------------------------------------
Martin Blumenstingl (4):
      dt-bindings: power: meson-ee-pwrc: add support for Meson8/8b/8m2
      dt-bindings: power: meson-ee-pwrc: add support for the Meson GX SoCs
      soc: amlogic: meson-ee-pwrc: add support for Meson8/Meson8b/Meson8m2
      soc: amlogic: meson-ee-pwrc: add support for the Meson GX SoCs

 Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml | 102 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------
 drivers/soc/amlogic/meson-ee-pwrc.c                                | 112 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------
 include/dt-bindings/power/meson-gxbb-power.h                       |  13 +++++++++
 include/dt-bindings/power/meson8-power.h                           |  13 +++++++++
 4 files changed, 214 insertions(+), 26 deletions(-)
 create mode 100644 include/dt-bindings/power/meson-gxbb-power.h
 create mode 100644 include/dt-bindings/power/meson8-power.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
