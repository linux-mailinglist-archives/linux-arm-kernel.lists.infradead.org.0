Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F19F809F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RBKsWYQF8FftJT1Z0eSEqmH7B0BzQvEOtdd1GE2CT94=; b=aP8wjzKowd8+SOcmNPTn/pr5HH
	MOjaxFMOrMDSog9cAd53pE/HcIAe7vPQxUoqogGJl8zmHrIjHyei6fz+EaRKL8ZmAcc4fG/xHGR+E
	SUic3b+i4n8rWyaf7Z7TQYG1grHttn82TembKevM5DqjR+ANA3Wfi9lPsg9oz5HIM/3saF4f9y9Rh
	fetWhAPUwtOgNUDGSpNz2D06ulMGse5n/a6pZQL9L6RY2HrxnGtajTdAM3/QWIBboxAytUJcTgweK
	jG+D2CJ2BDiuCp1BEOBwhT9NdnyCzq/FTxe+S+l6/Lbhjh2EuE1yPZSlTtv7eABVI1tgLEzjE63Jr
	N7y9dBiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFkb-0003NH-Vg; Mon, 11 Nov 2019 19:53:25 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFih-0001cz-44
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 19:51:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573501791;
 bh=PDcMlsTNCVoRx2qfDTLufTFxlXCLrYMeLsjNAqTRG/Q=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=e6VDnkqN/GjWfXRN+3RPAetHrQKaByV8xvtUpUs6fCMz+5mi1DrODshBgX9aJnI7F
 DLG2l5bEcSgrxrsNOUDVYYbMuZiEhPBndkjZ746PFt9O61k5THZXuLh1Z5BbzZtR1G
 N70bfmX//GMAWCGHNkhcAoX72wFBkq+6zYAo8iYM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Mk0JW-1i1TSZ0meu-00kRZO; Mon, 11 Nov 2019 20:49:51 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V5 net-next 2/7] net: bcmgenet: Fix error handling on IRQ
 retrieval
Date: Mon, 11 Nov 2019 20:49:21 +0100
Message-Id: <1573501766-21154-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
References: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:dM7skxclhbRUMKWP3MbL6zRTCYfjFKuM73YgvozwoH1DWTlJBlu
 illYPB9DIL8Lla6T4g/TzHImP8HKEcJXDniUnPbeDmg8C/0PZgi+UmNAsLYdGFkYhr1Tm43
 EWgG4ZVTea1IWnJbo6nLBNNk/O72Cn+KG23UAocPBabWpSdv7BmOUlWzCV0LgWHHZQHZ591
 sl8TxybCfnR5+RgkRqYQg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ao/Namynt30=:74ucEwRxe5+EmU0eXIzQjF
 DjWYmZZ7+x2ExYuwzQEBUad6d/p00KSqazR0d2H8yLy/0/z7mWgN6bgJ3Jv7aK0grD+gL2wfM
 ynYFNK1361/q4t3S2s7sYopp5/GJ4ob8LlO6lnn5wIIjJTt1MqMnwbo7RRlIpGYy2ydLBEH5G
 CQ6G5btVXh1rRBSgOnQDElFR1OEUmzNfYMQxYFHAjSQysbQGExWQspWCNrk6cErV1kQUNsZl0
 WA1Dr2E2xXccYgQKRgJxIffhTj8AWIBkh9s52ddLPhfo29Z+67ih1PtYp0+LLKjRWN+dfAy9Y
 eTPSeIaQWLbX3BeC79lH7VhWL58l+2VP9dJlgXT7TbxTKXxyRkH8PUkSPoDBhqcS9abAgXmM6
 1JcLysRtNbYmkF2hKS2a2ThpKIiD26JBKaIS2MJgHhTIYXRkamVxmDNpVCLVmGn4wFpkco+Kn
 p1AbiiiEHCHYdeMkD/R1RE0cIos6N4MnNQty9WkOct3K7arhiLqCfHufDnXvgEXhvHkig4Vr4
 Ntpg+iy3OCDFng1TdyVuuGDnUxieW6y6bHMeZSI+yEp798wfFfDZUIJyHkx4W9rGuil+sHX7w
 Ldn0Ly7HJdyTRiEa2flgNZKkbfO0lJNUMfcpGGKQCrIkMU9WyFp1NJIFDid6fhEIL8/L6OGgp
 sQhJPTQTfnC2hnu1hxUSX1JONdyciCvTXCb3BS75L0pFwk2TwK18pAvvJEwjkuHBm7W0rQ8RZ
 6KKxxP3+Cfv0JDt2lZLuwKE3lOnSIRRK+qtrxiZBulmfORp29SShtiLweyoP2W5FbhLBT/e9K
 iBehdjYKTkq3JF04ebQZvGByLPldQ4hPCf9CM3i8kNfs9fpbDYz5IhCEytsMCsFJTHcGVEysE
 wFb7ct2PIgsYBmfOeUhfoYZRu1detYW2HHaivR2ZEP1RIQd9Fj8ra4B4j4zvIFQGW1RhkWXXT
 jhmNVWG/epi7ueQ4SU40sL1l3wcf9xZE8/hapUuaIOrzGdWvIjJ6dwLEqfroFnuK1xtO5XLZL
 8B8GOYteByW7ZoqXWkUSSJc7v+qTYLQwyxFHL5DvDaCn0yjPs06MBcz9fG7fbIri6yqgDL/5j
 MtL9t3A4c5NaXGJBEcKtRB2oszjPGr2sUoAohpGe4/5qKsjCsHD3g0y9cE2HN8i/43bq0FHW8
 IfB45zNxhcBKGovHRYoYaL3c/Qg4Y4c5FyuJ1I+cEVmC7y+27F9Dh5NgRpGvdu4XybzLcPPwZ
 cbcDh9bTp8/QbdWVPOdWYzT3UyniAqsofJgkrQA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_115127_521827_6C75D6CB 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
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
