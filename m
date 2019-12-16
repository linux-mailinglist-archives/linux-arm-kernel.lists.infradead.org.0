Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B712D1216E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 19:33:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGS/qd0UsvMc4XRSn9t20RZChrV/5hH6JIw6rSfNnc4=; b=oxIWx/l+X1g05j
	w0t7Bc83NjBy3wZHMNTFP+bAtxeZ3bsL1a+orJxpsaEXrYvKdf4zk1RAi7G4ZJ7Yzf96up6FZn9Yy
	Zpr0kVCajMTgUl5b9IqGDyryKexkM2CVOwWZQczTtZehDtkUTPMaXQVpAeCZqREjub6D/RVUUKvMn
	il5zYE3ojwzU7MHl7YKlqmaUUSNwBOqmZrr/D6EUZTKPb0LEKfH7QAY2RCCFjRFMGP9PHKfsfsJ4t
	BPXSamaQn6xMOMvACxPH2rwLYl9tqFqDe0/EEiDH5bQxztua+skjh+x3nR1q+xNDKqYTsjMWKpG2T
	rj9v6SYC5SuqNqWga9dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igvBN-0001zz-BF; Mon, 16 Dec 2019 18:33:25 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igvAy-0001pK-Rw
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 18:33:02 +0000
Received: by mail-pg1-x544.google.com with SMTP id z124so4171722pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 10:33:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LsjRazNxwIjB/kfHtlv+QoNeEmV3wJwVhLTpn5ed/GQ=;
 b=EPNmuv7MqNfortefo8XxuPcLZY3v2+0pE/+qs5Mn/GhZSLiGYUEIFwOATXAMBhey5i
 evD1gcEeThnipE0cQo9oRKVuW70omJvIx4KGpA+ONYBCnaayq7479PtwTiK8fkQd9PJp
 jXXnQczA3ti83FYCWD7QEfUngm2rHMWv3dj0nz4B5fYnwVA2FhEQA5kQXsvZPTj65Zpq
 W4d6W2uJkoTEJDk4HWbJ3J89oMQwwpfoBnsuSos7jCnUphCmRT2XJDKGYAlDyApOzjHy
 zx0KYeSXpgtcgoy0tJWJ6OZa0xqM3icfHeXZLiRB3vfkEhC0TzBI/R7nPp4RYRIcGvyz
 5J3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LsjRazNxwIjB/kfHtlv+QoNeEmV3wJwVhLTpn5ed/GQ=;
 b=PqPRxzldwXtgjamZ9PQveTwPZYWS5aGEoVk5vplVBNpB2Cn+CgokITtGhXtB9s3DsD
 q+nljTq4hpwPo/uCkWRgd31R+MNkgAi7iEPqVgb0oUOI0SPzcQiyqxMh+ertU5y99PET
 B20ALnGyFbCoh4eeKzzIkkrxXuYNnSdCTV+t+x3oBfnI3pxMNGyRyIJ9Dqqf7sx7jWWE
 rkqbKuWUeBwuyy9aiBo559kl5UHp2k6dNAf0q2EDbKQru1sGsmcyWrVHmiijEhyBqbU7
 vo+Dh/qe084XuSBh2TXrHo2ifBSwdGgeSN4S04h9FXR+3QZhXVjvOEz5x4WA0cOHTav4
 o5og==
X-Gm-Message-State: APjAAAXW3RKDVS8baAIRlP6mEgRuG1EstSAtGMF8mAnyGjwZZMrOhBBn
 5clC/P/wPdizgtAy6wrTIqPflgUQ
X-Google-Smtp-Source: APXvYqywyd+9sNBYjD8oNqLxF1Md9OVBnbnTKmYuQP3g7+J+J1BRsdzZYnneQ8i6drfpJFAw5/qcJg==
X-Received: by 2002:a63:d62:: with SMTP id 34mr20598440pgn.268.1576521180321; 
 Mon, 16 Dec 2019 10:33:00 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id d65sm23400738pfa.159.2019.12.16.10.32.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 10:32:59 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 1/3] net: axienet: Propagate registration errors
 during probe.
Date: Mon, 16 Dec 2019 10:32:54 -0800
Message-Id: <42ed0fb7ef99101d6fd8b799bccb6e2d746939c2.1576520432.git.richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576520432.git.richardcochran@gmail.com>
References: <cover.1576520432.git.richardcochran@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_103300_899393_BCF6B607 
X-CRM114-Status: GOOD (  12.33  )
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
 provider (richardcochran[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function, axienet_mdio_setup(), calls of_mdiobus_register() which
might return EDEFER_PROBE.  However, this error is not propagated to
the driver's probe method, and so deferred registration cannot happen.
This patch fixes the issue by handling the error code properly.

Signed-off-by: Richard Cochran <richardcochran@gmail.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 20746b801959..53644abe52da 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1835,9 +1835,10 @@ static int axienet_probe(struct platform_device *pdev)
 		}
 
 		ret = axienet_mdio_setup(lp);
-		if (ret)
-			dev_warn(&pdev->dev,
-				 "error registering MDIO bus: %d\n", ret);
+		if (ret) {
+			dev_err(&pdev->dev, "error registering MDIO bus\n");
+			goto free_netdev;
+		}
 	}
 
 	lp->phylink_config.dev = &ndev->dev;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
