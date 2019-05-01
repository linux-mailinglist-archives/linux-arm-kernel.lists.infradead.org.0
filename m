Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2A11055B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 07:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Mdmy7b2+iq3OQwelArN9TBAzGn4OmY/J9w8LaifvA0Y=; b=Rrc
	7+8J65gPWl+jpmYGApcLt4XywQNUV9fGHoeGa94/X95IOtrkZJwrUTKlv2CGSjLsxKoy42slwwfSD
	soQKi7reraLx7QufCEdRM5YgLSyO3UHfEF5UYmV+AZgB0l3quDfQjpLuFl7+Z7Q4F/C/Wnjxg7Nu/
	Q2Lh5TkDeRHHmXld4yIktnN1wV6wp4T7Va6LwPBEwt5ueGm7t9EV+PlQ3BcGmKykPNMs/TTXds9Jn
	qny8lNLiOPm9nb6jlPABO5IgfzyU40jx+PUYaMDdgjlBIdPLDGJ62JzN5sZQ0Wh22aOQqq2mMZhHx
	velC8tKDYaiMkJDOrvzMa+MC4wJzrEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLiCH-0004db-4c; Wed, 01 May 2019 05:54:25 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLiC9-0004co-Ga; Wed, 01 May 2019 05:54:18 +0000
Received: by mail-pf1-x42d.google.com with SMTP id 10so8195566pfo.5;
 Tue, 30 Apr 2019 22:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=lGmhHTbrp62WjPCsadPfyC1/U+nVR+naFYtOSFn8Cmg=;
 b=tACyKVezHNTMlt1e1Q+CUmGgy0ZYjIaUL5MNsq7A69XdyYaigxSpiHPBYCt9WycK9i
 /tVwMrG0QX9+ieuRWi4UAK6qnAGs4XiOVkSMk73fj2kDKtP4WYeOOvzLlI90tGWJbGEj
 xCLKIAYWY/yPAuH01HaWsH6tp4mOsJ6vkYGmrV5pvRBa4EizH76aEssvW1Q1mZb7uXVx
 x15WlLbkg2sVZCfj23vBh08RFuRAlwyX/g02QCdVHjGuG9HGXcxq3NOki5+RreReVtaV
 P6UDP4WrYRvGl87qRSmwYEBi/XUpX2iK2OrTpDmk0BOw4bZQDWWtC0TBTAOivLL5PJKP
 n48w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lGmhHTbrp62WjPCsadPfyC1/U+nVR+naFYtOSFn8Cmg=;
 b=Kk5MGwwYHN5cCz3n1/1/KIXy7uKlqvkAlP/DHid8rhlPm6ji+o2gKHAYeUPq7qv1N0
 JLwintrtXnDW5xGpXKg9clttGMTQIoAWxXZUMS1p12wbKUUF8iv3FlHf9DYxcJnQYL/D
 /pO6yFxuQmuQ28Ytd5C6/f1DTGKd5lfW3pqOzTv7uKKaL4p2SH0NKzFCUh4QngBjQXI8
 0VCcyCyg4FJO62MS242ZxMgnA67dwNK/WM/0gOeozB6v4IR6L4WTrd4EKF20oE79/L/R
 nN5M8RJ3y6paxB92td9FSAPVq+GcAZ0gWtbKByM9z/diqnhmPr0NabVGvLM6CnYcdPZU
 /MvA==
X-Gm-Message-State: APjAAAV8uS0Gpl5cVEl9VUZh5XClSnI6STlEcWj11QLIK29w7/j3cRdJ
 9yPUa9ZhlhqJPHmde+4iRkM=
X-Google-Smtp-Source: APXvYqzVYhq/yVFaxE/scWgarPNMtyOGpYnl2Qtq6YhPzhFF/vh4UFOFc+MidadXbez8i4moztfRNw==
X-Received: by 2002:a62:1a0d:: with SMTP id a13mr76311287pfa.198.1556690053661; 
 Tue, 30 Apr 2019 22:54:13 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.94])
 by smtp.gmail.com with ESMTPSA id e184sm62816141pfc.102.2019.04.30.22.54.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 22:54:13 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: vc04_services: bcm2835-camera: Compress two lines
 into one line
Date: Wed,  1 May 2019 11:23:53 +0530
Message-Id: <20190501055353.1935-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_225417_577298_784B4E34 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vatsalanarang[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stefan.wahren@i2se.com, devel@driverdev.osuosl.org, f.fainelli@gmail.com,
 sbranden@broadcom.com, julia.lawall@lip6.fr, rjui@broadcom.com,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Vatsala Narang <vatsalanarang@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Return value directly without saving it in a variable and remove that
variable.

Issue suggested by Coccinelle.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
Changes in v2:
-Change subject line and log message
-Remove respective unused variable

 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index c9b6346111a5..68f08dc18da9 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1491,7 +1491,6 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
 				 struct vchiq_mmal_component *camera,
 				 struct bm2835_mmal_dev *dev)
 {
-	int ret;
 	struct mmal_parameter_camera_config cam_config = {
 		.max_stills_w = dev->max_width,
 		.max_stills_h = dev->max_height,
@@ -1507,10 +1506,9 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
 		.use_stc_timestamp = MMAL_PARAM_TIMESTAMP_MODE_RAW_STC
 	};
 
-	ret = vchiq_mmal_port_parameter_set(instance, &camera->control,
+	return vchiq_mmal_port_parameter_set(instance, &camera->control,
 					    MMAL_PARAMETER_CAMERA_CONFIG,
 					    &cam_config, sizeof(cam_config));
-	return ret;
 }
 
 #define MAX_SUPPORTED_ENCODINGS 20
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
