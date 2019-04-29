Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2F3DCF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tgJYMQRKlNGwz9PgtVqvvVTi18Q/Ors3f5rpqFDFn74=; b=A/T
	2eXZAT1TcJ9Q2AVGnGOQzAvRBJtJQeUaoMchEEjZLCCYM59XQvIhGi4fualZ1tBWTH+uHON595yeB
	uyDhObnCi1Jjq7L1F/rUntflg2vMCW+u7IM5aKZm+k0l/NEP/DSH+8FpJbhwXipACDw7SsU9zW9sD
	ya90/m0POKOgOs12ieJknZ1I2EblFyOIUbahyj7QtQ6fLLkoMFXjNi1oNxN3CpZhU3Y3iPJd/ppjS
	YmcYKWPEgiDq0zDuYPPOf7KNzSFs26FGh/+a9tk2GSkAL8ariNdly/Qo6j3EkYawD45vHteRUztrW
	2EdAFRbLreXMKQZQV2fFvvSUmkrp1fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0qz-0000ul-3F; Mon, 29 Apr 2019 07:37:33 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0qs-0000uM-5Z; Mon, 29 Apr 2019 07:37:27 +0000
Received: by mail-pl1-x641.google.com with SMTP id w20so4055132plq.3;
 Mon, 29 Apr 2019 00:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=JVE5mmezCRxz6WW+z9H8b28By3jF0TFZuCkFOKjspBU=;
 b=niwBPwvEkClbDRK9YJuSfR/YAnw/h5dMpYBXnWsjBRo9UdkYLnka/aYR5Q7xahnsIb
 as+f30ARN/KtCMGevNIB0IFhdEVlRioN0ls7/DgVufSsEhcD3pPvCOkX+kR7wurJgDQ0
 AfpgLTNON+AQhxtN2jqk62c+TBCuNXyFrjduyVWOcpFE9NWYjqpJ0QLhiOGOFgry51RF
 xKXS/VhlJkxeMb+81VBqOogBaQZjisJZMKVJ2CTFOY464h+3H9sNR06XsK3URQxdDtgB
 CzRm8dgt5mRLInnpfk2i29EgagbmkXCDUfrlSQFnhEhyouzfrwunzNGSvkchDUFV406W
 kdGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JVE5mmezCRxz6WW+z9H8b28By3jF0TFZuCkFOKjspBU=;
 b=Sn0QEkQj0YbSfqUnj2zX97rfD9/vX068MLCahUlXPdQICqx7OxPC+rlE56liCnQ5fT
 vGg+DY9rH9alFgibtnRvoRo8Fr5q7jqhrHIUYY/jxioG+8a2bQo2StqNS95A5SZj4qSI
 6E6SV8Csyke1rADivsniilQt4Gtpto0mhiMEA7sYDbyACQVnn7GK/hLtYVjFuEzk9EZF
 UsIP3xeD1GlxP+nTwQe2ALzSf6Scsd63CazUJy1yvXox0tbwSSUadjrqa2Ozg50oZAfy
 K8P4BWerI5s/K6RvXcuZ5SWTvcaoml3sO6Mj3NS9ek5CLWPJ4WP/uRpJIY9SnOOHeZjJ
 vsug==
X-Gm-Message-State: APjAAAUVz/3w9PWA+q5vODhfDlioDc+E0wwjHn0V05dJLsWfIXdcISTm
 ME4Rk5c/vexORlBX8rQ51Yc=
X-Google-Smtp-Source: APXvYqwZzhRLIoaP5LpqWQUbjpD0Ir8YyzDeEPPahuxhn3iNg6BmuHDKJjh9YnJwHCLE1BExK5KxAg==
X-Received: by 2002:a17:902:8545:: with SMTP id
 d5mr24800187plo.198.1556523444886; 
 Mon, 29 Apr 2019 00:37:24 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:12a5:ab58:559f:ec82:1c85:ce7])
 by smtp.gmail.com with ESMTPSA id
 t24sm43485198pfe.110.2019.04.29.00.37.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 00:37:24 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: vc04_services: bcm2835-camera: Modify return
 statement.
Date: Mon, 29 Apr 2019 13:06:58 +0530
Message-Id: <20190429073658.32009-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_003726_232786_5AF8EB9B 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vatsalanarang[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Modify return statement and remove the respective assignment.

Issue found by coccinelle.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index c9b6346111a5..cef6d5b758e8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1507,10 +1507,9 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
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
