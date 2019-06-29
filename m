Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD025AB1C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XYOSB+FuO1R9+jVtsw3pjpa/PfcZonrEBBIYzVDNSYw=; b=Tr0UihaFqwhPoJm6zxE1q1+EWc
	bJQDSqHnpC4bqxK7IAP/VSuR6o5G7P1hy/rkPud1Ap81hVo7eNXnWz3Mp+Z6XDl26iicd1QIbHG6O
	JA9byqdLIRs+KBwMTW9OIhh/TDMnXFXFuEv+cBomtf1yydlvPJn4+u63sNe30tSzvQtdPsJn3Lrzx
	+g/lfawzIC81QouQ9OTAzTgHMFwnXsTK66eFJ9nNII5bjXO98UP3s3eZLra/wtX1SKMR41mnUkDRs
	LWkV9473gqOw9BP+oh5YqT/0IZWnMmqmbSz1xYbdQBSXNfWXccK1NH0c/d+XghnTkBrzjz410KVvd
	rhcqciZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCp1-0000W7-EC; Sat, 29 Jun 2019 12:51:15 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCn1-0006HZ-HK; Sat, 29 Jun 2019 12:49:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561812539;
 bh=4iT5gF19zR8hUXulIRPknsdJWyLCby3wqEEHdRNSk3A=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=YvN0BbkOlfSvFcV2O+lPHn26R8lyReJT0CPmnS2EIkF8sYaqGgd9MosoAXZtZda0C
 4dc9R2f7m9chVTyKenUkvHudXQHfnZwpUkhBhQCPde4apsxCrFzAhP+rA2003iPb6b
 3l+eowotvMhmqpbiNfqp6WhIwoC34YdJ6KMwz7Hg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MTiPl-1i8Nlu1iW5-00U2yt; Sat, 29 Jun 2019 14:48:59 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 19/29] staging: bcm2835-camera: Unify header inclusion
 defines
Date: Sat, 29 Jun 2019 14:48:26 +0200
Message-Id: <1561812516-9087-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
References: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:bsXBO01Rf/+xETfFo6MMrEg0HQCUn+iJ1mvOniUeTwdV0AmV80s
 P2rvUsoq4Zk7P2PjYaEAI7O1szcBJ40KZ9VuN+iomXI2v73JQsGLUff2gj4pozrn5ecviet
 oUhYz8jlCWLp8gC/P1HFEyUYr9SC+oD2BXjx8KcLYOLinEf82aejjl8sYvA5v4LzLN7lH4O
 NYV36VJyp52os1pQ9n+nw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IK9BCJsBPhI=:/aFg9LoBlc8/Uq3MhJgRbh
 4UMIWHkd6LJVRqW9lp0d+P9ouLOXZt+s31UxoLTiph23EAqud3RPWkZHu+mCejpN/RLJGhrOS
 OcBms0lg8R4S1h1n3XQm1d4PHgaTw2nNY2grRHI/vEtR3qgMF4QAMN9NbWLTyjppTGrFrIaAt
 b3AESdhNBJx+yZkRVdQlI12S3kn8Z55da2DXlkFOC+g51EURI7blz/FeF2sTTtbyOWArFFTXp
 dSE/A3Z6qfYN/vNiHI0JKyhAAu2FVQ1DLv54evuvnZbHZCZRQLT8WcsQZj+kcsjiPfcqqYxTI
 ECnSZPLTniwkZsIqq9oTttX+/UDVFrck+Gm2ZQYN3mBffXx491TDdb41q1bJ/0F5r0owIcT8d
 KjQAfAR15+Xtt1tkvNjOOqVdKS3PrvSajclktcxT5oYNnpytVfF2VTKVbob7yrJ3HA2YwEur0
 MJVUWUXOZzTdadnl6DPsRKBkVbyauKxPsjfkOfpQM6pkAPgffwpveAfQ2TqZgoHfvFkVwgWIM
 nM65xCwhnq++q2pT/r02y2nupqtFJChEZfXqG6O4cgqXwp4yjM01GS0draQWvBKYq/vup0KAt
 fMTTVvglL+zGZ9ZOCIWhib0ikdN8LKDnnEjWXVljJ4u+MKijFvvTIKZkraXaCkvUSaBYlddI1
 QkHgGfjSNR2xJTOaCwZXJpRPN58/8GAK3WfKobTJ/2WJHX6vP7d0i88V+HpYb+HJ9t+mPtiRR
 N8lcuqa9nwYMbV93RnsMb3auXwLLDmd1vaElc5KXWBU8spusrnCUvswbCMDhzMCeobYaC2TFv
 7xkrZGOCTJk44hZ1/4vcMhEqchEGQ3cO1CzEHLUmlAHRYzLIQ+iJO/MoEwqOLvDt/QBh2eJZ3
 rQ6bk7LPODReaMFaMvkB/Ip+zCbXXjdYtVcUMkKkrIgzsLuNjjSRYEyDZP5pL+8KHPAhsTVQB
 qxj2ZCWmx2RCiFHwTqBR/y4eOF7GcEhzISahiedJeFgw1uYaPluiucSJP1RyNJguAiprI4M8Y
 tfmfFodEcPnGpA5dEYrNqKAZlMBfzK+DgekuY2L1wQvRpL+gdCxrJxGjf47PeEgUzbF6iQsDw
 cbR8u+YaLxqCIU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_054911_894409_BBD3B478 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Most of the headers use ifndef FOO_H, whilst mmal-parameters.h
used ifndef __FOO_H.

Revise mmal-parameters.h to drop the underscores and make the
headers all consistent.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
index 6d21594..da21ec5 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
@@ -19,8 +19,8 @@
  * @{
  */

-#ifndef __MMAL_PARAMETERS_H
-#define __MMAL_PARAMETERS_H
+#ifndef MMAL_PARAMETERS_H
+#define MMAL_PARAMETERS_H

 /** Common parameter ID group, used with many types of component. */
 #define MMAL_PARAMETER_GROUP_COMMON            (0 << 16)
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
