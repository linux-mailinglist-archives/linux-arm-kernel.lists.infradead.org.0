Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DF01CF128
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=daDA/OdyEhNp5uCsMRWNIkt1zZgxMCLOW6EN5Ke2O/0=; b=Jsate7prTB1dlmhKqsWAYXk3a/
	zVlgnxXWm0P84+6d7nXiKbMOBqKSfK7gcGum+gi/X+EW1BowYcZSFIR3Px5EYTr/DM7aYi/PRbuXC
	YknFWXFstKf9G0jujglZZ5JQOFjRSKcrVlBK617a6Tipkx5vXYjJ5tAaTD5J58fgNJcGd8NuMKjEr
	0aftnAcELzYXyjpYuRyrdrFiQ9y7iJsqeq7GilkukpxpQ1vsmsWcsSpzTTTaY1qy2/7V2xuYHBeOf
	cYqRzoNMyu+LS55BQoUJfIK4M6eMV0lsHB9voKWgH/hNkMl05DqNchk07YEF5ZjHuE0ogpr77Gbjn
	1MAHbEfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQuZ-0001cJ-VJ; Tue, 12 May 2020 09:09:15 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQmy-0002IV-8p
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:31 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090120euoutp01ff16749ad0a24e51af871fb260231f42~OPFsCUPqN2641626416euoutp01G
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090120euoutp01ff16749ad0a24e51af871fb260231f42~OPFsCUPqN2641626416euoutp01G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274080;
 bh=8RXUaYJ0XAx8gHgVoRx7PyyDslr7uCrC5/8lRvvZF0w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DVFT3l2sUuKwchTEywUkN78aEJqU+u8VmoNkiTfGpAeSVBn+EX4SvIWVUcI1FuU1q
 uToIQr59EsBaTgoYi5xuDpTn7Xn1ss5I4+0UKOcVBUpiVtc34OfG3F74mQstH12xm/
 VDcgQKudTE/PLqSqbpnmBsA0Nyo3SC4oST7FXtTw=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090119eucas1p122c54f3d790a8b4aabadddef138cb482~OPFr3VH7q1613916139eucas1p1j;
 Tue, 12 May 2020 09:01:19 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id BD.22.60679.FD56ABE5; Tue, 12
 May 2020 10:01:19 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090119eucas1p2b3e1a858d8893f8d209d5c19fcbab941~OPFrnFDm92669826698eucas1p2a;
 Tue, 12 May 2020 09:01:19 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090119eusmtrp135da908616aff3d712df2ee287b888a2~OPFrmVeew0188101881eusmtrp1P;
 Tue, 12 May 2020 09:01:19 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-b6-5eba65dfb313
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 9D.F2.07950.FD56ABE5; Tue, 12
 May 2020 10:01:19 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090118eusmtip1b5259b1f4905ccb99e71fb00c788aaf8~OPFrBXLlK1352813528eusmtip1K;
 Tue, 12 May 2020 09:01:18 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 21/38] drm: rockchip: use common helper for a scatterlist
 contiguity check
Date: Tue, 12 May 2020 11:00:41 +0200
Message-Id: <20200512090058.14910-21-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfyyUcRjf99778d5x9nZsvqNlu8WWys9qb2lUS73/WP1RS1l0eIdy6F6U
 yphiuZxxSjpCWDg/k9BdhROnNNMdxqr5Ve0oY/mVuk53Xum/z+fzPJ/n8+zZgyICNcsBjYqJ
 JyUxomghm8ds6Vnt3z1GqoI9mjR7cVn/Gwb+pKCBha+15CL44NIcG6+u6Wbga5PfWPhDeTJe
 2u6DLw5OMPCmqWEWrlcVsfEf42sIXvf6EwfvnP/MOmRD1BbXAuLlcimTaF0eZxFjd7QM4mlF
 CvHBNIUQeSOVgFCPprKJP4p2JpHdrARE63AxQiw0bTtpfY53MJyMjkokJe6+F3iR+e0mVlya
 zdXeag07FXy1kgIUhdgemFlyQgp4qACrAvBneRegySKARTOZZsI1kwUA27JTLNhiKF7tYtB6
 JYCj38lNQ7l+GbEU2JgnlM5K2RZsh6UD2CuztmAEy0egcumYBdtiITCjam19EBNzhoaMwvV+
 PuYLH+SqGXSYE6xp7FifyTXrYyVGpiUMYjoOND2rAXTTUWhsNCI0toUz2mYOjbfCvrysDcNN
 ACf66zg0yQJQn1aw4faBH/t/sS3HQLAdsEHlTt/lMFztc6KhDRyZ3ULvbwPlLfcRWubD2xkC
 eoYLVGjrN1M7B3Qb2xBwQE7rAqwbQMUQmQOcFP+jSgFQAnsygRJHkJRXDHnFjRKJqYSYCLew
 WHETML9Un0m72AZUxlANwFAgtOZ7eDwPFrBEiVSSWAMgigjt+LeizBI/XJR0jZTEhkgSoklK
 AxxRptCe7102fV6ARYjiyUskGUdK/lUZKNchFVQF9HBBYJDjfPj7fXHGL69eFIbHhxq8duWY
 PORvG8kjsoBQRZhB7u2m1OquW7XJjHyJzgdVlJ85na87bph85FKm11WkrVw86zrXEbxze9C7
 zup7Q+p0v3Qq0KQ/5XAgNTelXqvb73CZWcrtSF656z99Q+UcNqsx5HJ++6sf+wmZVKTI0xWR
 UKK/MYuwBU4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7r3U3fFGaz5rmTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMln8f/Sa1WLupFqLBfutLb5cechksenxNVaLy7vmsFl8evCf2WLt
 kbvsFgc/PGF14PNYM28No8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB5/
 Z+1n8ejbsorRY/u1ecwenzfJBfBE6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GVM2/+PtaCJr+LEykNsDYzPuLsYOTkkBEwk5v08zNTFyMUhJLCU
 UeJE+wtmiISMxMlpDawQtrDEn2tdbBBFnxgl3r46xASSYBMwlOh6C5EQEehklJjW/ZEdxGEW
 mMcssXwVyFwODmGBWIlp+8VAGlgEVCVetM1mA7F5BewkZk7czQSxQV5i9YYDYJs5geL35/9h
 AbGFBAolHl19yzKBkW8BI8MqRpHU0uLc9NxiI73ixNzi0rx0veT83E2MwOjZduznlh2MXe+C
 DzEKcDAq8fB2GO2ME2JNLCuuzD3EKMHBrCTC25IJFOJNSaysSi3Kjy8qzUktPsRoCnTURGYp
 0eR8YGTnlcQbmhqaW1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpgzE+af6hN
 WeHmxk8nb0sYL7Ve43Cq8irTpCe7Nec5z4/xEAi6fXZX61M50cqr6aL/t/w7+7xuhsetfiGh
 CdwdT086rNYQzlsndFR0g5FXg/KroKVVrloGK+Ym213Lmft0suoSQZtlDe/WNVZ1tApmiOy8
 epjVRHPDYQ/XORd/vdctMG6w2+4WqMRSnJFoqMVcVJwIAJ5cyOe0AgAA
X-CMS-MailID: 20200512090119eucas1p2b3e1a858d8893f8d209d5c19fcbab941
X-Msg-Generator: CA
X-RootMTR: 20200512090119eucas1p2b3e1a858d8893f8d209d5c19fcbab941
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090119eucas1p2b3e1a858d8893f8d209d5c19fcbab941
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090119eucas1p2b3e1a858d8893f8d209d5c19fcbab941@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020125_185973_11B58922 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use common helper for checking the contiguity of the imported dma-buf.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 0d18846..21f8cb2 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -460,23 +460,6 @@ struct sg_table *rockchip_gem_prime_get_sg_table(struct drm_gem_object *obj)
 	return sgt;
 }
 
-static unsigned long rockchip_sg_get_contiguous_size(struct sg_table *sgt,
-						     int count)
-{
-	struct scatterlist *s;
-	dma_addr_t expected = sg_dma_address(sgt->sgl);
-	unsigned int i;
-	unsigned long size = 0;
-
-	for_each_sg(sgt->sgl, s, count, i) {
-		if (sg_dma_address(s) != expected)
-			break;
-		expected = sg_dma_address(s) + sg_dma_len(s);
-		size += sg_dma_len(s);
-	}
-	return size;
-}
-
 static int
 rockchip_gem_iommu_map_sg(struct drm_device *drm,
 			  struct dma_buf_attachment *attach,
@@ -498,7 +481,7 @@ static unsigned long rockchip_sg_get_contiguous_size(struct sg_table *sgt,
 	if (!count)
 		return -EINVAL;
 
-	if (rockchip_sg_get_contiguous_size(sg, count) < attach->dmabuf->size) {
+	if (drm_prime_get_contiguous_size(sg) < attach->dmabuf->size) {
 		DRM_ERROR("failed to map sg_table to contiguous linear address.\n");
 		dma_unmap_sg(drm->dev, sg->sgl, sg->nents,
 			     DMA_BIDIRECTIONAL);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
