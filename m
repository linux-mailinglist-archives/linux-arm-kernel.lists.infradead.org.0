Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F94100431
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:32:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tb08JHneizceBh9LaEabLCVslQquEdKFKTQJA0plLQk=; b=i/iNys1TcsN2Wy
	0g+Fj0rm3/6EIgFthC4Xzz44xKWBxAhbEJ6HsS6OCRtNI8D0L4vdWu9DU5yqnqp8WfpGIuIMSly4p
	FHOiouNZsAFDJOC09avAAdRuiF79/6BstgVlpQiVpxibMHSsigR09Zzyc+wdz1YVY2nTCc4Vuz9vA
	C9weLaxYZr7/43mHAqLVH692/grL/b1aIIx9MR5dmlhcV1yPNJMoV+azUs7FSPErh2+NbmtcIcEA4
	nwE4D7hvENWHEZiV0sIVcF5Dc3Sx3fEHmiFLk9rqv2MMM6/RN/Os050cK05gKdzbIuFEQxabCaUZW
	P9aNirdXXy3mJqLR6Rog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfG4-00019h-8p; Mon, 18 Nov 2019 11:31:52 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8V-0001IX-GP
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:05 +0000
Received: by mail-wr1-x441.google.com with SMTP id l7so18973802wrp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/C1Eg1dR+pzbI0uF0+AzerXAuAR/n78tvkDzoMBSgLI=;
 b=CRf+gbRezpDATz6c9R0mDvANO/QSuegvfk8Tajpqx2H0xRJkQoudvG/k8cPenj1OfF
 YhcVEbS+mvttjyvlLQ4/bmQnkwvSFsB1/Z2vKohH9lSn3GzuXb6KD2DTi0j+cj+cZ8IE
 xXF9M2X0cOPy12JeOjAezgGD65VW8DU2AZoKc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/C1Eg1dR+pzbI0uF0+AzerXAuAR/n78tvkDzoMBSgLI=;
 b=Sl3P8wb06VnkPbX/vQXW0Y4s5kq0M8rX9NGVFGeHuCeWXIEiApwCA+50SJOAe7Si+v
 gGxKGJXoVEZEyNcGtFy4uIeGCbaPwK5d6HQ2tf7S/qHvHhiZ7Mu/5RQ4hnC1G85RXC10
 a9Jhq+4OElj+90nrRE4+7XoCm8ZJ7LUSbtyne+HQXOnYPLjqFdijuUZP7HEkpoYaZqT7
 8+ActeKR79FI2WqNFM3xefr9OvAWGKSLVu1Atl4F3TijcMZd5vPER4d+tbyz85VQJgmA
 wZ8X+WGZa8y/kejh5JLhY2vXtFF1K+bAdfhdIUcEpLE+1Od1S7TvVHDJHTuTKO7Nufo1
 O1tQ==
X-Gm-Message-State: APjAAAW/pSk9+f4sVFn10xX+HuP6PcRbjpT7c4L/iTWaZEsx8EoN3eUu
 Uw3olVqOZAYl6ddahJKN+/9eAQ==
X-Google-Smtp-Source: APXvYqzXsZpamBeEGMUxEhf7zjXrdrLG8X9SsNbwa395AChzzSBkUYi7pScN/Cb75JOsNmN8os6gHg==
X-Received: by 2002:a5d:55c7:: with SMTP id i7mr30699762wrw.64.1574076242263; 
 Mon, 18 Nov 2019 03:24:02 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:01 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 24/48] soc: fsl: qe: qe_io.c: access device tree property
 using be32_to_cpu
Date: Mon, 18 Nov 2019 12:23:00 +0100
Message-Id: <20191118112324.22725-25-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032403_599388_D14E1D2C 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need to apply be32_to_cpu to make this work correctly on
little-endian hosts.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_io.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_io.c b/drivers/soc/fsl/qe/qe_io.c
index 99aeb01586bd..61dd8eb8c0fe 100644
--- a/drivers/soc/fsl/qe/qe_io.c
+++ b/drivers/soc/fsl/qe/qe_io.c
@@ -142,7 +142,7 @@ int par_io_of_config(struct device_node *np)
 {
 	struct device_node *pio;
 	int pio_map_len;
-	const unsigned int *pio_map;
+	const __be32 *pio_map;
 
 	if (par_io == NULL) {
 		printk(KERN_ERR "par_io not initialized\n");
@@ -167,9 +167,15 @@ int par_io_of_config(struct device_node *np)
 	}
 
 	while (pio_map_len > 0) {
-		par_io_config_pin((u8) pio_map[0], (u8) pio_map[1],
-				(int) pio_map[2], (int) pio_map[3],
-				(int) pio_map[4], (int) pio_map[5]);
+		u8 port        = be32_to_cpu(pio_map[0]);
+		u8 pin         = be32_to_cpu(pio_map[1]);
+		int dir        = be32_to_cpu(pio_map[2]);
+		int open_drain = be32_to_cpu(pio_map[3]);
+		int assignment = be32_to_cpu(pio_map[4]);
+		int has_irq    = be32_to_cpu(pio_map[5]);
+
+		par_io_config_pin(port, pin, dir, open_drain,
+				  assignment, has_irq);
 		pio_map += 6;
 		pio_map_len -= 6;
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
