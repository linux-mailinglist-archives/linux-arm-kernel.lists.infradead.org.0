Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3287233728
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6eHgi9UWD1IUZxE0FD9vodZtjrhH4G02ee6ZhuWtG0=; b=OT996qb2HWmUi6
	P5NvEuuNRmNo1/BCPJmCtx2PojMHMrBpWPyO2L2+0YmRsAKn6Z/mYSs/j3vkfO16im/v6xDAstn93
	mDNJKd+4WfOmZIg9633m7gxMlrZgCiljP6OElHHwxbbifCuOmhunvZLjQKb/hTDqrZFz36lT+VX+P
	rwFZxKdEwXdB1uAgfKL6VKtnGUigRqa9PkyWLVmiZf5ruAbFEgceLg2Yb8lh5N4ShpboMiivRtfVl
	clu+Z/L6WzdzG1SbIteXYhNivV/3Ai5XxV8wLk1t22R8ovR1TVkf+P90KFCKz5yD1Re4BheHNXziz
	53oV+w1Iuw3P5/ZHkJFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXr4W-0002mP-W3; Mon, 03 Jun 2019 17:48:37 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXr3f-0001mP-8g
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:47:46 +0000
Received: by mail-lf1-x142.google.com with SMTP id q26so14291277lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GjT900taG1ijSa9lWUX/G6V7gIXt/Ttjrhy2y92+ySQ=;
 b=Ogrh9eTDgQAUONxtoCEsmlhtx9p4ZZt29kbWmmfagH5K1N51dWWiwQXBmLQshGR8J8
 JaNQR+8WKr/MTf8K1xrO0Syb9jjiMj35sivUp6zm1jV3T/QuMpE6Dw6L+RD342txYebk
 NJV8ZHfOTYFNFDubmYUOXAbSAhy5J+kUkggW04A+6mKqqgGSxB3BC5kzw4qweIKUiWXc
 RWh6GQHeO7X8UFlW3a9oj4ZkCyHYFG6u8OIgykswrOARCeyPCclz+zAeg7NjyYx51bDx
 //dpzaNZ8IwgIk00p3O4Qkzp3RAjBuhVSNlUHZlOzqvOgVE12g4mWxUF53/MCmxYTpvE
 sw7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GjT900taG1ijSa9lWUX/G6V7gIXt/Ttjrhy2y92+ySQ=;
 b=kFDRXWFGDFnfgaFe25NVISBHP0SIY0G4TDO/pAk9zQ7geloKtjocJPBQhzOY+6h+Ky
 OsTnaziJueHSP4N+RZ33UQt65lRR33KRrYE21MsUWzGnM/y98p97itkbipvGo/F/sD9U
 PnnUXlwXZ63CDjhTbcsXMFel861STtbK/g74e/F4kXgAO7djAkbaApeXa4j+yVAsMjAG
 5JU/svbOWxh7ZdNIbmBN3XyA1fn3MUZK5ycQdAzFSPxvwUADb+AFeFxO+4FM2ltmOZZG
 KhgsySgKgQ+GTAenc/W/xD1i+urOucM1vq2D56Ih7mRcC/quhf0AihzflMLWZVRkf0eQ
 opPQ==
X-Gm-Message-State: APjAAAW/CzZ4vpXHQOQhAK9rbpyxrbp4YJb9SuZKiDabT0Q/Tpo+ObN0
 sYAxbJxk5xEhXBtR5wDMlto=
X-Google-Smtp-Source: APXvYqymibEEWq50h1UhkT3XaRXxM5Grj6g5eLWzSPNypWuItCujKf4Kk6Dvxeq4YPayp2H9tk8i+A==
X-Received: by 2002:ac2:4c3c:: with SMTP id u28mr4407330lfq.136.1559584058502; 
 Mon, 03 Jun 2019 10:47:38 -0700 (PDT)
Received: from localhost.localdomain ([188.150.253.81])
 by smtp.gmail.com with ESMTPSA id n7sm2803532lfi.68.2019.06.03.10.47.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 10:47:38 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v4 1/9] ASoC: sun4i-i2s: Fix sun8i tx channel offset mask
Date: Mon,  3 Jun 2019 19:47:27 +0200
Message-Id: <20190603174735.21002-2-codekipper@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603174735.21002-1-codekipper@gmail.com>
References: <20190603174735.21002-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_104743_436455_709AAF5E 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, Marcus Cooper <codekipper@gmail.com>,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, be17068@iperbole.bo.it,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcus Cooper <codekipper@gmail.com>

Although not causing any noticeable issues, the mask for the
channel offset is covering too many bits.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index c53bfed8d4c2..90bd3963d8ae 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -106,7 +106,7 @@
 
 #define SUN8I_I2S_TX_CHAN_MAP_REG	0x44
 #define SUN8I_I2S_TX_CHAN_SEL_REG	0x34
-#define SUN8I_I2S_TX_CHAN_OFFSET_MASK		GENMASK(13, 11)
+#define SUN8I_I2S_TX_CHAN_OFFSET_MASK		GENMASK(13, 12)
 #define SUN8I_I2S_TX_CHAN_OFFSET(offset)	(offset << 12)
 #define SUN8I_I2S_TX_CHAN_EN_MASK		GENMASK(11, 4)
 #define SUN8I_I2S_TX_CHAN_EN(num_chan)		(((1 << num_chan) - 1) << 4)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
