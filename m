Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A6A1B7A6D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uU2dkQPJYmiAo9np1MSIqO/hZ3E3m+KwZORJIOlaoxQ=; b=uPpdHAjx/XzPbI
	THEgscQ+bjjAvI97AY2NDHJJgnipYcNaDtl/Og3puMqNf2f5EGFc7jWHdbmWNacDvQSRXeTrxKzwX
	QSULyTBc9amQ9imefPH2yIZUbQ45Z705Q0/R8RJyN341OchSKUow+z0cqPv6Lz9JtQ7rZgSMKTZZX
	aPk3JToOUNGEWJHZjkRnttzFnNJDKRo6kYgdPr16tp8TRhSTyTKw5sKRv417OV9iqp3WTPBQYjbTE
	42rIyoxPkDV8KguO+nBDYO5azSafKVwRjyrp78yl+XVZ08mel5XUOAnr470kX2RMjfCa3VY+oo/Lc
	cTY/PXzObOj+nUjeb8ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0XY-0004TP-8P; Fri, 24 Apr 2020 15:46:56 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0N6-0007wH-Vp; Fri, 24 Apr 2020 15:36:13 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id C400D3E9;
 Fri, 24 Apr 2020 11:36:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ZDDHs6S1gq2LI
 nfVgmp0pHkW/VF7Q7iLnmFsdw8/KiU=; b=r//bO9qIgxdaJSKujrpIRc2odnZ23
 m0spgdGn3TSSH1yiyLwkbAUk5NAcAC3I5empK8aw4TU/uk33ajmezUoX4skp7rhJ
 ilvZp2wQnZtwfPaY0tr3KOE9JV9g3n2zjxjcAS7p1oq1wnEYtljBjjXfjMpwf3PR
 tYvS7oI3KBnU6P6VWewWDaty0Rq+xZkQSOA2osw2pbsDRlsJZKBQ3h1aZnAf6Oc0
 X1ww/Lykmt2wF+Ye51tNlzHhBtztH2KHfr3sU4gfaBqFrkm5DXANgX35i3QlDlsf
 ezSskS46bFAsLz84NKLJnJEznN8FEDoKseWqhSfQWktgFuGAExvkflgrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ZDDHs6S1gq2LInfVgmp0pHkW/VF7Q7iLnmFsdw8/KiU=; b=T6hbr9/f
 JvMhh2zBE3RVRuztK5bIGCwlEzqHvGUgsBJnzFfpr1mLYxU1vkK8VkJpLXdZpMhb
 Vs7zQtYTez8xTm6S9YCscm27PAeYXXomLyXyGUeEwP5I39KAnYtdohsoHoaSOq6l
 HKa1O82lNpYjns5STZ1hPQGj0fA9C5MMvjM05/ctdAsUVxb4T1dsS+Au4VdbrOl0
 LhxD4FmqrUp+MrzfYlzM5gI/faNxj8MbizvcDg7791fixXGN9CH0IZdXwehhViiL
 E/EU8Ey8WyulVogAAE3tazAY6wgPDOWw3b34eC/XsPTNuo3urBIulaQCmX6XvGD3
 cdAijCp/ACbbzQ==
X-ME-Sender: <xms:ZwejXoa5z1yHEhpuBIMOcLDQonnMn1XslMfpDIeqnGHH17CUwFGBnA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvheenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ZwejXmChnfT6QMbyJZaO6Bqpj_w-zYtFFw3NP7-2fmxSKueeIm_Fkg>
 <xmx:ZwejXieksySxOwa-RPe1eSlg4Jq3dIh-R-1rDnVyteUJMxuS1FbCZQ>
 <xmx:ZwejXj_icdsdgEwZIDpf5d8qCcxnmjoBWEE8rLyxEtLM0N0qsuOzkg>
 <xmx:ZwejXrIHsmCIfSK9IHIAHNpsPJi7vGkDvaNWD_5nEK-soQ_qU-odYrP_V-c>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 09E68328005E;
 Fri, 24 Apr 2020 11:36:06 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 32/91] drm/vc4: drv: Add include guards
Date: Fri, 24 Apr 2020 17:34:13 +0200
Message-Id: <e460188876bf0d4b3b3a6428a237794907bbb4d4.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083610_531252_14C0B13B 
X-CRM114-Status: UNSURE (   5.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 139d25a8328e..e7748f8e2967 100644
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
