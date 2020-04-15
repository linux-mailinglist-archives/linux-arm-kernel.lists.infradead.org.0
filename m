Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C2F1A949C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 09:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slEXI/s9j4NZmrccoHIRgwWCo06OzgAeeLLS0Vh+hxc=; b=YhZ0jOJMXZbXSh
	EE4MqIVWP/em656ri4mLGBke/R+87efRHmBqgorpC8TdqC5xgNd2L4I2duzEozepvW86CCTfZC0LF
	buLZ5k+eJtpM4Jh7krhrpdQgSjlf9F856UgaQ13RXZnQIv58DiKXzrrRGbr9n7DLs+5qRtv0YzhyB
	SjzcJtbZgJiY9cpHVm0KFBi+BPDLRD76OAhs7yyBUeJmvVkjhDUDAynuqXHBFjAgThNnjjgdBAGPl
	nQrT887TfIrdL9hevjpWov/B2RzLRrzgzq8NaW/h4KdPZ7eP+2W9LBRm6q0y/36szVSto4LUPm8di
	LCSabEhRAIqW45tlyjWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOcgC-0007sz-1Z; Wed, 15 Apr 2020 07:41:52 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOcfz-0007r8-FT
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 07:41:40 +0000
Received: by mail-wr1-x442.google.com with SMTP id u13so17383461wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 00:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m8LdowvRj6y5F/lzc0z+wTLajfnWKM9lBo0QaQxdrxw=;
 b=dDWOltVkXSOBk1IiL8MGDd4W/Djoa1TmmKBWN/ACzBJhTGB6DVnNb+bdfp7yXv+ILx
 bPVlegHUcpx/jn37fxJlmy6MggQXsKXqt1jbmKh2owgqv35hUekH2fvR07MARNAxxDcZ
 sKHEmL/k4jUdpxWPK3HUwx3VS8Y1uye7JNtWY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m8LdowvRj6y5F/lzc0z+wTLajfnWKM9lBo0QaQxdrxw=;
 b=JLbLfBsYW6HeeuVb97K33Dq+bfCiqppsq2+k+6BDptvfWV+ygrddYtptU3CXrT+I8H
 yu6WQsjRan27zQmn4uy7tVcBgLEFmzHiOFEQQdX7XU6+3X2w6Q5ZcVj8vAskxjy2wE03
 qbE2BStSbqFt8zWP2Pj8PbrRuLMWGSnCsfV9Bu91lBX4MDlwtzuKqojuBNED+yKtJCgq
 jOT3at7BS1DOt9IDwLeogcfHE20WI6p0wIwpOtz9mhE/4aVM744Esj1uf++WOKPAbzU7
 phd5yCklPoxLU+6MgkLvHgI/6Rb0xvE/KjzyhbNcVi8tMbAuVOn7dikAYlSKm67akxcu
 rgdg==
X-Gm-Message-State: AGi0PuafnXBTXQbSs20M4/H7F5iZBrIrq9eOMfXccH7UH+n9VIj+kBV7
 Xqe4pXamsc2Rgkf08UzzdbN0lg==
X-Google-Smtp-Source: APiQypIr7FTFgGbKeiSR3G8G8hKb8rSC1ydf5oz/DSRkwR5KNFKQJDnHsecYRWgMt0sIJI+cp5eSjA==
X-Received: by 2002:adf:fa41:: with SMTP id y1mr26643336wrr.131.1586936495555; 
 Wed, 15 Apr 2020 00:41:35 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:35 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH 54/59] drm/aspeed: Drop aspeed_gfx->fbdev
Date: Wed, 15 Apr 2020 09:40:29 +0200
Message-Id: <20200415074034.175360-55-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_004139_512914_18A14B08 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Joel Stanley <joel@jms.id.au>, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No longer used since the conversion to generic fbdev.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Joel Stanley <joel@jms.id.au>
Cc: Andrew Jeffery <andrew@aj.id.au>
Cc: linux-aspeed@lists.ozlabs.org
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/aspeed/aspeed_gfx.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx.h b/drivers/gpu/drm/aspeed/aspeed_gfx.h
index a10358bb61ec..adc02940de6f 100644
--- a/drivers/gpu/drm/aspeed/aspeed_gfx.h
+++ b/drivers/gpu/drm/aspeed/aspeed_gfx.h
@@ -12,7 +12,6 @@ struct aspeed_gfx {
 
 	struct drm_simple_display_pipe	pipe;
 	struct drm_connector		connector;
-	struct drm_fbdev_cma		*fbdev;
 };
 
 int aspeed_gfx_create_pipe(struct drm_device *drm);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
