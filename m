Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5166712BE88
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 19:39:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4wah0Sa+OmLLeXdc6yRV6qo12DWnhuLqXn4cUoxCkPQ=; b=oER8xgjW1oe6+zRcIzQCVenYsp
	i1W1nXTvdkRYVnCHFTHRG2yWkiQ4wHA0FLgWBiogVwmvP8xm9/2sSUidI1d5Uuy2kcAJACx/Yo0K1
	jhEa1tTuaPmRuTealvLlzI+WGvk9MDEf+climIj9kA7bIkZ73DGDNeUq3P23JWqfi9Kj9U+AuBNve
	2+nnEcC2AThgFi6RwRq3Mxw/FOHP7eLHtnHekLJnKrL6FSgxQcfd7xkeqglNiUhIZkBNATTenCKyV
	3UXqARCzERyVv2vCyi5sWMLOZuADsMVSrJe8v0Ei3UUK5lh+j3U9DyKtD1fqA4ibHrOHwIuTcNK0W
	B95Q2z9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilGza-0007jO-DM; Sat, 28 Dec 2019 18:39:14 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilGwR-00055Q-Lw; Sat, 28 Dec 2019 18:36:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id k25so16039532pgt.7;
 Sat, 28 Dec 2019 10:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ujHJl1LlnUC8f51mXZ4Fb27CXnf51H+Hx/+mqG2aecM=;
 b=rNui478T/QEp9Tbc1cDUJs2i7U62DXb62rj94vzLSxPg9zViOhL1kw7a/GoZhfAAtW
 dEuAXR5m/IwJqTU8Ho4SxCK9DyMNaCW01BJEE4rLcg1UCjPg+iDfTE6SqPYxpu6rBI0u
 1gwxpMJFjMnhzEqsV0MIamVbpMQhGEK4jTv2xqY8UOESHGsH3kgKAQE+v3N0U9zi8zaK
 2mu7sqU8Usn4iGQNUrelWq4J+Pmwem+39Aok8/1WXkG6FtgGZT1WBARoaDrk1tVFr16x
 iKe4VKOyDBy2gS2GIId4qItvRtUgYZalhpev6bHNybwlqoCjOm2JJp7ygbyQ+hyUNa8l
 cmfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ujHJl1LlnUC8f51mXZ4Fb27CXnf51H+Hx/+mqG2aecM=;
 b=P6gPXn6Cl2Rw35hvZdxCsT1ejSqVAahqxqIT/l1WGKTjOQIfeU0H5msk/lJptpKPYH
 laKnnkYQVR2h1ZCvdVTfBheDCbV6aBT8HErT0Yq7NkvUuoHUF4/da2nRdN7izarpaKM5
 cCYWo2t+yz0AGLaEK8+SYGrecxqFh55IvvOS2VXcB/tMOrF1FqebSQxQ+Hg+7H0L0cz5
 J5w4ZBkNZAH/rHG/vAihhwd+6ecsQrO3N3BpNJ1R9tWCo3e6n3f4uUXZTszUEBOiRXr+
 4j+ZuJizWtqLmYR4bksf+R2CuK9wImx65EaZcV/rhTZbA+E5ebBfPtnThVcvmUW2BTSS
 ARYw==
X-Gm-Message-State: APjAAAXecPWYKXPer8zOdwMZgplMnpUwXO1aj+UxKDiO8IN0YNZZ1zvH
 CppQPKm8h/IYgJXlXLp9znQ=
X-Google-Smtp-Source: APXvYqxIq2P3GfalCrglm2NNlOSSOLuNN16ePEwVBKXxH+eUtkSCN2+TsAdPG2+LZgKy1zvL62S6+w==
X-Received: by 2002:a62:197:: with SMTP id 145mr60624660pfb.188.1577558158509; 
 Sat, 28 Dec 2019 10:35:58 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id w11sm44601709pfn.4.2019.12.28.10.35.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:35:58 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: jassisinghbrar@gmail.com, nsaenzjulienne@suse.de, f.fainelli@gmail.com,
 rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, lftan@altera.com,
 matthias.bgg@gmail.com, agross@kernel.org, bjorn.andersson@linaro.org,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, nios2-dev@lists.rocketboards.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org
Subject: [PATCH 12/13] mailbox: omap: do some cleanup
Date: Sat, 28 Dec 2019 18:35:37 +0000
Message-Id: <20191228183538.26189-12-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228183538.26189-1-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_103559_937142_C936B992 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
'i' and 'ret' are variables of the same type and there is no
need to use two lines.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/mailbox/omap-mailbox.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/mailbox/omap-mailbox.c b/drivers/mailbox/omap-mailbox.c
index 5978a35aac6d..9b9994be5602 100644
--- a/drivers/mailbox/omap-mailbox.c
+++ b/drivers/mailbox/omap-mailbox.c
@@ -695,8 +695,7 @@ static struct mbox_chan *omap_mbox_of_xlate(struct mbox_controller *controller,
 
 static int omap_mbox_probe(struct platform_device *pdev)
 {
-	struct resource *mem;
-	int ret;
+	int ret, i;
 	struct mbox_chan *chnls;
 	struct omap_mbox **list, *mbox, *mboxblk;
 	struct omap_mbox_fifo_info *finfo, *finfoblk;
@@ -709,7 +708,6 @@ static int omap_mbox_probe(struct platform_device *pdev)
 	u32 num_users, num_fifos;
 	u32 tmp[3];
 	u32 l;
-	int i;
 
 	if (!node) {
 		pr_err("%s: only DT-based devices are supported\n", __func__);
@@ -772,8 +770,7 @@ static int omap_mbox_probe(struct platform_device *pdev)
 	if (!mdev)
 		return -ENOMEM;
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mdev->mbox_base = devm_ioremap_resource(&pdev->dev, mem);
+	mdev->mbox_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mdev->mbox_base))
 		return PTR_ERR(mdev->mbox_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
