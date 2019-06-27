Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E4B58A82
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2cLO0smny65Kmn69G1EfMxjIIAuK86uGOMEDGig6Mrs=; b=nvUTzf+q8wlv4tQY/0REnTIEVv
	gB5K3pzhlm9waoqDN3W23e7qH1uP7oDh0edhLC5txaZRaqw/JoDLZhAeucg/o1goT3gvbIQeLtkfh
	aaJGC5Jm9duW/mffiMI2vKRJR1zULGx/L8skEGSOm14NL5s1H2q4Kmwefxwlt3B2fibjpwlT81waN
	0z+3vQNsrqzuUk6rj+gyqKunY8bEkDep2MK8sLVqxYp81XA8eHZfBUoeX5H9SSHx9DDFkQjs+xZDD
	TEKIcyNUQtV2haSrb6hgyIo80G2M9RqS2gZ4yLoYS1dmx12tnBcol8MJtXlBGPevrR2BaiGlmsg3K
	6/POXuXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZdL-0005qm-Ob; Thu, 27 Jun 2019 19:00:35 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZZu-0002Ry-Hh; Thu, 27 Jun 2019 18:57:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661813;
 bh=zd1aDqSMaJmqIjJkz0CA2ASLC5e7tiVGocbpMQusOGE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ZPNO9H8nR7gvoiXsL8VemBcF2ud11Z3PwuvDYhqijQ40c8NtELe7WkNAjgxinHdvm
 8rmfwQhUqIcBJiME1yQu5VrFAzYY+efkN34PBNqwyYHEhCPtY7UN2513Jg2bbveWi6
 51OC/ZHGl5zx+8r4VOPH8skthBa5CBAZN6nmfkrU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MFuWk-1hkRiE3rMc-00EtK9; Thu, 27 Jun 2019 20:56:53 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 11/31] staging: bcm2835-camera: Fix multiple line dereference
 errors
Date: Thu, 27 Jun 2019 20:56:08 +0200
Message-Id: <1561661788-22744-12-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:PtIPEvvPTgzUk75vIog7SPhxn5Ru3GkyhRLJtUQw/cZpO6M41Lr
 hz9+bdTPs/+Q3URY7A5KhkKy5qRTJW1CwhLRzSLzVo/M1UARv/tXSiuD+qR3Pnl3ADHtvh/
 Rr9u+pfrAlzuItwHmnAYLo7giHTEaW0u+y7uPrHdvp5B4/d3GNFCRT9fnnRkEj7gQUrX39V
 prAXM5JGs6kPGNJCAwS2g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TooMdflaKKQ=:7hA9iBw2Jtc6Jig0lYMhEL
 mg4gXWLOf+r5undL/OAlXkVeUe4V/gN0GuhRPZGm2lPV72Gj3jSi075aiyhuIYlcP66pAJPF4
 ADoFVwg7NJAaM8OaYvHKDiRONXzbmElj4Ptyexg7QYFqqN57ai83rqdclwb9ONRj/DIoLk4Lm
 FR5IjzDZhqTTP3ceYNQNoqJ4nu2fGhzXqCm6YaqtrfWdAymqwnKnREL6lnsLYxR35nyZfSSBx
 umLc6ZQfXXqyg+ZvUi9T8IHihCfmg+WOrEJP/Xzr350aJC965Ne+i3dNycwajsA9uhj6xFUP9
 jv6oc94vweQ0aqQknVD6MUAJfVRcvXsqeqdkjcCLCRHuRQGYCApa5ZN2RUAy5SqSQAbWGR/Am
 LTkCtcBKRfWbkelqVBmVuhI00X8aSFqJ0CA8bdJhIbWWz7JYbyKeY15ksOn2GDfZd7x6b9uF2
 nIgcdMRK+yc+zfUmP/pI2cqtdmYGrkuUsfHV1xsepGlRVrAP8BBEgo4U2TMwJTzw+hSeNoc5+
 WI2DxPPZq4BhE/dmdlISVtizhvJODtE5EOkwwwE1wswSvDF2WBwEWoJcuu5K/gj9NThCEqErJ
 0mfo0IWFY8sGG/q0dyHkBi5tHesv03OB9UpX+oOjbAovM9wG4afqZm2CwIRQM9ViS8xfLZVz2
 IqusSr9W0AwSjlLRrnsE2HKzhNMKjPLkkHidJBwEFJ5gluHBPWqN0g1hPT5kJWh3gM53tyHH+
 YS8179xn2YZNGA3EZM/2ObU4hcGfSuCqvrmOVl9YHZ9mqsORtfT7hXIQZHAzDLK7g7aAtXBwL
 46lQYJCNkLAqmmDmd9EBLzPTQE4YuMPv5jGFzphlZTjObj/hOKVht76ungpMh7sWFy8dBz9O3
 fq3oI/PaDk1YgGo7QinUz5axF7Fm+AzIYj8+FOD+GkdpKZkKO79f2cZ9+a96+TDQUNWLg4MW/
 1jwOV+BRwQdcL2eK3jBVSl3o5Kb1X3sxiSzA/Kc9MHZ1NeSQ2mJ7LZCXWWukpgitz6Xql1pRS
 xF7kxdIPJGhleptE05+0P6t5G/nKYP5kXi8ydG9gXQ2jgwaT1LX1pCc+IfygOkLwfemAMc62g
 MfgnO3mT7fvLe4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_115702_878125_3B7999B1 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
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

Fix checkpatch errors "Avoid multiple line dereference"

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 23f7754..bde3548 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1028,12 +1028,10 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 		if (f->fmt.pix.width <= max_video_width &&
 		    f->fmt.pix.height <= max_video_height)
 			camera_port = port =
-			    &dev->component[COMP_CAMERA]->
-			    output[CAM_PORT_VIDEO];
+			    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO];
 		else
 			camera_port = port =
-			    &dev->component[COMP_CAMERA]->
-			    output[CAM_PORT_CAPTURE];
+			    &dev->component[COMP_CAMERA]->output[CAM_PORT_CAPTURE];
 		break;
 	case COMP_IMAGE_ENCODE:
 		encode_component = dev->component[COMP_IMAGE_ENCODE];
@@ -1224,9 +1222,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 						 port->current_buffer.size);
 					port->current_buffer.size =
 					    (f->fmt.pix.sizeimage <
-					     (100 << 10))
-					    ? (100 << 10)
-					    : f->fmt.pix.sizeimage;
+					     (100 << 10)) ?
+					    (100 << 10) : f->fmt.pix.sizeimage;
 				}
 				v4l2_dbg(1, bcm2835_v4l2_debug,
 					 &dev->v4l2_dev,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
