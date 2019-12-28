Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 988CE12BEA2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 20:15:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mgouMjR5brE/IPk55Ql7lPZwQER/tFWosidp4HsJ0kQ=; b=mn8
	5VcART8OZLf7r6dJwMC8wy2Nt3P84piqtSYUSA5ywpLD2k6+xjf0aC77xwkuVl0FJsrfuytSrdr6N
	h3dT1ogqhrtPxEmDSACCsrKodZbA9jgoTZvnhthRF/BY5FTr9GwYpXLlKXsRVFZqNFwuKBM4kfYUf
	OPo40XnVcT746hbClpyaxzFl1AiVtgmfiP+CIGa5pppcpXs+72AoSODu5qMsssDjuEg59hZI7S6Gb
	5Q+7AO/1IARm6HZhYKvqFZSX1yL4sjTRUyyiWG4GbSfQiH537fsVI5NJ9pCih2L7Jo0NinBZYC4qp
	Er02rx2LNsszH1Zsk+OhswNRDbhVwBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilHZ2-0004dP-SO; Sat, 28 Dec 2019 19:15:52 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilHYu-0004d3-1d
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 19:15:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id q127so16095002pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 11:15:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xMhSUaoLvbRS73MvzsX7fmmvsEWEBSbzwEx5SJxXjpA=;
 b=P66zAWKVsxghJs+uKX+aAsz486sKeQggR9ZD685ZiiotPHnaImkbarQOzpgBExACAr
 0m+wz7SPPDREENrgJWvRXta8HRU1sgpBWtSZt8ikIWwMkKsHreO1F6PWDIioRYGwYLoO
 3esKe6vV7tEabVVmBOtTywnHK87UkCTjNIUtmRZV78MGCd8E36NmO4+tBZUNsZF/5JGH
 P8kQ0M3M2qX1Nwmk0KoeMbbFPNuSBEqWp/TQGJ478HymFQ/YXGIV7X9t89t0ngoSw90I
 nuxjzkXnFG6bvBRatK6eX0j5ejGnieAEpY3jWrNayVvr1dHhzGTlqT8S227pBDd+K0R4
 meUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xMhSUaoLvbRS73MvzsX7fmmvsEWEBSbzwEx5SJxXjpA=;
 b=KsigYp3Zf0GP+IGTADoycCj2dx/q6lArE4Qv7oeavgMVEV3TSG7yae/5d7hKK/5ei4
 gwcp52OyoC+cEI8YPuo4RtC3aNbkaZQJ6SMSJlN+FGa1Xv017+TklitNNhzcz9X65cUH
 X68HAXgMbxmhfSj3A+2uP5kgmPZL2Yv5TeOxN3CpbDvSiMiD5Bq+Lyqkf4T6LmhaVNeI
 SEDJfzVvo4bdCm10JkFzrwc8Le4Ihc8X+HkAc3cbLihs6011c88jVezjXTukros3cbVR
 5FnwINjd4ZWBRw4qRytzAKkuiUY3f1Hx4PqVsTgULctEKFMU0+dsJPLZDLI9xd9D6XR/
 JwNA==
X-Gm-Message-State: APjAAAUT89CE2A2ZkzF2t7zJ+ETlySJM1EDenjOgMh1hmKBP7GcDqPkC
 lluo6bfOeoyYMqByPTbALYw=
X-Google-Smtp-Source: APXvYqxB6RVGET87O9fX5SlbjXabkBMlr6aK9Z3y6OEKl6J2YM8VVPP34GRL2M3O5laHsLavAdu6OQ==
X-Received: by 2002:a65:6842:: with SMTP id q2mr63586845pgt.345.1577560543230; 
 Sat, 28 Dec 2019 11:15:43 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id d2sm18861017pjo.32.2019.12.28.11.15.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 11:15:42 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, linux-remoteproc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] hwspinlock: stm32: convert to devm_platform_ioremap_resource
Date: Sat, 28 Dec 2019 19:15:41 +0000
Message-Id: <20191228191541.26999-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_111544_113097_A3136A16 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/hwspinlock/stm32_hwspinlock.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/hwspinlock/stm32_hwspinlock.c b/drivers/hwspinlock/stm32_hwspinlock.c
index c8eacf4f9692..3ad0ce0da4d9 100644
--- a/drivers/hwspinlock/stm32_hwspinlock.c
+++ b/drivers/hwspinlock/stm32_hwspinlock.c
@@ -58,12 +58,10 @@ static int stm32_hwspinlock_probe(struct platform_device *pdev)
 {
 	struct stm32_hwspinlock *hw;
 	void __iomem *io_base;
-	struct resource *res;
 	size_t array_size;
 	int i, ret;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	io_base = devm_ioremap_resource(&pdev->dev, res);
+	io_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(io_base))
 		return PTR_ERR(io_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
