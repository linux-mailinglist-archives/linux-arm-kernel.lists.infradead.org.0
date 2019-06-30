Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864995B022
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 16:30:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P+BlP1f+bnV65GgE3GZSCjvmVUyDaE+budjP29zxbWw=; b=CdyWNoYDERt3nh
	t1LTQsebMLz5uVUDXrTcQ6lgZWElMC9uj9Uf90Yunx/AbsSjpYqJ2liuStJy0/ss/JzvSNdJei8aC
	9JAU2NPnSRD7hD/d8YIfGpDQjDqWrnWysIoENwvEvZ51U7kt59b19pmAlfJj3QmiTBwLIZ7/fZC6O
	LQdEppD8ZgxRwlqfr0aka64exBFk31X2L38sKUB6VeWAobf16EZV69GK9bMwR//pTN4cpR9MA1+Gh
	+tdiTslra7DYWzdc7zB8NkY1344ynyTNQS6H/1n4yqPprRQ6hNIUCMAGX8AgeWAieQMo+BOL8FLlo
	ioWxiNaPu7wI2csl62Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhaqM-0004s0-Lc; Sun, 30 Jun 2019 14:30:14 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhaq6-0004rE-UH
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 14:30:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so5244212pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 30 Jun 2019 07:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=A7XL+qSvCLvsjTbzTI2K8VFDVm1pv1sO4YoeogNZP4U=;
 b=WocshXmMMY6BwgYpCy4zHm/Ouj9z7d7H/lj+vQDCYBdpdAy8OUaopHsgnr6Y+B97Fs
 Yo8D5vpgW/gh1ZWd06NpV00WlHlxcGZREd2lHacooXqMV0qV5Dlk9auViSk7sdp26KIw
 1yjz9ZLxDkJo3nx1NHI2I/d14RslPvZsWWOLh5Q4G8zaaXLmU3+/E1Fd4cib1YDZEXJE
 1rL2THNoIjoXaICsqz1rre+zLSWJxtoU9XuW2bdBTe0JzVWZLi7PDz0dZXvr+0LPFvlh
 /cpNCJQVjE5PKrneKsWW7v700qI0IpquHQw5+IDA2sJPkqQYBOPqv05BB2iAYvpCBDGm
 kgYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=A7XL+qSvCLvsjTbzTI2K8VFDVm1pv1sO4YoeogNZP4U=;
 b=fcFP56ORm6up4qak+c6gDOm+J86dgKXlv9egTBU2mwfP0S1y0rA0ykX40IPzFK7H9r
 vQQzTj5qu9tSiS5eOqosdiHJ+KApoGPJvc7OLmRhbb6mlCJ3UYs45upXxeAnzjaT7IKA
 FI7AFgCMki2nLVmhfFoSKY5OBfg5OdHQcF6KciTBJwTdMFlIUWhHMubdwuzNuS7fcFya
 5NAwmotR6vqth/coGAi538vublVKBSYM+d1lNS3gmCw75L/PVK73rwWTtWH0bo4x/QlU
 uiugBE/xIxzbNM+/YChQlOq+NwsLJ7JwCQ4alZBgnCCCL69VgaD7RQ5etT7HRAKRYbAt
 DnSA==
X-Gm-Message-State: APjAAAUR6B8LmBcKsx7uGqguzgqMrknqlBcQdsrYyhVHEhw0zUPXnqvE
 rIH9Hdar0uK1D1kR3Ly2bm4=
X-Google-Smtp-Source: APXvYqyUF3CwPFMn20FOljcrALPcEPpdki7WvtU6sHNL98Jy13f9+56fQo1hMMyrcAo/c/1QtOELnA==
X-Received: by 2002:a63:1a5e:: with SMTP id a30mr18908127pgm.433.1561904996250; 
 Sun, 30 Jun 2019 07:29:56 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.164.161])
 by smtp.gmail.com with ESMTPSA id t8sm7930660pfq.31.2019.06.30.07.29.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 30 Jun 2019 07:29:55 -0700 (PDT)
Date: Sun, 30 Jun 2019 19:59:49 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Andrew Lunn <andrew@lunn.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 Luis Chamberlain <mcgrof@kernel.org>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] net: ethernet: broadcom: bcm63xx_enet: Remove unneeded memset
Message-ID: <20190630142949.GA7422@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_072959_006358_042B3D62 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hariprasad.kelam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove unneeded memset as alloc_etherdev is using kvzalloc which uses
__GFP_ZERO flag

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/net/ethernet/broadcom/bcm63xx_enet.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bcm63xx_enet.c b/drivers/net/ethernet/broadcom/bcm63xx_enet.c
index 85e6102..f2dd74c 100644
--- a/drivers/net/ethernet/broadcom/bcm63xx_enet.c
+++ b/drivers/net/ethernet/broadcom/bcm63xx_enet.c
@@ -2659,8 +2659,7 @@ static int bcm_enetsw_probe(struct platform_device *pdev)
 	if (!dev)
 		return -ENOMEM;
 	priv = netdev_priv(dev);
-	memset(priv, 0, sizeof(*priv));
-
+
 	/* initialize default and fetch platform data */
 	priv->enet_is_sw = true;
 	priv->irq_rx = irq_rx;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
