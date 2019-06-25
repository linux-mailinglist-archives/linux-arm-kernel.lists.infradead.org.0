Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A465530F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 17:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mKDnmQXLbwUI5Zv4QJ55hB4pD4tkAbjgGOcX85vfrGU=; b=UmJmwz7Db0DRoR
	kBXkPD9nK3qD5J2Rh4D5bebd8ZqIoNA2uK32A/RN9vrmZS7A/jgweURA/JNjWkM/LFhsKrfWRsKJu
	1Bx3LTp53kcu0NABWEDmUG+pG6n3QMkqaUM3x6Y/2kcGKQR1FwTOB5seUrl9fHOALooZ+Y8nv41XW
	LrlwpXSsPRIyFf8R2gjFkCBALIrP2soW7DP0ImEzRz2xA4OH5ByKrdGifPh+Fi18H8bdQgvN31EPX
	+srtecmQNUswvyOMOmies37sd253jNqogI+vH8KgDSOUU0JF9+VpCuZVy1tp7/nNumZ7ISvBkisto
	eC5XTrhBYI82Lqz2Spsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnBI-0000dC-Nn; Tue, 25 Jun 2019 15:16:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnBA-0000cq-9x
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 15:16:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id p11so18319946wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 08:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JJ65PYSwq9lHbap5+/eYVEe6uBbmNNIS8cKuG+4aQHM=;
 b=ksJu/lYM5QnmLSPoluMTTQ/cRukJmIwktRNyGqrTaY8uKdSyPKM/jut3sVcnj0Tmg0
 DnfK/chEnLFtZdjJS956/3EWm5SzHKDhS1UbhcA3sD3BlxJihPZC1bMYQXDWbRhRanUp
 ujrecaXEJCukCWUei7CBPwk8ltCtCE8rNbKaLsdwPXBk6TZXe5NyY+zbz3HsnvyyseFj
 xD5c9zeMa0bv2T0ySY0AEOEB7dYek8fV8xNMGLcKouZOu3mtYDmKaZrdbyBd2WxrNJfN
 bWAk/hZNI9gjFaav3pHFluT/VzVMHUUQ2t5qnXO4khDGV0I1gZebTv0CUjrPkFXHbOJP
 1Jyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JJ65PYSwq9lHbap5+/eYVEe6uBbmNNIS8cKuG+4aQHM=;
 b=lbnLRkrdjIqioGDz7iS3uMgLhotn3W17oVcacUrhJr2j/DsGivFAU80XxPZUTAeh/2
 YFvnNaN7Nmg/OsXuUlwa8MTjYQ1sVzkxThKW2uaLNTy+FDK63nfBedjQ2YFjWUzhmskf
 Gl8DPOMdQyRcP3voTxavUi8zF7F3YDn9HTp+MXW5T1JJeF9ibtvDTmSnQ8Qk2odLG4M4
 1chDUCbHH3Y1HoLwybj1GHytLjMI+xuNe0X3A6TToElRE9TLDXPRx9vWdvPIPQz6X9Nr
 QZF3KlRhLJ9BaIK414cgP4Xg6NJl3TPE0Ho7BZCWlms3OlKYG+wMVmKFDog3jvy/fOhW
 g7gQ==
X-Gm-Message-State: APjAAAWDMplimLylpXjPPt3B6NkbNhzUqPNy5ROOMU4iXVZPt0rv7pJM
 L1i7kpsyKIMHFZaL35lgJ22WNAWSqRM=
X-Google-Smtp-Source: APXvYqxcAJrcmpvr7/K/LFeB9QoRDG9hoW/+Wh0dvHT93oYnsjvEnWP3OfC0MlMmKOgGg6wJ4n/yag==
X-Received: by 2002:a05:6000:112:: with SMTP id
 o18mr29440105wrx.153.1561475774684; 
 Tue, 25 Jun 2019 08:16:14 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id t1sm18456995wra.74.2019.06.25.08.16.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 08:16:14 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>,
	Kevin Hilman <khilman@kernel.org>
Subject: [PATCH] ARM: davinci: da830-evm: fix GPIO lookup for OHCI
Date: Tue, 25 Jun 2019 17:16:12 +0200
Message-Id: <20190625151612.6204-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_081616_492187_CF26B6CF 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The fixed regulator driver doesn't specify any con_id for gpio lookup
so it must be NULL in the table entry.

Fixes: 274e4c336192 ("ARM: davinci: da830-evm: add a fixed regulator for ohci-da8xx")
Cc: stable@vger.kernel.org
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/mach-davinci/board-da830-evm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-davinci/board-da830-evm.c b/arch/arm/mach-davinci/board-da830-evm.c
index 51a892702e27..aba10a2bc6b9 100644
--- a/arch/arm/mach-davinci/board-da830-evm.c
+++ b/arch/arm/mach-davinci/board-da830-evm.c
@@ -88,7 +88,7 @@ static struct gpiod_lookup_table da830_evm_usb_oc_gpio_lookup = {
 static struct gpiod_lookup_table da830_evm_usb_vbus_gpio_lookup = {
 	.dev_id		= "reg-fixed-voltage.0",
 	.table = {
-		GPIO_LOOKUP("davinci_gpio", ON_BD_USB_DRV, "vbus", 0),
+		GPIO_LOOKUP("davinci_gpio", ON_BD_USB_DRV, NULL, 0),
 		{ }
 	},
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
