Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EC363A2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 19:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nG8BtTV6VIFXssvNhBGYOfKduXfPO036rKwHL6VzmOw=; b=iNikVts39BfkCN
	AE2rVlU660UXPEe7xX3h33Y5UJ/ZO8wt/szFBRUAopxemyu3b3bfDl4gyyf1G5KDXpeXZiPmrcCLk
	B6ZHzDFfMoGzW4dWle4nNeBmrsQa9IF3Kobu/hkrFlgoAPLiGEYgO6uHQdEyL6BMSQeB/4q3VzYZ2
	mhS29PkZVMu80ynBklqaXT/sJXG2XODgIvFAYFgyiAhwv73JB4aO/l+z3Cwpc0nf6yg2KNY3pZ7Lb
	wBd+Cvx2ZAcJ7i2Izw0+jNWDid0yJrnEkDImC/n1x6kyUUtT+OyjlHrzlMP8oe6/8x9hl3Mcjhgiu
	UjWx949T8Zbj6yo/n5Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hktvM-0005H0-5J; Tue, 09 Jul 2019 17:29:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hktvC-0005GE-AS
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 17:28:55 +0000
Received: by mail-pf1-x441.google.com with SMTP id u14so8442471pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 10:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bzkKqUk15jLQrEfYInm22zoAV7LnCW6U344yV071lSE=;
 b=GJl5bfEy9e9YnFoBVdvkrsSluu4briySpv38RvlBMBknz3J8vxF0HR62lpTbtp9+Z/
 X4jgJxgT5T+QEBjAe+yeZQNs+Igd53Wz6Hdx144cQmhpP0h96WMChKulYZ6NwaXAJCH1
 2N4dvbJNEvcyVn4Omn0Kpie/ylsm+58vb8/0A3XxtOdHuXAUKjJ9TkrDt+6aRW/AgBqg
 HgT4fZOR2ZhwBaS9IclYx4XBz96jua4Yzrvd8Ee0S7VxoFO23M6xGgAfnn+eBU1zmfbW
 6TcZkWMfXMV5WIq4aW1CdNd3483wXMXcq0PWFUaYlgDYcUwCw7+q1F7w/+uqhVICKNRd
 xlsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bzkKqUk15jLQrEfYInm22zoAV7LnCW6U344yV071lSE=;
 b=Uq1IWHHxI+jWbO8MLbVShO/bbOJhUOH7lPU9rw8OmbMBHt8saluZZ9bAn9Rw9i5uv0
 KX35XbiVYhTD2AgRcoWqfDB5b7YN3RDM3M5SsbsN/7Ke93P/W2Dz6bXjF28PF1GS9wHy
 qRqEH82J5eAzlxfwxd1IpVwv1+ToSPGS9dmlAqVetxbC0Gq2mwKknwxcjox0LnPoUYb9
 YSlMS6kJ8XbscEZo7Vy5bT8X90FkLAIdhTfzFsUHLqQD1KYz7u/hffJvc4LnEjs2FkqQ
 /kEWCdBspn+dt7B8iPir6NLpIC4bx09X0f5SeV54Yx6L0NybSgd6qcg7oA67COjzssla
 tkGA==
X-Gm-Message-State: APjAAAVU1hQqr42tGVsM9QzSbahPbphpqJMxCosi9oQF90u2dIz9nkbu
 7TDI+TAJWtaLWAIVhaas1VM=
X-Google-Smtp-Source: APXvYqzbDrWUOoVaB4ZOiaFytDycmlBjlrY5pweLXs0yXvcAr2UGniO6mqF2mEeEyzv54uIn1C1mKg==
X-Received: by 2002:a17:90a:a489:: with SMTP id
 z9mr1364690pjp.24.1562693333402; 
 Tue, 09 Jul 2019 10:28:53 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id t2sm18788461pgo.61.2019.07.09.10.28.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 10:28:52 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: jassisinghbrar@gmail.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] mailbox: zynqmp-ipi-mailbox: Add of_node_put() before goto
Date: Tue,  9 Jul 2019 22:58:41 +0530
Message-Id: <20190709172841.13769-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_102854_365685_DBB3DB97 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
no put, thus causing a memory leak. Hence add an of_node_put before the
goto.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/mailbox/zynqmp-ipi-mailbox.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mailbox/zynqmp-ipi-mailbox.c b/drivers/mailbox/zynqmp-ipi-mailbox.c
index 86887c9a349a..bd80d4c10ec2 100644
--- a/drivers/mailbox/zynqmp-ipi-mailbox.c
+++ b/drivers/mailbox/zynqmp-ipi-mailbox.c
@@ -661,6 +661,7 @@ static int zynqmp_ipi_probe(struct platform_device *pdev)
 		if (ret) {
 			dev_err(dev, "failed to probe subdev.\n");
 			ret = -EINVAL;
+			of_node_put(nc);
 			goto free_mbox_dev;
 		}
 		mbox++;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
