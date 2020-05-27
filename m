Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA0D1E491B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4f8U3phSU46saa6JkGpf1GAF6m+51xQqUcOT3GwWzWs=; b=u1Eg5lJQSJhHbb
	PuKlKrJA1HVLcgQ3mk0sD7YGFijXSWrCD+VzoJyktegelkCn/X6tatmW6jVNl6iHnoh8TMPXtK7QM
	2kmhsqYGTawgdh+czL+yFzjd/sMYiE9f995ysrjlw45naXheOAyzACyNhq/NPyaWr1IiwCDljIRwQ
	hI+ExF6C5hcwciUxReuS3Ahp6Kv0m9fC6M2ds7dy+B7ZPx7sA++Q4jQ/I+CQHpcOIRE/EJL7Vcv2U
	JiG+KENKCWnUBUnYf06emAyvmEwG2ofdqbrAxoe+DVN3YsTn2NtwBGmpt7cpTednWGlRAljQup+ht
	zHVM5Lye5hDqH6RI3uww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyWR-0006AF-Gu; Wed, 27 May 2020 16:03:15 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJD-00067q-L0; Wed, 27 May 2020 15:49:38 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 95A4F582007;
 Wed, 27 May 2020 11:49:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=9VNSPM39dPjV/
 5EKHPEmX5F0pfjtv/pW8b8YIRJwQsE=; b=Zu2ERzNbysuyjRUW9ui7IOax81fJn
 /PuKKzKalOtkCUNlbWOtj/awsnqJMz5hfCLySk4u2DdholnRmwlJOzECoclBO1Ll
 m/1vSvCub4hMOknEiRfnSx1Uh6eF5ZxWUqNbual67rDF7LZskuaOhhiBKE08GZxj
 o/EchnMpcZiD6Vr5raNkNp6lIlEnTZcLKSDvda46Jvh70ZUyKf8mSVIDxLs9QxUd
 sMsWGCe4JDnK4btlzDe97w6VWiTvv1oIPiFG3masPYVS8j0x4furil5JP/Tuq+7Y
 2Hy6lQwIQKZ4Q4z6QAW8oxJvaWnEayP1D9viwssMLIv1eY5FQ7qx7Yi0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=9VNSPM39dPjV/5EKHPEmX5F0pfjtv/pW8b8YIRJwQsE=; b=TGcyIT+6
 ZJksWnbv04zfv4ORiD9qWzVEvqr5FW9haI32kWovSBeWt0Mfm/f0Le1mXsxHpErc
 9lBSifKVS3jaGEpQDsga7l0P4MMdKoaWD94IC4ncHRtTphGXNytbPybU2NqDUd+T
 tW4kstJWIMZIJJE1Nt8a3k9BhJyzenL+KwX6IETBs1/xd9dRt0vMEaXAIjrWO3Nw
 otNmRPqgiRbdP5l8S+nK8iOQAnygZtW3U2c0SKRZiDgnQ7N5ViToy1iNYPbSyACy
 xL74QIq1sy9ZJccKLspswGfnUMGDK5ME3bKjuR94wRHeO2RYYqHCC4vV5a/wyPv/
 dTgV80+s0eD8Dg==
X-ME-Sender: <xms:DozOXghRpF60Ats_V7Pkd_YqvkD-DOcLC2keMa3KmBPbnQJ710-HKQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfedune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:DozOXpDMGdhqpWrzgU4B46gDGudNCfHulI-g2mhR3I7P5YVaw2xWqg>
 <xmx:DozOXoHR5Zyv2niY-HoCGqBlEO8skX2XC9qxvxnbwu4WQC9hjqSFtw>
 <xmx:DozOXhSG440H8499WEPUXZCmFm6n9nEI-v1FHoWWk4d63jBI30TrBQ>
 <xmx:DozOXsyaz7VNj9GjcpHT0DqV2ZcxX2YHJfBhSqz-Vp3dIRiNUV5zjw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 052973062499;
 Wed, 27 May 2020 11:49:33 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 011/105] drm/vc4: drv: Add include guards
Date: Wed, 27 May 2020 17:47:41 +0200
Message-Id: <68e89e315c4c35b313efc277c9642eca684e0ade.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084935_897427_B70D517E 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

vc4_drv.h doesn't have any include guards which prevents it from being
included twice. Let's add them.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 3b1f02efefbe..6f50a91e3933 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -2,6 +2,8 @@
 /*
  * Copyright (C) 2015 Broadcom
  */
+#ifndef _VC4_DRV_H_
+#define _VC4_DRV_H_
 
 #include <linux/delay.h>
 #include <linux/refcount.h>
@@ -897,3 +899,5 @@ int vc4_perfmon_destroy_ioctl(struct drm_device *dev, void *data,
 			      struct drm_file *file_priv);
 int vc4_perfmon_get_values_ioctl(struct drm_device *dev, void *data,
 				 struct drm_file *file_priv);
+
+#endif /* _VC4_DRV_H_ */
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
