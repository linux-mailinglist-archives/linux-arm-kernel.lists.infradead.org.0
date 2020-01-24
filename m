Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 547E2148B91
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 16:56:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hSvHKBnkzjDYBFWXcObaOKk6EF5RfnCaj59JUG5Osuw=; b=KVfsMI7VcBp8bk
	rqxfxmpL6/IriPFv8/ExCjCLy4iE+9COW7Q3L9UvM3yWaSkhy5ZmIhFKwYuuN0JTKJMXy2T2z2wK4
	c0Wduf7DaFkPKRo//e57TtDR+gtYV8FTabWjCFHwqxoWGouQEItcLT9oDMfoqlZO5nEwxSdIWDHLf
	k+Rs4cSbPeeRSb95Nyg/aQxJU2no7UkVOBolEy0V2jiyjm9JclVPstr9elhFgQSZDs0fBAS0Yyh2D
	l8tDUqHcbTXc5gdMLPn0fAdQaWnYxf5EhhXwjvemBOQ3xflza+so0IEb19JoyM1xX/LbfTymW6+/h
	Uhe0AAYlswFJifw1Uxsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1KF-0006vG-2i; Fri, 24 Jan 2020 15:56:51 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1Jy-0006qm-Po
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 15:56:36 +0000
Received: by mail-wm1-x344.google.com with SMTP id t14so2170983wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 07:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=V49eDPK1RxI7emBI+6HyeraP6a4Pl1g4ihe19+WEXsY=;
 b=f5s52TMqkN1hbJ3m5ijqyd1gugwRwZpdSNUp1MQSSmlD8acxtb8qMPMqY+YlkeZbRe
 rqIiRm+1Ir+uDuyTpH03cKGdd0/IOmev1vdc8WzOY+NXUHUk64po6g7kBQM+P+/5jx5n
 t9TJcXt/1N1buCmKdGcx3wDMxosIQbuobG7Qa94dLuaBLkCNRePhNzbt+QXiWlVvCE++
 yIZib1d7pLRcX+LoRtLoqAEJyDTzK3mBLzUR6asIZ6NxZYwlqK51ANAYOlQnYoHD35s6
 jVXqktOIgMSmu0UY4PfLbRjE7AfCZALcdJg+g0K8SbQgS7ikMPSUAXOPg7tBAqg1qrYv
 /yfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=V49eDPK1RxI7emBI+6HyeraP6a4Pl1g4ihe19+WEXsY=;
 b=YbRodkYIdrvStWlviRmQKH33Bl+zAmbopWGFCT30y5FhRzU7dKsPEfUK9vOLH+WmuL
 RtyuGPPqFrU1Qj/ZndjA8bH6Selphpw72Cg39vTRLTOk4iadV4s5eSr5F7SLaKqmr3ie
 ZGgEO4Ex0DiGu7ZM2k+JbHzEYXM7ObehGmHEBsXAOHlQSB3oCiyzdGatQioqgfWayrNs
 lCtPsJPH05Vv6taoz6Z03+GQnBUVtFGFHrlffUelx2NIlLppC/udiwg6wooKNhfSOERW
 6Md/3wtVKwI2PYlToyXuRifGox2rE2Segx2cvXKr0p1jjuKyv49bELLjrOOOWkKwnnPp
 zDnA==
X-Gm-Message-State: APjAAAXdhv04eZy99f21W2sQHulomBKQflSH+KTWjGLqcRihiyyX2HWj
 spuW4DFnPWzaL1Mxqn1GJTeJcw==
X-Google-Smtp-Source: APXvYqx+CLEXqR1mcb4MPoapn3ds/D4SG19ISlv2DzH7K9vKhU+RbFsjo7t3xTGQRetT6MTAJtYeSA==
X-Received: by 2002:a1c:a9c3:: with SMTP id s186mr1938216wme.64.1579881393333; 
 Fri, 24 Jan 2020 07:56:33 -0800 (PST)
Received: from mjourdan-ThinkPad-T480.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id i204sm6121979wma.44.2020.01.24.07.56.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 07:56:32 -0800 (PST)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH] media: meson: vdec: don't resume instantly if not streaming
 capture
Date: Fri, 24 Jan 2020 16:56:31 +0100
Message-Id: <20200124155631.7063-1-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_075634_984670_6F6F46B0 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case userspace configured the capture queue before the source change
event, do not resume decoding instantly if it wasn't streamed on yet.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
---

Note: this patch is based off Neil's series:
[v4,0/4] media: meson: vdec: Add compliant H264 support

 drivers/staging/media/meson/vdec/vdec_helpers.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/staging/media/meson/vdec/vdec_helpers.c
index ff4333074197..a4970ec1bf2e 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.c
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.c
@@ -417,7 +417,8 @@ void amvdec_src_change(struct amvdec_session *sess, u32 width,
 	 * Check if the capture queue is already configured well for our
 	 * usecase. If so, keep decoding with it and do not send the event
 	 */
-	if (sess->width == width &&
+	if (sess->streamon_cap &&
+	    sess->width == width &&
 	    sess->height == height &&
 	    dpb_size <= sess->num_dst_bufs) {
 		sess->fmt_out->codec_ops->resume(sess);
--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
