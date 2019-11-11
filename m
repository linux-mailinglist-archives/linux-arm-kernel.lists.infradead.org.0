Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178E2F6ED3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 07:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HfjsnRHEAa/uu/FXMj8UgawXCsmDvM3fdiMW2x/tXu4=; b=uwht4vx0ydJJb3QRUc9JIpd82I
	UtAd1DOTPhAypXdDCnnaM+gHI6R0HVmbbJHzzGcfkAGv3jq8jWU6RU1FRqk6pJIt5pO7tP2Qk1ff/
	aFbgf2W5N6j8FJqJLzB7rKMa88jpdPAZHclJuZ3nVjFvEtHBxDyWIHvahKqSS99FPJ61CLVr9YJmJ
	xXSXJ/bX4a3xwYklgTPT5P/1DSuCtOcATDQR9ix9nHv/VjhqGvbO5EXvgy26KGB/RlXCtVPMOarhw
	nqKgcfSu1tz/90K+oxvdmOwDW6y+Epe27LceUWYixZgLjyaBZp/RYGUcWqBOy8HhsJpaReVJGnrHU
	G4L81adw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU3eT-0003bj-3O; Mon, 11 Nov 2019 06:58:17 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU3do-0002yL-6c
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 06:57:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573455361;
 bh=taWXA58DvTrq62BOOg57Z2EuKGOOTGhqKhyK1g3A/ds=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=jI9eD3LcrXzxaGCYBqB3BVpPt1RzH2BS4l+LGiIeqvybJQ2/embAE8eRSEyJcFiBP
 Eu8AZkvGgRjV9OBVS1Qnf2yvwBJYaoHknmr3WiToXD0iJeNR8HQP6s2TeYM3jyluP9
 ZTcER92x0s0VvRFq2tgxe+cUyg5JWrZ5FFAYEn6k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MStCe-1iKoVb0kJS-00UJ1B; Mon, 11 Nov 2019 07:56:01 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V4 net-next 1/7] net: bcmgenet: Avoid touching non-existent
 interrupt
Date: Mon, 11 Nov 2019 07:55:35 +0100
Message-Id: <1573455341-22813-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
References: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:30u0jwnlkfoudF5pdDo00JxvsIXSMCUibVC/6Pvbwnp6td1shV3
 Lv2Mm0WGNSdl2svgY+DQBPT+vmoH0wJuYwRZUlJkyFRtSDkdo/n3/lHGnxS+nLIC84axF0O
 2VHT50Yj7yT8cM+zz+BKPOWDgsh84ER4zTuKSRRQpT36AF/1gy1rq2K7S5o9TWKwm+vZ5EB
 B/czQ8SEb6G8mmiuEGM8g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:I7MAFrqw070=:V2g/cXY0XouCVY0v2UxsdP
 NgV8EcwKYsUe5X67RRK/sDWIQBRyPLPbNht9Jk4JnmwwjYOq68mpNiPiiqmUMk1opoSX7vD/7
 7v1E8rAnvFDC9wPtIIyN76q2fdb0mlCdYCO1gtFKbRKC/XJxb1DHtt5wlY27RUmpY88mVNg6r
 nXHYxl4tvnitd9VrLxrR8INhd8JEMWLHnfyn85jJmMjl4z1Q4X0PGcaQkC0c/yOOviV75BKQD
 8oPOHbI3khMXf41oWpAZ0P3bedG/NC74y8fNAymTXMF4BMMfgxu43lzw7hR/pGvLNXaF966+M
 tO1m7oUfDXIxA7pHWj5dWaGTv7hgU7Fpg9/kvYAXp++faFli4p1rnoX6BBe2K74O8DCE6msrs
 vJixrAGiCNs0kqBFyXGsiwvpQLbKlxP8FI/VcNBsQCqamaMjp3W8pQWyYOoebEv85Bncnsb8a
 dxrYlFWtVuxKuy5mWrXnnI4fNAXAcvaLfPz3xQEdEJ4pn47q1KooVAxrFuZFQ8ZZUImoR16ze
 TEcK7gnuDqOgbgiYdt5lsNbONrLXMcMSOjRwObOxwpsiGrzDeSZjyrDmTA81Gb1a9gOh0e7KW
 0fxdkKsFDpbHXXGSsqGJ6g9Ma4oHMx6vVpjf6nnkeTAoFUaqa1Muo/+IxffR4XTDVIxbgpyeS
 LHIy/Gn76/4d5+4zlyh36Nq+2IPKtOeuxYtFJnBNFhWuS6Ch2Z6xn1ZOovNGq4PUGIkJRSplC
 KFUzQV96/s9Fv5b9ZmL7UWTalwu+WxeZahzPRkgWh7+gvzjH6fEkQK48Lx7dDlKf1wxpx43yV
 t2T55ydrlgPCyLHfLwIsy7MQCRY2BpXHkYxsAv3ZkDnUpe2K/+/X4weaLMt68HYxUbs2n1d8G
 ye5dLIqE/sD8J5y4TvUM4rq9VEEOJrJaz9cpEjnf9C63umBDJYlUd6tEJhooXR6jN2wbGfk/B
 Gl8aDHFg1IbLz+hRo0m884xLwl11pwN7omY/dITSAH5O4IHh0H7w2LJze9/EB4eLQY3QSpftb
 9X5vO7KsAiZRsRrXfXSw4RuQ6t1axipUCk3AMIDNb6Tj/XvJqQL2owHmMzdvGzPitWy2PWBoI
 i3oPRCHMm0pkWZ2xDYph8cv69nnv/aVz8huz0ZKuhLcMI9f/OAIaYC7uThrpDFLT4QCBxKslY
 N+mfaFFGhIWMA1eBC0XVGr0oD1AsV12o755nPXWzVGEsgQB5gwpcedmLWT8N2HxLAe4EvcBDv
 xXVQtLbf/leCRsMuXZqxnZPL7NM3lzZX/XNmMEg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_225736_560207_A8438CDC 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
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
