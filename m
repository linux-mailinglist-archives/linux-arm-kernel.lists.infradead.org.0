Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD276BE1F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 16:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+UVOAEEIaUJz7I8FRH8NjhidyJRlu4zhMIn10tMvFrU=; b=qyiCM1M59kZuPA
	6oj5j3o+1L9xaSl+NSl8U343gMF4Po2itxf7Pyn6VcAZoJDVUig5X+hDEJ0EXU7NZjI8Igch/27It
	z8v+4zxRb1qOBclgqNQcj9xsWNQB2ChjaiyliTTnkB22zIqzQVwtC/+bmHJ7oWLW7VVO8hP+gK/0A
	LqDXO7UW9vgvQIlkDLdl/lCkzv10BAWz9RnhTPaeTAMZ5xtseg88u+MQdwnQ6JKvrlsVIu4BZhi/0
	W7fSUtzqUwKprCKy9uwGvntSNaeY8dtz1X+sVEugkS0VC7zHcJrAh1V9HkTvp38s4qEVm2ltXalqe
	kat3CEhTWkfoFQmnanSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnkqK-0008Iu-NQ; Wed, 17 Jul 2019 14:23:40 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnkqA-0008II-Im
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 14:23:31 +0000
Received: by mail-pg1-x543.google.com with SMTP id l21so11248546pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 07:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XpT+hyHQLrqTrk2x0mHRYSE52sz59GDyA66hoyA5DA8=;
 b=cR9ZpfCpxkVPqyp15+rlsfv0Uo19LMdW46Mtd25oPGRpue1omqQnENfn4j2eRm9ude
 skJnLsFyEw3cyE/jFOdpetpR8xKckZyVQpYuGkbOMelnKMLFFxPmWrC/bYDw5WKzqsw+
 bjYAZk8DOU5BKHGZZ1RfX2dzKqyBfSX7CF97Yu9uuYX9L3gAuehEkm0jD5F6H3wAbxKF
 Esy/Nfe6owVBjicH1/ZRvt525HyUXAuQtA/BpebfvNzQ5fGjRWNp2DynMWeYqI4P+dE5
 lcAvHd8VxlZH7qpQvdPGkP63uKHcEjFXLj15q1BPmiXpenaKKjFXrKL+vDtkw8TBYDor
 363A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XpT+hyHQLrqTrk2x0mHRYSE52sz59GDyA66hoyA5DA8=;
 b=CKiHTpF5llew84RO7i/AxCcbQP8Q+ABCkyBlAAkne9MclKqg9bknDXZolvxkBmhqst
 CTvfyy5hXJXC3soEAQhPfm3dgYzzC3DYRG9oHgpkU1sv/1KHqi2cT8X23mn6UgJ9q5SA
 48rT7UeVTmGm+94EFnJUF3fDY8hSaM+XULGobkJ04F0oNuNljygBaVB/UevQZZh166Jf
 HVTILaTYHjhPkvqWzUAynZTa03yAF3l3vrq3k9Em+Yts+wjHLW2FMMI3u/aH31ypMJMK
 q9wSmGc9tK1VYJ+kgJN3u0aKfVIJtQqvXYxMQC1DlY6/4EhEPvR1HjnvQUrMZbTUytsT
 b5jQ==
X-Gm-Message-State: APjAAAXz9HZWYFbMbseFxFaXMs/h3DIw2qTDC57Van3mRZW6ZmK85zxB
 QDhjVdK5srgpVJaVoR8erw0=
X-Google-Smtp-Source: APXvYqzMGbB7T5JbwWo8Ni2OiTookhu2ITf9hLjDGQPrn3tlis2UqVAOlnIZx35dPi6C0KPX3tPMiA==
X-Received: by 2002:a17:90a:9b08:: with SMTP id
 f8mr44498517pjp.103.1563373408094; 
 Wed, 17 Jul 2019 07:23:28 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id l27sm2324253pgn.19.2019.07.17.07.23.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 07:23:27 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: paul.kocialkowski@bootlin.com, maxime.ripard@bootlin.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org, wens@csie.org,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] staging: media: sunxi: Add bool cast to value
Date: Wed, 17 Jul 2019 19:53:15 +0530
Message-Id: <20190717142315.3119-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_072330_648038_C2B25CDD 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index e2b530b1a956..f00a048a0a01 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
 static bool cedrus_check_format(u32 pixelformat, u32 directions,
 				unsigned int capabilities)
 {
-	return cedrus_find_format(pixelformat, directions, capabilities);
+	return (bool)cedrus_find_format(pixelformat, directions, capabilities);
 }
 
 static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
