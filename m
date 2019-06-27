Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6017A58ABB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NDHTW3ulhfKg7Q6QUUIQTOssE3fKKBLCPrGbdOgySwc=; b=Yas6idUTN13LEP4lIzS9RidONq
	6EwZpl+WhUWum40jQ43T95rbAbjWDikF68TDbWHjSPAUrS168Y84GpCuZRHKraf1Hqp79XeWgpkj2
	W9Va/VMjXgu1nwS/P1uBZRBJ6j6UvoJ/6pDDviwOjBpAnF+gioFKTG7Y3vOOf60HqBla2zVcShZsH
	5D4PA3XpV/Z/IbU7UN87/2b6UYUTKRCThiw8DqgWAR25O/ucmOZNfGHZMND4Bopu1hu1GowlexQyE
	y/Lkj86SlRzb76Uzy2qRth26IPM4uidahKCXAtUSNmNy1JvEChRqYz+P7bwn9nKfMVXtmUvxScBxt
	r9Oq0D3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZle-0004oU-Tv; Thu, 27 Jun 2019 19:09:11 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZjg-0003ZQ-Qe; Thu, 27 Jun 2019 19:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561662413;
 bh=HN3lhHm+Yt2GbL8dO//CPN9hcnC7lx/vfdI7rSIW4Pk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ISIBPootMoMSbtYFcaNVsNT8f+5oqIbnZBammUzC39oBzwx66IS70gfTNP8o73tei
 2oEmQmmhRGA8iULe3HL0j5PYkb0AjenyOzK9RREbAISQyCgW6+kqYMpaoYX3vNM6+b
 a885JyOEEMaGReTp2Yhxbcj+S+T38BCTd1UD8JzM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0M3vCA-1iY7p83L2A-00rWF9; Thu, 27 Jun 2019 21:06:52 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 22/31] staging: bcm2835-camera: Fix multiple assignments
 should be avoided
Date: Thu, 27 Jun 2019 21:06:17 +0200
Message-Id: <1561662386-23045-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
References: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:nDht862Sp27VYwhBb9Kh9ofjwNBUYyKYpnUiI/S8FqW7MW5NEo/
 3a0bU3PoAEYPVcTQpkI9eQfQj42yyOLe8xTC+l5hdLlrulutA/Irbt7bo23CSxTt++y3v7G
 Lq0E8VjMCa4fOGh1S55NxUVGnj4MhS0I3li7xJ6o5IlYAEIdgkPwqNVf7+LNenoQlo8Q8Sc
 3qnrR1IxS6OH6mPX6TM4Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QGwz0ac8KYY=:xECsoiozVywwQUPjOJKdk0
 RXknP9fSotn2hZ1hFXEAGXMDax6+vufvh+Vg5u6DZUnFdb2GOTlzQPx++ABTuFwuJJniCly9i
 UZLN0Bx7TdiquURrdp02FvSX69z2v7gsQAsLrg53YSKNCgedHt/OclQhcs6nGPJ4zw0+MRhRb
 Lpl+q/KCfWgSFTS7PWisQukjBhqxJ9Y/ps0hgKZGmrEEItcA1Jld3Ier3Fw3//ACxpc9SY32q
 28+V4eN1NJ/AlnlDab9l4rBCKCNWEXJllUYaIukEVEFgIMCkzY9VDLB0RhUWImLCXo7Pou/5s
 sLMypqJ2GyscU1H71eSyMy/aadr9uFxav0ZYTXMuSqvHhXpJTeUC6Ct9dd5ZnuQDcCD3WNs4Y
 PN23yU4t+vefahzYaci1d5VjXj6/oM6vvuTImPbWUGh6FsV08MqEzhzADKHN8XRIUW+BXXLCU
 WWMjarSP6j84hT3uE7H+rAmy/Q6dmjbywbRn6NwAsrZNEr6b+evggBYF+YwqUYlQQvu1kw1DQ
 eqxyapX4PxZlG4mRnoEsdQYMYTrd/JCZNuFMA29A0REJxEL/0C27nMbZUQtQZTmHdyd0/otFO
 FK+zPiTjL3gkExjjcNl+3PTvsxgYP6ROg/h7EM1A99XIrFaSV2zXDMzxWdlxc33r4wOkenVwY
 WrQYwNNqoykamQR14zhVyeI1tFbVndFgEJQPMAzCxL7ndYBunPN6RR99yzsUNOJTaWWPPw3va
 KN3Yo3Aq/qlTXz7Db0FSez5iYH/bV63b6LXhdNGBXIo47BXtz3qK4aVZWvMrPE3Xm6/ikPs9X
 sTKfpHsFBREdnhRSNZtMst8bldxJl1v5KRy9QQ8LksHivHnl0xx+r0oqqd/vrbDQmBNTYHuXd
 k9gpldalO41zEhBBqPpDvFglURgsbrlnPVLQu8+kFFgd9aZglhueSqT/fvJSeQ5xJRsBnOS9t
 Hmsrb5e9g/pH9BfE1gtwMmYmDxkL9LfCe8xZBkCmIdk86hBQGWQMko1YqROC9sPkh1nbB7Zkc
 NxkXqhrxkur9Rq5RVvxWqvjeUheFJ2vjKxFsPuUgPlLTtmGIVg7EN2J6gzG7GcD75jWj8L/xB
 hoJNfVxihuQMuo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_120709_154761_679CF227 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Clear checkpatch complaints of "multiple assignments should be avoided"

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 6205793..bef0052 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1049,11 +1049,12 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 		/* Make a further decision on port based on resolution */
 		if (f->fmt.pix.width <= max_video_width &&
 		    f->fmt.pix.height <= max_video_height)
-			camera_port = port =
+			camera_port =
 			    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO];
 		else
-			camera_port = port =
+			camera_port =
 			    &dev->component[COMP_CAMERA]->output[CAM_PORT_CAPTURE];
+		port = camera_port;
 		break;
 	case COMP_IMAGE_ENCODE:
 		encode_component = dev->component[COMP_IMAGE_ENCODE];
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
