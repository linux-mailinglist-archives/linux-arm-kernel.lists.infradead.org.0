Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E959FECEE0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 14:43:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QSLAVE/3FRVH7GTvFpWVni+6j+SpOBrE04xlfHONW34=; b=lLH/IUm43O8lHRihvRVPillZWk
	CuXj+sgrxsSn9i7j87LPhF2RfZ3Mn0sdejOfQRtM5o9Kov0ispvacPf0bhYJNutE7cnVm7XkLGtzt
	lg63i4Hc6n9VxkaAsMywOS4S6uhWFlYPKIv2t//veKS6opEPJ2pqHjpUSgMT6zmV0dxKD2A9o7/Or
	DsHo9S17chWCRrdEx7H36O0ucQPo7Z4tkKf8LxgydFWLrHAFxEHrpIekD+NPZ0D0H/yqu6Pp7KhNR
	RhNYORuWTjwHovWbgRSmjVwz5YLJp2Gev9yybFLjd9ODNkE2GxJwjwp8fZ9cqCIsBhqgsY9NpD6wQ
	Vh+D6ZZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQtg6-0002zh-JV; Sat, 02 Nov 2019 13:42:54 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQtfX-0002bk-VX
 for linux-arm-kernel@bombadil.infradead.org; Sat, 02 Nov 2019 13:42:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2yfWJqB0ed/KYV7bbtLnrJs31Xt8meKCH3j8k5uNtxE=; b=kuplRVacvmDWy0OwoFllMx+iW4
 PY9dvfsX79gqPlnvBvnwSWBIxaBnXYQ8JI78OPkE1mPffV6Hid2Y2YU8bJHemJTj3Db5LCBx33gzD
 KXfHqA/l7BkikiYEYPMiC/hUgszcHVPkaJoz0N4rN4cwbrC2FKv+H+UJNxljj5ce6PgjcjOVyISiW
 EGR7C7hdWYLdtQgJP/fIFRaB9PYRHD7HxJUpackgCeni1ppTJDDrVydz2p+qfKNjtyKGCefzT0jfR
 mIAypHLYa05jhD8GhwCbpZEDxO7BN3YC5CjitXYS3KKvmAh7sf1RtqgRxvtDeJ/o2hcOSs2yNEj5+
 BoZ5mghA==;
Received: from mout.gmx.net ([212.227.17.20])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQtfz-0001b6-GZ
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 13:42:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572702114;
 bh=t37Bbd37Ccjo2tsA8xcaxuE8pZbiD+UMaXKQ1I8p+k0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=RkWQLl7ajsSGAWppXkAWFfzu/FRxiVAX0iYeu6TYy18syol733oP5k79lM1zj5uqa
 muXwOjqwsOiCCByny10bR2m4w+c7MmnNzImA/dX+/wuTxxJS6F3CZfehFhdnxT2TGP
 tvETtUZhCvBxxfyh0BO+zeboivi7B+sX2/Hyrumw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MdNcG-1hrYqQ0udk-00ZNVM; Sat, 02 Nov 2019 14:41:54 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH RFC V2 2/6] net: bcmgenet: Avoid touching non-existent
 interrupt
Date: Sat,  2 Nov 2019 14:41:29 +0100
Message-Id: <1572702093-18261-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
References: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:m70ZrcwjQDnPhyAoISCZwujzpEcNMroE6UD6xkpYQpJr0Stf0e1
 U/xs+b03It1McpME+nIS0a1tNlbl9VYbgBwyYENB7ug+O0x/3HfWu1QwhfBymzLB/CHFpJr
 4t+I6At5JhECJ9jAPQxPral/jbWZM+y3OGAc62QzDOIMhGY66/LCZ1hXsnGFTZQvmtNXaYH
 9BvIaHuqz0PMVExPlWRMA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:a2cd4/ZezW8=:INoGZaVH+y9KSWDZV4bTvI
 ezpJhyU/brrpwp318wl44izLQT+wF481cufb4kP3o28qR2QnNX9AAii2UcZdYU290y3m5PdBD
 Ty2AAk/oqiEceKF5JuTLEmUmfGru1JxZlxLxBvDAymZmxbtNBN1vgFpU31YK2fLecyvImimNK
 KZjDP0LmkM4kGLj+3o0hbAs9E2K07pYrYy1Us+XqTgAbi+eIKrwXQSUPWG+5iGcHL8RhHT63V
 mb1UNlIu+AsGQDvyFrcy9tJCsa9OPAdsCV0XKfebxlbAfO6qgi7J6xSqZruFVULv9eEtanTxH
 Ji/JuMjFbayCQTW0QvfG1w3JhYEyWd7UWX65a2Z6mmnfFNxuc7c3dg/AbWHbHN+xQ98oaRGoD
 dYGinTYafFLS30jjvFrJK60QVLT9ZKMwRXJZgIFSEKBnrt4p2jBWJfm+iVQBMa7HvJj0oiO9D
 8VV+4Z6Sp4W2X1qcF3DFI+zCLv97C/vVMBxDZ+cxJ9QENhiWK0dukpBMDolpQEzKwVZnDf1Gu
 wcv1ieQRaHOXr5D95VF/3PILKs1wX7oRzMSMkL3h8z7xFqeChl1BC+nt6QJpxh3cRNP3xATs+
 YIvK0Xit1gA0AET9HyzakvkQK4Je/nxJ5QfaBcjvzk0nJmtX3068djY7tjnEQfaJNXosoIHWF
 3hVjoVVZ2z84z4OoyQHua46Z8703azIk2LTJMVHwxH/o6HDfMaVWUI9bYuWBn/EOnCm6j4USm
 7G4KJksgUbYmlYaPWnAesyMuodsbsmNNepfC+5jGNrWb36Va+NS407BTgCEzHGhdSM0KSaaiY
 yea7A8jTGX9T+Nl/uSfhzSr2ZIEB7/eWQsYJc/RV3rECpkwVOXTzKeXlfsL1BTcXmr7cchfRy
 K6nc2n7xoixrnNqpgaOuYrXvvOp1e7ROYLw4uBFWYVj14azuLT+8UGCe3G9iJCN1haypTPqO2
 XRKZYpBXqObCHBTdxdxBpDlC58P7kInUurBvipOla8M+XKTwPyK20E0v6kknYMPI+WTXA4yYu
 0nTcD/a4hi7pLB9mlFLRY9tJkXeogmKy0QA2SpqlL1P1LFGFXC3VslK7pY5D/eH32LRPhvc6Y
 rA0rAe75XV9XBMVcJ1GPTVx58ffn471sypWJIeVx9ds22tgC82gM3jtdQjInVD084okx0O5Mz
 +E1NHOBSEmp8AYJx8wNCnp6mmr21n6DdXaDPx0lekh4N8BSX5pdqOK2MZar/zjQeNPOKv+N4j
 OqU+Pr+QXEhooQAJwaKojNK1cdY/7DqPgtP5QMw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_134247_632844_6876CF48 
X-CRM114-Status: GOOD (  11.35  )
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

As platform_get_irq() now prints an error when the interrupt does not
exist, we are getting a confusing error message in case the optional
WOL IRQ is not defined:

  bcmgenet fd58000.ethernet: IRQ index 2 not found

Fix this by using the platform_irq_count() helper to avoid touching a
non-existent interrupt.

Fixes: 7723f4c5ecdb8d83 ("driver core: platform: Add an error message to platform_get_irq*()")
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/net/ethernet/broadcom/genet/bcmgenet.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index 105b3be..ac554a6 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
@@ -3473,7 +3473,8 @@ static int bcmgenet_probe(struct platform_device *pdev)
 		err = priv->irq1;
 		goto err;
 	}
-	priv->wol_irq = platform_get_irq(pdev, 2);
+	if (platform_irq_count(pdev) > 2)
+		priv->wol_irq = platform_get_irq(pdev, 2);

 	if (dn)
 		macaddr = of_get_mac_address(dn);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
