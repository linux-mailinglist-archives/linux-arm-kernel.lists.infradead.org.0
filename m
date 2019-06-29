Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783235AB1A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tJvaXNQIH3M2Xq1GoHAXn9V+LAELBi0Z35XbARJ3AQM=; b=cIw7Hnmi711JMMMso4oPm23Pt5
	yCVEp1zhVxrurqFX127nI7G3NZbYlK2Hh0SkzASahdiXXdIBcMgKoXPy3qHzwPhIbkfEzOatdAXi/
	/BLqjKEc3hghwuA8D9ggI7MRrQjypZrBlST00nHXtADujVCEER4O2shmolNQvC9/oNf3o2Ju6RvBF
	MR4TAHclOltOM726RvuFnNeEc9A1xDeCpe3MI3CrWtugJarEWhe3pqSwt/1TSttTrp6oSdLuDFVAG
	sHk2EoRbWBFFgDon4onXaUNMbYc6pL3lPLC8RzdiX1I7ASmfGLSwiZh+hlaWVmVBvGvWnSlLeB3fi
	DtjXZA2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCoZ-0008U3-1r; Sat, 29 Jun 2019 12:50:47 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCn3-0006Iv-RL; Sat, 29 Jun 2019 12:49:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561812540;
 bh=AO24dhR33sAimyv1ny5zTcoHxXYyQIqUHySiBAbYjys=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=XDV6MBnWhQN6JHJAe6lAfXxJOZkAk7rOVJnbN9256tOkxGGUAxnJoJAX/0IFT58dL
 TpyC4l0qMv1nxA7hzI6KCF3uIavwEQ6YpbHePEBWGEsNGSqDZvWY+a+oxniDcOH69F
 yO81LRDrZV4g/GFwCEQwTG1GuTTkqW6udLSacFUI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1M2f5T-1hhSy43Ryp-004ANR; Sat, 29 Jun 2019 14:48:59 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 20/29] staging: bcm2835-camera: Fix multiple assignments
 should be avoided
Date: Sat, 29 Jun 2019 14:48:27 +0200
Message-Id: <1561812516-9087-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
References: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:4nTPGPJkQrZ8QTOIRCsHWddGEo5EsUCmCY5X0F+iDLRIBIVxF6C
 26GoGSvixmPNbN6zYQcGnBQl04fIlxac5RwX53y807grnU82/cDIAeNWslR3irBOqztgqKN
 fZbfqZ+KYfqXph7uNjBnJAvhuVBqoyAP0ebiIqVjdnMFnsYZVgKdHDOdwePXakjf4xqUviZ
 pek0ZzHKdnTa1XHsuEJ4A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:x4SvSKJslW4=:XhhQjHajOyXEX0D8Ngd4o5
 hYAGfjuTsXHXPFHiaq0YJM4H+wLwfx6r0U7EtyEAL9g7lEhzw/4xpl2BOgB2dQPT6W83i63xx
 aZzNnd2cJjpSCNpixwN96iRxfJYxwiZSZKIiP9sPEZnunaA1XYfeGEyusQhkttQfXsJ5HWCnn
 MMJGDrldzVoF4bBN6Jo5vvGmsBHwNGhMC9T851HLsrRsxko7y8ZJ3Uzp7zjl3xk7r5Ngj6fML
 6FHaRleI8qP0DddjVyWVu0FnvAi/Ldf5p8CHINEtQq7wZx7WjfcgfJ2k7fBg6lWnpjx0j26Qv
 KPvkspuxvaoMldUGUy76bqsEYiPFkmwWoNpJaJzcfGpoWRg29TkPw9reJKSHV9LvpTnqg5z/D
 HKzE2hz6/08wz8koPDVQY6KAj+/5ZCLOJNhm8yV3Ol5sLJn0NXJ+VkJ7QuT4O9jkONgiXmZuX
 Cv0IAAlNfhg3aM+1IILk39hySfgiSRNHOqkptR1i+HkbSyMDWrKszqhN4mC16Q/SQ9DQecKGr
 Di63Bd93evDOSHlqqFVv/oQM3cuCBVvyXaBsNhnri8h8HKS2P7/OJ/wqa9MLPAjS64NgNKUI/
 K8Vz/86KNeZfG4Yd1lz/NsyDkieVbLxUuoAZYMoaiVZeXNrJoPSJkYpmjMxp7TAJTQCwR0/es
 h2LSftp+N0k6AOlu+qJ/mmY5x2Nk6/b2bebxCAoBPrjxzcmiNY/qgvzOauC45pj/upPtKQ6Lw
 oUDRcNI5VoHahTK/IW0I81GoYs128HLMgFZXIMpfNwKTU/AJgs4HWw2xdpLeEJrwNUvPmqg8z
 fHD3NOjuLKI/inU7njlRzw6AwwlLCZgSGN6SexPGPyHbotGpmuYNMGZj5X63AYzrsX2iYbYqM
 E+i1QuKMhwAK9UJ+Sw7hh7hmYMj2Ovb5/PVmp3BxKjaAyUi6SH7EQIYGUoP8Wtz31HDp5Xn2D
 NIN9pZTRs/JQb/5El1VmJYFJ3He/1I45aCG2i1ARBlShvJqHf1lfJl35Ej+WAZF8z90IfD/iO
 AL8T+mBvA0dZHw7DVyDV97F/XoaW41IXseCqyejKjS9LfHaVftTDm5EpmJoBlqFGAftGSyCJR
 NMXiP1U7V3MJ8c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_054914_178142_E84DE081 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
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

Clear checkpatch complaints of "multiple assignments should be avoided"

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 167c218..1aaae57 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1031,11 +1031,12 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
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
