Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5ABE7ED5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 04:22:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QZ5sGk37P6lVAUffE0RL9jueX62c11l5vCSQ6QnzaIY=; b=j+BhWr+MVAGdJW
	29FudB5ZP1UKWyRa+Wk2gzRR2NyIP0edsB4n0BDjoqH+RDYIgd7wTlXzWQ5T3SxKqLwTWO/dJC4dJ
	xJipiCfpvJwJwJFCOfZWE5OaxpQSCFDImG481ah+7RAKG1GBSPWzhr7ehB0tqUDyty0+0KwUXWSvK
	pVMiQgAlTfPRUywczoXB7XMEqPEGxbWZN5DVrPW5+8uqFq8H7wZ3MNGj2z4DcaYaGAMZydLC+0swb
	ZanZDYWDGf6zoIEfN3ZKtFThd7LusvZSTob0xFge4JLrs5BEAhYWzgEsXSc9KcO6l3i1IgD7N2cV7
	DiGd4U4H+hnXtKO7qcRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPI56-0007Hc-6f; Tue, 29 Oct 2019 03:22:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPI4u-0007Gt-Ss; Tue, 29 Oct 2019 03:21:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id c13so8483897pfp.5;
 Mon, 28 Oct 2019 20:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=LR/aUnBa1iOG11/R57xuvDj2bw8xBBwQLIyehox+hYQ=;
 b=fVACzUz62yAgAZzCMpuE+qtQ6Z0iCAc0Y7g+Nnqh5pg83Kh9rzxW8l2GI7qN2LiUWO
 3Gr8YM+gVikDS/RVHO9gaEx3czDXHRuO8qV91Bh4CG3jJNFxave6xYRfYnVZf94T6geh
 FYwaVkkHTYbkZaWDYW0eeMvB8l5IDJR4BrxLLFrR3A+swfiD8NJnvOhH4Mt9P4huHHoJ
 h1Fu4pFIWAE3jcGUEro6fhXOkEjFuAWKDoU7tTXSnU6kS4NMjGOt7X0nKS+t/+kj/qLx
 H5fkojw/KDrTM3VpfB6Wl57SuifZoGqv1/7YsBzrehxW1eLzM1QBWtYaXicDFa2XI9fI
 lRmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=LR/aUnBa1iOG11/R57xuvDj2bw8xBBwQLIyehox+hYQ=;
 b=Vh7xLu2RTdCVqy2jsb73Ir3l/219m0Q07AYyH917Ar++KSu0N0mf4cbxB1ekZ1gUov
 Rbtq70mnSRWMd2pXqYpRFAL6sWfwj/oBzaGZqeJIhT7HmbfBa/jkMANP97ZY4zLdpnwW
 hWyWkAoxI4ZxSPXbjJAWcg4fLt2+cfW2Zj/UZK6GZLtPgkb06gqYYdvz82dAXGUvcvvN
 uER5fwkLBixbrHiC4ZP0IujCJe1m60skOYEYnpBSqYwEwHb0ohBPP7DALQz1EgmrAAEx
 X7th0OO2B9V2mx24aIjXibog0lpI46vwBkWUNsiJ7HSvpue4NVpTTyfQsrJ5DAaL2Hwc
 MOzg==
X-Gm-Message-State: APjAAAWAEW3h3jm1ZiZD22vJnV/TcFgsEe1uwJZmfiHK5PF55nX2GF8Z
 HVYvPnEIMBXVua74A2GojpU=
X-Google-Smtp-Source: APXvYqyIAsC+K9MsUK+66FRnvbVhq/0Ce7vcczJhLyl13Eg7tdplx+xI5xpMotaKwEsxbbXZBCamkw==
X-Received: by 2002:a17:90a:a598:: with SMTP id
 b24mr3409701pjq.46.1572319311860; 
 Mon, 28 Oct 2019 20:21:51 -0700 (PDT)
Received: from saurav ([27.62.167.137])
 by smtp.gmail.com with ESMTPSA id j126sm13359276pfb.186.2019.10.28.20.21.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 20:21:51 -0700 (PDT)
Date: Tue, 29 Oct 2019 08:51:42 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: linux@armlinux.org.uk, joern@lazybastard.org, dwmw2@infradead.org,
 computersforpeace@gmail.com, marek.vasut@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 saurav.girepunje@gmail.com, gregkh@linuxfoundation.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: devices: phram.c: Fix use true/false for bool type
Message-ID: <20191029032142.GA6758@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_202152_934654_572FADFA 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (saurav.girepunje[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Return type for security_extensions_enabled() is bool
so use true/false.

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 arch/arm/mm/nommu.c         |  2 +-
 drivers/mtd/devices/phram.c | 11 +++++------
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mm/nommu.c b/arch/arm/mm/nommu.c
index 24ecf8d30a1e..1fed74f93c66 100644
--- a/arch/arm/mm/nommu.c
+++ b/arch/arm/mm/nommu.c
@@ -56,7 +56,7 @@ static inline bool security_extensions_enabled(void)
 	if ((read_cpuid_id() & 0x000f0000) == 0x000f0000)
 		return cpuid_feature_extract(CPUID_EXT_PFR1, 4) ||
 			cpuid_feature_extract(CPUID_EXT_PFR1, 20);
-	return 0;
+	return true;
 }
 
 unsigned long setup_vectors_base(void)
diff --git a/drivers/mtd/devices/phram.c b/drivers/mtd/devices/phram.c
index 86ae13b756b5..931e5c2481b5 100644
--- a/drivers/mtd/devices/phram.c
+++ b/drivers/mtd/devices/phram.c
@@ -239,27 +239,26 @@ static int phram_setup(const char *val)
 
 	ret = parse_name(&name, token[0]);
 	if (ret)
-		goto exit;
+		return ret;
 
 	ret = parse_num64(&start, token[1]);
 	if (ret) {
+		kfree(name);
 		parse_err("illegal start address\n");
-		goto parse_err;
 	}
 
 	ret = parse_num64(&len, token[2]);
 	if (ret) {
+		kfree(name);
 		parse_err("illegal device length\n");
-		goto parse_err;
 	}
 
 	ret = register_device(name, start, len);
 	if (!ret)
 		pr_info("%s device: %#llx at %#llx\n", name, len, start);
+	else
+		kfree(name);
 
-parse_err:
-	kfree(name);
-exit:
 	return ret;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
