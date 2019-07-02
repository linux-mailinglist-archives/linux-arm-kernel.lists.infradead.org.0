Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8309E5CAB3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 10:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nKnbAdPio3VQgKbj8DqeE6pFWLeaTbO8rvlpWJakBhE=; b=NfZ
	mKZszuUI4QGkA5gzk5jwRnQqI+x32vLQTF2TlhviecreMLGoAc76A79/oWxkMEtyNs8WGbtTdKtuH
	hHPkT+WGY7V6UJ+r1dGRiMNJXmUjRv4S5S7LlR8RwjDxrLqf4gu2Gc1aKdwfxAcTgbuvI17yMtXHo
	HrfQnw2ifNWaVHsua4H3WA+MfL7ivNrxau1/6V1FQbzjry5ydVX/uGmQYspwOp+zHoTp0adJJo8I5
	D4rJ3dmIFZqidY6ixyqDLI/VUeTWxujQbKQx1txdH81VmZRZWIPDoveSKUWvU+pXL3a6dgJq1m668
	/1tN1MGNyd8vcBOe3bjHifMvQFcuvNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiDoc-0007vl-Lo; Tue, 02 Jul 2019 08:07:02 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiDoE-0007qz-7n; Tue, 02 Jul 2019 08:06:39 +0000
Received: by mail-ed1-x544.google.com with SMTP id e3so26349648edr.10;
 Tue, 02 Jul 2019 01:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=v+gVEdHeB1hIvDD6bk9LhL2aP9OzxGeZK+EU7eJOmKo=;
 b=ZGeac4dfLGFaSPbVkqUj7qpg5c9UtxWKJUYqasnnRpUrX+7x+WLbzKZ6d25IvbuF4n
 r4fsbVVgEfcZUFKEZbv/QUtpqFGsmZossPQYMkO2pPSbhjC05OIk8CGFLNSN/0tvVUCN
 /rRulAIK5UQ9dOnOQUMtP6WRA8k14RustF8TzodmMLE2AMCLe0YkbW8zo38jo/wHCDkr
 OU80XI1DVy8D+BtMwSG/2T9bvcl4XnjI7SVu16feowa4PGzvvtJ+H6D5WOmV3mandOkD
 Jl1TK7GKVp4KbFWUpqgOWfB0W8HlEg4ycJzBr8sf6Mzol4YXUZPeZNvOBq7ZEpD3iOhS
 AtbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=v+gVEdHeB1hIvDD6bk9LhL2aP9OzxGeZK+EU7eJOmKo=;
 b=VkTaDUTYEfBsYJO7jDi+J+Fl1FjlR/Es33iHogo5Rl1rRBZHeLPMbISsenGfm25CD+
 Iw37XPiwr5BX0r+E9DmLQf8JM3hDrU4Zxu7J76vN8Yav50mb82DFdXUqSGNmuvmJUQL1
 3+kAfCGpdfKhr/Pxv2JpqLVVk6CNQJ/rVyFTbu0O/CYIC1xcn4AedOATwLB4uCSdgEun
 I2majDUSy87z2jDRGYpjrLpdD5YDrk4FbCDP4uNT9x2fbBOrgXN5ECnFL87nk8Hn0Fn+
 CKToVJc9BMGz1iK9yq7KHZbW5HNgJqLnDZ8edWhRnzYlQWisIEo+IaoAis4kO4gBKg2g
 wjKQ==
X-Gm-Message-State: APjAAAVyY2zDwZcAV9K0pOjwFl1KiJkjf17XkZgXow9vaKxuQwC7ZXGQ
 jPQBsSX5+tORZcTJzBf3KQQ=
X-Google-Smtp-Source: APXvYqyLyz4+m/jyDx9YPAgYfTRLOmth2w+dVO3Zgrz2HFR3uLrDnFJxKzRTjP2pGmF6eJQRU/U7tA==
X-Received: by 2002:a17:906:19c3:: with SMTP id
 h3mr26984148ejd.49.1562054795887; 
 Tue, 02 Jul 2019 01:06:35 -0700 (PDT)
Received: from puskevit.guest.wlan ([195.142.153.182])
 by smtp.gmail.com with ESMTPSA id m3sm4199465edi.33.2019.07.02.01.06.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 01:06:35 -0700 (PDT)
From: fatihaltinpinar@gmail.com
To: matthias.bgg@gmail.com
Subject: [PATCH] Staging: mt7621-dma: mtk-hsdma: fix a coding style issue
Date: Tue,  2 Jul 2019 11:06:32 +0300
Message-Id: <20190702080632.27470-1-fatihaltinpinar@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_010638_391434_D497752E 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fatihaltinpinar[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Fatih ALTINPINAR <fatihaltinpinar@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fatih ALTINPINAR <fatihaltinpinar@gmail.com>

Fixed a coding style issue. Removed curly brackets of an one
line if statement.

Signed-off-by: Fatih ALTINPINAR <fatihaltinpinar@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 0fbb9932d6bb..a58725dd2611 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -664,9 +664,8 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
 		return -EINVAL;
 
 	hsdma = devm_kzalloc(&pdev->dev, sizeof(*hsdma), GFP_KERNEL);
-	if (!hsdma) {
+	if (!hsdma)
 		return -EINVAL;
-	}
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	base = devm_ioremap_resource(&pdev->dev, res);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
