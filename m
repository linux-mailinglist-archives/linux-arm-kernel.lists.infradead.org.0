Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 868D3F5ECA
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 12:37:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FJBi35dU7GUgOaeNOiqiipUAZ2aBSuDxyeBjc1YeMOQ=; b=Y8algUhQFnyjLem4yConfDqdnq
	HOZgzOmMlMHJ8678cAxPj2bTwpP7Lzo0vZVWutSBj1fBEiRFT2auW0MavEa+sFZrCxycDdxz1oBsp
	k8vP/fwK6Q3D4gb4m/K7NJZ18BFJ1P7Ah2VRc0JGDKRpO8V7d0IwoXOtlWq6AjNirRb3q494t4sYw
	W+ZV6DjVvDG2p2SbYvasVQjQLKLxfUwfmcqJzZTQ/ABax70kR63gEFRAqJKyOMjE85cFuCJoqEcZP
	SjX8YwVsFqFotbGHLhxftE89aWw1nXahFHgcRFFIIc44w0wIBVPlrWrms9B7/B3tLR/AzLLGTepcd
	sIv8yQvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTP3R-0000Dq-LQ; Sat, 09 Nov 2019 11:37:21 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTP2n-00008k-AP
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 11:36:42 +0000
Received: by mail-pf1-x441.google.com with SMTP id p24so6929544pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 03:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IySrLInNHpGtXZb/RlBk37czseGukluRznzmeXhsOUw=;
 b=c2atN5xyWK5ZrlenspGo0BGSReIDH9DVJ0qGXWoIw/Bm3pvXnC33rk7wgsIK7ihu27
 BbZNVY/5xvmfG9ORUr7R2H7G/kg/mByqtzEZenb+y5IyWK7Dz0JNDFLp9SDNZ0x5gQBs
 TYg1iliRzD1GZTQMK42JzI0kopIAktzxaEGRIz2MhvtG6vAPAiBNZ+Tgel2pg7sTQgg5
 wfzAbCXpDOKScJMYAWbIb9rv3vb23qePDLLtkh6V8hzLi4XRSJve9cD5nc0YpBfDdG0w
 DEaWOkd32D5H+W2mJE0qqC/+T2qu07dtAqrYKuq0fAiREiTnvq3rhuJjYUKWa70pmEKk
 26pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IySrLInNHpGtXZb/RlBk37czseGukluRznzmeXhsOUw=;
 b=M6tB+7fHtZWVMfrvkBbRJMhWMXLwfGbI2F8jr33UhMP/jzt40TocF35kslafBIZqGK
 RDGAMIWm1KuliWLqG+t9MjXFbRt42WdS9oKS3JCO7RvF2304W0/sUzjK3nnlCphVg1Xo
 iBL87suaKTG2hCdbvHVivM9Q3xuguN1PnPWkLdiODeYnwHlDTBPUq17h6xMAgMms9ZT4
 nOLYSI3Lxw+G1azutG0MdwZ5St1YMracRmmECZWJoQXcBh8Bza4detQjZZf+Op59Wbxh
 gDw58vjluBzdFB4MdvHpug6lOUS2vdT+GcUs7silDqxcBdvCbQVrtvPKc+xkqVcaPJNd
 nkMg==
X-Gm-Message-State: APjAAAUkkOh1lf+s/u41ymucISNkfbSK4vZDcOyfeo/c9AocIgphAuO1
 wJph47E5c1JYGgAUsG8U+Ok=
X-Google-Smtp-Source: APXvYqyThD6xef7t/WXPB/lRjTcr8wjUSnUYFWVHKkgpQuccnZB0IobwOMDFpgZ+Q3do3iYXTVbMgA==
X-Received: by 2002:a63:c103:: with SMTP id w3mr17766224pgf.275.1573299400205; 
 Sat, 09 Nov 2019 03:36:40 -0800 (PST)
Received: from localhost.localdomain ([103.82.150.242])
 by smtp.gmail.com with ESMTPSA id j126sm10757713pfg.4.2019.11.09.03.36.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2019 03:36:39 -0800 (PST)
From: Satendra Singh Thakur <sst2005@gmail.com>
To: 
Subject: [PATCH v1] dmaengine: zx: remove: removed dmam_pool_destroy
Date: Sat,  9 Nov 2019 17:06:09 +0530
Message-Id: <20191109113609.6159-1-sst2005@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105165855.GC952516@vkoul-mobl>
References: <20191105165855.GC952516@vkoul-mobl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_033641_362770_F096044E 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sst2005[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (sst2005[at]gmail.com)
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
Cc: linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, Jun Nie <jun.nie@linaro.org>,
 Satendra Singh Thakur <sst2005@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the probe method dmam_pool_create is used. Therefore, there is no
need to explicitly call dmam_pool_destroy in remove method as this
will be automatically taken care by devres

Signed-off-by: Satendra Singh Thakur <sst2005@gmail.com>
---
 v1: modified the subject line with new tags

 drivers/dma/zx_dma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/dma/zx_dma.c b/drivers/dma/zx_dma.c
index 9f4436f7c914..7e4e457ac6d5 100644
--- a/drivers/dma/zx_dma.c
+++ b/drivers/dma/zx_dma.c
@@ -894,7 +894,6 @@ static int zx_dma_remove(struct platform_device *op)
 		list_del(&c->vc.chan.device_node);
 	}
 	clk_disable_unprepare(d->clk);
-	dmam_pool_destroy(d->pool);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
