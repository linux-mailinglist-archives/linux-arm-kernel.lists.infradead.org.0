Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7261545F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 15:18:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2lHaGvBBRenDLHf+xl2vM/qAgocwuet6Kzb49UxYtr0=; b=R9BJ5Ll3hwpRdq
	WY0OLPqggTTX/+gd7R6ns1YY6lm+bWH3X/SePLollsvQSxbfIUuwU4dY4C/1JLcN83oQ70e/dvfII
	yuYdW5/fMFu74O0X8kLTcFOQ9y6WteLtX7/KsVht4dGUV5x9yTX1/M3HisFfNoOMrhAfXMPBQuvjy
	bQys7xETLnp7CtyYfey7KVd5e4NbpIq8w8Zn3z1buZBLUBKkZ9Kq3dM4QENWNFUjtNv2g9/if0J9L
	6d8PSVZNwrgKwZjE7VbvEUrMOSBxUPL8Y52KeeXVn80qGgQ64gc1P2HV+XoVkCiKF8h8sESBpkIHi
	dmxuEJgrpxTCdObD0B1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izhz9-0001DG-Tx; Thu, 06 Feb 2020 14:18:27 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izhz2-0001Cm-Aa
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 14:18:21 +0000
Received: by mail-pf1-x441.google.com with SMTP id n7so3213455pfn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 06:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tlgS5FHChO1CGBWXTjxXUP4mkvuvW/nEiNannwwjUKs=;
 b=C5fKtB+HfWa9s3R1yA90NR/reVyYx5PpUorZVhZhyxP8LEYRU34BddbXV657OB3yVg
 aUlRzqD2KzLwXLEVCEV2isyrS6k/qilnKMlKF28I33QP/ZjF0OEvvCk6DNqGepF+tWEC
 fAVLPs8p1E4iOwgJD29JREWzS7yUUWMev+5XSy3cKElgs81rAePv5maOhZqzv8J+yem8
 6Cr5+xsL9gaZyla9r3zRhJ3V4E3ZvQ8Jq9BBWf6hZUFj6OOPyqcQv8v2ejVF22yVJ5xj
 2qBYjtCInRJIomYHfGtwJKsXnoe/h40K9OfLC7SYR4/SjgjzEjPIMrwVK7cDLZPU/ymu
 oZbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tlgS5FHChO1CGBWXTjxXUP4mkvuvW/nEiNannwwjUKs=;
 b=CvUy1qGeljx354IpggHyKZCs7/SDMdmBbU3boMgAEP6xQXvjX9KusBOkDA5OhS82O4
 EtBz12i5w3brDH2EVaQaedbOcVX6UC5XlIu7egDqaKa9BwoFxDoTjwj54WRs0U0de/Qx
 Li1Y4rIYE5RDP6q73DJ7wMnLXTlj+oy75gdbqB0OvN8hbZ50+7kzL25iwtgwt+Mio1Qs
 H8UpSONTwnzoxIglTi6d31Xbb2/JGnZ45ZIV7akK5pkVQzH2h9yG7ugEwBMl+Nd/eVBs
 1aUOBUkQ6bnJ96L+Q8bU5LRbjlsCGs85bWQFCvKlgj0k0vCxtY0jJ2xzBXWUfT3tnw2j
 s2fQ==
X-Gm-Message-State: APjAAAWTn/yxNLKLF7cEhRwKxhaUcn1mK41VNqkVywBSb4tZ/kVt9ztV
 BSitrVomhnGXBCrCyB5fk2k=
X-Google-Smtp-Source: APXvYqx6YAdoUhb5FnTWPi7Ak9w5qYjmWF1npBNQTFTivhTR5tidkJgtIV0fl6Haso1hJLuMCgwXOA==
X-Received: by 2002:a63:e007:: with SMTP id e7mr3793478pgh.414.1580998699750; 
 Thu, 06 Feb 2020 06:18:19 -0800 (PST)
Received: from localhost (104.128.80.227.16clouds.com. [104.128.80.227])
 by smtp.gmail.com with ESMTPSA id i9sm3656678pfk.24.2020.02.06.06.18.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Feb 2020 06:18:19 -0800 (PST)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: vkoul@kernel.org, peppe.cavallaro@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com, niklas.cassel@linaro.org,
 netdev@vger.kernel.org
Subject: [PATCH v2] net: stmmac: fix a possible endless loop
Date: Thu,  6 Feb 2020 22:18:11 +0800
Message-Id: <20200206141811.24862-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_061820_368010_21D12E1C 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dejin Zheng <zhengdejin5@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It forgot to reduce the value of the variable retry in a while loop
in the ethqos_configure() function. It may cause an endless loop and
without timeout.

Fixes: a7c30e62d4b8 ("net: stmmac: Add driver for Qualcomm ethqos")

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---

Vinod Koul and David Miller, Thanks for your comments!

V2:
add an appropriate Fixes tag.

 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 7ec895407d23..e0a5fe83d8e0 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -413,6 +413,7 @@ static int ethqos_configure(struct qcom_ethqos *ethqos)
 			dll_lock = rgmii_readl(ethqos, SDC4_STATUS);
 			if (dll_lock & SDC4_STATUS_DLL_LOCK)
 				break;
+			retry--;
 		} while (retry > 0);
 		if (!retry)
 			dev_err(&ethqos->pdev->dev,
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
