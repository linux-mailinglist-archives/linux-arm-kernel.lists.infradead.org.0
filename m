Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E281E4128
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+rtyxoWP41l92qzFm/TADVATRa2ADI7nkMKn+cWKlhc=; b=dkS6wClxE/URhC
	K2v+66wPDABLey8jIu6dzLJfwGOk5VrhIcaHuE81Tet0ME0/J3ZLU0fIlAjGmQzt8hY/MWOJQMgKu
	f6KciTD/yRWU7G2M6lvrPOAcPo6di3+FycGKLYpdan9LDR5fRpiUV0WhALeUY4Zj3PEF2ZYnE6Cjr
	NRyPoFWujSuYSEno8PDSNEJHyjOjsPK5L5bXJIQNqtqImz5CiSwEU8Jar5R0C5kkylOIBAGpeJGLk
	BxRhzFS+dkMnlgRMaI8ienYkwb+VDlR6ilLH7hXaUpEox7RgbJUB85kyjhTrPwWbZgwVAo9JCb940
	gWxmzNF6jRmE4Vhf0DBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdumJ-0001QI-20; Wed, 27 May 2020 12:03:23 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudj-0006oW-CX; Wed, 27 May 2020 11:54:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 16DC5AD17;
 Wed, 27 May 2020 11:54:32 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 19/50] staging: vchi: Get rid of unnecessary defines
Date: Wed, 27 May 2020 13:53:24 +0200
Message-Id: <20200527115400.31391-20-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045431_576243_0E9419A6 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 laurent.pinchart@ideasonboard.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Those defines aren't used by anyone. Get rid of them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h   | 11 -----------
 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c |  1 -
 2 files changed, 12 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index a369feb3a448..bf0c7a496f5a 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -11,21 +11,10 @@
  * Global defs
  *****************************************************************************/
 
-#define VCHI_BULK_ROUND_UP(x)     ((((unsigned long)(x)) + VCHI_BULK_ALIGN - 1) & ~(VCHI_BULK_ALIGN - 1))
-#define VCHI_BULK_ROUND_DOWN(x)   (((unsigned long)(x)) & ~(VCHI_BULK_ALIGN - 1))
-#define VCHI_BULK_ALIGN_NBYTES(x) (VCHI_BULK_ALIGNED(x) ? 0 : (VCHI_BULK_ALIGN - ((unsigned long)(x) & (VCHI_BULK_ALIGN - 1))))
-
-#ifdef USE_VCHIQ_ARM
-#define VCHI_BULK_ALIGNED(x)      1
-#else
-#define VCHI_BULK_ALIGNED(x)      (((unsigned long)(x) & (VCHI_BULK_ALIGN - 1)) == 0)
-#endif
-
 struct vchi_version {
 	uint32_t version;
 	uint32_t version_min;
 };
-#define VCHI_VERSION(v_) { v_, v_ }
 #define VCHI_VERSION_EX(v_, m_) { v_, m_ }
 
 // Macros to manipulate 'FOURCC' values
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index a1995d1e5180..5183aff453eb 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -32,7 +32,6 @@
 
 #include "vc-sm-cma/vc_sm_knl.h"
 
-#define USE_VCHIQ_ARM
 #include "interface/vchi/vchi.h"
 
 /*
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
