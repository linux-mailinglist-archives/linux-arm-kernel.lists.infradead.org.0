Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A572923A08
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:29:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9TLkZ4iguw3wH5cDQDnHceDt4C0e/hMIzmMXED6plCI=; b=TrGujS9qeWutfS
	saQyoJTz4Fj3KXpU3CLGOt87x+eTkiScfzrLsTB8vVyAQG52N0L+te8BiaHE0hfkq5F4mpyxcL+vJ
	Xko0wyM4Y4+iF6wXP6rxCXUcTI/TH8omE1q3Iv1qtecnxKeNvwS4DQVyQbbTAtl+r+kUzIyriUnuf
	EWPox7S/+U2URhngJFn9jr4JD4SThrjXaB5Wx7oZ2sc8nuE8ba4qn6P2klSq/R4Ww53E0apZDeWp/
	LUjQ8V2533sI7Qc8aWuOg55VLKszMijj0+DvyD1vkt/N0zCj6LPTD2vF/0e8+CJeIhcXAYcqT9kYs
	6Uv7Al3BxioC6d9HVBVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjIL-00074q-9o; Mon, 20 May 2019 14:29:41 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjIC-00072X-0z
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:29:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id j187so13288239wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Og70WNEmTdPgbTBwIRYC9peTJhdQFaT0tNDc4FieJXc=;
 b=TPP9KpyDP5vFcpOUw/yQA9W/7WkWxhJ4C6bvuAOIO3Zd0xodBwQeHmJmrNhVxvJxSo
 9zcZepW+8OAYij4hDgHL3mkM7ndI03U2r2xQ947iq9uKcTTvVsTOicx8U3JWR+B5mtYs
 kRjSzpEVreiB7QeDqbcDthFHNLT8jD3pnVltpt5RnmnR237hjSdNlV6eOZfRseDWe8db
 hud0mwJpNHZvTjE88JeRa73DbQkJSLBILJ384Um7aGGmOV2sziedkUkBknuTBPwkC8u/
 gx/ADw6WALNpBA8IPUUm8ZD0scgLV7XSQ/xZU66lEjzzWhbLJNAOabWbDrIoB17zkNkF
 Lg4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Og70WNEmTdPgbTBwIRYC9peTJhdQFaT0tNDc4FieJXc=;
 b=TeTrd6rzPLbXeeGdEqcrBGrhldIqRCtLBc3sA2CJQlGjEkmmkk2RHG3a4XJNK+gebs
 qPOkOJTVLEf5JEUsClCg/+5NmV7z/S6De58jMRSLjaQsyLYKbZ9kDn0eH44gCfHQxV9+
 xoW3UrhN6Si7jhIlHRcPvgq2pmdhyd7HV6QK7KLFzKAxy1qoK/3DqFgN2Ei+VtdpZL6t
 NUab0j0FbL1bmvcGNP2oxdvnc+qNLxdybmI3Ymmp1A0LiEJi4b+Bs1d1aLgPn3Ww1ywe
 fCuDfizLHThXI9Gf3p13KT560wpQC+Cm7EhaIUpMPJ8jJPJ3FHdnXnFj5rnVgL7VWWGy
 PmGQ==
X-Gm-Message-State: APjAAAVBCdQ1IGfdfj10YZbc0fwaQLbbN1XSGK03B3WwitMA47aaeb5d
 4fY3YbnagrT+agMzgal2ukEmAA==
X-Google-Smtp-Source: APXvYqzY3iiWaTBWNafX3BRMqsugNaiEAhJbQ39kbQ1xWgZg6oMj3evRkAqgQhnoNxmYWAjvj5Cjfg==
X-Received: by 2002:a1c:a695:: with SMTP id
 p143mr12584472wme.128.1558362569098; 
 Mon, 20 May 2019 07:29:29 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q13sm17750808wrn.27.2019.05.20.07.29.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:29:28 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/meson: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:29:27 +0200
Message-Id: <20190520142927.1009-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_072932_067786_6A47ADCA 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_crtc.c      | 15 +--------------
 drivers/gpu/drm/meson/meson_crtc.h      | 15 +--------------
 drivers/gpu/drm/meson/meson_drv.c       | 15 +--------------
 drivers/gpu/drm/meson/meson_drv.h       | 14 +-------------
 drivers/gpu/drm/meson/meson_dw_hdmi.c   | 14 +-------------
 drivers/gpu/drm/meson/meson_dw_hdmi.h   | 14 +-------------
 drivers/gpu/drm/meson/meson_plane.c     | 15 +--------------
 drivers/gpu/drm/meson/meson_plane.h     | 15 +--------------
 drivers/gpu/drm/meson/meson_registers.h | 12 +-----------
 drivers/gpu/drm/meson/meson_vclk.c      | 14 +-------------
 drivers/gpu/drm/meson/meson_vclk.h      | 14 +-------------
 drivers/gpu/drm/meson/meson_venc.c      | 14 +-------------
 drivers/gpu/drm/meson/meson_venc.h      | 14 +-------------
 drivers/gpu/drm/meson/meson_venc_cvbs.c | 15 +--------------
 drivers/gpu/drm/meson/meson_venc_cvbs.h | 15 +--------------
 drivers/gpu/drm/meson/meson_viu.c       | 14 +-------------
 drivers/gpu/drm/meson/meson_viu.h       | 14 +-------------
 drivers/gpu/drm/meson/meson_vpp.c       | 14 +-------------
 drivers/gpu/drm/meson/meson_vpp.h       | 14 +-------------
 19 files changed, 19 insertions(+), 252 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
index 5579f8ac3e3f..a8416b6b7782 100644
--- a/drivers/gpu/drm/meson/meson_crtc.c
+++ b/drivers/gpu/drm/meson/meson_crtc.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
  * Copyright (C) 2014 Endless Mobile
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Written by:
  *     Jasper St. Pierre <jstpierre@mecheye.net>
  */
diff --git a/drivers/gpu/drm/meson/meson_crtc.h b/drivers/gpu/drm/meson/meson_crtc.h
index b62b9e51764d..4f0f212e51db 100644
--- a/drivers/gpu/drm/meson/meson_crtc.h
+++ b/drivers/gpu/drm/meson/meson_crtc.h
@@ -1,21 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2014 Endless Mobile
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Written by:
  *     Jasper St. Pierre <jstpierre@mecheye.net>
  */
diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
index 72b01e6be0d9..26be64b94237 100644
--- a/drivers/gpu/drm/meson/meson_drv.c
+++ b/drivers/gpu/drm/meson/meson_drv.c
@@ -1,21 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2014 Endless Mobile
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Written by:
  *     Jasper St. Pierre <jstpierre@mecheye.net>
  */
diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
index 9614baa836b9..0d27556f2838 100644
--- a/drivers/gpu/drm/meson/meson_drv.h
+++ b/drivers/gpu/drm/meson/meson_drv.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
  */
 
 #ifndef __MESON_DRV_H
diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
index 779da21143b9..a42a15b87974 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <linux/kernel.h>
diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.h b/drivers/gpu/drm/meson/meson_dw_hdmi.h
index 03e2f0c1a2d5..4e48b5e0ffe8 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.h
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
  */
 
 #ifndef __MESON_DW_HDMI_H
diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
index bf8f1fab63aa..9f6070c4386c 100644
--- a/drivers/gpu/drm/meson/meson_plane.c
+++ b/drivers/gpu/drm/meson/meson_plane.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
  * Copyright (C) 2014 Endless Mobile
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Written by:
  *     Jasper St. Pierre <jstpierre@mecheye.net>
  */
diff --git a/drivers/gpu/drm/meson/meson_plane.h b/drivers/gpu/drm/meson/meson_plane.h
index e26b8b0aa1fa..1a414284d6b8 100644
--- a/drivers/gpu/drm/meson/meson_plane.h
+++ b/drivers/gpu/drm/meson/meson_plane.h
@@ -1,21 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2014 Endless Mobile
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Written by:
  *     Jasper St. Pierre <jstpierre@mecheye.net>
  */
diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
index cfaf90501bb1..5ba1b599c5cf 100644
--- a/drivers/gpu/drm/meson/meson_registers.h
+++ b/drivers/gpu/drm/meson/meson_registers.h
@@ -1,16 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
  */
 
 #ifndef __MESON_REGISTERS_H
diff --git a/drivers/gpu/drm/meson/meson_vclk.c b/drivers/gpu/drm/meson/meson_vclk.c
index b39034745444..69e2bebd6bd5 100644
--- a/drivers/gpu/drm/meson/meson_vclk.c
+++ b/drivers/gpu/drm/meson/meson_vclk.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <linux/kernel.h>
diff --git a/drivers/gpu/drm/meson/meson_vclk.h b/drivers/gpu/drm/meson/meson_vclk.h
index 4bd8752da02a..444216649e6b 100644
--- a/drivers/gpu/drm/meson/meson_vclk.h
+++ b/drivers/gpu/drm/meson/meson_vclk.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
  */
 
 /* Video Clock */
diff --git a/drivers/gpu/drm/meson/meson_venc.c b/drivers/gpu/drm/meson/meson_venc.c
index 6faca7313339..bd3bb436ce37 100644
--- a/drivers/gpu/drm/meson/meson_venc.c
+++ b/drivers/gpu/drm/meson/meson_venc.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <linux/kernel.h>
diff --git a/drivers/gpu/drm/meson/meson_venc.h b/drivers/gpu/drm/meson/meson_venc.h
index 97eaebbfa0c4..9ea56b7607fc 100644
--- a/drivers/gpu/drm/meson/meson_venc.h
+++ b/drivers/gpu/drm/meson/meson_venc.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
  */
 
 /*
diff --git a/drivers/gpu/drm/meson/meson_venc_cvbs.c b/drivers/gpu/drm/meson/meson_venc_cvbs.c
index 2c5341c881c4..d24ef94c7fe2 100644
--- a/drivers/gpu/drm/meson/meson_venc_cvbs.c
+++ b/drivers/gpu/drm/meson/meson_venc_cvbs.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
  * Copyright (C) 2014 Endless Mobile
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Written by:
  *     Jasper St. Pierre <jstpierre@mecheye.net>
  */
diff --git a/drivers/gpu/drm/meson/meson_venc_cvbs.h b/drivers/gpu/drm/meson/meson_venc_cvbs.h
index 9256ccf9d931..2c6d9006c391 100644
--- a/drivers/gpu/drm/meson/meson_venc_cvbs.h
+++ b/drivers/gpu/drm/meson/meson_venc_cvbs.h
@@ -1,21 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2014 Endless Mobile
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Written by:
  *     Jasper St. Pierre <jstpierre@mecheye.net>
  */
diff --git a/drivers/gpu/drm/meson/meson_viu.c b/drivers/gpu/drm/meson/meson_viu.c
index b59072342cae..f8e032df17bd 100644
--- a/drivers/gpu/drm/meson/meson_viu.c
+++ b/drivers/gpu/drm/meson/meson_viu.c
@@ -1,21 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
  * Copyright (C) 2014 Endless Mobile
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <linux/kernel.h>
diff --git a/drivers/gpu/drm/meson/meson_viu.h b/drivers/gpu/drm/meson/meson_viu.h
index 0f84bddd2ff0..2b9b30655fac 100644
--- a/drivers/gpu/drm/meson/meson_viu.h
+++ b/drivers/gpu/drm/meson/meson_viu.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
  */
 
 /* Video Input Unit */
diff --git a/drivers/gpu/drm/meson/meson_vpp.c b/drivers/gpu/drm/meson/meson_vpp.c
index 8c52a3455ef4..a03ce09af8a3 100644
--- a/drivers/gpu/drm/meson/meson_vpp.c
+++ b/drivers/gpu/drm/meson/meson_vpp.c
@@ -1,21 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
  * Copyright (C) 2014 Endless Mobile
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <linux/kernel.h>
diff --git a/drivers/gpu/drm/meson/meson_vpp.h b/drivers/gpu/drm/meson/meson_vpp.h
index 815177cc7dfd..de7cea1985ad 100644
--- a/drivers/gpu/drm/meson/meson_vpp.h
+++ b/drivers/gpu/drm/meson/meson_vpp.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (C) 2016 BayLibre, SAS
  * Author: Neil Armstrong <narmstrong@baylibre.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
  */
 
 /* Video Post Process */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
