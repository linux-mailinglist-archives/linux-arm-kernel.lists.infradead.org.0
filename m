Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA76E236F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 21:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aTF+4u3MELAqDznpVfhZtlXR7RfFSiuCXLlOTEF02t0=; b=dIQKJFmYBTC/xy
	lcyV8Z41FiRtaTQ6E5Up4K3KuaDFyyIJWZHmgN4Lbehm7ts7DqGmowk5z30oo2BVVXZbB8IRJPWd2
	oppYWW283WELwyuNojJIocHI/xh4A3vfH714Rxvl9pJbf7ga7wajTxcx9/D1+O+W2AwheBHI82t6o
	ARiQ0PRz1s3jarkgKW25d7L5hybVD2YrCjIlEhOk2oN8Yl3xnkyaMbjebC7WkCvOLzAjrlJG0QLn8
	rQ1XOCU2sPOfgE1p+E96Hq20bhNuFYayA+tGy4IEYfb933VIvPH5EJlYC8BtK2Vxoe8yFV9rqhzva
	Oj9gn+gTq0xE1Xt93nig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMfV-0003EL-Ij; Wed, 23 Oct 2019 19:51:41 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMfM-0003Dm-Ci
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 19:51:33 +0000
Received: by mail-yw1-xc44.google.com with SMTP id a67so4171948ywg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 12:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JKxzTkPUnLBEMDTwoJW4PDaivqT9rS13Dxxf3jk+VxQ=;
 b=akx8r6jT3I/V5VK3DFavJjpWCKXwwJ54pN/CwmMI0RlJyZXFn/JghN8q9eMkILt3Bj
 oti1pmNbQckNpl/EOB+0rvU43Jkp64k2lwFauXbNzIFglRxrjixYWv+/9vFbz4FSx7xt
 aCMFM4zSJU68ra8kLEV0pq7q1NvvpRqI6rsXzt5dWB2ohv+oXhO9pJPUPI1oF1oem2Sw
 rq6JfMoGgw5JXRYPA0jreainYMEzVFOeuSrMGwoUZa7igdExt3DSBSdtEL+p6xVDcD5S
 WXwlEWUgilxeHrI8+MHumVZ3Yo5yQmHsNzu+kRSyX06v+n31hCwfQH3eiyoGwvdDwwGE
 cHtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JKxzTkPUnLBEMDTwoJW4PDaivqT9rS13Dxxf3jk+VxQ=;
 b=VWoL9/RPpmDRckXDEclIw1CvCVXfrmR1NpLK1QGMjxzZq4MZTSvi9AwxK0qoHJ/NJ3
 lvpfrdwPCF5ICYUBmEPesMeCrxY6MOrt9znYN6thXTcudcsah2mesUxvdqgwZlMx3EVW
 zsiVJENF+H6fesxRY6sQ0MqaRP6RU3BB1gPpyI06rwlYMKPVYJAusfoXaMWUdvWUCxZp
 OhlWkrINBVO0bBWiBVz0pDQEgdPqesZw96X2/64Czee37PjJXFxu2BVLrUooukyjsUus
 +RVzKbLCJt4mRXB64MJWbvPBGUGpaqmZFzDcQ0zEwVpOKMnHmLitYwZPlY8GjZhYAnSA
 F4QQ==
X-Gm-Message-State: APjAAAU3YHZBGNwfn1+YBCjFcPA8YA+o23sTHXdmrNmqWF2v3oOp9SMc
 8bcMGIZIi9AUAaRmAuQcBGPb3w==
X-Google-Smtp-Source: APXvYqxMQsj3ijgyrWt7i52xtn9PuwOHnFfUuiHehIa12RuB5Pietb4A88Y+G276WQTvDzHNA0Sbfg==
X-Received: by 2002:a81:a042:: with SMTP id x63mr4309899ywg.301.1571860290828; 
 Wed, 23 Oct 2019 12:51:30 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id i190sm3863706ywg.1.2019.10.23.12.51.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 12:51:30 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/mediatek: Add RGB[A] variants to published plane formats
Date: Wed, 23 Oct 2019 15:51:17 -0400
Message-Id: <20191023195129.165775-1-sean@poorly.run>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_125132_494449_9BA6B780 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Daniele Castagna <dcastagna@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Matthias Brugger <matthias.bgg@gmail.com>,
 Miguel Casas <mcasas@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, CK Hu <ck.hu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

These formats are handled in the rdma code, but for some reason they're
not published as supported formats for the planes. So add them to the
list.

Cc: Nicolas Boichat <drinkcat@chromium.org>
Cc: Daniele Castagna <dcastagna@chromium.org>
Cc: Miguel Casas <mcasas@chromium.org>
Tested-by: Miguel Casas <mcasas@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_plane.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index 584a9ecadce6..49d59470cc11 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -20,6 +20,12 @@
 static const u32 formats[] = {
 	DRM_FORMAT_XRGB8888,
 	DRM_FORMAT_ARGB8888,
+	DRM_FORMAT_BGRX8888,
+	DRM_FORMAT_BGRA8888,
+	DRM_FORMAT_ABGR8888,
+	DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_RGB888,
+	DRM_FORMAT_BGR888,
 	DRM_FORMAT_RGB565,
 	DRM_FORMAT_UYVY,
 	DRM_FORMAT_YUYV,
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
