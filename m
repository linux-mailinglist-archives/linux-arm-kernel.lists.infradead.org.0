Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A931A62E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 08:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BDZxax/kVgv5nixTai3nuSla5/XntAlXn7e2ItwOynQ=; b=OrS
	saa4j4FuSIHdORmDZYrOJ1BXrcPnmKB7Ry0bbhFZlmd0rJt3DxEoV0MeU6XvNC2RHgyIMFxkx3JTg
	1+B9dp0R8ELJUVjklr+O2g6ZTFkDXB5J2QS0ZDLT76YVaS5mcdIL9KTp9mcfL+cw/63yKNeD7oMjv
	f3UHNbXuYd9S5H9rdW4Sfpri58rY7n9WfcMj00pJGW0PmVWwKhewREZYXnAF9jjQUW359JIAPisqD
	9O7LvSWO2vGChO40b/VlzdHJFLB5r5qw1pSmx7mFgQwOV9M91TjzQkPMfxcczktDJ1qgm9yUGvHO1
	S0B0gluZrWt/JFPFoshiVfpgythJjzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNsDw-0007tw-AL; Mon, 13 Apr 2020 06:05:36 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNsDp-0007tN-LC; Mon, 13 Apr 2020 06:05:30 +0000
Received: by mail-pj1-x1043.google.com with SMTP id e16so3151008pjp.1;
 Sun, 12 Apr 2020 23:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3v+VHCzqYa2nLQ9AKWVzgqder2TzAWcxRtJCS2UIKqM=;
 b=jCcsgLQN1TCT1fFcxUm0gcxSRENM1/x1T6fQkGr7zXONPtCqoXFsae7koZ+bGI9sw6
 jNUCQvj1/2bxAUgNkXgWMR0CyH/THSAQk82v1H1dIfQL1AW/8VKA34wtgj5+NF2dLg0W
 mmw+gH/Uri1VP1zxj6jjbz4MprcAcimlF8YgtVlJuppZdNayQXOBOuEF6vCKq4DC89Og
 zQNSiFFp2saVuc0232VufweD81WopKnaTUiAt7yZ5Cs+TIHiSq2KQHZHIJ/7TtnMVXPt
 QwCujg7ocwfhGraFDvd0k2g09aTh4Y+YtyiuwehDMicY2lsQze8H0VFVh9H0WQ+vN/KL
 OwCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3v+VHCzqYa2nLQ9AKWVzgqder2TzAWcxRtJCS2UIKqM=;
 b=JiCZ4/gtGi85RXK61pPZT5+R/c32JbuwfqwqCKJZNO9l1mY8uzjogh9NCXcHE4UpcE
 YqXVeb9mp0q9kCxDKVUuBDjXk0Rcz4MS18s9Vu13Q3yyXKk+VcqZUTEzy4Nl90wXpRvp
 tVOo6tdoDQYvvXsW1sARyenD8nhco8vNSmg6fweyasdP1ofk5J2AgZrrKpZkBEk6jcrJ
 sJvbrid+v4INr1ivfSLUbk1ldNT3VwsfsIXrukHcu8b2CuuTVsSYVJBMty/u1oaGFmDb
 6hPASQr3mDwq2YQucqTi3XeqHnL/IYen+qEzW8KM5ZLTLuhFsc5LE6E/SA/sU34bwHMi
 2mYA==
X-Gm-Message-State: AGi0PubXX+v7iMA2Pm0RxOLbb9bzMZ8LI8Rzbu4njOff1kx/ZJaPI792
 eZX5RRlYCP9tbQtd+TNL8Kk=
X-Google-Smtp-Source: APiQypJeDgy30Co3y2RrOWtCgmpiisc6D8lUZn8SmfiDrs7bS8RTQo/09SGMvWPlOMpzAbl+k1tBEA==
X-Received: by 2002:a17:90a:df8b:: with SMTP id
 p11mr6363309pjv.67.1586757928742; 
 Sun, 12 Apr 2020 23:05:28 -0700 (PDT)
Received: from localhost.localdomain ([106.215.20.24])
 by smtp.gmail.com with ESMTPSA id x4sm7687670pfa.191.2020.04.12.23.05.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 Apr 2020 23:05:28 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, matheus@castello.eng.br,
 manivannan.sadhasivam@linaro.org, afaerber@suse.de,
 linus.walleij@linaro.org
Subject: [PATCH v1] pinctrl: actions: fix function group name for i2c0_group
Date: Mon, 13 Apr 2020 11:35:12 +0530
Message-Id: <1586757913-5438-1-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_230529_716863_921B8FE6 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Amit Singh Tomar <amittomer25@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After commit 6f87359e8bca ("pinctrl: actions: Fix functions groups names
for S700 SoC") following error has been observed while booting Linux on
Cubieboard7-lite(based on S700 SoC).

[    1.206245] pinctrl-s700 e01b0000.pinctrl: invalid group "i2c0_mfp" for function "i2c0"

This commit fixes it by using correct name for i2c0_group.

Fixes: 6f87359e8bca ("pinctrl: actions: Fix functions groups names for S700 SoC")
Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since previous version:
	* Removed the white space from commit message.
	* Used the 12 digits for commit hash.
	* Passed it through checkpatch script.
---
 drivers/pinctrl/actions/pinctrl-s700.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/actions/pinctrl-s700.c b/drivers/pinctrl/actions/pinctrl-s700.c
index 47a4ccd..f579a65 100644
--- a/drivers/pinctrl/actions/pinctrl-s700.c
+++ b/drivers/pinctrl/actions/pinctrl-s700.c
@@ -1435,7 +1435,7 @@ static const char * const sd2_groups[] = {
 static const char * const i2c0_groups[] = {
 	"uart0_rx_mfp",
 	"uart0_tx_mfp",
-	"i2c0_mfp_mfp",
+	"i2c0_mfp",
 };
 
 static const char * const i2c1_groups[] = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
