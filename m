Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0EA84E35
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tWmUgPDKo7MQvjq8IB3eSzw9wQCXYHMpDHnzJBU1u8M=; b=AJX
	YqHqSHjeyBGPC09mdfS41sugPcxIfFgEt9WLrFfpoKz2n5c7I9xjHYs0QrIE3QHMc+Z3K4Nclvnnu
	AJ7fQkk25wfr1LBPkoIcRatkxxsZG5+70UCFQJljJn2HDv1xrC6FA9J2IefFX6dUfXaaBKlfaL9sb
	MWgkTmbn5zC4AQcuCRWK8uH/wBrZ2z0j8aE68GmwXaiiRPtZySlliF3e3gBLd14SeC0m5cI8unZ47
	HFW4lWdlRDk8zSmd09NQm79h9KjpwQFlV6N90QvM8lCMylSCWkIoXzOy5ICzvi80R3lOr0Xn5g5Yy
	0naw+n8EG0OGB83drlcgEaTbI7rgDlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMaL-0004hp-BE; Wed, 07 Aug 2019 14:06:37 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvMZw-0004hP-UD
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:06:14 +0000
Received: by mail-ot1-x342.google.com with SMTP id d17so104824201oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 07:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cQ2LKOdCMdZHykGXyIOaHo4pDeD4U7snrOgDnkaDBGw=;
 b=GT0C0ORgVCAZY0NWnyVHKkZ5Ufrdftns+7Y1TxfqyO3aBjzXsp/YwTkNLWjBAkCRdR
 hCG8TgRIVZf2zzwU/zpX6A4ZoOTh7Mh5uyhXrqF3dD878SzcZkcoa46dPoFDLJ/PgVGC
 tiGA6zSQ4K5g6fqr7JS1SfqSrzdSABVP7bEFskvD0RxuU8Aqbc3qWcUxxttn6aurn/zW
 fPKl7ZPa9NjKQifwaVhZZpymX0cQYZuNgpzxRPLgBJVFZWw8Z71ruOH+SnZkGn2Df6hW
 Z+s28ptSy12PiLuRmxW8DGu428LFWOq0AAuYm5hPjIFblxcPSygsPMQKeMk5SYjfRzJr
 DJrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cQ2LKOdCMdZHykGXyIOaHo4pDeD4U7snrOgDnkaDBGw=;
 b=NJ7qMLFT8Cdv7sOcl1L9cPA9pAn4JgVJ+ibt29rGEDRG0H51XRhINY8c5EdHh1A6aK
 oD0MqovP8PCX5F0Z+jNgtx8TptqR8nuw+PcmhUIfTrAqXjNizl2gkjvfYctkBHHsyWZg
 G47XVh97P5k1xTJZ6X9hlx4QqfY7ta1hh4spGvZNXofk8Ye0xbJZfXe5S4Cni91rvIY2
 fxpboyloY5UtuLKLs0tvXEWwQJ3IiCgrMoBTxYlVectTHLNLSucjPABQI1YuqY5SpEtY
 45eobW0t2dR3GvJuzXhvKVA21uI3pt2KB7rk7mx5tvVfe7YoP/v5gex44JNroPDkVa9M
 m4PA==
X-Gm-Message-State: APjAAAWhSXK80eOeb/AdlKYXVaHAM1SpQ8Z4kvg0EXl/wRWiFUe5/qVA
 CkqT7KziVB5AtRp0Oz2qhbA=
X-Google-Smtp-Source: APXvYqzF9aSBJoSxjpF7VUjlnOrNCkzhfHvxUg29ma8CWVlQ9DfWi/bfLYZT5P7oR2sIuksKsDQCxA==
X-Received: by 2002:a05:6830:c6:: with SMTP id x6mr7567410oto.64.1565186771090; 
 Wed, 07 Aug 2019 07:06:11 -0700 (PDT)
Received: from localhost.localdomain ([74.51.240.241])
 by smtp.gmail.com with ESMTPSA id j8sm29412537otl.9.2019.08.07.07.06.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 07:06:10 -0700 (PDT)
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
To: vz@mleia.com,
	arnd@arndb.de
Subject: [PATCH] ARM: defconfig: lpc32xx: enable lpc32xx GPIO driver
Date: Wed,  7 Aug 2019 10:04:35 -0400
Message-Id: <1565186675-1856-1-git-send-email-slemieux.tyco@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_070613_188130_0EB26032 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [74.51.240.241 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sylvain Lemieux <slemieux@tycoint.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sylvain Lemieux <slemieux@tycoint.com>

The change that allow the multiplatform build for the lpc32xx
platform add a new kernel config for the LPC32XX GPIO driver.

Cc: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Sylvain Lemieux <slemieux@tycoint.com>
---
Note:
* This patch depend on the following patchset:
  ARM: move lpc32xx and dove to multiplatform
  https://www.spinics.net/lists/linux-usb/msg183095.html

 arch/arm/configs/lpc32xx_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/lpc32xx_defconfig b/arch/arm/configs/lpc32xx_defconfig
index 2d75bd8..09deb57 100644
--- a/arch/arm/configs/lpc32xx_defconfig
+++ b/arch/arm/configs/lpc32xx_defconfig
@@ -94,6 +94,7 @@ CONFIG_SERIAL_HS_LPC32XX_CONSOLE=y
 # CONFIG_HW_RANDOM is not set
 CONFIG_I2C_CHARDEV=y
 CONFIG_I2C_PNX=y
+CONFIG_GPIO_LPC32XX=y
 CONFIG_SPI=y
 CONFIG_SPI_PL022=y
 CONFIG_GPIO_SYSFS=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
