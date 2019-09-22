Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34C1BA1F3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 13:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yW5nYxd+TvXSUK25pv0BMI/7TqSwa7T9fju0vUJvuoM=; b=QwBh9IcfW5TVxv
	rRO8fVXiIA7F5NeP6n+PQFdfahaGG37Xx4jnMZjiizSc1VkiZvfuTxiO+Vw8LBjO8gselilJv0tQS
	prUhxRFZrP8E2Y5nDe7GyMCmdjr75bK0as2Ps8zd0rF9ZnT2McP3SP78G+O2fI43inw5ltXBQ0I/R
	2W3yff6Oy3VF5oNetbwIa19S2bZ2vut8UshlhAkG1reJ/wUYXY8pypG6GViQC3VwqsGNoTbEiBtu8
	1YEzGeT2TNYj/xNoAtGE/+HrXcUAbWBCxUPV4HvIZkttOsMOMw4k7iYT7jojCm3sh85sWiuFpoGJA
	KiXBPRAb93QJ5vqwqrJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBzbf-0007iI-Um; Sun, 22 Sep 2019 11:00:44 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBzbS-0007hd-Lq
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 11:00:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1569150012;
 bh=31q+m6nv3NSTbrLlF0GK7cMZgO8xqs0OAU+VDW2WZe8=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=JgUbv4dgXxeHxMoiW0EbcII+BzWxAT4v3nzlJfC55P8pgNVfAjRibaWnj7EtKlKht
 D0CzORZdZ2+5Fow2eUDV0OeoPbE2+ReeQPa8u/aGFfKsC3ea6xsxIFymRvrVa2Xfe8
 v8FWdn7I9v8K/1aHNcrUuDwLdu3rr5iWzJljRHzg=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.8.78]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0Lhvpu-1hpbKb3yOA-00n9AT; Sun, 22
 Sep 2019 13:00:12 +0200
To: dmaengine@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Dan Williams
 <dan.j.williams@intel.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, Shun-Chih Yu
 <shun-chih.yu@mediatek.com>, Vinod Koul <vkoul@kernel.org>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] dmaengine: mediatek: Use devm_platform_ioremap_resource() in
 mtk_cqdma_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <c7e3bbae-44fa-9019-18ee-c6cdfd7c2a14@web.de>
Date: Sun, 22 Sep 2019 13:00:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:hAXADknAtGNYATmVWj93rnsc4+dPRkCq4IiYKz204pSpN0HWOTp
 F2WSVct/qhgaupn0VeWpSXbddaIZpOS0m0Re0Mpr3+6JT+pHpLle7a6JlH4BcidWm6TT+vF
 7jGdM1RKg9wj+lBNnSVMIqbFpyQzAQFJn2ViR0nr32JoSP5GASQouJidE0HhTjD6MFaAXFQ
 pSX0HKZlLnyVZdaBdJq+Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Z4RCimlTYfI=:z0KqTyPUk4pIEwxeayyqmr
 oJwkWUI2bGwQkePKBV58Ou6gEuTmsRCHq1m2eSKhc6yiq4MEbUp/LQigcFehU+76MbigXcFS3
 5CKgGA/sf/mWWuHbX/2KV1qdFOD6lhiHO0J88SYtnicNW0JjTkQbTsPwxQjnMuGtUOdJe+TB9
 NXLF3P1r4tyFv1/qj56vOEqQoETUC/cC9+dbdXdNbG4sQtUJ1IR/C+a+6BQOLbauvWrbEMjS6
 HVuZtF5gjv3a70ZKxTReHDf+LBJ045A550XQhB/FT7oC0ps/d+M4lA7E9xUq1J6ZbOkSfNrgo
 RlEazPIgA3ju6UR9oystpcpdyr5U+NGKTTY/WLqxW3LkyTm7lADgv/shqu6Ai/tR8eAH7JbM/
 3mqPIbN8ikiWLztOQM1PfubJdJ3BFv68OGa9B7uV9mncJrjd8BOYfHnFiqetZNnTILmQgdJdB
 JWktWIVKVDAqAb9Fe+4aLz2sqx7i9kQiSlgD4gkDvMXfUXt+ds2Z2lMMVFRwO04Qb9GL7ZQ5W
 /uqkKlb4ac4cFru7ByLKJVKQ7v8H1EZFWN1TNqPzUF3IynmDVjwW71K0RTU7sr6EGXNS3a/HB
 D+G1vjYXV2C1iaES+/6jaO4wdsPem3WsAZRQ4rGRPo0H5as0Bu851vExcr8+zhUvP9avO3lip
 XguEvRPbZG2b5o5J9aEUL8sXQGmDjLFkBz5lnEj/HgG5Sgv/GdIB1suVEl1vfkUc8/zbbYno4
 89ocPjmsg86ct3HE4MLRK7/x89xYa7F6AVq/jDHcRMiN7EyR/+/z1876lPdaC870IN882txWc
 WnkQ0Db9E9U71fKwkWvDiPXGc7+Te/a7lIJJSMa8MWiUVexXWbD2dK4/k4LBlo+yteBYd5cSp
 szR9eLF8wvkAU7uXocPkKt3CdvAluffiENFW3ep1VdqsDaATmYnH1VGSthkZa5zrywln6wE2A
 0LQBB2OZcGEKQ7gYJurvS2UvVdnnkaXxiXB6D34GwayKeH27EvqH+jPV0y1Iwmkk3GfWTdWNi
 FHYP65eRP9g2y/afJoYc/H/EgfiTgME6v2HYmUa9hBXt14UBLvLZvaw5BdlkO3fpA3A/uk2S4
 dFErNAIGY3YvcLYkyUvrvUZey9WVTeZplNc5oAcBCT9uoxbvfs6IhZXqtY0/pCbW/KEv9Xp8D
 jx3+/yjt3gWyKIPTxsSLhlaApLTjtxo6Nc0JLn1op4W7sh8ff4O5W1OsYl6CImLf3nV9uvao7
 q9H4j1pGentPgA3UvsAkECEybVfob2eWSlNYBMLDud03q9fAacoItdUh7NgA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_040031_266706_104E5E9C 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Sun, 22 Sep 2019 12:52:25 +0200

Simplify this function implementation a bit by using
a known wrapper function.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/dma/mediatek/mtk-cqdma.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/dma/mediatek/mtk-cqdma.c b/drivers/dma/mediatek/mtk-cqdma.c
index 723b11c190b3..6bf838e63be1 100644
--- a/drivers/dma/mediatek/mtk-cqdma.c
+++ b/drivers/dma/mediatek/mtk-cqdma.c
@@ -819,15 +819,7 @@ static int mtk_cqdma_probe(struct platform_device *pdev)
 		INIT_LIST_HEAD(&cqdma->pc[i]->queue);
 		spin_lock_init(&cqdma->pc[i]->lock);
 		refcount_set(&cqdma->pc[i]->refcnt, 0);
-
-		res = platform_get_resource(pdev, IORESOURCE_MEM, i);
-		if (!res) {
-			dev_err(&pdev->dev, "No mem resource for %s\n",
-				dev_name(&pdev->dev));
-			return -EINVAL;
-		}
-
-		cqdma->pc[i]->base = devm_ioremap_resource(&pdev->dev, res);
+		cqdma->pc[i]->base = devm_platform_ioremap_resource(pdev, i);
 		if (IS_ERR(cqdma->pc[i]->base))
 			return PTR_ERR(cqdma->pc[i]->base);

--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
