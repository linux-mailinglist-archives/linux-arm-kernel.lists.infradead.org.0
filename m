Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61783F68B3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 12:32:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4DsHjEj7p83FK6f2rBiOhL7OMSeZYRuw7vLMU66rIlk=; b=cvv
	QtFM/jC2D4ZJwl7wzepFMeTu1wG1rEOgnmE4B7LpKc97LpDu4lyLt8I8pcZfAo+DGCGKq7gPy9Eeu
	Tj30zDCv97X5fz6ePeyoifbCbeyMJ27ktNwapUzUT2tfTltdIOYpViFiscOil+grzuUkFg2537W87
	OAUxXE152ftBOr2/wZxuYj9J2+UMkB7iywAv3CYa+iFI0QSZc1snlWkgQgeu1zphxVaVdYwnK9pNs
	6uNF1JFEreOhtdXLVyRVqtncNFcjTw8SD+uddW8l1v5GzQWtsSkirU4oxIFoqeHSrcKVS/UA3zxTb
	YRU3y4+6E6+KzG9CNH9tk4hllUXcngQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTlSA-0001sI-1Z; Sun, 10 Nov 2019 11:32:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTlS1-0001rb-JS
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 11:32:15 +0000
Received: by mail-wr1-x443.google.com with SMTP id i10so11631040wrs.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 Nov 2019 03:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=eqtZaRSTf6xIkwuPq1/HFHXXUlATMq/NHIIuhCWeknE=;
 b=0kwJ4ih0MBW94wtyqcnSiEUWwf7e4nSsn7yZjt1Ih7C14XjKqudwbSRuNuRXNwioYK
 yRsvj0cK1ELFBUaF6SP4LZ36SsDk8pgOVRo2dUc2h/mtmUckG1TbphQzWu6iYxj6aT2A
 GJS8Ps8Dbc9bT4z6oFAVtpKz7/qzKzbeeSxpWG1SND6foE6Vm4K9uUQtECf4P+G0C1vw
 oaJr6SdzCoLyCX4D8NIhIexfeRZWjPJGzTN+O5wiPRpzLhCokFbACXrvkbaR/okV2KKU
 XwI3jRTFPtsnCNh9E8fx/T9UmSXGX75Ws1ZDqOIVD39sT16TArR4eJqBukqx2bFlF5Kt
 O1Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=eqtZaRSTf6xIkwuPq1/HFHXXUlATMq/NHIIuhCWeknE=;
 b=Zb16pfgIJlXCSprtvEVO7sAVORYKZTp+TMfgIC7PEF6UXl7oyIjj5dfeKGRWUg1dRM
 jUB2yqeQyVBOpqarOrxBBunmgxGlAh44kS3J+Y/G/+n6UrqsxWyUEccJLhoNmKjVCsr9
 eCLEIjPdXfrR4bfgKxMw6fgHRYgIbXe0GWnIiyAa1UaNSgukYdpf7YONmuXyQotSjYPJ
 n8m/cAifCT5CvJKzB6JkoXo2cUT8vWqMhccvvJvVvvK0UaF1iG7JD6QdsURzIgwaZz8y
 I9U2etK4bB/OOnVasjUsZJMgdeQA8L5yNIsvvSTAsj6JzMqp9O7ub7LKXtXCiyKYGGMZ
 Q/OA==
X-Gm-Message-State: APjAAAU4hIM0SBIenTtByYFsGhHzmZ7h+CS0rif1q2Q+CQnJquqNnFLB
 xfP0bD/sqHpg9Bts02HyZBpwPQ==
X-Google-Smtp-Source: APXvYqwVMKPltIJcxfYK5pX/jgL4O+v5P+oIZIcn6bHiA4cAV1wqJtXljV3PMLaASgLhKqeraItTfg==
X-Received: by 2002:adf:fe8d:: with SMTP id l13mr172966wrr.287.1573385530196; 
 Sun, 10 Nov 2019 03:32:10 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id p4sm13440238wrx.71.2019.11.10.03.32.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 10 Nov 2019 03:32:09 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.torgue@st.com, davem@davemloft.net, joabreu@synopsys.com,
 mripard@kernel.org, peppe.cavallaro@st.com, wens@csie.org
Subject: [PATCH] net: ethernet: dwmac-sun8i: Use the correct function in exit
 path
Date: Sun, 10 Nov 2019 11:30:48 +0000
Message-Id: <1573385448-30282-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_033213_665245_BDB8B0BE 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "# v4 . 15+" <stable@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Corentin Labbe <clabbe@baylibre.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When PHY is not powered, the probe function fail and some resource are
still unallocated.
Furthermore some BUG happens:
dwmac-sun8i 5020000.ethernet: EMAC reset timeout
------------[ cut here ]------------
kernel BUG at /linux-next/net/core/dev.c:9844!

So let's use the right function (stmmac_pltfr_remove) in the error path.

Fixes: 9f93ac8d4085 ("net-next: stmmac: Add dwmac-sun8i")
Cc: <stable@vger.kernel.org> # v4.15+
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index eefb06d918c8..1c8d84ed8410 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -1227,7 +1227,7 @@ static int sun8i_dwmac_probe(struct platform_device *pdev)
 dwmac_mux:
 	sun8i_dwmac_unset_syscon(gmac);
 dwmac_exit:
-	sun8i_dwmac_exit(pdev, plat_dat->bsp_priv);
+	stmmac_pltfr_remove(pdev);
 return ret;
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
