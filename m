Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F42DF6ED5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 07:59:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RBKsWYQF8FftJT1Z0eSEqmH7B0BzQvEOtdd1GE2CT94=; b=sdedhW1iwRzDdSj9JSBUEi79oe
	vORWzdILr1VvTQjF4nK5KRlcFNl1qPGQIiWpcLMRHJKCZfKUgzPysoIy4BKFzHjwpZ3c00bvwWsBc
	Q2PamaMpvIADPge4In0TBfLlyrXaeII/gXHCwmlmu5MDQSxAZY5XYTBzH3mqPtg48VXGB9XhPkFQy
	miY6olPQBPBlt/oX82/pIi9uI91yBO3cxYsYgKeUm9IJHanputRWwXtOCdGmHoiKClSWIL9chFvk+
	q4soI/bJrJ/oltcWc+DthW8V5Jp07ti3j1M1nYW2+dyHuWDbKP8/Kh1kZrPURM9nKrid5IZW4mUnF
	qTTSri7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU3f2-0004C4-Vc; Mon, 11 Nov 2019 06:58:52 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU3dp-0002zM-IA
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 06:57:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573455361;
 bh=PDcMlsTNCVoRx2qfDTLufTFxlXCLrYMeLsjNAqTRG/Q=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=HfqxP65F6w51fsv1P0/ZPY3bCrSW2AL+n0F5dx1q4l7gDIZjQ4T0Ns3XDnoaGz/NO
 naUgKVJth9NBizgog6EjQ0XeJoQgOfdWduGBFm8fm17votdW3RLiZutcXLkrGLzdTD
 kNFOy+SaRiJClC13ROpBtDCe65JwbG4Ojav4+QSc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Msq6M-1hbHCr2bsm-00t9N5; Mon, 11 Nov 2019 07:56:01 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V4 net-next 2/7] net: bcmgenet: Fix error handling on IRQ
 retrieval
Date: Mon, 11 Nov 2019 07:55:36 +0100
Message-Id: <1573455341-22813-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
References: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:tJhOetkiIh6PrprbPRKXYAtx+HAC2RlHNL5fKAuiJHmf6KO+I1W
 oSUkUc9Nkatbi8GZBpGN8EGQVwe7w7gZ985Jb+aitMGtQRsNv8nmqsvXtoOCHpysVwO/Om1
 6WRcpq3o5DKu7CvfaWRIgshkKH2S+SyuG85Fvao8LNMiSwJbr/80vwz8M0qtGl83CTSU0yB
 FKHR9K91Dfy4lOUWL1PmA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sIyxer6VW/8=:yhQZQcwXDUhs03Hp9PyJWh
 XMR8AWaOIrqiuvOZBtw53P9WCljXhJXQO3TPkUyqp39jWdG0Jg40rfN6JEeyYEdkPjXy2PQrU
 3mV4WyOdFkK6euLtDQejeqH3BCfn3h9157M4KUs9E+mp6KWUXJ9BDtzf3QP69TyY6rILiJZDt
 eTLBFs/1/FYow8wts1QFNYExKpFSeu4xNRz3g6cgRnqpHScjFKRTzS2RzcjjX/WLnfOxgtLS+
 CYsAKCNKOpae+QVxpiJs5VX8OiH7UvGxTD/J3NoKVJJydg9v5C5A+z7gtWMN0Shz3b7iOyovd
 k5xcbiEcEDTfGMhf4jGRaJP+Req3jx7dszZ0+w75FXqtKA8rZf4g1N2bWpXbnaXyq2ODu/Is2
 Y+DbnQlFgLNyU0ltzi4HKuoueRODAWzP320OYyjDU/Rm2lcTJN+5s9JeiY03avuxM471RR1Tj
 ynJtptPluIDhYLCCfeRC4/y5ibezsLHBy0ltMEI2VFEkRepcpj+LdnpsHbj24hVVn/uIRRXVy
 R5uGrWEOZKFiaOlKm16EBa+8o/q8GTD3hReTyPgi03C+X64yuQZBQDl9Y5I1nx5k+F/0BznQF
 gqrgzrXSq6q0ftfnZS02ejp2XkxJK2xS3X3sMpDemTRsoQnJ6RoW6XFT5Z7t5/81ubDTaBdta
 xsmbPcTnOuqK0DapfopqZMDQ6/XyQSxmiHJQEYKNdcJ48JRpFgo0ctTa+ZE3mCrIyrDVoTO6z
 dWHLRFFl7G50kiqFc7s2qB9VUCOt9H2nA5dMu4r4bWyVbSJGR2fYxOeNGYDocPP854J+7pYu/
 IAzUbtmSBrFE4Awpgnu9ePeGML46Hs6uIwx1DFtAFfQw/p1gUFYSE8znyexoFeWynuPVz2O5Z
 AsJ2L3QXxwKxVoYp6NMQqIzif9hZTTdDlFh/2xeU9hhvZchb+4WFR+dgHLg3L16ceNd4ueZ2H
 dr1MCrktx64umgx8NaDw4tPv35hJBetSq085R9P9xT8OMU6nL9TWMZN2SCfSQeuaBa+QwLdRw
 HZjX0TWwDJVgD0MOsM6+jF4NhI79mDGTeND4c0GYsok5xZtrp2eQN89syOzGub5VfogE4C3vC
 eP/TFHJ5Q4nc/cEkBaNIU5WUyludnAio5SIq+S7UFD8T2K9DTPVNmH/yMK4W3c2yOhE048CYT
 5HuwSCrWi21+Qp/k5IlHvMoxjpwLMVHqDdnAC3JvbEFogA4LViEWXvvLbuav1Fu/Gh7mx/O5J
 XXpgpCn6R6/GMJpvJSCTfi3wn9XiBUQXgd5Re2w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_225738_244412_F31D54C5 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/net/ethernet/broadcom/genet/bcmgenet.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index 575f162..ee4d8ef 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
@@ -3458,13 +3458,16 @@ static int bcmgenet_probe(struct platform_device *pdev)

 	priv = netdev_priv(dev);
 	priv->irq0 = platform_get_irq(pdev, 0);
+	if (priv->irq0 < 0) {
+		err = priv->irq0;
+		goto err;
+	}
 	priv->irq1 = platform_get_irq(pdev, 1);
-	priv->wol_irq = platform_get_irq_optional(pdev, 2);
-	if (!priv->irq0 || !priv->irq1) {
-		dev_err(&pdev->dev, "can't find IRQs\n");
-		err = -EINVAL;
+	if (priv->irq1 < 0) {
+		err = priv->irq1;
 		goto err;
 	}
+	priv->wol_irq = platform_get_irq_optional(pdev, 2);

 	if (dn)
 		macaddr = of_get_mac_address(dn);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
