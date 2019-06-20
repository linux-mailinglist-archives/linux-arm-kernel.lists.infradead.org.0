Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011224CA87
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:18:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1NQn0Ah/eLxYi6hSZe4sRj0ANYppTX3Uz2N05l4CLsQ=; b=AHammphwdAt20M
	m18wz/vk9i7hJPJgqnDRFR0Ej/UtL948krUjeOdSJY0OMhNnq3W9wkvFtrEVGXxavMr1lzCysPSoy
	tC276Ezeb6rOx56tSWXxPMR+ddY5vQh7pQP78OWJkmWSo/Lj6gDpD+Ey7JU8VWz6RLZV9cLeZ+Ntf
	G/JOklak84k5GEKOMNLztA11IvWg3fRr20EZ1YQENWZHC7J52Bia4ustmYAuDsHB19oABuP4YqP5A
	+jQcpYECRHdy9wTqFdhytX75fNc2gPwhRWb/xKT9n7MF1806nTcPlax1ACIijbuNZ/AOeWxcQQ7CF
	EnWqrX2hn3AH06qX2DbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtCl-00011G-GM; Thu, 20 Jun 2019 09:18:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtCW-00010O-0G
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:17:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so1303614pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 02:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=H/N0qHE94BgVcSxh7Y7ddjnVY+VEqSIyYgrIMxgshDU=;
 b=Jdg/UCsKPmIjRfaapYt1gOM5GjjcSZvHtz8ONkgpvHrAWlb9vbnRJMNl4MW4FbYtEw
 8+YR65T2T2ap5Lwq5+sMJuahof/pFY9ZKkJuf2gUBIelzu163GN+7HW0H+Ku4aKkWBPN
 ITlXlxJGNrnau/yhcjNck0/pYz21gwLdhwooI29uqWwrbEgFPJe2wKt024dcE+KG+Vp+
 zf//1oOezxAGYjrucQmfBYcsUrUDteM5Mwu5XAcx8yY/eRJfguZs2eY1rj5MQEHgax5R
 RoxM3lbwpH2LrteXty6Tn/Mx5Gh42sZZi/AojBszBTgqvPti6KKt4QFtG1yVDu7GmCB1
 0krQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=H/N0qHE94BgVcSxh7Y7ddjnVY+VEqSIyYgrIMxgshDU=;
 b=OyI6fYj9D7nTHxoeyqfzsua5tekcxi58ENGOdID8Gt3aOwZc6/U+9MJTnfGvUDw0Rc
 VgVKi7GmUBO5IAr+NZaC205sps3Rwv/cr3VQMd/pf8QrHPtJ+F/aZioAZR5VDoeTOjnu
 lWk0qjAJdPmQ4Ix5cZZZ99A0sF840grOBZob9nv+vthZ79EZkKcAx/63IKe1TKBiz4rM
 X5tdiUc5S8oyAHGvS/1oRXYAlgRUXmlM+1wqrFAgak4WcPXn18kK6HKTpMkkB4ZVaYti
 wDqTxyqCH8tZhk6Q2RsEkFEazf1tSWJNFY4zCVh+foz/oA+T5OpumvyQoJaSX1ilBXbE
 oEhw==
X-Gm-Message-State: APjAAAX38y60XBr0ltSjVmDYGH9VXd3hE32YAAZrugpquqAzCSrBCoIx
 QE/xsWrOQGnUfwaHZ/py4YggyxtF
X-Google-Smtp-Source: APXvYqyjRU2XOSFHLaSw2NHSfqeinOcL6lcfQZPbUgKSsSNdlUUmXuhILPthF8TjGwD0ko3/VxzC9w==
X-Received: by 2002:a17:90a:e38f:: with SMTP id
 b15mr2075612pjz.85.1561022266727; 
 Thu, 20 Jun 2019 02:17:46 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id j64sm32324138pfb.126.2019.06.20.02.17.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 02:17:46 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Vijay Khemka <vijaykhemka@fb.com>
Subject: [PATCH] soc: aspeed: lpc-ctrl: Fix probe error handling
Date: Thu, 20 Jun 2019 18:47:38 +0930
Message-Id: <20190620091738.14683-1-joel@jms.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_021748_047398_02BE5070 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

gcc warns that a mising "flash" phandle node leads to undefined
behavior later:

drivers/soc/aspeed/aspeed-lpc-ctrl.c: In function 'aspeed_lpc_ctrl_probe':
drivers/soc/aspeed/aspeed-lpc-ctrl.c:201:18: error: '*((void *)&resm+8)' may be used uninitialized in this function [-Werror=maybe-uninitialized]

Only set the flash base and size if we find a phandle in the device
tree.

Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/soc/aspeed/aspeed-lpc-ctrl.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/aspeed/aspeed-lpc-ctrl.c b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
index aca13779764a..eee26c2d8b52 100644
--- a/drivers/soc/aspeed/aspeed-lpc-ctrl.c
+++ b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
@@ -223,10 +223,11 @@ static int aspeed_lpc_ctrl_probe(struct platform_device *pdev)
 			dev_err(dev, "Couldn't address to resource for flash\n");
 			return rc;
 		}
+
+		lpc_ctrl->pnor_size = resource_size(&resm);
+		lpc_ctrl->pnor_base = resm.start;
 	}
 
-	lpc_ctrl->pnor_size = resource_size(&resm);
-	lpc_ctrl->pnor_base = resm.start;
 
 	dev_set_drvdata(&pdev->dev, lpc_ctrl);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
