Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1C8190C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 20:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mOWw3H6ddgJKR4AECUvdG9aocWZFl9i3N/VfBIecRc=; b=ZSq5qtQxZMM5ir
	3Jk2HJT66YKFdJlNufUANRaq9+LyNwnVMIB/8vzuJuY+pRcAliDuhpFjgXJrBO4dSMAC7uymS5Ert
	A/xBUHJT7EhlvZg+tsjLB2IpOSGnW7kmTyBd8KZ01GydyHj/PRqRQFEeG8HH8AXZsTI1H3529bjl0
	huhYeUonEC/9C9yCjWkIXqFiSTf1WeunQY53O54qMPEktMBfF7bj8DFnY85DJC6Q9VS4NlFE1RdHf
	ghZ4Y5ggNPp+FHgKCcNsGT0nYak9UOPy1aUOy4X5ye6aFUT5wHjpF75PIYrYzUrb1mP5HOOyn1Wol
	wbZ4QkSGpOydQQfJk+vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOo63-0004vz-Em; Thu, 09 May 2019 18:48:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOo5v-0004vC-Cz; Thu, 09 May 2019 18:48:40 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94B1020578;
 Thu,  9 May 2019 18:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557427719;
 bh=fuPoLE3V2yAUWFUBWayRnbpH4gfWO4t8LudXIxPk+J4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YQLZR4vIPrTzxoeppc/gZIjhgm/La+cntd/McIKEiWhyv1TDbjWIorX/cw1TPPpso
 izztYO8rn06HZQOkyhmdTWTOqN1Ibydqa4Ug3o1Zrt26MeWdOy/qClK5lQbiN5Jziv
 v8jakqivYVY13rPihREOwZE3UdrmkUubfLx1qphU=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.19 43/66] drm/mediatek: fix possible object reference leak
Date: Thu,  9 May 2019 20:42:18 +0200
Message-Id: <20190509181306.423253638@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509181301.719249738@linuxfoundation.org>
References: <20190509181301.719249738@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_114839_512967_65B3CD4E 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sasha Levin <sashal@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Philipp Zabel <p.zabel@pengutronix.de>,
 CK Hu <ck.hu@mediatek.com>, Wen Yang <wen.yang99@zte.com.cn>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Upstream commit 2ae2c3316fb77dcf64275d011596b60104c45426 ]

The call to of_parse_phandle returns a node pointer with refcount
incremented thus it must be explicitly decremented after the last
usage.

Detected by coccinelle with the following warnings:
drivers/gpu/drm/mediatek/mtk_hdmi.c:1521:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 1509, but without a corresponding object release within this function.
drivers/gpu/drm/mediatek/mtk_hdmi.c:1524:1-7: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 1509, but without a corresponding object release within this function.

Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
Cc: CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index c7a77d6f612b2..62444a3a5742a 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1508,6 +1508,7 @@ static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
 	of_node_put(remote);
 
 	hdmi->ddc_adpt = of_find_i2c_adapter_by_node(i2c_np);
+	of_node_put(i2c_np);
 	if (!hdmi->ddc_adpt) {
 		dev_err(dev, "Failed to get ddc i2c adapter by node\n");
 		return -EINVAL;
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
