Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D625DF5F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 10:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ne82rVM1Z+sGORStK+OMwEM6ZzkhZRDkJs5G8EI5ggI=; b=PHjq5AepVsmQga
	OqLPRnj7dHAlf7k1me3rf7RAOAn0djY9Hd/Bbr5aY4ml8EvZ8jCUTkiMQv/2CRfaGqESSjqxt2tck
	GWohq3WUa8xm8lGmQfSP4s92fnb0EKAwqU7rwCOHJ11G9Zwogw5aUQS/iawwmAOOZVbdLLM0vZA3q
	Q+/AtjEYUE19KSigSr3nar9mGd1gXSaHRKtEGAwgxwiOrxWN/m7llcdbHgEHLiapYdQ7LOoKPHznX
	RbKT1FVGJUX8aBusFvzIS4r11UPqp+3BCAdTW4DpeV0NMiieDs88Ei58fUjHBDG16qOYRelSJhWa5
	CoHuXm8CzbB7K1gHun+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaOu-0003gA-Vi; Wed, 03 Jul 2019 08:14:01 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiaOU-0003WY-Vf
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 08:13:36 +0000
Received: by mail-pf1-x444.google.com with SMTP id i189so844106pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 01:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jpedf64g2nGaIs7kgKn6od/wbXCzG2Hoh0kidvPp7dk=;
 b=tOprpnLAEEu6fBkdjXEIJ34BuvWtKBDm5oEf54+Da+m50nWfaYSHHYYdb5/6Vg0El4
 GJXh6N9s/2RFeP58PZSTqgYb2ZdhyQS2yTWrNvpC6u1D9qtX1/Qlc4cRYCxvCgbG0De5
 jguuTe0m9jiGaF+yO+h2AMOilbpq1WM7maY29R5L9CrC/EYcCkNr9OWivOSCFOjuq69D
 EczBnsIA5UnKpZuB9Ia+uJvA+97afMhGs5Rm1HCuUAZfMqJdl+6ll0oGKFfn9b2dITd7
 BNZ2sm9qhOeUAIBRDu9q74BmWc5/WvUNz0KwH+MVw2Lb26Xh5Rqc3UaLLh7sTs8/xFit
 RP8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jpedf64g2nGaIs7kgKn6od/wbXCzG2Hoh0kidvPp7dk=;
 b=GAZk4nnR878HLpqfTUT9LptZjAGPttZw4yYi634QlIsWa/EJD3P/bDcWEKVwTXJnxU
 ZzcHsypTi3xj8eFCsTXoI/FuU7suAuMCGlUBYr1GMh9TQAsYPlcxpF1oDLe+F4ZTZtCU
 wK5OY0idshv3COFw505s7mRcFrT11rxI9WgGB40MNmrD/bgyAWPx5Z5fZaf6dRPQpHud
 jSacVQJNVSjIrdggHKrljUZZSXL7yO8/qXjTr/rTU4h2LGluO0oDePzQ3PJeTni3qLh7
 m+oxIuTBorc7YmlkDZsn+kRWVlUqk5yGFF6OhAVtBecTsCerU0WO72k1xT4c5iAAlPv5
 fH7A==
X-Gm-Message-State: APjAAAWU7X0BVsLpG3ZNVvumPazfAHc40n+LksazHEhKDZW1fIEZgipE
 22wEMskONWNJDtXma5qoXlI=
X-Google-Smtp-Source: APXvYqzNOnUDpfrEJM1ib6cYQUAiqJDL28YiIUT8L7BJ5nYJWLkdmVuLfk19mXffx4aXSbV1sHUrBQ==
X-Received: by 2002:a17:90a:a116:: with SMTP id
 s22mr11066464pjp.47.1562141614267; 
 Wed, 03 Jul 2019 01:13:34 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id m6sm1176450pjl.18.2019.07.03.01.13.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 01:13:33 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: maxime.ripard@bootlin.com, paul.kocialkowski@bootlin.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org, wens@csie.org,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] staging: media: sunxi: Replace function
 cedrus_check_format()
Date: Wed,  3 Jul 2019 13:43:17 +0530
Message-Id: <20190703081317.22795-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190703081317.22795-1-nishkadg.linux@gmail.com>
References: <20190703081317.22795-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_011335_081012_81A2F8DD 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove function cedrus_check_format as all it does is call
cedrus_find_format.
Rename cedrus_find_format to cedrus_check_format to maintain
compatibility with call sites.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 0ec31b9e0aea..d5cc9ed04fd2 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
 	return container_of(file->private_data, struct cedrus_ctx, fh);
 }
 
-static bool cedrus_find_format(u32 pixelformat, u32 directions,
-			       unsigned int capabilities)
+static bool cedrus_check_format(u32 pixelformat, u32 directions,
+				unsigned int capabilities)
 {
 	struct cedrus_format *fmt;
 	unsigned int i;
@@ -76,12 +76,6 @@ static bool cedrus_find_format(u32 pixelformat, u32 directions,
 	return false;
 }
 
-static bool cedrus_check_format(u32 pixelformat, u32 directions,
-				unsigned int capabilities)
-{
-	return cedrus_find_format(pixelformat, directions, capabilities);
-}
-
 static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
 {
 	unsigned int width = pix_fmt->width;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
