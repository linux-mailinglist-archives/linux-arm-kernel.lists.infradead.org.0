Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7F21FC7A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 09:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pNyzZkup0mAO2XzbckEdmbhKIdlK1Zftuhw4iz47vOE=; b=fBWOomjVR9292CoodKZq9shrAD
	TDOzr7aeDlZOPuk+qEhHB6FlrvcmwtH2aQpsGDE6BjJf+GqjMSzRJUAjqgqnXgBN9Vz9rkBKShp7C
	zRYoBEwpo3Q6wiI8vMZOJUaIscJmNLifyHsGKScbB45YusjMK9OnFHjGQx0OTQhyrSambr1xeRyLr
	Jsb/U/JDgccK28U89HiX2iUJY6zXw4wgAbIIGowRyhIT0BhIsBeMzGoWsLDqdhetP7DdGYgVzIVox
	morIQcLj6iD7qZaQhSxzgT7UpKNcFq21vr3WTiCFJ2fHKlHE/cyNDar6+y1stIHcY9/QKoOi7ROeE
	idMUBm/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlSff-0002CY-NM; Wed, 17 Jun 2020 07:39:43 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlSfM-0002AE-R3
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 07:39:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 05A07E0492;
 Wed, 17 Jun 2020 00:38:44 -0700 (PDT)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qdT0Dw1YBvgR; Wed, 17 Jun 2020 00:38:43 -0700 (PDT)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org, kernel@puri.sm, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, mchehab@kernel.org, Anson.Huang@nxp.com,
 agx@sigxcpu.org, angus@akkea.ca, broonie@kernel.org
Subject: [PATCH v3 2/2] MAINTAINERS: Add Purism Librem 5 section to the list
Date: Wed, 17 Jun 2020 09:38:21 +0200
Message-Id: <20200617073821.16737-2-martin.kepplinger@puri.sm>
In-Reply-To: <20200617073821.16737-1-martin.kepplinger@puri.sm>
References: <20200617073821.16737-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_003924_899332_9CF7BED9 
X-CRM114-Status: UNSURE (   5.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.203.221.185 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Martin Kepplinger <martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add development information for the devicetree files for hardware
by Purism SPC.

Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b045b70e54df..0f6f18c477db 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13881,6 +13881,13 @@ T:	git git://linuxtv.org/media_tree.git
 F:	Documentation/admin-guide/media/pulse8-cec.rst
 F:	drivers/media/cec/usb/pulse8/
 
+PURISM LIBREM 5
+M:	Purism Kernel Team <kernel@puri.sm>
+S:	Supported
+B:	https://source.puri.sm/Librem5/linux-next/issues
+T:	https://source.puri.sm/Librem5/linux-next
+F:	arch/arm64/boot/dts/freescale/imx8mq-librem5*
+
 PVRUSB2 VIDEO4LINUX DRIVER
 M:	Mike Isely <isely@pobox.com>
 L:	pvrusb2@isely.net	(subscribers-only)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
