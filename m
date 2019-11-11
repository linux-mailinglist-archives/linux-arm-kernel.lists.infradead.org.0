Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E68F6FB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 09:29:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Kg0V8GhAwvSklUx/Svy0iH9trkV9zAeu3d/XuXAcFGI=; b=dXK
	4Rn7IuaqCtbs1kqQBQpJ+JxoMe/aCpnRXCRu/NICUdVkzc7PlAdjBOXKQbXpETDThBbgJlyJnPzrv
	BiN492N8KEel7YdQnDQbDjQJlsOFCktzCa9qgyeaSD4ja81/Wd46rNpQemtd83UGxkW4cbi8TUXCS
	OJ/mu+vI+CmsEnraV1/uctZqZ3d40BO0nSOsxnD1DNGQouZnuGDwK8gwMvZ6fkZTWEOzmJNPrw1z8
	rNRdVi6E4abwIHsceBzloTS8+AMq7zN/sjevDxSPXNHXcY+QxLOjFIgTKW5NxPAREqhH0NthBL8Q3
	LgEirizNL4ilJzhOy3M2YBl9BGA5HbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU54P-0004Rf-GD; Mon, 11 Nov 2019 08:29:09 +0000
Received: from mail-m972.mail.163.com ([123.126.97.2])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU54G-0004Qt-0Q; Mon, 11 Nov 2019 08:29:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=IXLiI1+30Yp1RuwY8a
 32SvH9+dLBFK6vlJn+vl0EBD4=; b=jhlJHk32iaOL14/7IKFs9pVbyX4D/1jRo4
 OXp1ELbN0c78vZb76E9lhgCTrKrgTejCqJ5h8HJGTROMBBS8GW1IECYYfzQZ5FL6
 vgfMmJax8Xs5oKHB21V1VC9ySa39QDiPTXeF1RLOSnmhE491JH2x0gtPMLuXEG90
 OpCM8x3xQ=
Received: from localhost.localdomain (unknown [202.112.113.212])
 by smtp2 (Coremail) with SMTP id GtxpCgDXMCOsG8ld_t9zAg--.4268S3;
 Mon, 11 Nov 2019 16:28:35 +0800 (CST)
From: Pan Bian <bianpan2016@163.com>
To: Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2] media: rockchip/rga: fix potential use after free
Date: Mon, 11 Nov 2019 16:28:22 +0800
Message-Id: <1573460902-18563-1-git-send-email-bianpan2016@163.com>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: GtxpCgDXMCOsG8ld_t9zAg--.4268S3
X-Coremail-Antispam: 1Uf129KBjvJXoW7Ar4DAr4ruFW3urW8KFWUCFg_yoW8WF15pa
 1kGa4xKFWFg3yUuwsrJr4DuFyrGa4Iya1FkrW3G34SkFy3KryDt34xJFyFqFWUZ3s7CFWa
 yw43tr47Ca10vFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UJgA7UUUUU=
X-Originating-IP: [202.112.113.212]
X-CM-SenderInfo: held01tdqsiiqw6rljoofrz/xtbBZBNqclQHHkd+IQAAs6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_002900_597767_92071DCE 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.126.97.2 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (bianpan2016[at]163.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bianpan2016[at]163.com)
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
Cc: linux-rockchip@lists.infradead.org, Pan Bian <bianpan2016@163.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The variable vga->vfd is an alias for vfd. Therefore, releasing vfd and
then unregister vga->vfd will lead to a use after free bug. In fact, the
free operation and the unregister operation are reversed.

Signed-off-by: Pan Bian <bianpan2016@163.com>
---
v2: update the goto label names consistently
---
 drivers/media/platform/rockchip/rga/rga.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index e9ff12b6b5bb..d2297abafc69 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -863,7 +863,7 @@ static int rga_probe(struct platform_device *pdev)
 	if (IS_ERR(rga->m2m_dev)) {
 		v4l2_err(&rga->v4l2_dev, "Failed to init mem2mem device\n");
 		ret = PTR_ERR(rga->m2m_dev);
-		goto unreg_video_dev;
+		goto rel_vdev;
 	}
 
 	pm_runtime_get_sync(rga->dev);
@@ -892,7 +892,7 @@ static int rga_probe(struct platform_device *pdev)
 	ret = video_register_device(vfd, VFL_TYPE_GRABBER, -1);
 	if (ret) {
 		v4l2_err(&rga->v4l2_dev, "Failed to register video device\n");
-		goto rel_vdev;
+		goto unreg_dev;
 	}
 
 	v4l2_info(&rga->v4l2_dev, "Registered %s as /dev/%s\n",
@@ -900,10 +900,10 @@ static int rga_probe(struct platform_device *pdev)
 
 	return 0;
 
+unreg_dev:
+	video_unregister_device(rga->vfd);
 rel_vdev:
 	video_device_release(vfd);
-unreg_video_dev:
-	video_unregister_device(rga->vfd);
 unreg_v4l2_dev:
 	v4l2_device_unregister(&rga->v4l2_dev);
 err_put_clk:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
