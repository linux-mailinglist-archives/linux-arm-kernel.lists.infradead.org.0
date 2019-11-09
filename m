Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3E4F6107
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 20:03:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4erlaRX2HVnCgE+dxjYtWAqxz8pLHc2JvrYKCl0er5s=; b=WZunsg3Qu4ALr4UKpKFB37bgaX
	RTBDnLaWk0wHZzW7H4hB3xN7EKQ/JP6EGtIgjwr6wafchRvk3o1Tz23VY5JNzWuhoixEukaF835Wm
	QKOUj1n7XEpwnDDgq1Tx/OCso0Sq3NW8ejE5/A6UwW93QMOpiZ6EOfc8GLeZ41jxqdgOFYopgnpsv
	URwgzIOS46+4qZ8nHnHDvARCPpvOUcK9bzwXsITwwHWpReFh+fTZjcKS1LPkLGdZhwxjM8d2lxtT6
	LM5/GLkuLmhdfZD7YbmrwailxObCcvaf6CWVeBnwhlqxScoOEPhp+r6KHdHyj4dlrlNlf3c2/C6/g
	X02JXVvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTW1Q-000825-Nb; Sat, 09 Nov 2019 19:03:44 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTVzu-0006og-9r
 for linux-arm-kernel@bombadil.infradead.org; Sat, 09 Nov 2019 19:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AZhlPhSkErr9pCtF9gdGy/0UFjSkGO7v3pfbwuK45UM=; b=PMmFLHSZSWSzHhyvL2+xysJUNg
 ZRJYsJWJP/yUQX0Og3lhX9J+NTjmuo0F5E2bjKZvgG1x/0FYTU9u1kog7AmGysRA/LKVJeJ2LjayA
 lH4gf6+NUGs3wxs92seY33LFl7vsn9ADoFX1JKaxBNLfNKxDzugbIlMfDxHzOo8wVY0LYttVN36hy
 hDkJBWw1rnsbUFzlzPLykKiVBegtmNnyJ0Vq08hCUTGupPP6eUOwgzNzK3e2ic1qEIBnba+VQuCbS
 E0A3xn9ed842enV8SfqTPoFuCJoeUJDO+H2aSWmSrGak57HNqt0HQ71Qgs4fytQiYNEJNjuW1dAjn
 vOg9UTew==;
Received: from mout.gmx.net ([212.227.15.19])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTVzr-0000m6-0I
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 19:02:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573326037;
 bh=rNLogK9BckiGL3DWCHYqrkutclGgvI/HzJvgD8WpP8I=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=IWA2bLKhQDSqj1tzimAlavx1IhV9w3NxwDDwiSBSbtrjkQg5C6bZMRmJRdrmyI+UD
 BMpptQq0aiMHEidBK9SwT4LPt/1HJPvjA4dT8QdBJLghGwuopX1QAtaw4Mz3tIwViT
 cDEV1ZNDedxcqnN2jEKQ5J5l9NIDm4o7TDcM7Ijc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MGyxN-1ifwZi0JG7-00E8fU; Sat, 09 Nov 2019 20:00:37 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V3 net-next 2/7] net: bcmgenet: Fix error handling on IRQ
 retrieval
Date: Sat,  9 Nov 2019 20:00:04 +0100
Message-Id: <1573326009-2275-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
References: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:4hzkVM4QKJ8d4ZSUQvqpOkMCKuVe0WVjgAfvovY0aLWWzOpe3Pn
 fzp6WmC1IYxCx+Z+LTdVn1vtn4kWxHZa8u8hf0oB0Dc+i4zbo61MOINMQKskxtSX33fmrku
 d59mDpxW0IWMf3YLVIUsCBi3zbGY4ELWT28j5YPoeg7OExmzkA9p5EBuLPe387fPwZQ+/P5
 gJ9Vfv6ZP7573QJFVBI+Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZxUtQu/2WJE=:aIe2ycJ19P2zrRHvWpOtoj
 4CKNc7ixVJbc3LW3zOyEJEXU5te+4hhGDb30yMu3q33I+jntOKMfzOa1ECLiQAavcpGP6vJF2
 2uO/BWvRHteqIP7wC2xWBozWN5K+yAhIISdLnjokGXtCwKRI9LaEMRbjmyzBkyCNxpLvJXoqd
 fL+YsrWk0IeHcEQzD92d+fpqnkADCK9zFo9kDTY7Ab770++gvobN/RV77u00O6QuvmQeJydDR
 5TeI4wYPteq74mg3s6YJOJzdfsglogvJiUaHQswS1aLFG30jdthOWxU3wIpKuyEYm0mv2sfoM
 2bPRK2cQS/Zn1VDf1iluCIuoVuR/YWhhjwJqYT+hHNtFRKPUq62ZdUGCJc6/NgeU1L/A9qit5
 0bQN8Jh8m78pV05hbRYaopMqnw0OInhSHS0TUPLS+Nw6Z31a0oYEBLD4l02TELD4Lb+Ab8/rv
 YRfcWzRRDuQ3lXz+/ry+9lusmdgF/i9OmPKOhcRvfTl9vcobSffqRBdi/MxmUYtqNRM8qOTOi
 vylOLKevEkzqPLie0nZ0xwEyR/HmhwRxnx9V5wtew+dUMbQNuHFpJXEgNonjnTikalPfzStB3
 dbogMhaIPbj8l9mDzqMEdZ7gvYlOlXWcT2QSYMQTZsBkkaUkscszuWwxkeymxddGBGcykW7Pl
 1FnloRD2IuzbTV3Z5r77kSbjNALvKcK+W4iWIOzByzjRLRgzFEU9LMYLajvv8ntKeVBMBjFD5
 W7+9TIpchnrau4dTaPFhLpolmiL4XKVvjUB5pu76F+GgYW6hPe7gN5fe/eULEVGOqDx82/17V
 xbes/3K4ot8gwjAjnBFJmWcJ7Nb7bhuPZw/DCd/WF3ythQmQUgMeLF+r/iUX+pYuo1u10iXqQ
 BzoAF/4HPhytGKJXJdr4KLZGsFGTP5XbvJ0VWbaUC/VCOYRRIXRaKh8toDNmyxVIocl1krqIe
 BjUhMm8SQi5kVTyOw1fHrhVWRAvk/MfRhwjHb2Ow+n44gPfxt+4aDQMf48aulzxQwa7fHUQ3Z
 D7OrpeNrKiUQIKMm07U5a38461r3xKUhgzYZpSkdzFUfP5SR9v7zrfBAE+qErj6pKarbLAcj6
 dQB7eq1gwEGaJgBy6IY8Vcy1GPLQRNMxpmAClsiG/MWypaBTOxz9tyrOAa8ByWEXooH4gbWiU
 PgBUfy7Hde0GxJZKyx2197c5juIPgKdvvy8LIU079BAxkl+t4m81WAtBMJCILffl+OCj0/Hr5
 OcnBrBRpQ9urF8i+C7i5/0AURtpdtqD8pWMko6w==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
---
 drivers/net/ethernet/broadcom/genet/bcmgenet.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index 9f68ee1..1858ff7 100644
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
