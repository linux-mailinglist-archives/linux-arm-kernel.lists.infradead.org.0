Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 789101CBF29
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 10:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Symybn1kPpQcOQRZVX3frSw6JaNWL1JPeaaYTBJtTN8=; b=b9KHlW2tN9yPeU
	TOQpzXLk/eIQF4CHYNuehhB2sKj8jlBmelJ+dS+ytVIHEEG+KSugZGF1eCRYwuVC0eV3zCQ42EyKK
	siax7UP4nEZzfCvynEIGFEzakg/O6y9J+65c0IMFPW2frxPnFE8+9GbicLKylGEgV+AacmVewyot5
	WcUEOVkW2bx84o+ZZN28WKN4LUeVDwrSmH6c/HUXJHt5vSMP/J/EYF7M2WLboCFAfgv9tAmk+CanU
	OsWUXTjIOzSvFQUzWvoBmLeC1rfMN6fLiCSsvA8+jxgrxrRt2BS5nodesVy1NqITj59oajGti7MUf
	QXjmUP2B/HS1/w1mY9HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXL0q-0001AD-F2; Sat, 09 May 2020 08:39:12 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXL0i-00018K-In; Sat, 09 May 2020 08:39:05 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5A748C4CB26369EF78C8;
 Sat,  9 May 2020 16:38:48 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.487.0; Sat, 9 May 2020 16:38:41 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Ohad Ben-Cohen <ohad@wizery.com>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "Erin Lo" <erin.lo@mediatek.com>
Subject: [PATCH -next] remoteproc/mediatek: fix invalid use of sizeof in
 scp_ipi_init()
Date: Sat, 9 May 2020 08:42:37 +0000
Message-ID: <20200509084237.36293-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_013904_787716_2784E9FD 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
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
Cc: kernel-janitors@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, linux-mediatek@lists.infradead.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

sizeof() when applied to a pointer typed expression gives the
size of the pointer, not that of the pointed data.

Fixes: 63c13d61eafe ("remoteproc/mediatek: add SCP support for mt8183")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/remoteproc/mtk_scp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
index 2bead57c9cf9..ac13e7b046a6 100644
--- a/drivers/remoteproc/mtk_scp.c
+++ b/drivers/remoteproc/mtk_scp.c
@@ -132,8 +132,8 @@ static int scp_ipi_init(struct mtk_scp *scp)
 		(struct mtk_share_obj __iomem *)(scp->sram_base + recv_offset);
 	scp->send_buf =
 		(struct mtk_share_obj __iomem *)(scp->sram_base + send_offset);
-	memset_io(scp->recv_buf, 0, sizeof(scp->recv_buf));
-	memset_io(scp->send_buf, 0, sizeof(scp->send_buf));
+	memset_io(scp->recv_buf, 0, sizeof(*scp->recv_buf));
+	memset_io(scp->send_buf, 0, sizeof(*scp->send_buf));
 
 	return 0;
 }




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
