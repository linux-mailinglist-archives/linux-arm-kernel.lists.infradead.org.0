Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F91ECEE1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 14:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ihAuNQ83RwBxcpNc0YNSXA0IBRk3cN6vbL2gBGLunE0=; b=BiuLc90kUv/6+vM51Pc9sSY4mo
	FwhR1Q9yWy3U1DgRpHtrGNuxsv3K2Me07dfB8CC8nRPQULiOxyv4tXdH0i4D59n7bLqz3SG1TwAcf
	KcHShjBxM9fkYehZa075AD+X9nZ+l/zixt0xIQ8EGeM7YqnPilnEFwyrIjlBjrVLDwrg/wEnD9WyG
	argI+Hop6ZgS5cAy1Q9PeKu0/igE3S8TnJ09Put8xl8Mmu/nMwGsbw7VrSWrsHeNFehn0RwBuN1ND
	zm7nuUWD1mQpwWfCKh+7lcG6WRKgT/wz+86qi1OyVfSnRkbctRNkN9YtE4FRjaRX25v9GZR1rlPku
	sSjFc1Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQtgH-0003CF-HW; Sat, 02 Nov 2019 13:43:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQtfX-0002bi-UJ
 for linux-arm-kernel@bombadil.infradead.org; Sat, 02 Nov 2019 13:42:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qNraPAnob0rxBqsJD296BXwCwdfv9IrOGozERg6GI1s=; b=cqdDaY1dVEfstde/mpMR4eEXJz
 EVk8EF83xvjBuMQQwspVhopoZswFbDBDD2unLAkf1i+Nq/aCpQaS9mT4EYotsy3DwTXbLdtg+1tI9
 kvRzgZ1oadcQuQEUAUsKkomfmKyFLG/gE+neEK30HFzGXCkpUcws56t97YnjD9sNSQytaTp0SJP7p
 /IBUoNsx31Y4n44FeF2TOJKQBOjGaVCtbXD8v7V736iEnqKIOS/wVp+FBycQ8GVzcMMmMk6BnDWED
 IepH2ErARUdTv6v1sF8QIl11rA1PR9QVhLetHu2iZQUFKgYEtf93xVdkSBSVQZRFiZyTUrfUY0r6q
 /fYiEKuQ==;
Received: from mout.gmx.net ([212.227.17.20])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQtfz-0001b5-GX
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 13:42:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572702114;
 bh=Gt8mtaRoWgef35XMJ2bznCxioijqTL1JeO9yIP8m0jk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Zluhl/HQN/QJi8FpCGnsv3PiWab2FfFsaZFJYue2XZUDutAZF0s9dPtXFWBY8anxo
 cEo/GLhNmvRcqmFof0fI7tnotkXNjyd2q+8ajBh4oXjKP/IMu2ZxkLUKgM4mtNjLsZ
 bSIx3yJLWT0FF0rX+OhjTxlveNJLjkoPHdJ3zZxg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MIdeX-1iCMvk3Ent-00EbY9; Sat, 02 Nov 2019 14:41:53 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH RFC V2 1/6] net: bcmgenet: Fix error handling on IRQ retrieval
Date: Sat,  2 Nov 2019 14:41:28 +0100
Message-Id: <1572702093-18261-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
References: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:4KOkdHKpqwUQBL+sP9jFmD/wRZEjL6GMtTHhcX3nDLnL4Y5dcZd
 U7Um4XjIfonOnK7J34g2rQh/EK1hD2iUFPp4PQS+ct8tqMFN7vA1M2Ht346gAXF15OSP0LR
 0li69YNIZaGqrhekDHg7VnT+xA5LBqhh0yShLZ1WdGXn3MULzo4O8eGXoZPF13X3V/QBuxr
 6nmBp24Wg/3ZBMYm7zu6Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jUH8TvmwCkk=:rYJhhWDaD6/v9EYrP+WEkI
 2wQhuOuc+u5FT6fyBXrx5yVKOLVsTmFiTWK7rzFsnwcGJzo5Y4b5zuO55AmBM8V9nKBuyymdr
 oYPPPMegpVyEp7zcaz9fvPQIDMsw1a5a5TFHbiBTC1NVsEDoAifGJuIEjAitygwcGJJt1cFgE
 MGad+QfmPfl2OvdFtfI4+GmYUdUQNlEIEf6dzDybIqPVKEhpGacOqRq/PWgUq8ATbHrOvjbaw
 Wb5djpkbh/ui9Rb+T5Q4Ai2PMq38da0ZDrnyDiSpHTEXtXc+7Fn+Suct9XBsNTTXpTQ6M7cgl
 3+111cwcgAXJEiY5aRAWGhPJiFgUdHV1o6ozMBTN235fVZZ0Nh5AjJtpmTu8DOc45bgA8NLRy
 DDv92somX1T+n2PSgO12FR1areNNYVIMydXsa7BTnbL6ToZQZTiatVcK9CIWGu0BTi/FdK4Lr
 rkmgpBzeCV4bOJP1QzKyvoIiSXH8k/fGVtM8lfeSU3rHfeXfHbZVBzMcQGmuhPYvXYUlQOnho
 JZgT+OHImyjzpJJ8VA4kYpw1aK/mZ17gxbI9mEjS7bR5VkpeIW2WJ/5veewfo77G1DL3QMnD6
 j8by582hlVXwPBrQfphM3ZkJxdv99ETr7GcLhPFPq+1GONr+d6rnMrgmEA62s4U4jg41ZDrZA
 Q/v4XuOzIX5Yu6suSuplYg0gOY3XvOaI5FYAMYWS8rpAMOCohEL2G5aUW6Zt5a8CJBkkeL8e3
 3TC0280zjKIf5X61elDCe4l1zd5CnEf4lRdCv5Ym+oa/SEqmqEODw3MkBj0nExvHG3ST8f8rc
 7TJsAw3lnTPFAjVxZJBt5F5ejF00T5PwPDdFvFlLeiPcwG7GJmg/SzCnVjESlXHmroFcAoqnV
 anU6JGxqvLBICJ4xpAMSjcjkSVF0pdKxsj0UqLvXTseQ+q8jBEDw/OLJN7aJhQvvkZ61//AY0
 F+hEW2wjWTB4zrejq+zF0PvuN3pg413NCtUKX80CMaC5IL8BhutDzzh32/S96sNHAPiiuCMyg
 5FrucD0SWpksEI2yggz5ORYIOY2UpCNX0sE9UasftU7ay88FB4j+TFpIdOmui29YDj0N/YjNm
 JMEllR6rYUivjsP1lJTOMxlanwMDY+J5bxMMPLVsc58DgHvrOs1Brggx3S80ywWP+brHs68EI
 1cbMRZSB6ugrKAlifwY9m/EGtI3tFnn1GCBjVeshTsfpz5mZTtkFpl2huZxywOTzZ8DtqnHpx
 x4JVjrhUcbLDCf9kWDTBxov+AmwMytHWpJoTE5Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_134247_628179_7F3C6254 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the error handling for the mandatory IRQs. There is no need
for the error message anymore, this is now handled by platform_get_irq.

Fixes: 1c1008c793fa ("net: bcmgenet: add main driver file")
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/net/ethernet/broadcom/genet/bcmgenet.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index 4f689fb..105b3be 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
@@ -3464,13 +3464,16 @@ static int bcmgenet_probe(struct platform_device *pdev)

 	priv = netdev_priv(dev);
 	priv->irq0 = platform_get_irq(pdev, 0);
+	if (priv->irq0 < 0) {
+		err = priv->irq0;
+		goto err;
+	}
 	priv->irq1 = platform_get_irq(pdev, 1);
-	priv->wol_irq = platform_get_irq(pdev, 2);
-	if (!priv->irq0 || !priv->irq1) {
-		dev_err(&pdev->dev, "can't find IRQs\n");
-		err = -EINVAL;
+	if (priv->irq1 < 0) {
+		err = priv->irq1;
 		goto err;
 	}
+	priv->wol_irq = platform_get_irq(pdev, 2);

 	if (dn)
 		macaddr = of_get_mac_address(dn);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
