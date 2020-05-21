Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EED51DD028
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=RU+dxRAPBuYnrt7TJQFwaHNlQ2fU3/tpOcBUfCY7AtU=; b=b6
	4UXKUVrmGp+3Gw5Xr9MPFqzk2kdcuZb9K1GuWywMjXXnV2BcHdblQwPo3XSKLy8UGatGD0CzwBXHV
	GMBLuJXz2hMk60St2hdfHkRL/Wfkr8VadJoQ10Xv9un7TDf5J7vjobV+sNfKOGatdPPETK47RW7W5
	peFUdMUAikzSmsFH5AHFwv/rxc9nPb8AkPU9jAuw6s9hYu1ezYp40ZL8UVXJghtxTK9mBudIXSV1C
	h/SyKKhD5BxW9vMFtjQAK6IXOOc3f79aTypS/frOsyVphyeuR6Y2PdCYjFmv7z0CbW3wwaarUcbVe
	qKhjYRXmmMOaHTtsXYY7cpx/WTIu6QFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmJn-0006iB-Py; Thu, 21 May 2020 14:37:07 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmJX-0006bu-DZ
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:36:53 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200521143648epoutp04d1a3ba01673c620691e4b7e1ab0cf7a6~REeKTrN170137701377epoutp04Y
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 14:36:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200521143648epoutp04d1a3ba01673c620691e4b7e1ab0cf7a6~REeKTrN170137701377epoutp04Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590071808;
 bh=xF+b0Q9OMHJN8J5YqAXOUh1uQxPqhs+cqtAaCEwzaRA=;
 h=From:To:Cc:Subject:Date:References:From;
 b=Y0EGKAAhXBwae7akngNyzrfTzQagRkDSKO5g2tDgUEBK6F6tQtpX1iu12SSIfJOTN
 Qm1uEV/uf20fOUijIzoYbeOlvIVpfT/SWTWhfpAPoCPuQDzxXsqxZQm7pDj/lygw/F
 YGtpZ/C4o0g2CDOWKrfT2s+iIVFMBucIlOsM9xEc=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200521143647epcas5p1905faffe86d0d97be6a2bb7aa64dd02f~REeJ1dgdP3248732487epcas5p1X;
 Thu, 21 May 2020 14:36:47 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 BB.F1.23389.FF196CE5; Thu, 21 May 2020 23:36:47 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200521143647epcas5p279d486b29125419c67ff96e0b5b1454e~REeJYPdfH1493014930epcas5p2V;
 Thu, 21 May 2020 14:36:47 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200521143647epsmtrp27af6207874b567e48745a5dacd522cda~REeJXYG5E1594915949epsmtrp2h;
 Thu, 21 May 2020 14:36:47 +0000 (GMT)
X-AuditID: b6c32a4b-797ff70000005b5d-ce-5ec691ffd8d4
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 37.1C.18461.FF196CE5; Thu, 21 May 2020 23:36:47 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200521143645epsmtip2f028ad4f8c727d782dd748ff901b59c6~REeHZmDZa1174611746epsmtip2M;
 Thu, 21 May 2020 14:36:45 +0000 (GMT)
From: Tamseel Shams <m.shams@samsung.com>
To: inki.dae@samsung.com, jy0922.shim@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, airlied@linux.ie, daniel@ffwll.ch
Subject: [PATCH v3] drm/exynos: Remove dev_err() on platform_get_irq() failure
Date: Thu, 21 May 2020 19:52:10 +0530
Message-Id: <20200521142210.17400-1-m.shams@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGIsWRmVeSWpSXmKPExsWy7bCmlu7/icfiDC43a1n0njvJZPFg3jY2
 i//bJjJbXPn6ns1i0v0JLBYv7l1ksTh/fgO7xdmmN+wWmx5fY7W4vGsOm8WM8/uYLO62Lma3
 OPJwN7vFjMkv2Rz4PPZ+W8DisWlVJ5vH9m8PWD3udx9n8ti8pN6jb8sqRo/Pm+QC2KO4bFJS
 czLLUov07RK4Mra94ipYz1Yx6fZU1gbGJaxdjJwcEgImEjsmHgKyuTiEBHYzSvyfs4MJwvnE
 KHHy0H8o5xujxMXHH1hgWiY8WMMOkdjLKHG0fRUbSEJIoIVJYsUWoAQHB5uApsTx89wgNSIC
 nYwSPbd/g+1gFvjBKPFm5TpmkAZhgQCJ922vwGwWAVWJk/uus4PYvAIWElf3wxwoL7F6wwFm
 kGYJgY/sEkvvT4Y6w0XiwaVDUEXCEq+Ob2GHsKUkPr/bywZh50vMn7eKGcKukFh54Q2UbS9x
 4MocFpBLmYEuXb9LHyTMLMAn0fv7CRNIWEKAV6KjTQiiWlHi/+5+qOniEu9WTIHa6iHx68NG
 RpByIYFYiQlTUicwysxCmLmAkXEVo2RqQXFuemqxaYFxXmq5XnFibnFpXrpecn7uJkZw0tDy
 3sH46MEHvUOMTByMhxglOJiVRHgX8h+NE+JNSaysSi3Kjy8qzUktPsQozcGiJM77uHFLnJBA
 emJJanZqakFqEUyWiYNTqoGpl7V56aQp/3yn6Gjf9Nn+2UI5NV3keVnfO31TK9m6Yyxhd75P
 dMt42HZrTUbXMr9yrst93wIc/D7vlLPvF4sXzBL7wcfw8PQH+8/5daYGr67qntmXkh5zQd3L
 vP9e3Y+5q5pbNtUmHWBdZDXTNdJH/raUjGjwCrbP5UlJB1ds2v94nbC66d3CC7lJp97bM+nn
 zYtxu7It/8bNaqPDRx9qWRgdebZA9qMU175/wVO/Rvi+N7vkIVikfGqnw+L/1+5bPHvaEmT0
 9lSlhnfPZNvN3CrbrG5PXCKoN+vajkzZGWur2JgrnRndv+8Sbed6sqnqxymJH70TFtot9nS9
 x+TMuvzkW69J25V3GrZv+PNViaU4I9FQi7moOBEAgwbALYkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFLMWRmVeSWpSXmKPExsWy7bCSvO7/icfiDC7e5bLoPXeSyeLBvG1s
 Fv+3TWS2uPL1PZvFpPsTWCxe3LvIYnH+/AZ2i7NNb9gtNj2+xmpxedccNosZ5/cxWdxtXcxu
 ceThbnaLGZNfsjnweez9toDFY9OqTjaP7d8esHrc7z7O5LF5Sb1H35ZVjB6fN8kFsEdx2aSk
 5mSWpRbp2yVwZWx7xVWwnq1i0u2prA2MS1i7GDk5JARMJCY8WMPexcjFISSwm1GieUYHE0RC
 XGLar/2MELawxMp/z6GKmpgk2vvPs3UxcnCwCWhKHD/PDRIXEZjIKDGnfRULiMMs0MAksWLl
 b0aQImEBP4mWJXUgg1gEVCVO7rvODmLzClhIXN0Pc4W8xOoNB5gnMPIsYGRYxSiZWlCcm55b
 bFhgmJdarlecmFtcmpeul5yfu4kRHJxamjsYt6/6oHeIkYmD8RCjBAezkgjvQv6jcUK8KYmV
 ValF+fFFpTmpxYcYpTlYlMR5bxQujBMSSE8sSc1OTS1ILYLJMnFwSgGdWnaWk/mLvbRoAUe4
 ruK5sNanB8JP/jN5vUDg1FQd5/WfHx6+vH+Wn6si9+u9Fs/77rttVDjSefuqdFPDrsycja/F
 9hbLn05hdf8dECL/00W+j9vNakHHwkmaSyVKlSLKb3bLuJie90h+8GHBz59rX/6Q61uW9a94
 VcnUy92NGV2Mz0u2nms7P0tfbpZUZPjLdfyr9njw3r3/ab1vwZRv1n+2HFA5eL7oQU7fdPVS
 juPr6w7lMXTNWJhZ8iMsgndt7q8frr8f3uN8+7/q6eO5fXvsgsNvaoTef2Ocplf2LOqc8VxB
 jXOb3r6e53Zsw9WCplAzJ7NVy7QjP1ddymvJsrwc/3R1sMpW3jWe9xVYlFiKMxINtZiLihMB
 HT7Y570CAAA=
X-CMS-MailID: 20200521143647epcas5p279d486b29125419c67ff96e0b5b1454e
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200521143647epcas5p279d486b29125419c67ff96e0b5b1454e
References: <CGME20200521143647epcas5p279d486b29125419c67ff96e0b5b1454e@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_073651_894783_EE184E48 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, shaik.ameer@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, dri-devel@lists.freedesktop.org,
 alim.akhtar@samsung.com, Tamseel Shams <m.shams@samsung.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

platform_get_irq() will call dev_err() itself on failure,
so there is no need for the driver to also do this.
This is detected by coccinelle.

Signed-off-by: Tamseel Shams <m.shams@samsung.com>
---
- Changes since v2:
* Addressed Inki Dae comments

 drivers/gpu/drm/exynos/exynos_drm_g2d.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_g2d.c b/drivers/gpu/drm/exynos/exynos_drm_g2d.c
index fcee33a43aca..03be31427181 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_g2d.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_g2d.c
@@ -1498,7 +1498,6 @@ static int g2d_probe(struct platform_device *pdev)
 
 	g2d->irq = platform_get_irq(pdev, 0);
 	if (g2d->irq < 0) {
-		dev_err(dev, "failed to get irq\n");
 		ret = g2d->irq;
 		goto err_put_clk;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
