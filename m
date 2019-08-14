Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B1E8CBB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:13:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpOikxA7iRST6DBEQv2zNSOmcxg3Sm65vhe9lDN6Nnw=; b=Sp4pdGWd7hSzp4
	rPdShq6k5Qik/xbyPv+2LmzvI/+RylugszZscUnyeoTp/pnX/rT+yUMQk4EjOL0jsHgCnLgosmu1a
	USkR8qbgo3g/NeUGmHMZ1bQsjUAQycNDZQ031DWdV8EdEibtwMjlSNwVUkJksBQ1EGYM9PKQvxIck
	m3UnmOk4sNB3CzkU69b1hEuDJa6curkqbMoDiv6h9hyYmJvA0QwdwQOF6HEmITEljwmDFhnjq4NtD
	9aY7UX7RS4bwVe0cxbJlCU8lnhuWD9kOsGg/zRmfo3HnLFOMRBgITe+Jr13wP4/shC1xog2Kh6PRU
	l3VH1A09Y1j9PLrK8aBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmWi-0003x6-EN; Wed, 14 Aug 2019 06:12:52 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmTC-0008Jb-LX
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:09:16 +0000
Received: by mail-lj1-x241.google.com with SMTP id r9so103703981ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 23:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=go+1BvHiZ551s7lZZtvzU+7HaWl7o/QBHe+MvPdzMnE=;
 b=DB2uNyqKpzDzXvdgtr4TdYqx4FJ1xEsqNOfYwtyOdiyN8bmElVFNz5Y0QHN1tZwHJL
 ZXY6ddKq6RNyTtLEScnryGITuQ2rSc7wS22yci9vy2R9CSaQkY8MKwQFjpeteP/M/Omw
 tFid6mUmH+6ES71/fxOTcUTKhdvsMaMffcuT3R5VQabk+OkUA2QSwkWXOOuWJv5KDTW0
 6116/1ms5skkFH9i9nYOIHmFg9rbrfrl9fNN29VHkWjywexztmApeKsSGr0jpCHcZTk2
 dDqGTu0sAKnTbkJI25Cx1tuShn5R9x6mjRiPrbgg/FTD4nmEJRMr+CHxt3UqAKqmfSXN
 yzOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=go+1BvHiZ551s7lZZtvzU+7HaWl7o/QBHe+MvPdzMnE=;
 b=LmzEwoXhGQBKcO4/FxGCR+qLb4u+6YcqHLUOIjWcuFGVnO1ek61T35W4D0tL871mKA
 xYoKSUi7otwIrLWv+Q2zQT/Rvo7Atez3SOoP3qX2vbQwJxk937kk1QckOE047HyQrov6
 xukJpxKTumsLSnP73rEsW73CKX3OzJQFbF8GAR0tJa08L850tUyZEAt+Za8qVCc2Y80C
 vWyuneP6vwN6x68HW66esr//Fkquk1HlK7VePPhpI7HDkdZbiFIR9VEjDyd2qHEXhn1Z
 U6GRyESOGg4uaAdbeX9V8Ix8GS/kEvcmXkSkfRejsYlUZvOArCZmHjEsn0mrGtSK943t
 L82g==
X-Gm-Message-State: APjAAAXaXN1MLY/9GfVLEDnWGcuIu+YqLjTyExvVXY8CloF6VHFD0Rus
 nxPWFzVEWbYBoYzZT9igGp4=
X-Google-Smtp-Source: APXvYqxke6on79/JFb/mW5nqF0uOU5tx+pV8+KsdaUpiYfd+xIeG5MpxPdARsgAB0SJSFsZtf1z0sw==
X-Received: by 2002:a2e:9b84:: with SMTP id z4mr24044973lji.75.1565762952729; 
 Tue, 13 Aug 2019 23:09:12 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id s10sm3124235ljm.35.2019.08.13.23.09.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 23:09:11 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 09/15] clk: sunxi-ng: h6: Allow I2S to change parent rate
Date: Wed, 14 Aug 2019 08:08:48 +0200
Message-Id: <20190814060854.26345-10-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814060854.26345-1-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_230915_056056_29E0821E 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, be17068@iperbole.bo.it,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jernej Skrabec <jernej.skrabec@siol.net>

I2S doesn't work if parent rate couldn't be change. Difference between
wanted and actual rate is too big.

Fix this by adding CLK_SET_RATE_PARENT flag to I2S clocks.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun50i-h6.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
index aebef4af9861..d89353a3cdec 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
@@ -505,7 +505,7 @@ static struct ccu_div i2s3_clk = {
 		.hw.init	= CLK_HW_INIT_PARENTS("i2s3",
 						      audio_parents,
 						      &ccu_div_ops,
-						      0),
+						      CLK_SET_RATE_PARENT),
 	},
 };
 
@@ -518,7 +518,7 @@ static struct ccu_div i2s0_clk = {
 		.hw.init	= CLK_HW_INIT_PARENTS("i2s0",
 						      audio_parents,
 						      &ccu_div_ops,
-						      0),
+						      CLK_SET_RATE_PARENT),
 	},
 };
 
@@ -531,7 +531,7 @@ static struct ccu_div i2s1_clk = {
 		.hw.init	= CLK_HW_INIT_PARENTS("i2s1",
 						      audio_parents,
 						      &ccu_div_ops,
-						      0),
+						      CLK_SET_RATE_PARENT),
 	},
 };
 
@@ -544,7 +544,7 @@ static struct ccu_div i2s2_clk = {
 		.hw.init	= CLK_HW_INIT_PARENTS("i2s2",
 						      audio_parents,
 						      &ccu_div_ops,
-						      0),
+						      CLK_SET_RATE_PARENT),
 	},
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
