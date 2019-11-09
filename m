Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE26F6109
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 20:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p1Bw5fBSo1u5tgMeQGM+ez7rxLLgsjZlvi0fihHEXNY=; b=lzK8RdL3cqKRNgVvCRLddWgWip
	wgCThhztWbaio2D7wlivl9uPkX+VP3bUVy3MoUVm/TTBwzp0M9HqVjsciGX/C3+P4iQ1/tnT6Z+NK
	kKRPeR3aENbwl9/xIhpCOcbueKsWeUij70WgKp/ADD9EBDUO8qS8TpUzQDvg33R4XgClvmBoCKsxA
	1bPN26b1bJHvX8Z3GSjgI8a5s+RR62fAReIRWaLGds8Gr1k9Mi5J7PQXGkogmQ0MxglIlxrSDxQzJ
	dFE/IdcrWZQU95sktPhEeOZnO6pFomeZoV3NVggBQIelj9Tb50LMRWlwz6XUBeB96rLnS2XNjt30t
	cu0wdONg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTW22-00008M-2S; Sat, 09 Nov 2019 19:04:22 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTVzy-0006sL-Q6
 for linux-arm-kernel@bombadil.infradead.org; Sat, 09 Nov 2019 19:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=035iLKs5v8TwDHK3TFqow2oh/dIR3AuZdoJNKkgNJ/4=; b=CJyM3eoJdyqQooLBxaIzzX72j9
 ZcDyEpMNhh8E+GlsDZxFriig6m8w6YpLVVhz3ilxRm4duJ6CUdC2VZ1NSWSM1iS2V3LulNi9N+Fnw
 0WTJlvfiXib/uhQnrppz0p4DU7n1pL/22ngKZ1nJvBoUC2TSqMi6WCRB96ViREA8+4LhAcuhd7oBd
 mg+f2+LyaVVc67ctRsLFo8t+fwl0YxF440dIRuruM5YrCvrNaDbT7z612qb731DGhOrOj6MiP6Xdo
 gGRmN+qSqhaJdz9MLQRXrmINeSNOxQD7ol1bSTIxSWe7KNvBV11N0MfTXnySgmiqdVEV16mvCk9Ox
 czldq68g==;
Received: from mout.gmx.net ([212.227.15.19])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTVzw-0000mO-BP
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 19:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573326036;
 bh=S/R9p3LmiPOl5VPxL/0bK9gmYYJNvarGPi4G/WRv2Fs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=euMdlycNSdccdoR6BP41fiv1qFnEVYpM/cLAcRJ0svhxPXEk5hUowUq1C6TehqLBF
 3B5VVdznfIwaQXIu7Ntj2uDzru3aPudX3uxsqdx58Z4LhMb7IEaeY9TBV4IpeH5gxm
 wWWMeaw0vQKIAliaw8u0dl9QEVdgFluy91/XJZcM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MYvcA-1iPEdY25Ue-00UqCt; Sat, 09 Nov 2019 20:00:36 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V3 net-next 1/7] net: bcmgenet: Avoid touching non-existent
 interrupt
Date: Sat,  9 Nov 2019 20:00:03 +0100
Message-Id: <1573326009-2275-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
References: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:RfJf8GCWw43wRxr3ZjXLWaFnAobGeS7MvOIMsPqJcymWF5y56Ct
 GkM+/XB+uoC1UnNZQYNKleRyXQCUl+yYDr4B4CmJbCAh2AHwj8JTZkdMS1uHjS24ILo3nIi
 HrM1Sjlj6eKfSFlEHlPEP/q/h5uBpL7iSdtmK+tziZKpn+4KPW1s3e4t+Ng/fZ5/K9Pf2gs
 9wsc9TPtgJWElyJIJffiQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3BhtR1v8Axo=:WuUOqDDc0bc4mYAB3R6Ncl
 haS3Z87RgtQZPdmrhPeMkuwbE6EH297UqE5r9JQt98B5Dem4M/kXdevqpCNzyVfu6ftv0ONsB
 QpZ1f0iMVuui05bG2JShy7h89fvoIQuUMG5HNMXw98Aq9Madh9CFPa7d1ew2KBB3Pg7tlVOCb
 mQFSvqspHwySjGf4JJQX7UrwAQiy6Ui6dXYiYAZuPWvx1NA1oqlH2ahcND8xsgX7T67JC3cQL
 mUcxyeJWz1Fg/n2Him8C4jTkpSnkDyip+71GSY4pGgcpUBAmCspmrlxeTNHh6C80MBMK8H548
 20iigaF8wnEg3QK4rfLdysYR8JVeDB0qjuEMKiFPrS58n5YotYQXrtYgz5CmTxZHiHNmVxVJF
 /gWRbc+7xuT0FL2x29UiwJSXHn5XQ+FTmUYgIr7sxwhSKBguzzfdR3O+MSr9calEjrDdAd0+M
 5pee/n1oN50qNzLXqJH8ovJcjoeb0eLWIvdGZK4mwv2batXbqIRsFOaMje0bNVdKc5dz64FBX
 kHZa50mIWNHhXpAOVvv3mG0GKKuqWVZnkwy50Vjn1oxPdmSV5vvi8jSdOkKCsQqqR9kuAagiW
 V4aGrACt7POFmqvf2asLGIgvh1X5eFDZS3mm78U0zbO3CRwyQ2lb+PRgjb0KI9nL/MycSMcyL
 VKv6jcWqS5H61KSqU4dphyvisifIOaUOP7aczrWz3LlAU3Eel7QKSBF/Bg1ZJtNJPpvcEUL09
 hBkCP5/wL8QlRF38XwJp89UOLvt1UIycHskmtdu36Rqe3J3R4lHny8EdlRbfvJDu9pc57D5Io
 0Nazzft0wTTe+AWYK8in4cmPjBD2V7UQwuA5eoHUpKTPf5yBt+4FQMX+IMrEEOqPbzG4bTTkc
 TTcQ3r104ocoO+dchHviR5O9d8UAcJWOyZkQ5GcjFKaj3ACElwG8bdbgvJ4Z8z9gJNFwfveMl
 ZRx5gT/rLdKN6jj+beHss1LuD+aYjNoklxxvfeTM4EPVESsj2kMJEnCkuHqEPTrsOnZHwXmUJ
 hVU2NqR9+lgDwtO21fbUsLhNzdrWSxaETki+4AF0gx5iavSXinBZiv70rv3t9zs1vQFlyIN6p
 61M3FCK8dwcoKLXSR6bt1BUT3hxlmnR6YcbrXTTfnCu9RuhoqxDWy1wQBPWYL9MHJ8Tvq9H2P
 K/ThOCvoRbBmXBAsEuD8GLmbRkxR+xQT9YtZ5W31cvoULQOwyedLqUukJoxNCKu2FUovy2yFk
 WkCYWgVMypqteZXh+LqcIIiUt65cNV21hyZBNTQ==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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

As platform_get_irq() now prints an error when the interrupt does not
exist, we are getting a confusing error message in case the optional
WOL IRQ is not defined:

  bcmgenet fd58000.ethernet: IRQ index 2 not found

Fix this by using the platform_get_irq_optional().

Fixes: 7723f4c5ecdb8d83 ("driver core: platform: Add an error message to platform_get_irq*()")
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/net/ethernet/broadcom/genet/bcmgenet.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index 4f689fb..9f68ee1 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
@@ -3465,7 +3465,7 @@ static int bcmgenet_probe(struct platform_device *pdev)
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
