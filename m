Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A872A19BEBC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 11:34:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WWnGEKmuBx8VX4PP04oRMESR68VB287GOAieeU1q+fQ=; b=ILk
	q6dwiF3co5rnziv9+4Yz8R6qwZTX2DkifubBRsMZ2wUm2bmi7R6UKSm67yKWqZYXh0ilKu1HQxUyO
	KSN4iAfZ3RtN9ALtUvRKfw4Ix7biB1O42oBJ+G/4sbCIEQyWtiouN6ra2JFSm5iXWUh2ktfRl3HlB
	+Bigp2QCX++IBa5auafnzKwRXxsrfBRqPH2qdmzooXX3xyZzeuCOb+f7+8tf0amBELL/PsOFXxvNr
	IY4bwCCXEyd1WbrVVvhg9JyHB2vM51rD+z01Z55mBI99w8z3jfbJSsutXQ+xEngvr3UMvsR27fiYM
	Eg+z2FgWeSO7uzXVOEDuqxiEPsIYK9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwFD-0003l1-76; Thu, 02 Apr 2020 09:34:39 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwF5-0003jQ-El
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 09:34:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id p10so3328012wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 02:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=/JfishAOGXVYoBQSrKHeYa8JDBK0eNBxRAqMOtM/eC8=;
 b=zGjcgAXJC0cvkQmg5AHOFLWM6LOrm1MKo973ZuXAsPEPdIABiL61jdtlfMmJwR1TjH
 QmQNINPbryEdS+wLf8cunhwUEThDmQxncJ3zmmsr3+hEfPCCD5OFCpFoDarDgT6/64wC
 CeiZLojAXT0zfweEhRHskaN6gcDBiryNcNJL61J+s33E3OKhWty58K5GHdVfIiOgWBmH
 x6LAizpOYmtrOpNJ6am3nyAARiSMWQv+WBLrJBT487lybtC5nmpDpQbUUd1FRRg4WwA1
 D6RD2KfQp2g5Jgxn7FvVb5ZZCeqUwlzbisBQx1idmVk2aZrlfdQN+RGfX2I+wB1YjhrG
 7F3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/JfishAOGXVYoBQSrKHeYa8JDBK0eNBxRAqMOtM/eC8=;
 b=dC296q9Cqp7MDesz+SGbtQGHQvNcXa3qGyfbppGLBBW8ZTWsSD0g/8eWTkt9i9WSNA
 qlGKxJ16szNm/UbbiuDptqnP6FaRnfLTPy1hC8LBa+s62FwUuyA5xUAV+X5LqoQJrqwH
 wcfQp9nwDZganobT0CQwZ2BP//ZeYD8xMOkHDbG363ZvzVHYYj7NxoOENCM9KMGD8Hoj
 wLIwaqIaGbcxSJYNOtUklr3hm/eM/DycAuh6z6aqwuc69H1UdwiRxUPYqod1HOo3YECJ
 H7+uETh55ybud0tuZA7e1AMqNrisd+HU6jk4iuIxjSqTIGODeKzMOyTkOXKFnZ3B25M1
 /owQ==
X-Gm-Message-State: AGi0PuaUmNmMJekANb/R7NIlT1S1RCkffUDT4Nx3E52d0kX7UXx1Vv0b
 JBFRw/x5BJ4gXB921aLN1KKOIH5In5o=
X-Google-Smtp-Source: APiQypKmqFjl8B/AWQFjq2q5ZN9yvy7ZyTVYBSo8g0LRGX2p1bc7qJ2fARK4rAjHDfe7Zu/GTRGgdQ==
X-Received: by 2002:a5d:6182:: with SMTP id j2mr2487136wru.131.1585820066899; 
 Thu, 02 Apr 2020 02:34:26 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id 189sm6528042wme.31.2020.04.02.02.34.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 02 Apr 2020 02:34:26 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: linux@armlinux.org.uk,
	mripard@kernel.org,
	wens@csie.org
Subject: [PATCH] ARM: configs: sunxi: Add sun8i analog codec
Date: Thu,  2 Apr 2020 09:34:21 +0000
Message-Id: <1585820061-24172-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_023431_495881_33E18229 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On my orange pi PC, I got lot of "sun4i-codec 1c22c00.codec: Failed to register our card".
This was due to a missing compoment: the sun8i analog codec.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/configs/sunxi_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/sunxi_defconfig b/arch/arm/configs/sunxi_defconfig
index 61b8be19e527..b105ce7120cc 100644
--- a/arch/arm/configs/sunxi_defconfig
+++ b/arch/arm/configs/sunxi_defconfig
@@ -107,6 +107,7 @@ CONFIG_SOUND=y
 CONFIG_SND=y
 CONFIG_SND_SOC=y
 CONFIG_SND_SUN4I_CODEC=y
+CONFIG_SND_SUN8I_CODEC_ANALOG=y
 CONFIG_USB=y
 CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_HCD_PLATFORM=y
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
