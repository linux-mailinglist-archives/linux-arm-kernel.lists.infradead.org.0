Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F7E17311C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 07:34:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GefegWJ0FTmRrIkKWkafBLDRsCSk3FMRqNf8pbFx/Sg=; b=ja8
	ZvZ70BVMwv24XAXIs9uuMqvgDuEuDE6zKLCx6dymED34BNSFzM8+z4fMsf4Hjtj+C5dZDQWUgkwzD
	2rYV+2faYkHnICaVUFvrpuRTkH0UkbOPRiCnyOEqSVJIjDZS7hetbxr12kCbcFvdfUMPA3tx+H+ko
	CU8LVRdDvA0tCuNYMjrSCKZUsYL69ePf56z6l7zteL7wwUGI8ncD0nS5RcN5qfSpCvU1iG1MzClUE
	gWTR1VqWB+cQKg0dkeB5tH99rItD9X6n4p9pwF/POiamvm/Ebc1UYyCAAfQDD4BaVZfi6VuH9Ofmz
	666jpkz1I8OTlHTFrgB50APoqAjE+RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ZDe-00081D-Oj; Fri, 28 Feb 2020 06:33:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ZDZ-00080t-5Z
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 06:33:50 +0000
Received: by mail-wm1-x342.google.com with SMTP id d138so368886wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 22:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=SeId1K9kCYlRnsLVKxSoPARgCfEt06rQxOjVRJ3Mr5E=;
 b=NoLjISZEbZJcbs87Rx7G7WWPaw+MT4fi1WtnBCwYP2DmP08z5Xcn/nchoK1nq0cV1H
 vVjqWeg4vfUNfciN9WsasYR2NERcF6PtR1pZNZ07eG8mzQapQxqgOPSosNEfDtVxbN+D
 jxAV3rZ++0mSFo9NeBoPOXzhS6huJ8XKt3Q3l7BgkRmz1i7rpnGeNOupS5UD9FZXkz8+
 HeOa+3iRrIPZHH0ecuDHbBK+isWR4o8s36JHgZr++ZC8YBztSJDybfsluVuFmwKJjEJa
 qF2vx91z5ecGveKSHgKuicFA7/nucp5yfVzBrQVc3E0O4aFUrsV8xFbPCeGA/FU/pF+h
 L0BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SeId1K9kCYlRnsLVKxSoPARgCfEt06rQxOjVRJ3Mr5E=;
 b=lnZ+VP2XxJHp28UvF4ffo9ZHWxhlLemZ1F/qsnyV6V8QRLpgAToaeY/dsjubTdZyQ+
 l6askIcRLktJ9kfnpfKh1EYSVLx3FYBFWK2PgMuOroLWJUrWZ7w3jZVQW9P1EiD8Ubwu
 oX6h8VylOw9G5PcGa/WFquAXx209K/6prg/RiP/+YYB+TrXacWGPC7oMjvc1OfCPxsuf
 79/q4LBcHTi/zrLHc7Bw1WepBGJmJlxvvVRSIPyoQMPcOdYM+p9CNtu5WgxcJSMAmE1r
 Ua2BHA1Y69okM3P0y3wxR9VdQ7Da0eNtq5gqOI2bsW/lNd8YNLUV73oXRx+52DFNKxBn
 yR4A==
X-Gm-Message-State: APjAAAX1TahXgSfce63X0bUTBh9wgsF3boWy3UpHN7f3MswLUSPY2/aC
 ghwW96owGLShgYTSxNMnS4BkdXkRs1Y=
X-Google-Smtp-Source: APXvYqy4EfkRJE8J7hWmqNsyE1ryRXoSs7t/mE56wW5Nj7E15Il90UYsdETWqvqSudu/dQMXMilkXA==
X-Received: by 2002:a1c:7d93:: with SMTP id y141mr3050186wmc.111.1582871626798; 
 Thu, 27 Feb 2020 22:33:46 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2de2:1300:d9cc:d15b:e13:b06d])
 by smtp.gmail.com with ESMTPSA id z21sm790118wml.5.2020.02.27.22.33.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 22:33:46 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Boris Brezillon <boris.brezillon@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] MAINTAINERS: adjust to renaming physmap_of_versatile.c
Date: Fri, 28 Feb 2020 07:33:38 +0100
Message-Id: <20200228063338.4099-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_223349_211268_2DF35889 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Joe Perches <joe@perches.com>,
 Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
 Sebastian Duda <sebastian.duda@fau.de>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 6ca15cfa0788 ("mtd: maps: Rename physmap_of_{versatile, gemini}
into physmap-{versatile, gemini}") renamed physmap_of_versatile.c to
physmap-versatile.c, but did not adjust the MAINTAINERS entry.

Since then, ./scripts/get_maintainer.pl --self-test complains:

  warning: no file matches F: drivers/mtd/maps/physmap_of_versatile.c

Rectify the ARM INTEGRATOR, VERSATILE AND REALVIEW SUPPORT entry and now
also cover drivers/mtd/maps/physmap-versatile.h while at it.

Co-developed-by: Sebastian Duda <sebastian.duda@fau.de>
Signed-off-by: Sebastian Duda <sebastian.duda@fau.de>
Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Boris, please pick or ack this patch.
applies cleanly on current master and next-20200228

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index fcd79fc38928..bbf2108fb9fd 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1294,7 +1294,7 @@ F:	arch/arm/boot/dts/versatile*
 F:	drivers/clk/versatile/
 F:	drivers/i2c/busses/i2c-versatile.c
 F:	drivers/irqchip/irq-versatile-fpga.c
-F:	drivers/mtd/maps/physmap_of_versatile.c
+F:	drivers/mtd/maps/physmap-versatile.*
 F:	drivers/power/reset/arm-versatile-reboot.c
 F:	drivers/soc/versatile/
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
