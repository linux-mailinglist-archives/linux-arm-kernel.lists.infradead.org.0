Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DADF8099
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:52:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HfjsnRHEAa/uu/FXMj8UgawXCsmDvM3fdiMW2x/tXu4=; b=FOVY13hHeW9w/PWF66swvYqzBz
	TDSDgNFS5vDJzsANm8JAXTtUX1+m+BGBd+ib2FP3C83gQSUy8jc6JBX0BVPwg2hLjhwkPUnvXfWeu
	TLLb5KqDgfRiqMCgQ8OuaeAx5hbrf+Eo9vfVKyG8PGH34RIg1du8ozO4DboZ9NoIn0ac9tpg+PiBl
	TF9/0rAWGnkqnhmGaRJCDB1AVOP2/QT9+brbscDzsvoMaDD/KolfZHV0rHBpr7FaRd24iMnFgYU9L
	4zeGL71LqIqwoEW4wC39p/VVbJ9Sa4hG8LVPpZdkDjDH5JUnnySNCs/YFSQDlS9ncNcNYN5kjJRkW
	BAOp2EWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFjV-00028r-92; Mon, 11 Nov 2019 19:52:17 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFih-0001cx-0Y
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 19:51:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573501790;
 bh=taWXA58DvTrq62BOOg57Z2EuKGOOTGhqKhyK1g3A/ds=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=A/KBgjd1cp+GvJFSlgecj+stsDiZqZb0fqtukpXswiuTZyjGziEGdvACPHvUrkJoz
 NgzQnfxBmq5XUIk+E4K8HlbPyH2Jgv7vqwD7IldAzeDDyEEze8w0Wnv1OrH4tQxs1v
 qsOX3XBOHXTSa+H3hmVW9Vwc4SSlYqt/t35+DQSs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MzyuS-1hjQCG32zW-00x0eO; Mon, 11 Nov 2019 20:49:50 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V5 net-next 1/7] net: bcmgenet: Avoid touching non-existent
 interrupt
Date: Mon, 11 Nov 2019 20:49:20 +0100
Message-Id: <1573501766-21154-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
References: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:Vn23tgDCDcdTg1xYnHdkw2UX8yHSxhCJJqMtechmWWjMUjg8tzL
 3k8eiqfqsYa5eQWFLLN+tG95x64undUG+VcacSddSHVC3s3CzzS6zDGsiGo0X5ES+4RbCrR
 eA6/vgROl4A1iv6FA2i+19mzwq6jDYzuKFarmMLE+66SFW8rUw8vZYOhxf0Jewphbi3auVw
 eIngeFYtyoi61dFpWrfAw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ko8Y9vRapm4=:P7iuRZplRHa5+9NnbcC6V1
 YCWl7UfqaEjTqF3M5JbtOQXI0i09hwW0hvv+qurfCyWCnEgRjs2NXM/INqLLpnwFXRceY9kIx
 Yk8y9FDwP+JMu0thxOgw/3XD5fDBaEAnMx4oWhXapAuGCAn1IsoXSCCNqgQWxMMVW0IHebN10
 JMwKCOKuDI1TL+jwGrUcftw32hKLGSUxmY4PKb19H1Mm9MAmARKLdqNIbBkfJgJS1xsSyvmsO
 5xh36By4G5uaZJXaKYQCe6N1nr07UDlelIR++/hjg+/aloHNzzRtvx8gwC/7gQuBEL6l9l3pg
 5ZEod4QYvsr2ps29/JkClzCHPe1Mp70lqKNBOxCPyhmtPBXv/IXstvAC2pbaLlXLajHVzsYpP
 S81TPOrKnSleosii2nPYJ3+YaLcscDUgPogZS/1zZom8nzd1n3GwFQ/cMwhaCqHvO81il63E2
 KZaEEXjuNmE45QLWLTLCMc7WGsGjU0mHdQASc8EH14/KI29ogOacVXeNhSPeEYAfDJKiYwn55
 /YtnHstMoyG9uDRU8D1fa0nsHVAWDYJtpLTOhiB4/43PVyhS6ieO2LVGy2yUXi41AZtz/J+pc
 qEqYbTCZ1Vg3p3IuOa7on6cYMA3YedinV3wBNGF2pLJ2Ni267K1jDTkJP9LB+J7imgypl/u9w
 9AlCFAjZ+jpUBVEsCMGYYNy8Au7GMRqtKMDrR09WgonrpJMOQ+AlYiSGgHoRFN3bmo77A65SI
 jpl8y3h19tphwzU7Nh4l+vAVaBdaChUIp8YIZbemzmPFo5cFBrStOhAyAFnXn22kbOKyML/oj
 AoBprc7NdD56xQ5nW5/46xMEXHicVhl4ONtPVqNRXnRzxbEiNH4Y4W275jTBk5Bwba2kadKyg
 tan0zmPi9FR0F0bLZ/I8az5xSR715DAq0Q4SPuCo3esxolaXq063uIRiTNqhRnVebMYzL2zCg
 TYXPqs7dSOcFri8Of6OCjov6Mb7+MaoOvDDBwEaW7mTlfF3gjmxtCBmIgAqRuTNuAWOj48ByV
 k9xWct2Nm1vXTIGDYtFRgZRwKV8eRAfFSmbGb2/CooKnbDkBkodSL9rJuJyVCuCReGe7ysNU/
 GKfqstmzyD6Z1StZs7CCa/wlljw/Z7roneIkh6nxr6hNqhfUpGkyCNe0ljUuB3i2NGLtgj+Dm
 rVZFbVJHcXDvrKFWhd6LFAb2wtZS4xrQhFy52skfokmnXIQjfqKi+i4TA2vVgXYQ+7cw0SbUl
 2Q4nDCSXo5zy6aZVVKtWk5uUM7qTnMvQcsJCuww==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_115127_354054_B2817176 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Doug Berger <opendmb@gmail.com>,
 netdev@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As platform_get_irq() now prints an error when the interrupt does not
exist, we are getting a confusing error message in case the optional
WOL IRQ is not defined:

  bcmgenet fd58000.ethernet: IRQ index 2 not found

Fix this by using the platform_get_irq_optional().

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/net/ethernet/broadcom/genet/bcmgenet.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index 3504f77..575f162 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
@@ -3459,7 +3459,7 @@ static int bcmgenet_probe(struct platform_device *pdev)
 	priv = netdev_priv(dev);
 	priv->irq0 = platform_get_irq(pdev, 0);
 	priv->irq1 = platform_get_irq(pdev, 1);
-	priv->wol_irq = platform_get_irq(pdev, 2);
+	priv->wol_irq = platform_get_irq_optional(pdev, 2);
 	if (!priv->irq0 || !priv->irq1) {
 		dev_err(&pdev->dev, "can't find IRQs\n");
 		err = -EINVAL;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
