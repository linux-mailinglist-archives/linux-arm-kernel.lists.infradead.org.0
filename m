Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 899895AF08
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 08:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZW18lNBbZvYG+auwrotXSLBDw89ELNv5FPWSLARDz4=; b=RUZTToyK7lT0Bk
	QT+4PO14AhMwSQal3FcPqs2niVpbsB9dmrJBFyYxQwE1hEP/8oGvwoDCCJMc3R1Zg5VLiyNYb1wXL
	Rb8OUSeULR2pPF1rnFSVDTF7ZXmzrVOZTgij54nZf0D5R0Hg83LAhyhBgf746xYQgMhCjbrZ4WqaC
	+TuSQo++aEc25CBmLfIMDeV8BBDoU7Ii+HXP1zSya7Q7BkbUWUP79qsU3g0rGQgV9idW4ZvgG3eoP
	Yl99iVn8dCkaqH5fQH+7GPKDGL/o9b7zwFtidSXN/BKUVYhPQ8LG6pkW/QghTQ4HAjdoCbJqPjaZ3
	0yJfkf7gEuhw3kN7oV6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhTDl-0003r8-Gz; Sun, 30 Jun 2019 06:21:53 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhTBp-0001S1-P5; Sun, 30 Jun 2019 06:19:55 +0000
Received: by mail-lf1-x144.google.com with SMTP id d11so6608195lfb.4;
 Sat, 29 Jun 2019 23:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NRQqH8KKPivwbK1JiqlDpdz8EUe27AJRtHUa7fDbA5g=;
 b=HZ8+EWA96aI61r8BZjUIgsaowhCr0AiTZy8SlTXjvO8Cu1bUsAO5xHvQAMB3E488aS
 ULIcS2uJ1oxC9q253HFfZF7nVOyNvwODJG3/16jMlSYd/rckjlaHPRucdM479BGqq80B
 5tLdU67HFKdTsni9OV8YN6Xep3omfqeVJnyucEGrqSrPmoby+j3vgcxdvR0h72zGYf0N
 FoNtcfHEYqiPOgtmWMb5oJQe6gObuOvaUqoBytYpuUQaka7F531VlxGRficon1HhHPc8
 lIcLRnhdNgPSs+rtzUL+8gh5+W8gSu1hQ2PVPa/f5xFpDym5/QSMPYLGGqsciT63PFHQ
 mM0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=NRQqH8KKPivwbK1JiqlDpdz8EUe27AJRtHUa7fDbA5g=;
 b=ofnrGJlSHvoeym90DAvVeCYYkNiEy91PEg+iaC1lCAjqKqcF3uYGElSi2zts5awaNG
 LisvtDPf1cSgSAiwQEdMVbIzMC+TnbzuOP5aGljvaOA8lMJxDD1zeYwPsDL3gt8usJTh
 vx+ihsSAYudvpvStwDQd+j1fgUsXupWaAPctbiYC1bqdFVxKHrZfVnywk+z2aCWf2mXx
 NZD8FkPEniyTt05Jf3I5vDKvjOn6fRjE3vJuEsW5Rwvb8AMk6wQeAeKPcD3Mk9iTGEXA
 37+SSHufGJbu28l/YNSgjuKijwSP4IVQ1ttYYD7Oc5XA5bUGYtSYdYvl+mkJPOjrR/eV
 kHmw==
X-Gm-Message-State: APjAAAX/3npUg49QjNNCPIIhurGaypvqeIcBk6WNlsbGA13Rq/Nfa2/i
 OKG3xXa0tpVOleUL0qEJ8DU=
X-Google-Smtp-Source: APXvYqwYkUyG4LBVcXZ9u45Iylkg7KMjH992e8iWGnYyXFZUK7nYLKeM7PuDsTESYAjR52lDQ/bzNw==
X-Received: by 2002:ac2:4839:: with SMTP id 25mr8825007lft.79.1561875592199;
 Sat, 29 Jun 2019 23:19:52 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 o74sm1794024lff.46.2019.06.29.23.19.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 23:19:51 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v1 24/33] drm/i2c/sil164: drop use of drmP.h
Date: Sun, 30 Jun 2019 08:19:13 +0200
Message-Id: <20190630061922.7254-25-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190630061922.7254-1-sam@ravnborg.org>
References: <20190630061922.7254-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_231953_842565_4424C404 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Harry Wentland <harry.wentland@amd.com>, Liviu Dudau <liviu.dudau@arm.com>,
 CK Hu <ck.hu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, linux-mediatek@lists.infradead.org,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop use of the deprecated drmP.h header file.
Fix fallout.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: CK Hu <ck.hu@mediatek.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Harry Wentland <harry.wentland@amd.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
The list of cc: was too large to add all recipients to the cover letter.
Please find cover letter here:
https://lists.freedesktop.org/archives/dri-devel/2019-June/thread.html
Search for "drm: drop use of drmp.h in drm-misc"

        Sam

 drivers/gpu/drm/i2c/sil164_drv.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i2c/sil164_drv.c b/drivers/gpu/drm/i2c/sil164_drv.c
index 878ba8d06ce2..8bcf0d199145 100644
--- a/drivers/gpu/drm/i2c/sil164_drv.c
+++ b/drivers/gpu/drm/i2c/sil164_drv.c
@@ -26,8 +26,9 @@
 
 #include <linux/module.h>
 
-#include <drm/drmP.h>
+#include <drm/drm_drv.h>
 #include <drm/drm_encoder_slave.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/i2c/sil164.h>
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
