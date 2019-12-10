Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9624D119209
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:32:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Cxg4MMkVXlktyfcEx/1ubh7kKOCmuVtBZ3+EpraBpDk=; b=jPIKJmL6dtyQhTdAAKEebdSDRX
	GKjWO026WGqUNPEN+m6j326UwgmTe/dgJxjXkd76uSLRVNa7G+khPq7S9TzcFJKrsJKIwo3Oc0z0H
	xnEJ35CSjyTboBHg6WihrUyfbWiDcjPl3cKVbZ454+QBAgFJLUpRVYIl/LN7ESplutVkh3UkyWNyL
	xoLyb7OosqZQS/Pb0cw1aAYQ3t+yu/AMNfvKSVlDisrCYeXPq+kzNH4tDiyaEpa165egW8txjnNN6
	pIYSkz/bFPn9+HdACDDAes3Qf9YuQWf2L6VJIsTbSNhv/yvi9y5lL2gCIz1HcncbrQdicn9cOYlfA
	AsS43AyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemBJ-0001Cw-4C; Tue, 10 Dec 2019 20:32:29 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemAp-0000tp-EE; Tue, 10 Dec 2019 20:32:00 +0000
Received: by mail-pf1-x443.google.com with SMTP id y206so414829pfb.0;
 Tue, 10 Dec 2019 12:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=A/c6zfJJrS1aJG6jppJ0JzwIndi82aE8y6QtCeoxQ60=;
 b=ZAYfknH6apyPpWisMZWD70J3/OlrrCxL8Gh8/H0vPzjcTwa5tGgqHcYy2JVjItrRlE
 HgLOw5DCSVcvah5RcNdf3oe6e4IQDYBwUv0wWY2Xz/7VSCVA4GyKr+MNpJM+1i1UDZHI
 HKn0BVkKXSCLrzHouzcAJnc88a4mmWfbOlaCUW85oFrpkr/FN2IdJBT8jQ0Tu3pocy9s
 bnmk/+CyaxZ3ialSyXrxMz0v3kBfjQEmU1wnqIiLfqpMKxpJRUkSatqtySwPBwbGlGHC
 nWYkMpwEeAukZIommkVhTY9d18JnyedDOlyr9gOrIY5sTsIJI7qTNv0gCP7sr4vNG0BX
 RLhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=A/c6zfJJrS1aJG6jppJ0JzwIndi82aE8y6QtCeoxQ60=;
 b=kcxyqqPWD8/dHW1OfYuFjZBl2Er7Fqa7AOSUy/hTicw9vmwQhQPzGiVHF/lQSsc/wv
 mcpGGhnF66MtdmRHc3pzZBDhg4L7OmDmV1QX1s5Y6drVKlXBA6TC7hlEgkJ5WOi11gH9
 hkql+ueLkG2bj79ZXhnggpZrq87UuEVW72pxK+cGW/GXQUHJYU8JlJrOyd+4dM0tD/Wg
 9sIOtnLSbbjIE2PzQash3JOPYwrjHnjp5ipCXDMmPearSu9RqKC4llPzB8+M4zkqiZ6N
 S5GmOKngRh64xFMndSaVMT6IhJxUPfghjpPcYvx5Eyma6frMq30vp/mHfvq5APX62ELF
 1Ppw==
X-Gm-Message-State: APjAAAXXaLu6XAXs6o3t+xVhqOjVfxYHg+ktnTIDhSUFpild5mMlC5FG
 sfQuGY+T+1W63PblPHUwq4U=
X-Google-Smtp-Source: APXvYqxO+Ov5pF1gQ2GamItsgHb3CUFTQBD50B8GhuwcFzTJa7s5DAfFUIqgmWSuNZzVvQYauh6GPg==
X-Received: by 2002:a63:4723:: with SMTP id u35mr25740960pga.194.1576009918720; 
 Tue, 10 Dec 2019 12:31:58 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id b22sm1931250pfd.63.2019.12.10.12.31.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Dec 2019 12:31:58 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: gregkh@linuxfoundation.org, rafael@kernel.org,
 srinivas.kandagatla@linaro.org, vz@mleia.com, khilman@baylibre.com,
 mripard@kernel.org, wens@csie.org, andriy.shevchenko@linux.intel.com,
 mchehab+samsung@kernel.org, mans@mansr.com, treding@nvidia.com,
 suzuki.poulose@arm.com, bgolaszewski@baylibre.com, tglx@linutronix.de
Subject: [PATCH 1/5] nvmem: sunxi_sid: convert to
 devm_platform_ioremap_resource
Date: Tue, 10 Dec 2019 20:31:46 +0000
Message-Id: <20191210203149.7115-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210203149.7115-1-tiny.windzz@gmail.com>
References: <20191210203149.7115-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_123159_493448_B7F5E640 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/nvmem/sunxi_sid.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/nvmem/sunxi_sid.c b/drivers/nvmem/sunxi_sid.c
index e26ef1bbf198..c54adf60b155 100644
--- a/drivers/nvmem/sunxi_sid.c
+++ b/drivers/nvmem/sunxi_sid.c
@@ -112,7 +112,6 @@ static int sun8i_sid_read_by_reg(void *context, unsigned int offset,
 static int sunxi_sid_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	struct nvmem_config *nvmem_cfg;
 	struct nvmem_device *nvmem;
 	struct sunxi_sid *sid;
@@ -129,8 +128,7 @@ static int sunxi_sid_probe(struct platform_device *pdev)
 		return -EINVAL;
 	sid->value_offset = cfg->value_offset;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	sid->base = devm_ioremap_resource(dev, res);
+	sid->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(sid->base))
 		return PTR_ERR(sid->base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
