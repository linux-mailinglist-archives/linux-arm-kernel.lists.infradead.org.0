Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AAC9E5BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LKuQjS8Kk4a29Mc5WA17Wf9yV/2u5HFYE0Bn/Bph6kM=; b=k12yWr5CNQCyLf
	3Y/gjYsIcSPbyDBfUD0IOwq5ort935hjOBEKXGrHWLqZEtvkxoPwJFfw3WV/ji0OidFcp+ptrF0sN
	9gBmADA70lGKh4ejW4MZjm0/32HuxupVWwq3OX4cEfK6DzJStNZdkpkLiw8VCKueYjXN0Zbn9UZhZ
	4Zodnh9HopmABUMeAgebOEtoAKyNnstYahpP6lgZkKd95am5DaAHiObOIoCSiWcGYBLf4/x1ZSmy6
	zLS/WHGKR9DIT3M88vJ30yOHw3TXHfTjAFfa3UcxonvhXE3P68w0998fDpzt5f7InI0OTJfx3r8aD
	PDnkQActckeDohBqqLOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Yno-0007xw-Q4; Tue, 27 Aug 2019 10:34:17 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Ynd-0007xQ-4y
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 10:34:06 +0000
Received: by mail-pg1-x543.google.com with SMTP id u17so12436180pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 03:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yac21LkroGwOpAOokWAP7L/kvwtSeeELfQz1h11R4ZY=;
 b=oCRgf4t/V1vLY2IKnF3WWHQAyi4GK1wn/nH4UkBAwhNLPgI58cxDuD49BbhWrztYqt
 d7jEhH+lStQiI8ugxPKk9Kgsg1TYtw/kYXOidQtgplatEbqNOX+HhmytcGJ9hwprFVeu
 2hAtbUsdmQYGAKI+nv/08Y+6JCAdOSBhry73k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yac21LkroGwOpAOokWAP7L/kvwtSeeELfQz1h11R4ZY=;
 b=K0S3ohmp9p7qQgI3F7vkSVboXWOv9fpUIRes5uTHE3ZU1rR0Uyud4Ajxw9wmfDuGWU
 z/H7I6NemRt8FTK86e1m6havtsrhTQS/hidTMvFv8jjCia/o/lOen/rjVO/KHZATJuqx
 8qQoy0Dw/N5tOzcWQWfl1iX+BaBJxCiels1SF8m3f4ipIT2R9yKKcUZWyHG1s++gY7hh
 /Xpr+gTSjVeXt1FHmEjyTu9BWYIvq3WH9or12NG3Kj8m5jfCDp/0NRenz8NTzKnGrq2S
 NS6kouK6LfpDHNZYD4pTustdI0AzFWsSSf07dlVIPVI/wQSIEStLAqKmd18aw0SITarM
 oe+g==
X-Gm-Message-State: APjAAAWlJLKBVxdWBWoiCqnTOfGjCTSKt2CkXTPo0JZgIqj9jMvKtks3
 EYpD8ixYEQhh4Eu+4oanHfxWqj8DDuX26Q==
X-Google-Smtp-Source: APXvYqxocP/uiT/WsfDvHWKbIqeK7SktH+vZVTzgfHAo9v1tzuv9KqGjYota8fSzmr8QfcsKhHVK2g==
X-Received: by 2002:aa7:93cc:: with SMTP id y12mr25442426pff.246.1566902043597; 
 Tue, 27 Aug 2019 03:34:03 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id b18sm7873585pfi.160.2019.08.27.03.34.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 27 Aug 2019 03:34:03 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH] fdt: Update CRC check for rng-seed
Date: Tue, 27 Aug 2019 18:33:53 +0800
Message-Id: <20190827103353.109218-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_033405_219469_5F1358D5 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 428826f5358c ("fdt: add support for rng-seed") moves of_fdt_crc32
from early_init_dt_verify() to early_init_dt_scan() since
early_init_dt_scan_chosen() may modify fdt to erase rng-seed.

However, arm and some other arch won't call early_init_dt_scan(), they
call early_init_dt_verify() then early_init_dt_scan_nodes().

Restore of_fdt_crc32 to early_init_dt_verify() then update it in
early_init_dt_scan_chosen() if fdt if updated.

Fixes: 428826f5358c ("fdt: add support for rng-seed")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/of/fdt.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 7d97ab6d0e31..223d617ecfe1 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -1086,6 +1086,10 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 
 		/* try to clear seed so it won't be found. */
 		fdt_nop_property(initial_boot_params, node, "rng-seed");
+
+		/* update CRC check value */
+		of_fdt_crc32 = crc32_be(~0, initial_boot_params,
+				fdt_totalsize(initial_boot_params));
 	}
 
 	/* break now */
@@ -1176,6 +1180,8 @@ bool __init early_init_dt_verify(void *params)
 
 	/* Setup flat device-tree pointer */
 	initial_boot_params = params;
+	of_fdt_crc32 = crc32_be(~0, initial_boot_params,
+				fdt_totalsize(initial_boot_params));
 	return true;
 }
 
@@ -1205,8 +1211,6 @@ bool __init early_init_dt_scan(void *params)
 		return false;
 
 	early_init_dt_scan_nodes();
-	of_fdt_crc32 = crc32_be(~0, initial_boot_params,
-				fdt_totalsize(initial_boot_params));
 	return true;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
