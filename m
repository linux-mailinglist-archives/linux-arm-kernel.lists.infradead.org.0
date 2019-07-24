Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 142FB729B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MmMCC/T++tfbBbXmBv0NJdUAsfUl5OG9YEDKtxVOw/w=; b=CPYeXU10hfdSj0
	/foeRl+6amrf0NTiRC5E0ceB0pQsrAkRtYeGYzLRBtzkIa+gWULvxGIaPEWq+2/EPFiIxRaPpuAsq
	ErtLE355DrQtwMJpKqRBjoRg2EU77GmE+ODU+H8slm7sXep7+tzbq0ycVm0P/qgvgUjAfBIoU27bX
	mlXv/SfD/r7xGHffliaNaIF9iPTKjddQO5OxpP+FGqgjSsz6SAwvb5YLMM8Pj1Sjwyxr2udnU60y6
	ahjlTR3Fg555AN664LB4VOXKzc4qce/eCE6bU6PweSdCp3rk8b99Log1lReSnov2MTjfvOpn27+ed
	ZC8z6kX6pnsN4t3R6StQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCRx-0005dg-Dt; Wed, 24 Jul 2019 08:16:37 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCRi-0005d6-6V
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:16:23 +0000
Received: by mail-pg1-x542.google.com with SMTP id i18so20824798pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 01:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UKu4ag1FmHjYtjYW+CMCBAQuhxQ6kM/fKKzKkjZJgHU=;
 b=pyfIH581kKyg3SluiHcyj8vETKepVhm6oRKb+sUkYTCPMAmOLcSEXjxKZUkMK6wv7h
 VEgo0GOmiuw1Y/gNziSfr2BWwTPeK4cA4kIu90H8cDAM2iJZEN3ZwFXs/kGdGANWCqs6
 P5NS3brOcUAituR3pb2WfdP8mcTGmzo6RCuGPWGPfLj0bOR31ebip3mVB9VjmDnSw+SP
 kNBXigb9vMBmyB2w2eBIGa2Jun0EfIYlty+BDB0rU575xd64OeMz3gp2KivcVbPjfIoy
 kCwM72V6qg7XJ6os4oE8+DJCQ7mXkSHxIwfULY0XcU0A4bJgUUhto9Gj4532ZB2IdhGV
 kReg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UKu4ag1FmHjYtjYW+CMCBAQuhxQ6kM/fKKzKkjZJgHU=;
 b=IfLCeXIIa+O5oI0PsOI686NOoQ7g2+xCjlnRxGy7i92+9isPpe6Gd1HILd0XtQhaFy
 VtYvvrGzPPrGpHP47QBMxyK+e7HxuKsqW8nxkTibMUX1QB3p06usfc/y8UPytbsPy5WV
 BbEVDj7nc7qwyjeD9CEqOCYPiu2nApgG5W/v7ZMvptT4MwZWoPHxbPosqyFuHLMO8Y9z
 KoNbHJzi0BJ0nl/vFXdne5MR5dkQ+0RBws8jcuH1zG4YCR87tWhz1rd7rPMi9ViYSAnb
 2DPbpcSJshJJ2dW7xrN3gPPE8klbNP8LQM0kGQpkVL8ALf6PKnLnyuDZWaqIhQfRHEDY
 xXVA==
X-Gm-Message-State: APjAAAXYbhAwE6Pudk9F60sFxmT4+EjmYFKxhk2yFG5evVvLb3B7PRA5
 6AKBCNT3EN1tdSiwngZ4Wv0=
X-Google-Smtp-Source: APXvYqw9RmLNie/aY3kugAEekqK3Xf8pC8MGD13PNtXTwM3QjoBhtleaGBl/jaPHnS94EHz5FqkGyg==
X-Received: by 2002:a17:90a:9a83:: with SMTP id
 e3mr84858295pjp.105.1563956181475; 
 Wed, 24 Jul 2019 01:16:21 -0700 (PDT)
Received: from localhost.localdomain ([110.227.69.93])
 by smtp.gmail.com with ESMTPSA id r188sm72204789pfr.16.2019.07.24.01.16.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 01:16:21 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: okaya@kernel.org, agross@kernel.org, vkoul@kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org
Subject: [PATCH v2] dma: qcom: hidma_mgmt: Add of_node_put() before goto
Date: Wed, 24 Jul 2019 13:46:09 +0530
Message-Id: <20190724081609.9724-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_011622_239434_E4222D25 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each iteration of for_each_available_child_of_node puts the previous
node, but in the case of a goto from the middle of the loop, there is
no put, thus causing a memory leak. 
Hence add an of_node_put under the label that the gotos point to.
In order to avoid decrementing an already-decremented refcount, copy the
original contents of the label (including the return statement) to just
above the label, so that the code under the label is executed only when
a goto exit from the loop occurs.
Additionally, remove an unnecessary get/put pair from the loop, as the
loop itself already keeps track of refcount.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Move the put under the label instead of above each individual goto.
-Remove the get/put pair.

 drivers/dma/qcom/hidma_mgmt.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/qcom/hidma_mgmt.c b/drivers/dma/qcom/hidma_mgmt.c
index 3022d66e7a33..43f806c8b51e 100644
--- a/drivers/dma/qcom/hidma_mgmt.c
+++ b/drivers/dma/qcom/hidma_mgmt.c
@@ -388,7 +388,6 @@ static int __init hidma_mgmt_of_populate_channels(struct device_node *np)
 			ret = PTR_ERR(new_pdev);
 			goto out;
 		}
-		of_node_get(child);
 		new_pdev->dev.of_node = child;
 		of_dma_configure(&new_pdev->dev, child, true);
 		/*
@@ -396,9 +395,14 @@ static int __init hidma_mgmt_of_populate_channels(struct device_node *np)
 		 * platforms with or without MSI support.
 		 */
 		of_msi_configure(&new_pdev->dev, child);
-		of_node_put(child);
 	}
+
+	kfree(res);
+
+	return ret;
+
 out:
+	of_node_put(child);
 	kfree(res);
 
 	return ret;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
