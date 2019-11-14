Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCE0FC757
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 14:25:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=llAXi8rPyhMYcZ03XsEjWSVJfiaKoYI8s69YyK/eGcw=; b=saP
	xjH3FEDrfpb2KhKK1FK8gn0QITs4FGsYYYevKfbRJBB0NTIjL7eBOw5Y9ym//OvhYy6N5sIOFV5+N
	oDZuCGU/Y3amS5CsmmbTlwsA+1ob8q1QI3VTA7akDgDrLrrYLoWPJz6sonmdO5sDGhTg6xK1L1sd/
	MpR3qE3jeJo0pJziUpx0WN1Xr3p3oxBAuuYkPmDeQfHY9pB5b593HwBD8l3RQid+H3APO/h+XMkzi
	jUNxUDHRWsJI+OiN9XJO5quQMvdHgLy8QiNZD6s41+DSI0v44JZYMxmxZELLRK/F3R9f8DGaY4sni
	9Yp1LTUWJEQE+Sf5iN1qtdKXGP3WA1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVF80-0000Wl-6X; Thu, 14 Nov 2019 13:25:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVF7n-0000WN-B6; Thu, 14 Nov 2019 13:25:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id 8so5891261wmo.0;
 Thu, 14 Nov 2019 05:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=q25FqYYq1HlyGPjqgeEbhuqnD600bhraE2cbn15efDk=;
 b=Rds8wS/qzXNcvC3Yd9f/9XdyvTQZ3Uht/UdVssSaiVWMebYp+LefE9/zU1mQKhPYcG
 rqPaBRv9FIUj1gh70+cLk7DG/OrEI9Zf+eFRgqaRCH+dZam7uZLaGPgmIGf4MQz6UeNy
 BtAq2oFoy958LNz9eMEe0z+wc4DgSymvgksD4Oh9j846cWK2FiE2j66n2K13H+fgH8Y1
 P5Qss2xAvPiMNCGzltZv3vh8w0Kgclob0u9jLh9M2yumRm2YjnEDIOc+njNf16DNfWuP
 nWHjjdqV1qnlKajPHaqXymwBjZ3sKCpaT6Kd70M99pjohJRP0RP0Pf2lcpfp4LdLUw3i
 VPQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=q25FqYYq1HlyGPjqgeEbhuqnD600bhraE2cbn15efDk=;
 b=it1lhfxfkKJcDRakCCAxeqiM0lsU9dDw5RF3ZIE4ppRveP3TyDCZz5xClIwbgkxhya
 1ViTU9Bua6+S2TLbMzzokcgOXKz8uWA5M/ua+OR3aa18lnjbhdUa36jwc7ioVFQM2bRW
 IbAijBPJTxUn+9vctO8xEHeur6MVE6zJQzC6Pok6/suWo4UgEqsorP7LNouGwgJusl2h
 U4BpeO4TTRGkJTna6Ng4XXvF+3v+Jolx5F+/d26p8yiV/iGsHblzBW1+SSc8Ap2IAOEL
 e1zDgq6hH7TLdzNM0h/wet6NkGyONFO2rkti0ieXlBCZMeXOSrwoXRgDc+fvAm+unrjR
 /O+Q==
X-Gm-Message-State: APjAAAU9Ns+GuPpZb/MXtq+IzXdwyNaT9dStVJR1maSumUVnhIYruvpX
 UzGDZjq/pIX6WMGh+0eIrZsomWpW53Y=
X-Google-Smtp-Source: APXvYqxDxppIeOPFqQWV1zapmmqSUALzzrPUav1RgTbEN138v5mV58ouZdmPPao15Uvzkn43K/TCWg==
X-Received: by 2002:a1c:e386:: with SMTP id a128mr8279022wmh.52.1573737925338; 
 Thu, 14 Nov 2019 05:25:25 -0800 (PST)
Received: from localhost.localdomain ([197.254.95.38])
 by smtp.googlemail.com with ESMTPSA id l4sm5897905wme.4.2019.11.14.05.25.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 05:25:24 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, sean@poorly.run,
 airlied@linux.ie, daniel@ffwll.ch, hjc@rock-chips.com
Subject: [PATCH 1/2] drm/print: add DRM_DEV_WARN macro
Date: Thu, 14 Nov 2019 16:25:19 +0300
Message-Id: <20191114132520.7323-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_052527_383770_CC3B6936 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wambui.karugax[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the DRM_DEV_WARN helper macro for printing warnings
that use device pointers in their log output format.
DRM_DEV_WARN can replace the use of dev_warn in such cases.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 include/drm/drm_print.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
index 5b8049992c24..6ddf91c0cb29 100644
--- a/include/drm/drm_print.h
+++ b/include/drm/drm_print.h
@@ -329,6 +329,15 @@ void drm_err(const char *format, ...);
 #define DRM_WARN_ONCE(fmt, ...)						\
 	_DRM_PRINTK(_once, WARNING, fmt, ##__VA_ARGS__)
 
+/**
+ * Warning output.
+ *
+ * @dev: device pointer
+ * @fmt: printf() like format string.
+ */
+#define DRM_DEV_WARN(dev, fmt, ...)					\
+	drm_dev_printk(dev, KERN_WARNING, fmt, ##__VA_ARGS__)
+
 /**
  * Error output.
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
