Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BB2B9DE8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 14:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nfsguDYTGfb93p4zueZF29/CZYlI+KwzQroWI1SLULs=; b=Z/9I7E7tXiP6/z
	eqsBEFyIm0c8LxtfU9Pf61MwpoXVP4vAgMLwvWLY1LPSVc3DfOZj67WTADeNOOSmHFWABvviE30Dj
	aWAjTc2wpp12LH3ChBy6TlIzRtdB6uy/IPDm5qcCM3D9QdHtiPr55tjgiIKY0tTQX1PXwu3AbgSaG
	a2kfm/nNwnBSWKhq0HnIP7mbmbqVy+cQtWJn72K7OsfKpdPZxWCxUiqFR8nyKNUio98Lw3Fi6CVx2
	Vy4EF42RfrSTz6Yzp+wRZag7flJPbz76clKX0NwmsongBM3VJiGrVd4B+gI8wvBQFKZtPrFbQxe6/
	WXNfSn9rJb7+3ynF0/Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBetR-0002rN-LJ; Sat, 21 Sep 2019 12:53:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBet1-0002qV-4Q
 for linux-arm-kernel@bombadil.infradead.org; Sat, 21 Sep 2019 12:53:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lBYJfD/bEITwOr0/7ntzU8IyDyEBfexKI+ZB+lN+0xE=; b=UUklYyn84iO/BBA9CtqQ7b+Sut
 tXqnlR/n5i3MQz7MTzJe9ANjREbiORGijvQKzJA2vH02bGHb6gkIlbX7KqJb4vZ+d3D3f2SIGzEGK
 wi4pXPCkxCZYcDee/0h5sEbKAfyWreFGE08uv+aa/QUNNOY2xOKhl31el8Gyx65dsxruPNtilP51E
 1kyMd1UxsClTCwfcHGd+OWbdDmdC6P+Wnp5CW4ZZLPpBp4rIq6QxGUT9liTyyEOHFXy9It5sa3bxJ
 dKyL03ivnirLD0Eelfhm1fKspN0zlGOPjCgI9AaN7jba8y1belegWAbKXFdtPS3TEftQaUT9NZLLv
 opCEk/jg==;
Received: from mout.web.de ([217.72.192.78])
 by casper.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBetH-0001A0-2P
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 12:53:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1569070372;
 bh=SCl+tmJdStyw0CQO6h+KnwtHmTZWrvSg11wccT6qzvA=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=SMkRdRql9mpRjvontaJ7T//NZvV2XujWQ5rGPM4hjcwKvKu//XH1ytIrp9H9X0ITy
 B+p5gZfkO/f42zN5JEvyMbHXuNfd74Hp344MB/B0kfYKL79P2tWSazYlgZ97cV90lr
 78ahxggoNLXscqDO/GfIVcZNR8eCyu1qqXmGk8o0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.64.44]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MLPaA-1iB6un3bdK-000g3v; Sat, 21
 Sep 2019 14:52:51 +0200
To: linux-spi@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Leilk Liu <leilk.liu@mediatek.com>,
 Mark Brown <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] spi: mediatek: Use devm_platform_ioremap_resource() in
 mtk_spi_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <478e0df1-e800-8cf1-f9b3-d72f8e26aa0b@web.de>
Date: Sat, 21 Sep 2019 14:52:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:2RAnMwsq6u90y8BSolpVHIxB4gUiIhUjbOBK55jXz4stVkILt2a
 yGGEi2R00Bq3dxmuNkPXstj2HSdiOCHrpdNoT/ZGn74n3BCVVOS+gfnEAUw0DP7tknUIqAo
 TXd/4i8i/hNUzTZhvJYvy873vGLUAZRh3pcvGIGlWznESPzchGN//b54okAoGBOwnCRV7L8
 8neBn4GVoIsUNOJYFNhqA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:H5uIZOtSvkE=:PM1Chy/hXGWgXhW8TIHvFO
 auEeQsBYt861j7vJYVEjZ98t/b6H+E5x/yDo/JNu1K/TvHMFhI6n2jz1C5W/zWo5uyGn+dFKO
 ccsEiC7Oz5+L6VMl2oejfz1YhEUu39+AtKp9dI7K2DAI/H0kVPzXI/RNXUeN4OJIAjjUt9/hW
 EWSU3xtjxhA7/BGLfGhMpzjOYyy9fRZnaRpmLHLkPf3+HmN8TNFjJoDbadHmbBN1Z54sTHhHp
 ScT8/97SKofTt33RBtFPFIAv5A4x86p+jDR9vIx1QQemh6I5afiunCd5WNnsACgNIt3UfOXkp
 ZJw/bkWA8s8fPFn6yNV0BaSBFaH/3uuYxZ+y0tn6+5FrENNX4ufEzO3zX0ndukseXcERg5L91
 HnPcfI7dhUyU9NCxwITOcHcdPKyW3IHgJaXtNgUQ7Xi9bwzz7dYAo6u0erZOA4c0Sdbfp8eNw
 vm4kUlIFuwBsdnTHRR/6pDgqKr3+8ROGx9v+H19ZA8CMmEnO+jAKe6vJonfzfEXwf/KGMqIwn
 lNPAxfnRab2IhfhErmLSrA3gSVCPNhmPmEJgPySRlo/8mkYM7M7qkU1m3/yKGjLN97DPcA8+h
 utJvqY3ZYnkmZY69WNuNERsmh1eS+YcQaeWQkaHj/VBPOP28waSziI6qqj62cjHShClQmL6Aw
 aHJm1pvEHsEsitL3Qv/Nw/4AUPuMTXr2vK4hyjHudDdlqy/g2qsalg7jsi422bD8ZrDncK8/v
 8t9waijpT+NNzOPJN4/GXaJO1SnzsvYdpkgfx94BqDs9OiM+5DLDJpe7CaZNsL9leGLhQO51w
 p9wVB02ALGA42+rPjLW++TqUskkINd84ape9paAKNMgyebj2Nk+57jpzUEZ1aapeYOX7JBO+r
 QtRY81nOtWxA+PMJ0ya/ecWA02toqd9imjdniONBXyPYEC8Prr31ETr7lUmhgXpNwgHcpc4B7
 pC3aan87vDhNQlwszvabLXDuxp7Ry2ODPRW+gnB+lAIfj2IygUzNUCrRJhduVj/vkpwwqBwzF
 moJDdYNKP1gH2Afmqrq6X6svNuIE1EIp8XdMh/+YM790WICN/U3KGvO/HQ/mM9GyLQZwNC51P
 xgHtCvKDk6UqDYQy546bx69gfMhHsZC+SluvJi+C77HhLFO3xLGNjA3XDG8qkHQ5NhZ4y/aY+
 h3PXgUOS4ts80Jn/Y7ToU/N6OAlDbOcikN6ycqW4NCfg+jmbMRhEPmOaqPM2P8mVVvxSsbYvQ
 8iyF6iMH+ET2kaMZDiwUTVkr0yEmeW/ZHnmxsPCF3R22+RSNrdG2OHyR/dCA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_135331_215456_EA0E93FE 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Sat, 21 Sep 2019 14:45:40 +0200

Simplify this function implementation by using a known wrapper function.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/spi/spi-mt65xx.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/spi/spi-mt65xx.c b/drivers/spi/spi-mt65xx.c
index 6888a4dcff6d..25fe149a8d9a 100644
--- a/drivers/spi/spi-mt65xx.c
+++ b/drivers/spi/spi-mt65xx.c
@@ -619,7 +619,6 @@ static int mtk_spi_probe(struct platform_device *pdev)
 	struct spi_master *master;
 	struct mtk_spi *mdata;
 	const struct of_device_id *of_id;
-	struct resource *res;
 	int i, irq, ret, addr_bits;

 	master = spi_alloc_master(&pdev->dev, sizeof(*mdata));
@@ -682,15 +681,7 @@ static int mtk_spi_probe(struct platform_device *pdev)
 	}

 	platform_set_drvdata(pdev, master);
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res) {
-		ret = -ENODEV;
-		dev_err(&pdev->dev, "failed to determine base address\n");
-		goto err_put_master;
-	}
-
-	mdata->base = devm_ioremap_resource(&pdev->dev, res);
+	mdata->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mdata->base)) {
 		ret = PTR_ERR(mdata->base);
 		goto err_put_master;
--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
