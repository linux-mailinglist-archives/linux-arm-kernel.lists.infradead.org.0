Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2821FC3DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 03:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gYluSjFQjZivlp8j915k9dg9YASqvDTLOCUCcOSSAws=; b=Cn7aa4Vh4rMqE/
	oTa37AOW2BU7sYTb4QG2m2lh89RxKXme8D2zRFiY6VjEUY6jzA+fHRKJv/h8mUFdUGE1oVlaJTsAv
	08sYdmq8Dp7mPhhnASHF9wYMaNvwzTzJzi2j5IXKy223Sgc8LLj7UO1tKaSis5PWYEt5Mn3oRsaaq
	M9o/k3DdaXucOfGVUU4sth+zynu3iZzt5y/isFweEUshH1qWxG0zuKyAePQfkwWQToo6pVxwet512
	pev968J87E6BKbamlLBjc2O63l/my5q9J+73Q7Zuw8uc4tGz5oM5TbWIql9mu2FsmTYwf3s1Z43IS
	dYSBX7cCmZk2M0kT/axg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlNGZ-0001nV-QO; Wed, 17 Jun 2020 01:53:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlNGN-0001lI-Cq; Wed, 17 Jun 2020 01:53:16 +0000
X-UUID: aee1f7b0f82540489ac7dfdf702fb3b3-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=AHVzKhLaX2oKGkCZYazZw4xrXIbvh2oXu4tD1iY5vY0=; 
 b=bSnL6jozmOom2MRcFbEMkfOJGaw8QLxRFogdtM3jF7GIEaup+CRJgtJ2shVnfVIr0sxw3N/1QCcrR/+jVlwvSl78Dp1/uf6u5VgBEXZUZlgVa8u1jsqaLLZpINyW2HTbqFklAKpJQAOeDwDJWyHWl/8Iey3kVMiIYB/ooags7FA=;
X-UUID: aee1f7b0f82540489ac7dfdf702fb3b3-20200616
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yunfei.dong@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2066208548; Tue, 16 Jun 2020 17:53:07 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 18:53:01 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 09:53:03 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 17 Jun 2020 09:52:57 +0800
From: Yunfei Dong <yunfei.dong@mediatek.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Tiffany Lin <tiffany.lin@mediatek.com>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/2] media: v4l UAPI: add V4L2_BUF_CAP_SUPPORTS_RO_REQUESTS
Date: Wed, 17 Jun 2020 09:49:27 +0800
Message-ID: <20200617014928.4374-1-yunfei.dong@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: BA3C3E7F9A7679BEB34F77C5A76B6AB4D6C36B310217DF74FF99172E8D4ED8832000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_185315_433925_5022AA13 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yunfei Dong <yunfei.dong@mediatek.com>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds support for the V4L2_BUF_CAP_SUPPORTS_RO_REQUESTS
flag. This flag is used for RO Request.

Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
---
 Documentation/userspace-api/media/v4l/vidioc-reqbufs.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/vidioc-reqbufs.rst b/Documentation/userspace-api/media/v4l/vidioc-reqbufs.rst
index b6d52083707b..7c7451773b8e 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-reqbufs.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-reqbufs.rst
@@ -126,6 +126,7 @@ aborting or finishing any DMA in progress, an implicit
 .. _V4L2-BUF-CAP-SUPPORTS-REQUESTS:
 .. _V4L2-BUF-CAP-SUPPORTS-ORPHANED-BUFS:
 .. _V4L2-BUF-CAP-SUPPORTS-M2M-HOLD-CAPTURE-BUF:
+.. _V4L2-BUF-CAP-SUPPORTS-RO-REQUESTS:
 
 .. cssclass:: longtable
 
@@ -156,6 +157,9 @@ aborting or finishing any DMA in progress, an implicit
       - Only valid for stateless decoders. If set, then userspace can set the
         ``V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF`` flag to hold off on returning the
 	capture buffer until the OUTPUT timestamp changes.
+    * - ``V4L2_BUF_CAP_SUPPORTS_RO_REQUESTS``
+      - 0x00000040
+      - This buffer type supports :ref:`requests <media-request-api>`.
 
 Return Value
 ============
-- 
2.25.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
