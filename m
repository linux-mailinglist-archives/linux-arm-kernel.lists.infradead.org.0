Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A35701B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2OT+B9OR4gFYx/U8xG5MMVJW8j6xPrL/lOhKk6li1z8=; b=pjR7eNxNDqQ7MpJNUDDXK397i5
	XoJjZed6ZKz0BqNMPpxqU0rf0rM3MauW+oa9kMvuVQgMYxFff6EUw9bp8dVPYtYhggXB6aGeo0zfT
	vQDRCOcsZ0CuFFSxiu6xDYPhcr+jX30J6EbuvpZFSbqgOBGhrsDg6g7EAQ/ItydQlrXsiyPHBs+hy
	ggy6GJSroPu83pguqqev+gxoO0M7sLRJ1gWSbs6LV84e9QfZU/IgZyiLBWx4FwmqBgHS1/OM2m8d1
	dwtmS3vcXOPjI7Z0Zvx0Pa8aYaCpE+I2gi8an/5Gy2/FUT1AIzPYLXhTyMhfU0KDLPyeJFZ8KOQ7g
	833TZm6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYhN-0006He-9A; Mon, 22 Jul 2019 13:49:53 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYdW-0003SR-JH
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:45:55 +0000
Received: by mail-qt1-x843.google.com with SMTP id l9so38510267qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=U0GR2nWszffo7XIu1Xrb5HHx28cgNDg/rwJdE5U3hzA=;
 b=MicxfiUt/NHh+TlfWiCAc1s8UkgRgbJsFsrjnWhxTyO0f92JEw0idq9uPSckxpMY4m
 1PyYoKkr9knQfVMO6PCcjlZ/+DN53d4ZFhAR8RjRlG2CUB0H2JL6nnpYqvVHuC2cOp8L
 x0Sov9jvzJtJtuoka8fNnh/ZjmneiUTBE67n53X0Kk/c5CWuD4TIVxhdKQaEXoSlD9L3
 1R+5/6g+DDm+TVT25cPQPEpW5h6DRAhignsuoC5fB1RNGeBr1S/lEjTyqs/6nW4ZhEgG
 bX73Hulep9W/y5zMJXMXyUiFXa/sJ5q0uP9Y9NVYMDMXmO1ohBB5b+CXpfHJufw46HR1
 S1gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=U0GR2nWszffo7XIu1Xrb5HHx28cgNDg/rwJdE5U3hzA=;
 b=t9guDy10LU13gahw5Mu6TC5bn5tPMv4fQK4obUuNJYEoRREO6Vdj8+7MuJbl3YoKpt
 Kr5oDKzSOJ1uxfLsG1wdb5VD9a2N1Q0k7F49t02eGYwVCTzabfRpL0skSqtl4lcNT5tP
 sbrsFll4JBVQNjG+EP0G10chtvsNu4mkLKr1xgz1TTn5ISLjCGWqpJwbOLAivAPvQD/C
 k7gNDDt0PLSERaS2B2AVpAzzVVALhbuAI+YOAU4bbypEzufwiphsSuAMCY0S4f2R0HKC
 gla3I/ckV0aVuIE1wFzg/tiNs9NlI24rD0sycajwuSshCsRSxit5jI+VW3APgx8z0twB
 kX6A==
X-Gm-Message-State: APjAAAUQHFH0/qPVbiwgAxuQTxqvknz0frizq0LwWMo2JAkL4d7K9YMP
 oqjHqS2/hoFyQKlQ7bIJygM=
X-Google-Smtp-Source: APXvYqxjMVeZs4BGcqedYS62MYZFWn125tLQaO1So940pxkJBWgWAJc5kFvo6vam11StvxqmG7i5eg==
X-Received: by 2002:a0c:b758:: with SMTP id q24mr50477956qve.45.1563803153822; 
 Mon, 22 Jul 2019 06:45:53 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id
 v75sm20062268qka.38.2019.07.22.06.45.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 06:45:53 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 2/2] ARM: imx_v6_v7_defconfig: Select the OV5645 camera
 driver
Date: Mon, 22 Jul 2019 10:45:46 -0300
Message-Id: <20190722134546.15094-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722134546.15094-1-festevam@gmail.com>
References: <20190722134546.15094-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064554_715048_08C47D84 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabio Estevam <festevam@gmail.com>, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OV5645 camera sensor can be used on several i.MX boards, such as
imx6qdl-wandboard, imx7d-pico, imx6ul-pico, etc.

Select the OV5645 driver by default.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- None

 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index a53b29251ed4..bd2e2f5d1c3a 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -272,6 +272,7 @@ CONFIG_VIDEO_IMX_PXP=y
 CONFIG_VIDEO_ADV7180=m
 CONFIG_VIDEO_OV2680=m
 CONFIG_VIDEO_OV5640=m
+CONFIG_VIDEO_OV5645=m
 CONFIG_IMX_IPUV3_CORE=y
 CONFIG_DRM=y
 CONFIG_DRM_PANEL_LVDS=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
