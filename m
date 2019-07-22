Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC22E6F94E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FUf+YwB7VadAisBKEf7vmbEzFSiwIDv7QcSsDrbPjw4=; b=SK+04w4G1l8J6V
	1lL0HAdAsSNmYjcq3EXIK1Bq3XWs721SNhTjBuVA7Ng9uKb/+GRghFR9DfeMoES/K4mmNv0xltGOv
	NfX6hjQkQsHEkuiT8OH913wEzB9m9W28ScSztf+20ZOkK95YhlD5Ha+QFEQ69gEyaLevZBPD68//e
	QRfmpfQLtCuhVT08MP667XLbYgr+9Fy8sx+ry0WRxDaZPQBZpvklwE9LxmmD/jFMNtmjFhVgO9Kns
	DrFlXXE9oWf6nAP7x7MNP13ova9hZTXjJMsIJotSqrrbjFxd7mwuo7qbcnPmCKvbdwZ/z+VenzlrM
	OIxPQXvucnRSo22TzrPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRTv-0004xZ-1B; Mon, 22 Jul 2019 06:07:31 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRTW-0004x6-ND
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 06:07:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id y8so18685449plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 23:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nJXrgrSN2Tlu02tkqLNuQE/VhMtIboN1RIqkDuAB2P8=;
 b=rv3mTh5ZiJppYaMjbz2Kd983X1vNPC07xgeWpCrm3uLSWI4w43fHI9rEHIx+fXNnhh
 Gp6FUgfPY1t+co4YQPixNOVgTgjUZ2QbthzWmGRYjMKcKysQioE0LCZ1eQWfMbgzekdr
 wwGHWIMgB/uDgHVNZy4dteV/sM26uIAS2iZqjd7+tTeENLooPnhaPtv8UE/1AMajbI9B
 9Lh+Epd7kxdEC0bwJhS9dv4D37wL2A4hVz4rbW/EBHIpHErrpl4cBVfTbEHu8R2HSQxl
 ElKqY7z12d/6qnk6eG9M6e/p9NQqBQ9ZclUDjZ3DmcfFT0C2SM9vgED271a8UmS7VY/M
 7jPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nJXrgrSN2Tlu02tkqLNuQE/VhMtIboN1RIqkDuAB2P8=;
 b=Na7bsUshqwHKkDloLXmmWqsbWaFBnTgn5ikLlHD2NRuUJGZerdnhk4A/560xs4mIKG
 sRfWPNk3OVBWzP+iMDn/PDbclw7TZUbdue7ebtFihx5pZejmv/hEGgtY6rwKWpvQCXb1
 Fn2QgvLRJSFgk5TqUonQNPb/JbDuKeC31/pG3P+FUXXo6uF89ncl/T31i2+5vUQMULIl
 vZoRBuf8BdijyI/Cm6YtbhQa97lvmUH+znNXL+1tkIPyvbmig0RCr0Baq1pP2Zx3onM4
 jrO7yXYiMVx69OloE1tEa5VORiSjube+kUwGkWQhJWNvGYahQrZI9gD2dyo2oyydAHnL
 zAlQ==
X-Gm-Message-State: APjAAAUvmylx7863NoJfPLGLyCNkHoMR8lhHKlA60BXLcbVGoHA56Ij0
 1FV1nCiDq/eKsZVIn8rn6vQ=
X-Google-Smtp-Source: APXvYqzk6v7tQvu2fTaY2Q2UszOnOuD4ns4eYEIDZ0p4SxWS/dsaD+LXL1DVIAQFRdWnk9tAHO6JCg==
X-Received: by 2002:a17:902:2f84:: with SMTP id
 t4mr68932398plb.57.1563775625815; 
 Sun, 21 Jul 2019 23:07:05 -0700 (PDT)
Received: from localhost.localdomain ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id j13sm35935646pfh.13.2019.07.21.23.07.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 23:07:05 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: maxime.ripard@bootlin.com, paul.kocialkowski@bootlin.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org, wens@csie.org,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] staging: media: sunxi: Add bool cast to value
Date: Mon, 22 Jul 2019 11:36:51 +0530
Message-Id: <20190722060651.6538-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_230706_782211_A57E2030 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Typecast as bool the return value of cedrus_find_format in
cedrus_check_format as the return value of cedrus_check_format is always
treated like a boolean value.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Add !! to the returned pointer to ensure that the return value is
  always either true or false, and never a non-zero value other than
  true.

 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index e2b530b1a956..b731745f21f8 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
 static bool cedrus_check_format(u32 pixelformat, u32 directions,
 				unsigned int capabilities)
 {
-	return cedrus_find_format(pixelformat, directions, capabilities);
+	return !!(bool)cedrus_find_format(pixelformat, directions, capabilities);
 }
 
 static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
