Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB1EF01FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 16:56:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QiTVSvAh8zRphiSPWwV4xMJ5ITlzfpgUB0hljo3m6zA=; b=brY
	/TXCncocWYy6ilcmMuxEd6jxnI7G6oTMK3g2jMkmTXP2akgMsXAWbHX/INsZRLnyS2+NhAn7bGIBb
	JJ2klO2txDO2DnvFXgWFh31m9HaFYpRD3EGeEz8J7X7fAxDLz1fMiYIePHedp5ViaVEkGm7bEgMcl
	amtlXJIQkT/OsIa/jzyTg5xdg1mvAplLDpMwRg3eZTHuRkALIRDSzSHzd5YZ9hQmO1FqnMPQLKgtP
	X5EE11BRSLhfcgjBmyhUzyuHtOfDm+pvrVVTbf0aqSzRxZGlVVqCVD10OkRXs23ZbadxO47vm+WEV
	c1GDfBePXedW4siIdViBpL0bjEgXwDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS1CO-0000ei-93; Tue, 05 Nov 2019 15:56:52 +0000
Received: from mail-m974.mail.163.com ([123.126.97.4])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS1CG-0000aE-OO; Tue, 05 Nov 2019 15:56:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=MEhTFHAycXqkTfqbe4
 XX0vxC02FkcqiVe33GxCZFfQc=; b=FulfrviTwzzFd30cKiL95Hjs4+SCOuUM0Z
 TFiky1RZS6jTn3NDhFr59vkCEeSlvZ1NjFBXi2Fj1mh8l6Johlv6VZbtYooWrdbK
 aB6bjN7N47ug+7kZUx1NJVabxfVAmD3AgFj3KrZe13n9QOwo2QtiJhevXJvPXIgB
 rFi9LWBv4=
Received: from localhost.localdomain (unknown [202.112.113.212])
 by smtp4 (Coremail) with SMTP id HNxpCgBXXrKbm8FdDyEQBQ--.364S3;
 Tue, 05 Nov 2019 23:56:15 +0800 (CST)
From: Pan Bian <bianpan2016@163.com>
To: Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] media: rockchip/rga: fix potential use after free
Date: Tue,  5 Nov 2019 23:55:54 +0800
Message-Id: <1572969354-8967-1-git-send-email-bianpan2016@163.com>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: HNxpCgBXXrKbm8FdDyEQBQ--.364S3
X-Coremail-Antispam: 1Uf129KBjvdXoWruw4UZr17Cr47Kr18XFW3GFg_yoWDJrbE93
 y8XF4xuF4vgrn5K3WUCw1fu3yjya9F9ryfWFyftFWxZFW8Zw1DtFs8ZrZxXF1aqa1I9F9r
 KF98XF17CrsxCjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUjAu4UUUUUU==
X-Originating-IP: [202.112.113.212]
X-CM-SenderInfo: held01tdqsiiqw6rljoofrz/1tbiQABkclSIdHYMpwABsi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_075645_284154_01A62C13 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.126.97.4 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (bianpan2016[at]163.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bianpan2016[at]163.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/media/platform/rockchip/rga/rga.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index e9ff12b6b5bb..613b868fce33 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -901,9 +901,9 @@ static int rga_probe(struct platform_device *pdev)
 	return 0;
 
 rel_vdev:
-	video_device_release(vfd);
-unreg_video_dev:
 	video_unregister_device(rga->vfd);
+unreg_video_dev:
+	video_device_release(vfd);
 unreg_v4l2_dev:
 	v4l2_device_unregister(&rga->v4l2_dev);
 err_put_clk:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
